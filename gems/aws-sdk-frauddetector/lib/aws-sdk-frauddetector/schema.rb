# frozen_string_literal: true

# This is generated code!

module Aws::FraudDetector
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ATIMetricDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ATIMetricDataPoint', name: 'ATIMetricDataPoint')
    ATIMetricDataPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ATIMetricDataPointsList', name: 'ATIMetricDataPointsList')
    ATIModelPerformance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ATIModelPerformance', name: 'ATIModelPerformance')
    ATITrainingMetricsValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ATITrainingMetricsValue', name: 'ATITrainingMetricsValue')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AggregatedLogOddsMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#AggregatedLogOddsMetric', name: 'AggregatedLogOddsMetric')
    AggregatedVariablesImpactExplanation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#AggregatedVariablesImpactExplanation', name: 'AggregatedVariablesImpactExplanation')
    AggregatedVariablesImportanceMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#AggregatedVariablesImportanceMetrics', name: 'AggregatedVariablesImportanceMetrics')
    AllowDenyList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#AllowDenyList', name: 'AllowDenyList')
    AllowDenyLists = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#AllowDenyLists', name: 'AllowDenyLists')
    AsyncJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#AsyncJobStatus', name: 'AsyncJobStatus')
    BatchCreateVariableError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchCreateVariableError', name: 'BatchCreateVariableError')
    BatchCreateVariableErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#BatchCreateVariableErrorList', name: 'BatchCreateVariableErrorList')
    BatchCreateVariableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchCreateVariableRequest', name: 'BatchCreateVariableRequest')
    BatchCreateVariableResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchCreateVariableResult', name: 'BatchCreateVariableResult')
    BatchGetVariableError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchGetVariableError', name: 'BatchGetVariableError')
    BatchGetVariableErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#BatchGetVariableErrorList', name: 'BatchGetVariableErrorList')
    BatchGetVariableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchGetVariableRequest', name: 'BatchGetVariableRequest')
    BatchGetVariableResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchGetVariableResult', name: 'BatchGetVariableResult')
    BatchImport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchImport', name: 'BatchImport')
    BatchImportList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#BatchImportList', name: 'BatchImportList')
    BatchPrediction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#BatchPrediction', name: 'BatchPrediction')
    BatchPredictionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#BatchPredictionList', name: 'BatchPredictionList')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.frauddetector#Boolean', name: 'Boolean')
    CancelBatchImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CancelBatchImportJobRequest', name: 'CancelBatchImportJobRequest')
    CancelBatchImportJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CancelBatchImportJobResult', name: 'CancelBatchImportJobResult')
    CancelBatchPredictionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CancelBatchPredictionJobRequest', name: 'CancelBatchPredictionJobRequest')
    CancelBatchPredictionJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CancelBatchPredictionJobResult', name: 'CancelBatchPredictionJobResult')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBatchImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateBatchImportJobRequest', name: 'CreateBatchImportJobRequest')
    CreateBatchImportJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateBatchImportJobResult', name: 'CreateBatchImportJobResult')
    CreateBatchPredictionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateBatchPredictionJobRequest', name: 'CreateBatchPredictionJobRequest')
    CreateBatchPredictionJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateBatchPredictionJobResult', name: 'CreateBatchPredictionJobResult')
    CreateDetectorVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateDetectorVersionRequest', name: 'CreateDetectorVersionRequest')
    CreateDetectorVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateDetectorVersionResult', name: 'CreateDetectorVersionResult')
    CreateListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateListRequest', name: 'CreateListRequest')
    CreateListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateListResult', name: 'CreateListResult')
    CreateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateModelRequest', name: 'CreateModelRequest')
    CreateModelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateModelResult', name: 'CreateModelResult')
    CreateModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateModelVersionRequest', name: 'CreateModelVersionRequest')
    CreateModelVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateModelVersionResult', name: 'CreateModelVersionResult')
    CreateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateRuleRequest', name: 'CreateRuleRequest')
    CreateRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateRuleResult', name: 'CreateRuleResult')
    CreateVariableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateVariableRequest', name: 'CreateVariableRequest')
    CreateVariableResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#CreateVariableResult', name: 'CreateVariableResult')
    CsvIndexToVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#CsvIndexToVariableMap', name: 'CsvIndexToVariableMap')
    DataSource = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#DataSource', name: 'DataSource')
    DataType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#DataType', name: 'DataType')
    DataValidationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DataValidationMetrics', name: 'DataValidationMetrics')
    DeleteAuditHistory = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.frauddetector#DeleteAuditHistory', name: 'DeleteAuditHistory')
    DeleteBatchImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteBatchImportJobRequest', name: 'DeleteBatchImportJobRequest')
    DeleteBatchImportJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteBatchImportJobResult', name: 'DeleteBatchImportJobResult')
    DeleteBatchPredictionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteBatchPredictionJobRequest', name: 'DeleteBatchPredictionJobRequest')
    DeleteBatchPredictionJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteBatchPredictionJobResult', name: 'DeleteBatchPredictionJobResult')
    DeleteDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteDetectorRequest', name: 'DeleteDetectorRequest')
    DeleteDetectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteDetectorResult', name: 'DeleteDetectorResult')
    DeleteDetectorVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteDetectorVersionRequest', name: 'DeleteDetectorVersionRequest')
    DeleteDetectorVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteDetectorVersionResult', name: 'DeleteDetectorVersionResult')
    DeleteEntityTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEntityTypeRequest', name: 'DeleteEntityTypeRequest')
    DeleteEntityTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEntityTypeResult', name: 'DeleteEntityTypeResult')
    DeleteEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEventRequest', name: 'DeleteEventRequest')
    DeleteEventResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEventResult', name: 'DeleteEventResult')
    DeleteEventTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEventTypeRequest', name: 'DeleteEventTypeRequest')
    DeleteEventTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEventTypeResult', name: 'DeleteEventTypeResult')
    DeleteEventsByEventTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEventsByEventTypeRequest', name: 'DeleteEventsByEventTypeRequest')
    DeleteEventsByEventTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteEventsByEventTypeResult', name: 'DeleteEventsByEventTypeResult')
    DeleteExternalModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteExternalModelRequest', name: 'DeleteExternalModelRequest')
    DeleteExternalModelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteExternalModelResult', name: 'DeleteExternalModelResult')
    DeleteLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteLabelRequest', name: 'DeleteLabelRequest')
    DeleteLabelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteLabelResult', name: 'DeleteLabelResult')
    DeleteListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteListRequest', name: 'DeleteListRequest')
    DeleteListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteListResult', name: 'DeleteListResult')
    DeleteModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteModelRequest', name: 'DeleteModelRequest')
    DeleteModelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteModelResult', name: 'DeleteModelResult')
    DeleteModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteModelVersionRequest', name: 'DeleteModelVersionRequest')
    DeleteModelVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteModelVersionResult', name: 'DeleteModelVersionResult')
    DeleteOutcomeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteOutcomeRequest', name: 'DeleteOutcomeRequest')
    DeleteOutcomeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteOutcomeResult', name: 'DeleteOutcomeResult')
    DeleteRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteRuleRequest', name: 'DeleteRuleRequest')
    DeleteRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteRuleResult', name: 'DeleteRuleResult')
    DeleteVariableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteVariableRequest', name: 'DeleteVariableRequest')
    DeleteVariableResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DeleteVariableResult', name: 'DeleteVariableResult')
    DescribeDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DescribeDetectorRequest', name: 'DescribeDetectorRequest')
    DescribeDetectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DescribeDetectorResult', name: 'DescribeDetectorResult')
    DescribeModelVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DescribeModelVersionsRequest', name: 'DescribeModelVersionsRequest')
    DescribeModelVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DescribeModelVersionsResult', name: 'DescribeModelVersionsResult')
    Detector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Detector', name: 'Detector')
    DetectorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#DetectorList', name: 'DetectorList')
    DetectorVersionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#DetectorVersionMaxResults', name: 'DetectorVersionMaxResults', traits: {"smithy.api#range" => {"min" => 1000, "max" => 2500}})
    DetectorVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#DetectorVersionStatus', name: 'DetectorVersionStatus')
    DetectorVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#DetectorVersionSummary', name: 'DetectorVersionSummary')
    DetectorVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#DetectorVersionSummaryList', name: 'DetectorVersionSummaryList')
    DetectorsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#DetectorsMaxResults', name: 'DetectorsMaxResults', traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    Elements = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#Elements', name: 'Elements', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#pattern" => "^\\S+( +\\S+)*$", "smithy.api#sensitive" => {}})
    ElementsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ElementsList', name: 'ElementsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}})
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Entity', name: 'Entity', traits: {"smithy.api#sensitive" => {}})
    EntityType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EntityType', name: 'EntityType')
    EvaluatedExternalModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EvaluatedExternalModel', name: 'EvaluatedExternalModel')
    EvaluatedModelVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EvaluatedModelVersion', name: 'EvaluatedModelVersion')
    EvaluatedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EvaluatedRule', name: 'EvaluatedRule')
    EvaluatedRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#EvaluatedRuleList', name: 'EvaluatedRuleList')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Event', name: 'Event')
    EventAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#EventAttributeMap', name: 'EventAttributeMap')
    EventIngestion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#EventIngestion', name: 'EventIngestion')
    EventOrchestration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EventOrchestration', name: 'EventOrchestration')
    EventPredictionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EventPredictionSummary', name: 'EventPredictionSummary')
    EventPredictionsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#EventPredictionsMaxResults', name: 'EventPredictionsMaxResults', traits: {"smithy.api#range" => {"min" => 50, "max" => 100}})
    EventType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EventType', name: 'EventType', traits: {"smithy.api#sensitive" => {}})
    EventVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#EventVariableMap', name: 'EventVariableMap', traits: {"smithy.api#length" => {"min" => 1}})
    EventVariableSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#EventVariableSummary', name: 'EventVariableSummary')
    ExternalEventsDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ExternalEventsDetail', name: 'ExternalEventsDetail')
    ExternalModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ExternalModel', name: 'ExternalModel')
    ExternalModelEndpointDataBlobMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#ExternalModelEndpointDataBlobMap', name: 'ExternalModelEndpointDataBlobMap', traits: {"smithy.api#sensitive" => {}})
    ExternalModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ExternalModelList', name: 'ExternalModelList')
    ExternalModelOutputs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ExternalModelOutputs', name: 'ExternalModelOutputs')
    ExternalModelPredictionMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#ExternalModelPredictionMap', name: 'ExternalModelPredictionMap')
    ExternalModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ExternalModelSummary', name: 'ExternalModelSummary')
    ExternalModelsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#ExternalModelsMaxResults', name: 'ExternalModelsMaxResults', traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    FieldValidationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#FieldValidationMessage', name: 'FieldValidationMessage')
    FileValidationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#FileValidationMessage', name: 'FileValidationMessage')
    FilterCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#FilterCondition', name: 'FilterCondition')
    GetBatchImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetBatchImportJobsRequest', name: 'GetBatchImportJobsRequest')
    GetBatchImportJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetBatchImportJobsResult', name: 'GetBatchImportJobsResult')
    GetBatchPredictionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetBatchPredictionJobsRequest', name: 'GetBatchPredictionJobsRequest')
    GetBatchPredictionJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetBatchPredictionJobsResult', name: 'GetBatchPredictionJobsResult')
    GetDeleteEventsByEventTypeStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetDeleteEventsByEventTypeStatusRequest', name: 'GetDeleteEventsByEventTypeStatusRequest')
    GetDeleteEventsByEventTypeStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetDeleteEventsByEventTypeStatusResult', name: 'GetDeleteEventsByEventTypeStatusResult')
    GetDetectorVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetDetectorVersionRequest', name: 'GetDetectorVersionRequest')
    GetDetectorVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetDetectorVersionResult', name: 'GetDetectorVersionResult')
    GetDetectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetDetectorsRequest', name: 'GetDetectorsRequest')
    GetDetectorsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetDetectorsResult', name: 'GetDetectorsResult')
    GetEntityTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEntityTypesRequest', name: 'GetEntityTypesRequest')
    GetEntityTypesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEntityTypesResult', name: 'GetEntityTypesResult')
    GetEventPredictionMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventPredictionMetadataRequest', name: 'GetEventPredictionMetadataRequest')
    GetEventPredictionMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventPredictionMetadataResult', name: 'GetEventPredictionMetadataResult')
    GetEventPredictionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventPredictionRequest', name: 'GetEventPredictionRequest')
    GetEventPredictionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventPredictionResult', name: 'GetEventPredictionResult')
    GetEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventRequest', name: 'GetEventRequest')
    GetEventResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventResult', name: 'GetEventResult')
    GetEventTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventTypesRequest', name: 'GetEventTypesRequest')
    GetEventTypesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetEventTypesResult', name: 'GetEventTypesResult')
    GetExternalModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetExternalModelsRequest', name: 'GetExternalModelsRequest')
    GetExternalModelsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetExternalModelsResult', name: 'GetExternalModelsResult')
    GetKMSEncryptionKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetKMSEncryptionKeyResult', name: 'GetKMSEncryptionKeyResult')
    GetLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetLabelsRequest', name: 'GetLabelsRequest')
    GetLabelsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetLabelsResult', name: 'GetLabelsResult')
    GetListElementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetListElementsRequest', name: 'GetListElementsRequest')
    GetListElementsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetListElementsResult', name: 'GetListElementsResult')
    GetListsMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetListsMetadataRequest', name: 'GetListsMetadataRequest')
    GetListsMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetListsMetadataResult', name: 'GetListsMetadataResult')
    GetModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetModelVersionRequest', name: 'GetModelVersionRequest')
    GetModelVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetModelVersionResult', name: 'GetModelVersionResult')
    GetModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetModelsRequest', name: 'GetModelsRequest')
    GetModelsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetModelsResult', name: 'GetModelsResult')
    GetOutcomesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetOutcomesRequest', name: 'GetOutcomesRequest')
    GetOutcomesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetOutcomesResult', name: 'GetOutcomesResult')
    GetRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetRulesRequest', name: 'GetRulesRequest')
    GetRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetRulesResult', name: 'GetRulesResult')
    GetVariablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetVariablesRequest', name: 'GetVariablesRequest')
    GetVariablesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#GetVariablesResult', name: 'GetVariablesResult')
    IngestedEventStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#IngestedEventStatistics', name: 'IngestedEventStatistics')
    IngestedEventsDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#IngestedEventsDetail', name: 'IngestedEventsDetail')
    IngestedEventsTimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#IngestedEventsTimeWindow', name: 'IngestedEventsTimeWindow')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#Integer', name: 'Integer')
    Integer2 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#Integer2', name: 'Integer2', traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JsonKeyToVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#JsonKeyToVariableMap', name: 'JsonKeyToVariableMap')
    KMSKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#KMSKey', name: 'KMSKey')
    KmsEncryptionKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#KmsEncryptionKeyArn', name: 'KmsEncryptionKeyArn', traits: {"smithy.api#length" => {"min" => 7, "max" => 90}, "smithy.api#pattern" => "^DEFAULT|arn:[a-zA-Z0-9-]+:kms:[a-zA-Z0-9-]+:\\d{12}:key\\/\\w{8}-\\w{4}-\\w{4}-\\w{4}-\\w{12}$"})
    Label = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Label', name: 'Label')
    LabelSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#LabelSchema', name: 'LabelSchema')
    Language = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#Language', name: 'Language')
    ListEventPredictionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ListEventPredictionsRequest', name: 'ListEventPredictionsRequest')
    ListEventPredictionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ListEventPredictionsResult', name: 'ListEventPredictionsResult')
    ListOfAggregatedLogOddsMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfAggregatedLogOddsMetrics', name: 'ListOfAggregatedLogOddsMetrics')
    ListOfAggregatedVariablesImpactExplanations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfAggregatedVariablesImpactExplanations', name: 'ListOfAggregatedVariablesImpactExplanations')
    ListOfEvaluatedExternalModels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfEvaluatedExternalModels', name: 'ListOfEvaluatedExternalModels')
    ListOfEvaluatedModelVersions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfEvaluatedModelVersions', name: 'ListOfEvaluatedModelVersions')
    ListOfEventPredictionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfEventPredictionSummaries', name: 'ListOfEventPredictionSummaries')
    ListOfEventVariableSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfEventVariableSummaries', name: 'ListOfEventVariableSummaries')
    ListOfExternalModelOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfExternalModelOutputs', name: 'ListOfExternalModelOutputs')
    ListOfLogOddsMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfLogOddsMetrics', name: 'ListOfLogOddsMetrics')
    ListOfModelScores = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfModelScores', name: 'ListOfModelScores')
    ListOfModelVersionEvaluations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfModelVersionEvaluations', name: 'ListOfModelVersionEvaluations')
    ListOfModelVersions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfModelVersions', name: 'ListOfModelVersions')
    ListOfRuleResults = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfRuleResults', name: 'ListOfRuleResults')
    ListOfStrings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#ListOfStrings', name: 'ListOfStrings')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    ListUpdateMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ListUpdateMode', name: 'ListUpdateMode')
    ListsElementsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#ListsElementsMaxResults', name: 'ListsElementsMaxResults', traits: {"smithy.api#range" => {"min" => 500, "max" => 5000}})
    ListsMetadataMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#ListsMetadataMaxResults', name: 'ListsMetadataMaxResults', traits: {"smithy.api#range" => {"min" => 5, "max" => 50}})
    LogOddsMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#LogOddsMetric', name: 'LogOddsMetric')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#Long', name: 'Long')
    MapOfStrings = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#MapOfStrings', name: 'MapOfStrings', traits: {"smithy.api#sensitive" => {}})
    MetricDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#MetricDataPoint', name: 'MetricDataPoint')
    Model = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Model', name: 'Model')
    ModelEndpointDataBlob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelEndpointDataBlob', name: 'ModelEndpointDataBlob')
    ModelEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ModelEndpointStatus', name: 'ModelEndpointStatus')
    ModelInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelInputConfiguration', name: 'ModelInputConfiguration')
    ModelInputDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ModelInputDataFormat', name: 'ModelInputDataFormat')
    ModelOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelOutputConfiguration', name: 'ModelOutputConfiguration')
    ModelOutputDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ModelOutputDataFormat', name: 'ModelOutputDataFormat')
    ModelPredictionMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#ModelPredictionMap', name: 'ModelPredictionMap')
    ModelScores = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelScores', name: 'ModelScores')
    ModelSource = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ModelSource', name: 'ModelSource')
    ModelTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ModelTypeEnum', name: 'ModelTypeEnum')
    ModelVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelVersion', name: 'ModelVersion')
    ModelVersionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelVersionDetail', name: 'ModelVersionDetail')
    ModelVersionEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ModelVersionEvaluation', name: 'ModelVersionEvaluation')
    ModelVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#ModelVersionStatus', name: 'ModelVersionStatus')
    NameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#NameList', name: 'NameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NonEmptyListOfStrings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#NonEmptyListOfStrings', name: 'NonEmptyListOfStrings', traits: {"smithy.api#length" => {"min" => 1}})
    OFIMetricDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#OFIMetricDataPoint', name: 'OFIMetricDataPoint')
    OFIMetricDataPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#OFIMetricDataPointsList', name: 'OFIMetricDataPointsList')
    OFIModelPerformance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#OFIModelPerformance', name: 'OFIModelPerformance')
    OFITrainingMetricsValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#OFITrainingMetricsValue', name: 'OFITrainingMetricsValue')
    Outcome = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Outcome', name: 'Outcome')
    OutcomeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#OutcomeList', name: 'OutcomeList')
    OutcomesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#OutcomesMaxResults', name: 'OutcomesMaxResults', traits: {"smithy.api#range" => {"min" => 50, "max" => 100}})
    PredictionExplanations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PredictionExplanations', name: 'PredictionExplanations')
    PredictionTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PredictionTimeRange', name: 'PredictionTimeRange')
    PutDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutDetectorRequest', name: 'PutDetectorRequest')
    PutDetectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutDetectorResult', name: 'PutDetectorResult')
    PutEntityTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutEntityTypeRequest', name: 'PutEntityTypeRequest')
    PutEntityTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutEntityTypeResult', name: 'PutEntityTypeResult')
    PutEventTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutEventTypeRequest', name: 'PutEventTypeRequest')
    PutEventTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutEventTypeResult', name: 'PutEventTypeResult')
    PutExternalModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutExternalModelRequest', name: 'PutExternalModelRequest')
    PutExternalModelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutExternalModelResult', name: 'PutExternalModelResult')
    PutKMSEncryptionKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutKMSEncryptionKeyRequest', name: 'PutKMSEncryptionKeyRequest')
    PutKMSEncryptionKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutKMSEncryptionKeyResult', name: 'PutKMSEncryptionKeyResult')
    PutLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutLabelRequest', name: 'PutLabelRequest')
    PutLabelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutLabelResult', name: 'PutLabelResult')
    PutOutcomeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutOutcomeRequest', name: 'PutOutcomeRequest')
    PutOutcomeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#PutOutcomeResult', name: 'PutOutcomeResult')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ResourceUnavailableException', name: 'ResourceUnavailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Rule', name: 'Rule')
    RuleDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#RuleDetail', name: 'RuleDetail')
    RuleDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#RuleDetailList', name: 'RuleDetailList')
    RuleExecutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#RuleExecutionMode', name: 'RuleExecutionMode')
    RuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#RuleList', name: 'RuleList')
    RuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#RuleResult', name: 'RuleResult')
    RulesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#RulesMaxResults', name: 'RulesMaxResults', traits: {"smithy.api#range" => {"min" => 50, "max" => 100}})
    SendEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#SendEventRequest', name: 'SendEventRequest')
    SendEventResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#SendEventResult', name: 'SendEventResult')
    TFIMetricDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TFIMetricDataPoint', name: 'TFIMetricDataPoint')
    TFIMetricDataPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#TFIMetricDataPointsList', name: 'TFIMetricDataPointsList')
    TFIModelPerformance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TFIModelPerformance', name: 'TFIModelPerformance')
    TFITrainingMetricsValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TFITrainingMetricsValue', name: 'TFITrainingMetricsValue')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Tag', name: 'Tag')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TagResourceResult', name: 'TagResourceResult')
    TagsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#TagsMaxResults', name: 'TagsMaxResults', traits: {"smithy.api#range" => {"min" => 50, "max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TrainingDataSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TrainingDataSchema', name: 'TrainingDataSchema')
    TrainingDataSourceEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#TrainingDataSourceEnum', name: 'TrainingDataSourceEnum')
    TrainingMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TrainingMetrics', name: 'TrainingMetrics')
    TrainingMetricsV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TrainingMetricsV2', name: 'TrainingMetricsV2')
    TrainingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TrainingResult', name: 'TrainingResult')
    TrainingResultV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#TrainingResultV2', name: 'TrainingResultV2')
    UncertaintyRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UncertaintyRange', name: 'UncertaintyRange')
    UnlabeledEventsTreatment = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.frauddetector#UnlabeledEventsTreatment', name: 'UnlabeledEventsTreatment')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UntagResourceResult', name: 'UntagResourceResult')
    UpdateDetectorVersionMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateDetectorVersionMetadataRequest', name: 'UpdateDetectorVersionMetadataRequest')
    UpdateDetectorVersionMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateDetectorVersionMetadataResult', name: 'UpdateDetectorVersionMetadataResult')
    UpdateDetectorVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateDetectorVersionRequest', name: 'UpdateDetectorVersionRequest')
    UpdateDetectorVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateDetectorVersionResult', name: 'UpdateDetectorVersionResult')
    UpdateDetectorVersionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateDetectorVersionStatusRequest', name: 'UpdateDetectorVersionStatusRequest')
    UpdateDetectorVersionStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateDetectorVersionStatusResult', name: 'UpdateDetectorVersionStatusResult')
    UpdateEventLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateEventLabelRequest', name: 'UpdateEventLabelRequest')
    UpdateEventLabelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateEventLabelResult', name: 'UpdateEventLabelResult')
    UpdateListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateListRequest', name: 'UpdateListRequest')
    UpdateListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateListResult', name: 'UpdateListResult')
    UpdateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateModelRequest', name: 'UpdateModelRequest')
    UpdateModelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateModelResult', name: 'UpdateModelResult')
    UpdateModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateModelVersionRequest', name: 'UpdateModelVersionRequest')
    UpdateModelVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateModelVersionResult', name: 'UpdateModelVersionResult')
    UpdateModelVersionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateModelVersionStatusRequest', name: 'UpdateModelVersionStatusRequest')
    UpdateModelVersionStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateModelVersionStatusResult', name: 'UpdateModelVersionStatusResult')
    UpdateRuleMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateRuleMetadataRequest', name: 'UpdateRuleMetadataRequest')
    UpdateRuleMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateRuleMetadataResult', name: 'UpdateRuleMetadataResult')
    UpdateRuleVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateRuleVersionRequest', name: 'UpdateRuleVersionRequest')
    UpdateRuleVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateRuleVersionResult', name: 'UpdateRuleVersionResult')
    UpdateVariableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateVariableRequest', name: 'UpdateVariableRequest')
    UpdateVariableResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#UpdateVariableResult', name: 'UpdateVariableResult')
    UseEventVariables = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.frauddetector#UseEventVariables', name: 'UseEventVariables')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Variable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#Variable', name: 'Variable')
    VariableEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#VariableEntry', name: 'VariableEntry')
    VariableEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#VariableEntryList', name: 'VariableEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    VariableImpactExplanation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#VariableImpactExplanation', name: 'VariableImpactExplanation')
    VariableImportanceMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.frauddetector#VariableImportanceMetrics', name: 'VariableImportanceMetrics')
    VariableList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#VariableList', name: 'VariableList')
    VariablesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#VariablesMaxResults', name: 'VariablesMaxResults', traits: {"smithy.api#range" => {"min" => 50, "max" => 100}})
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#attributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#attributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    BatchImportsMaxPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#batchImportsMaxPageSize', name: 'BatchImportsMaxPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    BatchPredictionsMaxPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#batchPredictionsMaxPageSize', name: 'BatchPredictionsMaxPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.frauddetector#blob', name: 'Blob')
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#contentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    EntityRestrictedString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#entityRestrictedString', name: 'EntityRestrictedString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z_.@+-]+$"})
    EntityTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#entityTypeList', name: 'EntityTypeList')
    EntityTypesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#entityTypesMaxResults', name: 'EntityTypesMaxResults', traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    EventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#eventTypeList', name: 'EventTypeList')
    EventTypesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#eventTypesMaxResults', name: 'EventTypesMaxResults', traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    FieldValidationMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#fieldValidationMessageList', name: 'FieldValidationMessageList')
    FileValidationMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#fileValidationMessageList', name: 'FileValidationMessageList')
    FilterString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#filterString', name: 'FilterString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.frauddetector#float', name: 'Float')
    FloatVersionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#floatVersionString', name: 'FloatVersionString', traits: {"smithy.api#length" => {"min" => 3, "max" => 7}, "smithy.api#pattern" => "^[1-9][0-9]{0,3}\\.[0-9]{1,2}$"})
    FraudDetectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#fraudDetectorArn', name: 'FraudDetectorArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn\\:aws[a-z-]{0,15}\\:frauddetector\\:[a-z0-9-]{3,20}\\:[0-9]{12}\\:[^\\s]{2,128}$"})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#iamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn\\:aws[a-z-]{0,15}\\:iam\\:\\:[0-9]{12}\\:role\\/[^\\s]{2,64}$"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#identifier', name: 'Identifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z_-]+$"})
    LabelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#labelList', name: 'LabelList')
    LabelMapper = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.frauddetector#labelMapper', name: 'LabelMapper')
    LabelsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#labelsMaxResults', name: 'LabelsMaxResults', traits: {"smithy.api#range" => {"min" => 10, "max" => 50}})
    ListOfEntities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#listOfEntities', name: 'ListOfEntities')
    ListOfVariableImpactExplanations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#listOfVariableImpactExplanations', name: 'ListOfVariableImpactExplanations')
    MetricDataPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#metricDataPointsList', name: 'MetricDataPointsList')
    ModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#modelIdentifier', name: 'ModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z_]+$"})
    ModelInputTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#modelInputTemplate', name: 'ModelInputTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    ModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#modelList', name: 'ModelList')
    ModelVersionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#modelVersionDetailList', name: 'ModelVersionDetailList')
    ModelsMaxPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.frauddetector#modelsMaxPageSize', name: 'ModelsMaxPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#nextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => ".*"})
    NoDashIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#noDashIdentifier', name: 'NoDashIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z_]+$"})
    RuleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#ruleExpression', name: 'RuleExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    S3BucketLocation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#s3BucketLocation', name: 'S3BucketLocation', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^s3:\\/\\/(.+)$"})
    SageMakerEndpointIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#sageMakerEndpointIdentifier', name: 'SageMakerEndpointIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#sensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#string', name: 'String')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#tagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#tagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.frauddetector#tagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#tagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Time = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#time', name: 'Time', traits: {"smithy.api#length" => {"min" => 11, "max" => 30}})
    UtcTimestampISO8601 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#utcTimestampISO8601', name: 'UtcTimestampISO8601', traits: {"smithy.api#length" => {"min" => 10, "max" => 30}})
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#variableName', name: 'VariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VariableType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#variableType', name: 'VariableType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z_]{1,64}$"})
    VariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#variableValue', name: 'VariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#sensitive" => {}})
    WholeNumberVersionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.frauddetector#wholeNumberVersionString', name: 'WholeNumberVersionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^([1-9][0-9]*)$"})

    ATIMetricDataPoint.add_member(:cr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'cr'))
    ATIMetricDataPoint.add_member(:adr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'adr'))
    ATIMetricDataPoint.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'threshold'))
    ATIMetricDataPoint.add_member(:atodr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'atodr'))
    ATIMetricDataPoint.type = Types::ATIMetricDataPoint
    ATIMetricDataPointsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ATIMetricDataPoint)
    ATIModelPerformance.add_member(:asi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'asi'))
    ATIModelPerformance.type = Types::ATIModelPerformance
    ATITrainingMetricsValue.add_member(:metric_data_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ATIMetricDataPointsList, location_name: 'metricDataPoints'))
    ATITrainingMetricsValue.add_member(:model_performance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ATIModelPerformance, location_name: 'modelPerformance'))
    ATITrainingMetricsValue.type = Types::ATITrainingMetricsValue
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AggregatedLogOddsMetric.add_member(:variable_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'variableNames', traits: {"smithy.api#required" => {}}))
    AggregatedLogOddsMetric.add_member(:aggregated_variables_importance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'aggregatedVariablesImportance', traits: {"smithy.api#required" => {}}))
    AggregatedLogOddsMetric.type = Types::AggregatedLogOddsMetric
    AggregatedVariablesImpactExplanation.add_member(:event_variable_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'eventVariableNames'))
    AggregatedVariablesImpactExplanation.add_member(:relative_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'relativeImpact'))
    AggregatedVariablesImpactExplanation.add_member(:log_odds_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'logOddsImpact'))
    AggregatedVariablesImpactExplanation.type = Types::AggregatedVariablesImpactExplanation
    AggregatedVariablesImportanceMetrics.add_member(:log_odds_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAggregatedLogOddsMetrics, location_name: 'logOddsMetrics'))
    AggregatedVariablesImportanceMetrics.type = Types::AggregatedVariablesImportanceMetrics
    AllowDenyList.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDashIdentifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AllowDenyList.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AllowDenyList.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableType, location_name: 'variableType'))
    AllowDenyList.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    AllowDenyList.add_member(:updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'updatedTime'))
    AllowDenyList.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    AllowDenyList.type = Types::AllowDenyList
    AllowDenyLists.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowDenyList)
    AsyncJobStatus.add_member(:in_progress_initializing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS_INITIALIZING', traits: {"smithy.api#enumValue" => "IN_PROGRESS_INITIALIZING"}))
    AsyncJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AsyncJobStatus.add_member(:cancel_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CANCEL_IN_PROGRESS"}))
    AsyncJobStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    AsyncJobStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AsyncJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BatchCreateVariableError.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    BatchCreateVariableError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer2, location_name: 'code', traits: {"smithy.api#default" => 0}))
    BatchCreateVariableError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BatchCreateVariableError.type = Types::BatchCreateVariableError
    BatchCreateVariableErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateVariableError)
    BatchCreateVariableRequest.add_member(:variable_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableEntryList, location_name: 'variableEntries', traits: {"smithy.api#required" => {}}))
    BatchCreateVariableRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    BatchCreateVariableRequest.type = Types::BatchCreateVariableRequest
    BatchCreateVariableResult.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateVariableErrorList, location_name: 'errors'))
    BatchCreateVariableResult.type = Types::BatchCreateVariableResult
    BatchGetVariableError.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    BatchGetVariableError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer2, location_name: 'code', traits: {"smithy.api#default" => 0}))
    BatchGetVariableError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BatchGetVariableError.type = Types::BatchGetVariableError
    BatchGetVariableErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetVariableError)
    BatchGetVariableRequest.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameList, location_name: 'names', traits: {"smithy.api#required" => {}}))
    BatchGetVariableRequest.type = Types::BatchGetVariableRequest
    BatchGetVariableResult.add_member(:variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableList, location_name: 'variables'))
    BatchGetVariableResult.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetVariableErrorList, location_name: 'errors'))
    BatchGetVariableResult.type = Types::BatchGetVariableResult
    BatchImport.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId'))
    BatchImport.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncJobStatus, location_name: 'status'))
    BatchImport.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason'))
    BatchImport.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime'))
    BatchImport.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'completionTime'))
    BatchImport.add_member(:input_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'inputPath'))
    BatchImport.add_member(:output_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'outputPath'))
    BatchImport.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    BatchImport.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'iamRoleArn'))
    BatchImport.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    BatchImport.add_member(:processed_records_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'processedRecordsCount'))
    BatchImport.add_member(:failed_records_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failedRecordsCount'))
    BatchImport.add_member(:total_records_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalRecordsCount'))
    BatchImport.type = Types::BatchImport
    BatchImportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImport)
    BatchPrediction.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId'))
    BatchPrediction.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncJobStatus, location_name: 'status'))
    BatchPrediction.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureReason'))
    BatchPrediction.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime'))
    BatchPrediction.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'completionTime'))
    BatchPrediction.add_member(:last_heartbeat_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastHeartbeatTime'))
    BatchPrediction.add_member(:input_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'inputPath'))
    BatchPrediction.add_member(:output_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'outputPath'))
    BatchPrediction.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    BatchPrediction.add_member(:detector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorName'))
    BatchPrediction.add_member(:detector_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'detectorVersion'))
    BatchPrediction.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'iamRoleArn'))
    BatchPrediction.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    BatchPrediction.add_member(:processed_records_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'processedRecordsCount'))
    BatchPrediction.add_member(:total_records_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalRecordsCount'))
    BatchPrediction.type = Types::BatchPrediction
    BatchPredictionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPrediction)
    CancelBatchImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    CancelBatchImportJobRequest.type = Types::CancelBatchImportJobRequest
    CancelBatchImportJobResult.type = Types::CancelBatchImportJobResult
    CancelBatchPredictionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    CancelBatchPredictionJobRequest.type = Types::CancelBatchPredictionJobRequest
    CancelBatchPredictionJobResult.type = Types::CancelBatchPredictionJobResult
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateBatchImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    CreateBatchImportJobRequest.add_member(:input_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'inputPath', traits: {"smithy.api#required" => {}}))
    CreateBatchImportJobRequest.add_member(:output_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'outputPath', traits: {"smithy.api#required" => {}}))
    CreateBatchImportJobRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    CreateBatchImportJobRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'iamRoleArn', traits: {"smithy.api#required" => {}}))
    CreateBatchImportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateBatchImportJobRequest.type = Types::CreateBatchImportJobRequest
    CreateBatchImportJobResult.type = Types::CreateBatchImportJobResult
    CreateBatchPredictionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionJobRequest.add_member(:input_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'inputPath', traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionJobRequest.add_member(:output_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'outputPath', traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionJobRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionJobRequest.add_member(:detector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorName', traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionJobRequest.add_member(:detector_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersion'))
    CreateBatchPredictionJobRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'iamRoleArn', traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateBatchPredictionJobRequest.type = Types::CreateBatchPredictionJobRequest
    CreateBatchPredictionJobResult.type = Types::CreateBatchPredictionJobResult
    CreateDetectorVersionRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    CreateDetectorVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateDetectorVersionRequest.add_member(:external_model_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'externalModelEndpoints'))
    CreateDetectorVersionRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'rules', traits: {"smithy.api#required" => {}}))
    CreateDetectorVersionRequest.add_member(:model_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: 'modelVersions'))
    CreateDetectorVersionRequest.add_member(:rule_execution_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: 'ruleExecutionMode'))
    CreateDetectorVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateDetectorVersionRequest.type = Types::CreateDetectorVersionRequest
    CreateDetectorVersionResult.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    CreateDetectorVersionResult.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId'))
    CreateDetectorVersionResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: 'status'))
    CreateDetectorVersionResult.type = Types::CreateDetectorVersionResult
    CreateListRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDashIdentifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateListRequest.add_member(:elements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElementsList, location_name: 'elements'))
    CreateListRequest.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableType, location_name: 'variableType'))
    CreateListRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateListRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateListRequest.type = Types::CreateListRequest
    CreateListResult.type = Types::CreateListResult
    CreateModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    CreateModelRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    CreateModelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateModelRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    CreateModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateModelResult.type = Types::CreateModelResult
    CreateModelVersionRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    CreateModelVersionRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    CreateModelVersionRequest.add_member(:training_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, location_name: 'trainingDataSource', traits: {"smithy.api#required" => {}}))
    CreateModelVersionRequest.add_member(:training_data_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataSchema, location_name: 'trainingDataSchema', traits: {"smithy.api#required" => {}}))
    CreateModelVersionRequest.add_member(:external_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: 'externalEventsDetail'))
    CreateModelVersionRequest.add_member(:ingested_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: 'ingestedEventsDetail'))
    CreateModelVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateModelVersionRequest.type = Types::CreateModelVersionRequest
    CreateModelVersionResult.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    CreateModelVersionResult.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    CreateModelVersionResult.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber'))
    CreateModelVersionResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    CreateModelVersionResult.type = Types::CreateModelVersionResult
    CreateRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ruleId', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateRuleRequest.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExpression, location_name: 'expression', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: 'outcomes', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResult.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'rule'))
    CreateRuleResult.type = Types::CreateRuleResult
    CreateVariableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateVariableRequest.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: 'dataType', traits: {"smithy.api#required" => {}}))
    CreateVariableRequest.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#required" => {}}))
    CreateVariableRequest.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultValue', traits: {"smithy.api#required" => {}}))
    CreateVariableRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    CreateVariableRequest.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'variableType'))
    CreateVariableRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateVariableRequest.type = Types::CreateVariableRequest
    CreateVariableResult.type = Types::CreateVariableResult
    CsvIndexToVariableMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    CsvIndexToVariableMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataSource.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    DataSource.add_member(:model_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL_SCORE', traits: {"smithy.api#enumValue" => "MODEL_SCORE"}))
    DataSource.add_member(:external_model_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_MODEL_SCORE', traits: {"smithy.api#enumValue" => "EXTERNAL_MODEL_SCORE"}))
    DataType.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    DataType.add_member(:integer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "INTEGER"}))
    DataType.add_member(:float, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT', traits: {"smithy.api#enumValue" => "FLOAT"}))
    DataType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    DataType.add_member(:datetime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATETIME', traits: {"smithy.api#enumValue" => "DATETIME"}))
    DataValidationMetrics.add_member(:file_level_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileValidationMessageList, location_name: 'fileLevelMessages'))
    DataValidationMetrics.add_member(:field_level_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValidationMessageList, location_name: 'fieldLevelMessages'))
    DataValidationMetrics.type = Types::DataValidationMetrics
    DeleteBatchImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    DeleteBatchImportJobRequest.type = Types::DeleteBatchImportJobRequest
    DeleteBatchImportJobResult.type = Types::DeleteBatchImportJobResult
    DeleteBatchPredictionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    DeleteBatchPredictionJobRequest.type = Types::DeleteBatchPredictionJobRequest
    DeleteBatchPredictionJobResult.type = Types::DeleteBatchPredictionJobResult
    DeleteDetectorRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    DeleteDetectorRequest.type = Types::DeleteDetectorRequest
    DeleteDetectorResult.type = Types::DeleteDetectorResult
    DeleteDetectorVersionRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    DeleteDetectorVersionRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId', traits: {"smithy.api#required" => {}}))
    DeleteDetectorVersionRequest.type = Types::DeleteDetectorVersionRequest
    DeleteDetectorVersionResult.type = Types::DeleteDetectorVersionResult
    DeleteEntityTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteEntityTypeRequest.type = Types::DeleteEntityTypeRequest
    DeleteEntityTypeResult.type = Types::DeleteEntityTypeResult
    DeleteEventRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    DeleteEventRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    DeleteEventRequest.add_member(:delete_audit_history, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuditHistory, location_name: 'deleteAuditHistory'))
    DeleteEventRequest.type = Types::DeleteEventRequest
    DeleteEventResult.type = Types::DeleteEventResult
    DeleteEventTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteEventTypeRequest.type = Types::DeleteEventTypeRequest
    DeleteEventTypeResult.type = Types::DeleteEventTypeResult
    DeleteEventsByEventTypeRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    DeleteEventsByEventTypeRequest.type = Types::DeleteEventsByEventTypeRequest
    DeleteEventsByEventTypeResult.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    DeleteEventsByEventTypeResult.add_member(:events_deletion_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventsDeletionStatus'))
    DeleteEventsByEventTypeResult.type = Types::DeleteEventsByEventTypeResult
    DeleteExternalModelRequest.add_member(:model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerEndpointIdentifier, location_name: 'modelEndpoint', traits: {"smithy.api#required" => {}}))
    DeleteExternalModelRequest.type = Types::DeleteExternalModelRequest
    DeleteExternalModelResult.type = Types::DeleteExternalModelResult
    DeleteLabelRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteLabelRequest.type = Types::DeleteLabelRequest
    DeleteLabelResult.type = Types::DeleteLabelResult
    DeleteListRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDashIdentifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteListRequest.type = Types::DeleteListRequest
    DeleteListResult.type = Types::DeleteListResult
    DeleteModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteModelResult.type = Types::DeleteModelResult
    DeleteModelVersionRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    DeleteModelVersionRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    DeleteModelVersionRequest.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber', traits: {"smithy.api#required" => {}}))
    DeleteModelVersionRequest.type = Types::DeleteModelVersionRequest
    DeleteModelVersionResult.type = Types::DeleteModelVersionResult
    DeleteOutcomeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteOutcomeRequest.type = Types::DeleteOutcomeRequest
    DeleteOutcomeResult.type = Types::DeleteOutcomeResult
    DeleteRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'rule', traits: {"smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResult.type = Types::DeleteRuleResult
    DeleteVariableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteVariableRequest.type = Types::DeleteVariableRequest
    DeleteVariableResult.type = Types::DeleteVariableResult
    DescribeDetectorRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    DescribeDetectorRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeDetectorRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionMaxResults, location_name: 'maxResults'))
    DescribeDetectorRequest.type = Types::DescribeDetectorRequest
    DescribeDetectorResult.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    DescribeDetectorResult.add_member(:detector_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionSummaryList, location_name: 'detectorVersionSummaries'))
    DescribeDetectorResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeDetectorResult.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    DescribeDetectorResult.type = Types::DescribeDetectorResult
    DescribeModelVersionsRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    DescribeModelVersionsRequest.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber'))
    DescribeModelVersionsRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    DescribeModelVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeModelVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelsMaxPageSize, location_name: 'maxResults'))
    DescribeModelVersionsRequest.type = Types::DescribeModelVersionsRequest
    DescribeModelVersionsResult.add_member(:model_version_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionDetailList, location_name: 'modelVersionDetails'))
    DescribeModelVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeModelVersionsResult.type = Types::DescribeModelVersionsResult
    Detector.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    Detector.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Detector.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    Detector.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    Detector.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    Detector.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    Detector.type = Types::Detector
    DetectorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Detector)
    DetectorVersionStatus.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    DetectorVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DetectorVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DetectorVersionSummary.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId'))
    DetectorVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: 'status'))
    DetectorVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    DetectorVersionSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    DetectorVersionSummary.type = Types::DetectorVersionSummary
    DetectorVersionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionSummary)
    ElementsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Elements)
    Entity.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'entityType', traits: {"smithy.api#required" => {}}))
    Entity.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRestrictedString, location_name: 'entityId', traits: {"smithy.api#required" => {}}))
    Entity.type = Types::Entity
    EntityType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EntityType.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EntityType.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    EntityType.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    EntityType.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    EntityType.type = Types::EntityType
    EvaluatedExternalModel.add_member(:model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelEndpoint'))
    EvaluatedExternalModel.add_member(:use_event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'useEventVariables'))
    EvaluatedExternalModel.add_member(:input_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStrings, location_name: 'inputVariables'))
    EvaluatedExternalModel.add_member(:output_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStrings, location_name: 'outputVariables'))
    EvaluatedExternalModel.type = Types::EvaluatedExternalModel
    EvaluatedModelVersion.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelId'))
    EvaluatedModelVersion.add_member(:model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelVersion'))
    EvaluatedModelVersion.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelType'))
    EvaluatedModelVersion.add_member(:evaluations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfModelVersionEvaluations, location_name: 'evaluations'))
    EvaluatedModelVersion.type = Types::EvaluatedModelVersion
    EvaluatedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ruleId'))
    EvaluatedRule.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'ruleVersion'))
    EvaluatedRule.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'expression'))
    EvaluatedRule.add_member(:expression_with_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'expressionWithValues'))
    EvaluatedRule.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'outcomes'))
    EvaluatedRule.add_member(:evaluated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'evaluated'))
    EvaluatedRule.add_member(:matched, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'matched'))
    EvaluatedRule.type = Types::EvaluatedRule
    EvaluatedRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatedRule)
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventId'))
    Event.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventTypeName'))
    Event.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventTimestamp'))
    Event.add_member(:event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAttributeMap, location_name: 'eventVariables'))
    Event.add_member(:current_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'currentLabel'))
    Event.add_member(:label_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'labelTimestamp'))
    Event.add_member(:entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEntities, location_name: 'entities'))
    Event.type = Types::Event
    EventAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey)
    EventAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    EventIngestion.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EventIngestion.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EventOrchestration.add_member(:event_bridge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'eventBridgeEnabled', traits: {"smithy.api#required" => {}}))
    EventOrchestration.type = Types::EventOrchestration
    EventPredictionSummary.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventId'))
    EventPredictionSummary.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    EventPredictionSummary.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'eventTimestamp'))
    EventPredictionSummary.add_member(:prediction_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'predictionTimestamp'))
    EventPredictionSummary.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    EventPredictionSummary.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId'))
    EventPredictionSummary.type = Types::EventPredictionSummary
    EventType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EventType.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EventType.add_member(:event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'eventVariables'))
    EventType.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'labels'))
    EventType.add_member(:entity_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: 'entityTypes'))
    EventType.add_member(:event_ingestion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventIngestion, location_name: 'eventIngestion'))
    EventType.add_member(:ingested_event_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedEventStatistics, location_name: 'ingestedEventStatistics'))
    EventType.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    EventType.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    EventType.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    EventType.add_member(:event_orchestration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventOrchestration, location_name: 'eventOrchestration'))
    EventType.type = Types::EventType
    EventVariableMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName)
    EventVariableMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue)
    EventVariableSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'name'))
    EventVariableSummary.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'value'))
    EventVariableSummary.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'source'))
    EventVariableSummary.type = Types::EventVariableSummary
    ExternalEventsDetail.add_member(:data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketLocation, location_name: 'dataLocation', traits: {"smithy.api#required" => {}}))
    ExternalEventsDetail.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'dataAccessRoleArn', traits: {"smithy.api#required" => {}}))
    ExternalEventsDetail.type = Types::ExternalEventsDetail
    ExternalModel.add_member(:model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelEndpoint'))
    ExternalModel.add_member(:model_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSource, location_name: 'modelSource'))
    ExternalModel.add_member(:invoke_model_endpoint_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invokeModelEndpointRoleArn'))
    ExternalModel.add_member(:input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInputConfiguration, location_name: 'inputConfiguration'))
    ExternalModel.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelOutputConfiguration, location_name: 'outputConfiguration'))
    ExternalModel.add_member(:model_endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelEndpointStatus, location_name: 'modelEndpointStatus'))
    ExternalModel.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    ExternalModel.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    ExternalModel.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    ExternalModel.type = Types::ExternalModel
    ExternalModelEndpointDataBlobMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerEndpointIdentifier)
    ExternalModelEndpointDataBlobMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelEndpointDataBlob)
    ExternalModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModel)
    ExternalModelOutputs.add_member(:external_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModelSummary, location_name: 'externalModel'))
    ExternalModelOutputs.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModelPredictionMap, location_name: 'outputs'))
    ExternalModelOutputs.type = Types::ExternalModelOutputs
    ExternalModelPredictionMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ExternalModelPredictionMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ExternalModelSummary.add_member(:model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelEndpoint'))
    ExternalModelSummary.add_member(:model_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSource, location_name: 'modelSource'))
    ExternalModelSummary.type = Types::ExternalModelSummary
    FieldValidationMessage.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fieldName'))
    FieldValidationMessage.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identifier'))
    FieldValidationMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'title'))
    FieldValidationMessage.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'content'))
    FieldValidationMessage.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    FieldValidationMessage.type = Types::FieldValidationMessage
    FileValidationMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'title'))
    FileValidationMessage.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'content'))
    FileValidationMessage.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    FileValidationMessage.type = Types::FileValidationMessage
    FilterCondition.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterString, location_name: 'value'))
    FilterCondition.type = Types::FilterCondition
    GetBatchImportJobsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId'))
    GetBatchImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportsMaxPageSize, location_name: 'maxResults'))
    GetBatchImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetBatchImportJobsRequest.type = Types::GetBatchImportJobsRequest
    GetBatchImportJobsResult.add_member(:batch_imports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportList, location_name: 'batchImports'))
    GetBatchImportJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetBatchImportJobsResult.type = Types::GetBatchImportJobsResult
    GetBatchPredictionJobsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'jobId'))
    GetBatchPredictionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPredictionsMaxPageSize, location_name: 'maxResults'))
    GetBatchPredictionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetBatchPredictionJobsRequest.type = Types::GetBatchPredictionJobsRequest
    GetBatchPredictionJobsResult.add_member(:batch_predictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPredictionList, location_name: 'batchPredictions'))
    GetBatchPredictionJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetBatchPredictionJobsResult.type = Types::GetBatchPredictionJobsResult
    GetDeleteEventsByEventTypeStatusRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    GetDeleteEventsByEventTypeStatusRequest.type = Types::GetDeleteEventsByEventTypeStatusRequest
    GetDeleteEventsByEventTypeStatusResult.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    GetDeleteEventsByEventTypeStatusResult.add_member(:events_deletion_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncJobStatus, location_name: 'eventsDeletionStatus'))
    GetDeleteEventsByEventTypeStatusResult.type = Types::GetDeleteEventsByEventTypeStatusResult
    GetDetectorVersionRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    GetDetectorVersionRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId', traits: {"smithy.api#required" => {}}))
    GetDetectorVersionRequest.type = Types::GetDetectorVersionRequest
    GetDetectorVersionResult.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    GetDetectorVersionResult.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId'))
    GetDetectorVersionResult.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetDetectorVersionResult.add_member(:external_model_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'externalModelEndpoints'))
    GetDetectorVersionResult.add_member(:model_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: 'modelVersions'))
    GetDetectorVersionResult.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'rules'))
    GetDetectorVersionResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: 'status'))
    GetDetectorVersionResult.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    GetDetectorVersionResult.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    GetDetectorVersionResult.add_member(:rule_execution_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: 'ruleExecutionMode'))
    GetDetectorVersionResult.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    GetDetectorVersionResult.type = Types::GetDetectorVersionResult
    GetDetectorsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    GetDetectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetDetectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorsMaxResults, location_name: 'maxResults'))
    GetDetectorsRequest.type = Types::GetDetectorsRequest
    GetDetectorsResult.add_member(:detectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorList, location_name: 'detectors'))
    GetDetectorsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetDetectorsResult.type = Types::GetDetectorsResult
    GetEntityTypesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name'))
    GetEntityTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetEntityTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypesMaxResults, location_name: 'maxResults'))
    GetEntityTypesRequest.type = Types::GetEntityTypesRequest
    GetEntityTypesResult.add_member(:entity_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypeList, location_name: 'entityTypes'))
    GetEntityTypesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetEntityTypesResult.type = Types::GetEntityTypesResult
    GetEventPredictionMetadataRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    GetEventPredictionMetadataRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    GetEventPredictionMetadataRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    GetEventPredictionMetadataRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId', traits: {"smithy.api#required" => {}}))
    GetEventPredictionMetadataRequest.add_member(:prediction_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'predictionTimestamp', traits: {"smithy.api#required" => {}}))
    GetEventPredictionMetadataRequest.type = Types::GetEventPredictionMetadataRequest
    GetEventPredictionMetadataResult.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventId'))
    GetEventPredictionMetadataResult.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    GetEventPredictionMetadataResult.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'entityId'))
    GetEventPredictionMetadataResult.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'entityType'))
    GetEventPredictionMetadataResult.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'eventTimestamp'))
    GetEventPredictionMetadataResult.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    GetEventPredictionMetadataResult.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId'))
    GetEventPredictionMetadataResult.add_member(:detector_version_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'detectorVersionStatus'))
    GetEventPredictionMetadataResult.add_member(:event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEventVariableSummaries, location_name: 'eventVariables'))
    GetEventPredictionMetadataResult.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatedRuleList, location_name: 'rules'))
    GetEventPredictionMetadataResult.add_member(:rule_execution_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: 'ruleExecutionMode'))
    GetEventPredictionMetadataResult.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'outcomes'))
    GetEventPredictionMetadataResult.add_member(:evaluated_model_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEvaluatedModelVersions, location_name: 'evaluatedModelVersions'))
    GetEventPredictionMetadataResult.add_member(:evaluated_external_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEvaluatedExternalModels, location_name: 'evaluatedExternalModels'))
    GetEventPredictionMetadataResult.add_member(:prediction_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'predictionTimestamp'))
    GetEventPredictionMetadataResult.type = Types::GetEventPredictionMetadataResult
    GetEventPredictionRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    GetEventPredictionRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId'))
    GetEventPredictionRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    GetEventPredictionRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    GetEventPredictionRequest.add_member(:entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEntities, location_name: 'entities', traits: {"smithy.api#required" => {}}))
    GetEventPredictionRequest.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtcTimestampISO8601, location_name: 'eventTimestamp', traits: {"smithy.api#required" => {}}))
    GetEventPredictionRequest.add_member(:event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventVariableMap, location_name: 'eventVariables', traits: {"smithy.api#required" => {}}))
    GetEventPredictionRequest.add_member(:external_model_endpoint_data_blobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModelEndpointDataBlobMap, location_name: 'externalModelEndpointDataBlobs'))
    GetEventPredictionRequest.type = Types::GetEventPredictionRequest
    GetEventPredictionResult.add_member(:model_scores, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfModelScores, location_name: 'modelScores'))
    GetEventPredictionResult.add_member(:rule_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRuleResults, location_name: 'ruleResults'))
    GetEventPredictionResult.add_member(:external_model_outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfExternalModelOutputs, location_name: 'externalModelOutputs'))
    GetEventPredictionResult.type = Types::GetEventPredictionResult
    GetEventRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    GetEventRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    GetEventRequest.type = Types::GetEventRequest
    GetEventResult.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'event'))
    GetEventResult.type = Types::GetEventResult
    GetEventTypesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name'))
    GetEventTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetEventTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypesMaxResults, location_name: 'maxResults'))
    GetEventTypesRequest.type = Types::GetEventTypesRequest
    GetEventTypesResult.add_member(:event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'eventTypes'))
    GetEventTypesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetEventTypesResult.type = Types::GetEventTypesResult
    GetExternalModelsRequest.add_member(:model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelEndpoint'))
    GetExternalModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetExternalModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModelsMaxResults, location_name: 'maxResults'))
    GetExternalModelsRequest.type = Types::GetExternalModelsRequest
    GetExternalModelsResult.add_member(:external_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModelList, location_name: 'externalModels'))
    GetExternalModelsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetExternalModelsResult.type = Types::GetExternalModelsResult
    GetKMSEncryptionKeyResult.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'kmsKey'))
    GetKMSEncryptionKeyResult.type = Types::GetKMSEncryptionKeyResult
    GetLabelsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name'))
    GetLabelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetLabelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsMaxResults, location_name: 'maxResults'))
    GetLabelsRequest.type = Types::GetLabelsRequest
    GetLabelsResult.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelList, location_name: 'labels'))
    GetLabelsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetLabelsResult.type = Types::GetLabelsResult
    GetListElementsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDashIdentifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetListElementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetListElementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListsElementsMaxResults, location_name: 'maxResults'))
    GetListElementsRequest.type = Types::GetListElementsRequest
    GetListElementsResult.add_member(:elements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElementsList, location_name: 'elements'))
    GetListElementsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetListElementsResult.type = Types::GetListElementsResult
    GetListsMetadataRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDashIdentifier, location_name: 'name'))
    GetListsMetadataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetListsMetadataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListsMetadataMaxResults, location_name: 'maxResults'))
    GetListsMetadataRequest.type = Types::GetListsMetadataRequest
    GetListsMetadataResult.add_member(:lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowDenyLists, location_name: 'lists'))
    GetListsMetadataResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetListsMetadataResult.type = Types::GetListsMetadataResult
    GetModelVersionRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    GetModelVersionRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    GetModelVersionRequest.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber', traits: {"smithy.api#required" => {}}))
    GetModelVersionRequest.type = Types::GetModelVersionRequest
    GetModelVersionResult.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    GetModelVersionResult.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    GetModelVersionResult.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber'))
    GetModelVersionResult.add_member(:training_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, location_name: 'trainingDataSource'))
    GetModelVersionResult.add_member(:training_data_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataSchema, location_name: 'trainingDataSchema'))
    GetModelVersionResult.add_member(:external_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: 'externalEventsDetail'))
    GetModelVersionResult.add_member(:ingested_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: 'ingestedEventsDetail'))
    GetModelVersionResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    GetModelVersionResult.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    GetModelVersionResult.type = Types::GetModelVersionResult
    GetModelsRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    GetModelsRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    GetModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelsMaxPageSize, location_name: 'maxResults'))
    GetModelsRequest.type = Types::GetModelsRequest
    GetModelsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetModelsResult.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelList, location_name: 'models'))
    GetModelsResult.type = Types::GetModelsResult
    GetOutcomesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name'))
    GetOutcomesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetOutcomesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutcomesMaxResults, location_name: 'maxResults'))
    GetOutcomesRequest.type = Types::GetOutcomesRequest
    GetOutcomesResult.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutcomeList, location_name: 'outcomes'))
    GetOutcomesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetOutcomesResult.type = Types::GetOutcomesResult
    GetRulesRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ruleId'))
    GetRulesRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    GetRulesRequest.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'ruleVersion'))
    GetRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesMaxResults, location_name: 'maxResults'))
    GetRulesRequest.type = Types::GetRulesRequest
    GetRulesResult.add_member(:rule_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDetailList, location_name: 'ruleDetails'))
    GetRulesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetRulesResult.type = Types::GetRulesResult
    GetVariablesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    GetVariablesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetVariablesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariablesMaxResults, location_name: 'maxResults'))
    GetVariablesRequest.type = Types::GetVariablesRequest
    GetVariablesResult.add_member(:variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableList, location_name: 'variables'))
    GetVariablesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetVariablesResult.type = Types::GetVariablesResult
    IngestedEventStatistics.add_member(:number_of_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'numberOfEvents'))
    IngestedEventStatistics.add_member(:event_data_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'eventDataSizeInBytes'))
    IngestedEventStatistics.add_member(:least_recent_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'leastRecentEvent'))
    IngestedEventStatistics.add_member(:most_recent_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'mostRecentEvent'))
    IngestedEventStatistics.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    IngestedEventStatistics.type = Types::IngestedEventStatistics
    IngestedEventsDetail.add_member(:ingested_events_time_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedEventsTimeWindow, location_name: 'ingestedEventsTimeWindow', traits: {"smithy.api#required" => {}}))
    IngestedEventsDetail.type = Types::IngestedEventsDetail
    IngestedEventsTimeWindow.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    IngestedEventsTimeWindow.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#required" => {}}))
    IngestedEventsTimeWindow.type = Types::IngestedEventsTimeWindow
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JsonKeyToVariableMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    JsonKeyToVariableMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    KMSKey.add_member(:kms_encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsEncryptionKeyArn, location_name: 'kmsEncryptionKeyArn'))
    KMSKey.type = Types::KMSKey
    Label.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    Label.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Label.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    Label.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    Label.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    Label.type = Types::Label
    LabelSchema.add_member(:label_mapper, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelMapper, location_name: 'labelMapper'))
    LabelSchema.add_member(:unlabeled_events_treatment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlabeledEventsTreatment, location_name: 'unlabeledEventsTreatment'))
    LabelSchema.type = Types::LabelSchema
    Language.add_member(:detectorpl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETECTORPL', traits: {"smithy.api#enumValue" => "DETECTORPL"}))
    ListEventPredictionsRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCondition, location_name: 'eventId'))
    ListEventPredictionsRequest.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCondition, location_name: 'eventType'))
    ListEventPredictionsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCondition, location_name: 'detectorId'))
    ListEventPredictionsRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCondition, location_name: 'detectorVersionId'))
    ListEventPredictionsRequest.add_member(:prediction_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: 'predictionTimeRange'))
    ListEventPredictionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListEventPredictionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventPredictionsMaxResults, location_name: 'maxResults'))
    ListEventPredictionsRequest.type = Types::ListEventPredictionsRequest
    ListEventPredictionsResult.add_member(:event_prediction_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEventPredictionSummaries, location_name: 'eventPredictionSummaries'))
    ListEventPredictionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListEventPredictionsResult.type = Types::ListEventPredictionsResult
    ListOfAggregatedLogOddsMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedLogOddsMetric)
    ListOfAggregatedVariablesImpactExplanations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedVariablesImpactExplanation)
    ListOfEvaluatedExternalModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatedExternalModel)
    ListOfEvaluatedModelVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatedModelVersion)
    ListOfEventPredictionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventPredictionSummary)
    ListOfEventVariableSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventVariableSummary)
    ListOfExternalModelOutputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalModelOutputs)
    ListOfLogOddsMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogOddsMetric)
    ListOfModelScores.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelScores)
    ListOfModelVersionEvaluations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionEvaluation)
    ListOfModelVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion)
    ListOfRuleResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleResult)
    ListOfStrings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'resourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMaxResults, location_name: 'maxResults'))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ListTagsForResourceResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    ListUpdateMode.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    ListUpdateMode.add_member(:append, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPEND', traits: {"smithy.api#enumValue" => "APPEND"}))
    ListUpdateMode.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    LogOddsMetric.add_member(:variable_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'variableName', traits: {"smithy.api#required" => {}}))
    LogOddsMetric.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'variableType', traits: {"smithy.api#required" => {}}))
    LogOddsMetric.add_member(:variable_importance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'variableImportance', traits: {"smithy.api#required" => {}}))
    LogOddsMetric.type = Types::LogOddsMetric
    MapOfStrings.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStrings.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MetricDataPoint.add_member(:fpr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'fpr'))
    MetricDataPoint.add_member(:precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'precision'))
    MetricDataPoint.add_member(:tpr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'tpr'))
    MetricDataPoint.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'threshold'))
    MetricDataPoint.type = Types::MetricDataPoint
    Model.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    Model.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    Model.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Model.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventTypeName'))
    Model.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    Model.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    Model.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    Model.type = Types::Model
    ModelEndpointDataBlob.add_member(:byte_buffer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'byteBuffer'))
    ModelEndpointDataBlob.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType'))
    ModelEndpointDataBlob.type = Types::ModelEndpointDataBlob
    ModelEndpointStatus.add_member(:associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ModelEndpointStatus.add_member(:dissociated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISSOCIATED', traits: {"smithy.api#enumValue" => "DISSOCIATED"}))
    ModelInputConfiguration.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName'))
    ModelInputConfiguration.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInputDataFormat, location_name: 'format'))
    ModelInputConfiguration.add_member(:use_event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UseEventVariables, location_name: 'useEventVariables', traits: {"smithy.api#required" => {}}))
    ModelInputConfiguration.add_member(:json_input_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInputTemplate, location_name: 'jsonInputTemplate'))
    ModelInputConfiguration.add_member(:csv_input_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInputTemplate, location_name: 'csvInputTemplate'))
    ModelInputConfiguration.type = Types::ModelInputConfiguration
    ModelInputDataFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "TEXT_CSV"}))
    ModelInputDataFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "APPLICATION_JSON"}))
    ModelOutputConfiguration.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelOutputDataFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    ModelOutputConfiguration.add_member(:json_key_to_variable_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonKeyToVariableMap, location_name: 'jsonKeyToVariableMap'))
    ModelOutputConfiguration.add_member(:csv_index_to_variable_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsvIndexToVariableMap, location_name: 'csvIndexToVariableMap'))
    ModelOutputConfiguration.type = Types::ModelOutputConfiguration
    ModelOutputDataFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "TEXT_CSV"}))
    ModelOutputDataFormat.add_member(:jsonlines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSONLINES', traits: {"smithy.api#enumValue" => "APPLICATION_JSONLINES"}))
    ModelPredictionMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ModelPredictionMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float)
    ModelScores.add_member(:model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'modelVersion'))
    ModelScores.add_member(:scores, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPredictionMap, location_name: 'scores'))
    ModelScores.type = Types::ModelScores
    ModelSource.add_member(:sagemaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER', traits: {"smithy.api#enumValue" => "SAGEMAKER"}))
    ModelTypeEnum.add_member(:online_fraud_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLINE_FRAUD_INSIGHTS', traits: {"smithy.api#enumValue" => "ONLINE_FRAUD_INSIGHTS"}))
    ModelTypeEnum.add_member(:transaction_fraud_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSACTION_FRAUD_INSIGHTS', traits: {"smithy.api#enumValue" => "TRANSACTION_FRAUD_INSIGHTS"}))
    ModelTypeEnum.add_member(:account_takeover_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_TAKEOVER_INSIGHTS', traits: {"smithy.api#enumValue" => "ACCOUNT_TAKEOVER_INSIGHTS"}))
    ModelVersion.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    ModelVersion.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    ModelVersion.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber', traits: {"smithy.api#required" => {}}))
    ModelVersion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    ModelVersion.type = Types::ModelVersion
    ModelVersionDetail.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    ModelVersionDetail.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    ModelVersionDetail.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber'))
    ModelVersionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    ModelVersionDetail.add_member(:training_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, location_name: 'trainingDataSource'))
    ModelVersionDetail.add_member(:training_data_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataSchema, location_name: 'trainingDataSchema'))
    ModelVersionDetail.add_member(:external_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: 'externalEventsDetail'))
    ModelVersionDetail.add_member(:ingested_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: 'ingestedEventsDetail'))
    ModelVersionDetail.add_member(:training_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingResult, location_name: 'trainingResult'))
    ModelVersionDetail.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    ModelVersionDetail.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    ModelVersionDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    ModelVersionDetail.add_member(:training_result_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingResultV2, location_name: 'trainingResultV2'))
    ModelVersionDetail.type = Types::ModelVersionDetail
    ModelVersionEvaluation.add_member(:output_variable_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'outputVariableName'))
    ModelVersionEvaluation.add_member(:evaluation_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'evaluationScore'))
    ModelVersionEvaluation.add_member(:prediction_explanations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionExplanations, location_name: 'predictionExplanations'))
    ModelVersionEvaluation.type = Types::ModelVersionEvaluation
    ModelVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ModelVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ModelVersionStatus.add_member(:training_cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_CANCELLED', traits: {"smithy.api#enumValue" => "TRAINING_CANCELLED"}))
    NameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NonEmptyListOfStrings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    OFIMetricDataPoint.add_member(:fpr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'fpr'))
    OFIMetricDataPoint.add_member(:precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'precision'))
    OFIMetricDataPoint.add_member(:tpr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'tpr'))
    OFIMetricDataPoint.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'threshold'))
    OFIMetricDataPoint.type = Types::OFIMetricDataPoint
    OFIMetricDataPointsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OFIMetricDataPoint)
    OFIModelPerformance.add_member(:auc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'auc'))
    OFIModelPerformance.add_member(:uncertainty_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UncertaintyRange, location_name: 'uncertaintyRange'))
    OFIModelPerformance.type = Types::OFIModelPerformance
    OFITrainingMetricsValue.add_member(:metric_data_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OFIMetricDataPointsList, location_name: 'metricDataPoints'))
    OFITrainingMetricsValue.add_member(:model_performance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OFIModelPerformance, location_name: 'modelPerformance'))
    OFITrainingMetricsValue.type = Types::OFITrainingMetricsValue
    Outcome.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name'))
    Outcome.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Outcome.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    Outcome.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    Outcome.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    Outcome.type = Types::Outcome
    OutcomeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outcome)
    PredictionExplanations.add_member(:variable_impact_explanations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfVariableImpactExplanations, location_name: 'variableImpactExplanations'))
    PredictionExplanations.add_member(:aggregated_variables_impact_explanations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAggregatedVariablesImpactExplanations, location_name: 'aggregatedVariablesImpactExplanations'))
    PredictionExplanations.type = Types::PredictionExplanations
    PredictionTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    PredictionTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#required" => {}}))
    PredictionTimeRange.type = Types::PredictionTimeRange
    PutDetectorRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    PutDetectorRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    PutDetectorRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    PutDetectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    PutDetectorRequest.type = Types::PutDetectorRequest
    PutDetectorResult.type = Types::PutDetectorResult
    PutEntityTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PutEntityTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    PutEntityTypeRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    PutEntityTypeRequest.type = Types::PutEntityTypeRequest
    PutEntityTypeResult.type = Types::PutEntityTypeResult
    PutEventTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PutEventTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    PutEventTypeRequest.add_member(:event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: 'eventVariables', traits: {"smithy.api#required" => {}}))
    PutEventTypeRequest.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'labels'))
    PutEventTypeRequest.add_member(:entity_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: 'entityTypes', traits: {"smithy.api#required" => {}}))
    PutEventTypeRequest.add_member(:event_ingestion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventIngestion, location_name: 'eventIngestion'))
    PutEventTypeRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    PutEventTypeRequest.add_member(:event_orchestration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventOrchestration, location_name: 'eventOrchestration'))
    PutEventTypeRequest.type = Types::PutEventTypeRequest
    PutEventTypeResult.type = Types::PutEventTypeResult
    PutExternalModelRequest.add_member(:model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerEndpointIdentifier, location_name: 'modelEndpoint', traits: {"smithy.api#required" => {}}))
    PutExternalModelRequest.add_member(:model_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSource, location_name: 'modelSource', traits: {"smithy.api#required" => {}}))
    PutExternalModelRequest.add_member(:invoke_model_endpoint_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invokeModelEndpointRoleArn', traits: {"smithy.api#required" => {}}))
    PutExternalModelRequest.add_member(:input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInputConfiguration, location_name: 'inputConfiguration', traits: {"smithy.api#required" => {}}))
    PutExternalModelRequest.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    PutExternalModelRequest.add_member(:model_endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelEndpointStatus, location_name: 'modelEndpointStatus', traits: {"smithy.api#required" => {}}))
    PutExternalModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    PutExternalModelRequest.type = Types::PutExternalModelRequest
    PutExternalModelResult.type = Types::PutExternalModelResult
    PutKMSEncryptionKeyRequest.add_member(:kms_encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsEncryptionKeyArn, location_name: 'kmsEncryptionKeyArn', traits: {"smithy.api#required" => {}}))
    PutKMSEncryptionKeyRequest.type = Types::PutKMSEncryptionKeyRequest
    PutKMSEncryptionKeyResult.type = Types::PutKMSEncryptionKeyResult
    PutLabelRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PutLabelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    PutLabelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    PutLabelRequest.type = Types::PutLabelRequest
    PutLabelResult.type = Types::PutLabelResult
    PutOutcomeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PutOutcomeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    PutOutcomeRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    PutOutcomeRequest.type = Types::PutOutcomeRequest
    PutOutcomeResult.type = Types::PutOutcomeResult
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    Rule.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    Rule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ruleId', traits: {"smithy.api#required" => {}}))
    Rule.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'ruleVersion', traits: {"smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleDetail.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ruleId'))
    RuleDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    RuleDetail.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId'))
    RuleDetail.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'ruleVersion'))
    RuleDetail.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExpression, location_name: 'expression'))
    RuleDetail.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    RuleDetail.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: 'outcomes'))
    RuleDetail.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    RuleDetail.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    RuleDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    RuleDetail.type = Types::RuleDetail
    RuleDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDetail)
    RuleExecutionMode.add_member(:all_matched, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_MATCHED', traits: {"smithy.api#enumValue" => "ALL_MATCHED"}))
    RuleExecutionMode.add_member(:first_matched, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIRST_MATCHED', traits: {"smithy.api#enumValue" => "FIRST_MATCHED"}))
    RuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    RuleResult.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ruleId'))
    RuleResult.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'outcomes'))
    RuleResult.type = Types::RuleResult
    SendEventRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    SendEventRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    SendEventRequest.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtcTimestampISO8601, location_name: 'eventTimestamp', traits: {"smithy.api#required" => {}}))
    SendEventRequest.add_member(:event_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventVariableMap, location_name: 'eventVariables', traits: {"smithy.api#required" => {}}))
    SendEventRequest.add_member(:assigned_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'assignedLabel'))
    SendEventRequest.add_member(:label_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtcTimestampISO8601, location_name: 'labelTimestamp'))
    SendEventRequest.add_member(:entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEntities, location_name: 'entities', traits: {"smithy.api#required" => {}}))
    SendEventRequest.type = Types::SendEventRequest
    SendEventResult.type = Types::SendEventResult
    TFIMetricDataPoint.add_member(:fpr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'fpr'))
    TFIMetricDataPoint.add_member(:precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'precision'))
    TFIMetricDataPoint.add_member(:tpr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'tpr'))
    TFIMetricDataPoint.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'threshold'))
    TFIMetricDataPoint.type = Types::TFIMetricDataPoint
    TFIMetricDataPointsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TFIMetricDataPoint)
    TFIModelPerformance.add_member(:auc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'auc'))
    TFIModelPerformance.add_member(:uncertainty_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UncertaintyRange, location_name: 'uncertaintyRange'))
    TFIModelPerformance.type = Types::TFIModelPerformance
    TFITrainingMetricsValue.add_member(:metric_data_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TFIMetricDataPointsList, location_name: 'metricDataPoints'))
    TFITrainingMetricsValue.add_member(:model_performance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TFIModelPerformance, location_name: 'modelPerformance'))
    TFITrainingMetricsValue.type = Types::TFITrainingMetricsValue
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'resourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TrainingDataSchema.add_member(:model_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'modelVariables', traits: {"smithy.api#required" => {}}))
    TrainingDataSchema.add_member(:label_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelSchema, location_name: 'labelSchema'))
    TrainingDataSchema.type = Types::TrainingDataSchema
    TrainingDataSourceEnum.add_member(:external_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_EVENTS', traits: {"smithy.api#enumValue" => "EXTERNAL_EVENTS"}))
    TrainingDataSourceEnum.add_member(:ingested_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INGESTED_EVENTS', traits: {"smithy.api#enumValue" => "INGESTED_EVENTS"}))
    TrainingMetrics.add_member(:auc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'auc'))
    TrainingMetrics.add_member(:metric_data_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataPointsList, location_name: 'metricDataPoints'))
    TrainingMetrics.type = Types::TrainingMetrics
    TrainingMetricsV2.add_member(:ofi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OFITrainingMetricsValue, location_name: 'ofi'))
    TrainingMetricsV2.add_member(:tfi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TFITrainingMetricsValue, location_name: 'tfi'))
    TrainingMetricsV2.add_member(:ati, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ATITrainingMetricsValue, location_name: 'ati'))
    TrainingMetricsV2.type = Types::TrainingMetricsV2
    TrainingResult.add_member(:data_validation_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValidationMetrics, location_name: 'dataValidationMetrics'))
    TrainingResult.add_member(:training_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: 'trainingMetrics'))
    TrainingResult.add_member(:variable_importance_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableImportanceMetrics, location_name: 'variableImportanceMetrics'))
    TrainingResult.type = Types::TrainingResult
    TrainingResultV2.add_member(:data_validation_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValidationMetrics, location_name: 'dataValidationMetrics'))
    TrainingResultV2.add_member(:training_metrics_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMetricsV2, location_name: 'trainingMetricsV2'))
    TrainingResultV2.add_member(:variable_importance_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableImportanceMetrics, location_name: 'variableImportanceMetrics'))
    TrainingResultV2.add_member(:aggregated_variables_importance_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedVariablesImportanceMetrics, location_name: 'aggregatedVariablesImportanceMetrics'))
    TrainingResultV2.type = Types::TrainingResultV2
    UncertaintyRange.add_member(:lower_bound_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'lowerBoundValue', traits: {"smithy.api#required" => {}}))
    UncertaintyRange.add_member(:upper_bound_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'upperBoundValue', traits: {"smithy.api#required" => {}}))
    UncertaintyRange.type = Types::UncertaintyRange
    UnlabeledEventsTreatment.add_member(:ignore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORE', traits: {"smithy.api#enumValue" => "IGNORE"}))
    UnlabeledEventsTreatment.add_member(:fraud, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRAUD', traits: {"smithy.api#enumValue" => "FRAUD"}))
    UnlabeledEventsTreatment.add_member(:legit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGIT', traits: {"smithy.api#enumValue" => "LEGIT"}))
    UnlabeledEventsTreatment.add_member(:auto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'resourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateDetectorVersionMetadataRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionMetadataRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionMetadataRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionMetadataRequest.type = Types::UpdateDetectorVersionMetadataRequest
    UpdateDetectorVersionMetadataResult.type = Types::UpdateDetectorVersionMetadataResult
    UpdateDetectorVersionRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionRequest.add_member(:external_model_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'externalModelEndpoints', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'rules', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateDetectorVersionRequest.add_member(:model_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: 'modelVersions'))
    UpdateDetectorVersionRequest.add_member(:rule_execution_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: 'ruleExecutionMode'))
    UpdateDetectorVersionRequest.type = Types::UpdateDetectorVersionRequest
    UpdateDetectorVersionResult.type = Types::UpdateDetectorVersionResult
    UpdateDetectorVersionStatusRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'detectorId', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionStatusRequest.add_member(:detector_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'detectorVersionId', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateDetectorVersionStatusRequest.type = Types::UpdateDetectorVersionStatusRequest
    UpdateDetectorVersionStatusResult.type = Types::UpdateDetectorVersionStatusResult
    UpdateEventLabelRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    UpdateEventLabelRequest.add_member(:event_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'eventTypeName', traits: {"smithy.api#required" => {}}))
    UpdateEventLabelRequest.add_member(:assigned_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'assignedLabel', traits: {"smithy.api#required" => {}}))
    UpdateEventLabelRequest.add_member(:label_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtcTimestampISO8601, location_name: 'labelTimestamp', traits: {"smithy.api#required" => {}}))
    UpdateEventLabelRequest.type = Types::UpdateEventLabelRequest
    UpdateEventLabelResult.type = Types::UpdateEventLabelResult
    UpdateListRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDashIdentifier, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateListRequest.add_member(:elements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElementsList, location_name: 'elements'))
    UpdateListRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateListRequest.add_member(:update_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUpdateMode, location_name: 'updateMode'))
    UpdateListRequest.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableType, location_name: 'variableType'))
    UpdateListRequest.type = Types::UpdateListRequest
    UpdateListResult.type = Types::UpdateListResult
    UpdateModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateModelRequest.type = Types::UpdateModelRequest
    UpdateModelResult.type = Types::UpdateModelResult
    UpdateModelVersionRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionRequest.add_member(:major_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumberVersionString, location_name: 'majorVersionNumber', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionRequest.add_member(:external_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: 'externalEventsDetail'))
    UpdateModelVersionRequest.add_member(:ingested_events_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: 'ingestedEventsDetail'))
    UpdateModelVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    UpdateModelVersionRequest.type = Types::UpdateModelVersionRequest
    UpdateModelVersionResult.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId'))
    UpdateModelVersionResult.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType'))
    UpdateModelVersionResult.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber'))
    UpdateModelVersionResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    UpdateModelVersionResult.type = Types::UpdateModelVersionResult
    UpdateModelVersionStatusRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionStatusRequest.add_member(:model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: 'modelType', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionStatusRequest.add_member(:model_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatVersionString, location_name: 'modelVersionNumber', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateModelVersionStatusRequest.type = Types::UpdateModelVersionStatusRequest
    UpdateModelVersionStatusResult.type = Types::UpdateModelVersionStatusResult
    UpdateRuleMetadataRequest.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'rule', traits: {"smithy.api#required" => {}}))
    UpdateRuleMetadataRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#required" => {}}))
    UpdateRuleMetadataRequest.type = Types::UpdateRuleMetadataRequest
    UpdateRuleMetadataResult.type = Types::UpdateRuleMetadataResult
    UpdateRuleVersionRequest.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'rule', traits: {"smithy.api#required" => {}}))
    UpdateRuleVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateRuleVersionRequest.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExpression, location_name: 'expression', traits: {"smithy.api#required" => {}}))
    UpdateRuleVersionRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#required" => {}}))
    UpdateRuleVersionRequest.add_member(:outcomes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: 'outcomes', traits: {"smithy.api#required" => {}}))
    UpdateRuleVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    UpdateRuleVersionRequest.type = Types::UpdateRuleVersionRequest
    UpdateRuleVersionResult.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'rule'))
    UpdateRuleVersionResult.type = Types::UpdateRuleVersionResult
    UpdateVariableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateVariableRequest.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultValue'))
    UpdateVariableRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    UpdateVariableRequest.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'variableType'))
    UpdateVariableRequest.type = Types::UpdateVariableRequest
    UpdateVariableResult.type = Types::UpdateVariableResult
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    Variable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    Variable.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: 'dataType'))
    Variable.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource'))
    Variable.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultValue'))
    Variable.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    Variable.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'variableType'))
    Variable.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedTime'))
    Variable.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'createdTime'))
    Variable.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectorArn, location_name: 'arn'))
    Variable.type = Types::Variable
    VariableEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    VariableEntry.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataType'))
    VariableEntry.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSource'))
    VariableEntry.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultValue'))
    VariableEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    VariableEntry.add_member(:variable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'variableType'))
    VariableEntry.type = Types::VariableEntry
    VariableEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableEntry)
    VariableImpactExplanation.add_member(:event_variable_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventVariableName'))
    VariableImpactExplanation.add_member(:relative_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'relativeImpact'))
    VariableImpactExplanation.add_member(:log_odds_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'logOddsImpact'))
    VariableImpactExplanation.type = Types::VariableImpactExplanation
    VariableImportanceMetrics.add_member(:log_odds_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLogOddsMetrics, location_name: 'logOddsMetrics'))
    VariableImportanceMetrics.type = Types::VariableImportanceMetrics
    VariableList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable)
    EntityTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType)
    EventTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    FieldValidationMessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValidationMessage)
    FileValidationMessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileValidationMessage)
    LabelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Label)
    LabelMapper.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LabelMapper.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings)
    ListOfEntities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entity)
    ListOfVariableImpactExplanations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableImpactExplanation)
    MetricDataPointsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataPoint)
    ModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Model)
    ModelVersionDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionDetail)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)

    AWSHawksNestServiceFacade = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.frauddetector#AWSHawksNestServiceFacade"
      service.name = "AWSHawksNestServiceFacade"
      service.version = "2019-11-15"
      service.traits = {"aws.api#service" => {"sdkId" => "FraudDetector", "arnNamespace" => "frauddetector", "cloudFormationName" => "FraudDetector", "cloudTrailEventSource" => "frauddetector.amazonaws.com", "endpointPrefix" => "frauddetector"}, "aws.auth#sigv4" => {"name" => "frauddetector"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Fraud Detector", "smithy.api#xmlNamespace" => {"uri" => "http://hawksnest.amazonaws.com/doc/2019-11-15"}}
      service.add_operation(:batch_create_variable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#BatchCreateVariable"
        operation.name = "BatchCreateVariable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateVariableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateVariableResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_variable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#BatchGetVariable"
        operation.name = "BatchGetVariable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetVariableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetVariableResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_batch_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CancelBatchImportJob"
        operation.name = "CancelBatchImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelBatchImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelBatchImportJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_batch_prediction_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CancelBatchPredictionJob"
        operation.name = "CancelBatchPredictionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelBatchPredictionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelBatchPredictionJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_batch_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateBatchImportJob"
        operation.name = "CreateBatchImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchImportJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_batch_prediction_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateBatchPredictionJob"
        operation.name = "CreateBatchPredictionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchPredictionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchPredictionJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_detector_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateDetectorVersion"
        operation.name = "CreateDetectorVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDetectorVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDetectorVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateList"
        operation.name = "CreateList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateModel"
        operation.name = "CreateModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateModelVersion"
        operation.name = "CreateModelVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateRule"
        operation.name = "CreateRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_variable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#CreateVariable"
        operation.name = "CreateVariable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVariableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVariableResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_batch_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteBatchImportJob"
        operation.name = "DeleteBatchImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBatchImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBatchImportJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_batch_prediction_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteBatchPredictionJob"
        operation.name = "DeleteBatchPredictionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBatchPredictionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBatchPredictionJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteDetector"
        operation.name = "DeleteDetector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_detector_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteDetectorVersion"
        operation.name = "DeleteDetectorVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_entity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteEntityType"
        operation.name = "DeleteEntityType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntityTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntityTypeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteEvent"
        operation.name = "DeleteEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteEventType"
        operation.name = "DeleteEventType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventTypeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_events_by_event_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteEventsByEventType"
        operation.name = "DeleteEventsByEventType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventsByEventTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventsByEventTypeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_external_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteExternalModel"
        operation.name = "DeleteExternalModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExternalModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExternalModelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteLabel"
        operation.name = "DeleteLabel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLabelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLabelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteList"
        operation.name = "DeleteList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteModelVersion"
        operation.name = "DeleteModelVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_outcome, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteOutcome"
        operation.name = "DeleteOutcome"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutcomeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutcomeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_variable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DeleteVariable"
        operation.name = "DeleteVariable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVariableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVariableResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DescribeDetector"
        operation.name = "DescribeDetector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_model_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#DescribeModelVersions"
        operation.name = "DescribeModelVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelVersionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeModelVersions.new
      end)
      service.add_operation(:get_batch_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetBatchImportJobs"
        operation.name = "GetBatchImportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchImportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchImportJobsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetBatchImportJobs.new
      end)
      service.add_operation(:get_batch_prediction_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetBatchPredictionJobs"
        operation.name = "GetBatchPredictionJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchPredictionJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchPredictionJobsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetBatchPredictionJobs.new
      end)
      service.add_operation(:get_delete_events_by_event_type_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetDeleteEventsByEventTypeStatus"
        operation.name = "GetDeleteEventsByEventTypeStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeleteEventsByEventTypeStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeleteEventsByEventTypeStatusResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_detector_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetDetectorVersion"
        operation.name = "GetDetectorVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetDetectors"
        operation.name = "GetDetectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetDetectors.new
      end)
      service.add_operation(:get_entity_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetEntityTypes"
        operation.name = "GetEntityTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntityTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntityTypesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetEntityTypes.new
      end)
      service.add_operation(:get_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetEvent"
        operation.name = "GetEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_event_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetEventPrediction"
        operation.name = "GetEventPrediction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventPredictionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventPredictionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_event_prediction_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetEventPredictionMetadata"
        operation.name = "GetEventPredictionMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventPredictionMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventPredictionMetadataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_event_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetEventTypes"
        operation.name = "GetEventTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventTypesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetEventTypes.new
      end)
      service.add_operation(:get_external_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetExternalModels"
        operation.name = "GetExternalModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExternalModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExternalModelsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetExternalModels.new
      end)
      service.add_operation(:get_kms_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetKMSEncryptionKey"
        operation.name = "GetKMSEncryptionKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKMSEncryptionKeyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetLabels"
        operation.name = "GetLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetLabels.new
      end)
      service.add_operation(:get_list_elements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetListElements"
        operation.name = "GetListElements"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetListElementsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetListElementsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetListElements.new
      end)
      service.add_operation(:get_lists_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetListsMetadata"
        operation.name = "GetListsMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetListsMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetListsMetadataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetListsMetadata.new
      end)
      service.add_operation(:get_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetModelVersion"
        operation.name = "GetModelVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetModels"
        operation.name = "GetModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetModels.new
      end)
      service.add_operation(:get_outcomes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetOutcomes"
        operation.name = "GetOutcomes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutcomesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutcomesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetOutcomes.new
      end)
      service.add_operation(:get_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetRules"
        operation.name = "GetRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRulesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetRules.new
      end)
      service.add_operation(:get_variables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#GetVariables"
        operation.name = "GetVariables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVariablesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVariablesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetVariables.new
      end)
      service.add_operation(:list_event_predictions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#ListEventPredictions"
        operation.name = "ListEventPredictions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventPredictionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventPredictionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEventPredictions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutDetector"
        operation.name = "PutDetector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutDetectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutDetectorResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_entity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutEntityType"
        operation.name = "PutEntityType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEntityTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEntityTypeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_event_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutEventType"
        operation.name = "PutEventType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventTypeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_external_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutExternalModel"
        operation.name = "PutExternalModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutExternalModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutExternalModelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_kms_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutKMSEncryptionKey"
        operation.name = "PutKMSEncryptionKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKMSEncryptionKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKMSEncryptionKeyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutLabel"
        operation.name = "PutLabel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLabelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLabelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_outcome, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#PutOutcome"
        operation.name = "PutOutcome"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutOutcomeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutOutcomeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:send_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#SendEvent"
        operation.name = "SendEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_detector_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateDetectorVersion"
        operation.name = "UpdateDetectorVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_detector_version_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateDetectorVersionMetadata"
        operation.name = "UpdateDetectorVersionMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorVersionMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorVersionMetadataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_detector_version_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateDetectorVersionStatus"
        operation.name = "UpdateDetectorVersionStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorVersionStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorVersionStatusResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_event_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateEventLabel"
        operation.name = "UpdateEventLabel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventLabelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventLabelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateList"
        operation.name = "UpdateList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateModel"
        operation.name = "UpdateModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateModelVersion"
        operation.name = "UpdateModelVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_model_version_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateModelVersionStatus"
        operation.name = "UpdateModelVersionStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelVersionStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelVersionStatusResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateRuleMetadata"
        operation.name = "UpdateRuleMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleMetadataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateRuleVersion"
        operation.name = "UpdateRuleVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_variable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.frauddetector#UpdateVariable"
        operation.name = "UpdateVariable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVariableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVariableResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
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
