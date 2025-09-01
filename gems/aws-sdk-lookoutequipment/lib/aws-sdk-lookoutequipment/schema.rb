# frozen_string_literal: true

# This is generated code!

module Aws::LookoutEquipment
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#AmazonResourceArn', name: 'AmazonResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AutoPromotionResult = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#AutoPromotionResult', name: 'AutoPromotionResult')
    AutoPromotionResultReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#AutoPromotionResultReason', name: 'AutoPromotionResultReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lookoutequipment#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoundedLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#BoundedLengthString', name: 'BoundedLengthString', traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,5000}$"})
    CategoricalValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CategoricalValues', name: 'CategoricalValues')
    Comments = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#Comments', name: 'Comments', traits: {"smithy.api#length" => {"min" => 1, "max" => 2560}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,2560}$"})
    ComponentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ComponentName', name: 'ComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._\\-]{1,200}$"})
    ComponentTimestampDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ComponentTimestampDelimiter', name: 'ComponentTimestampDelimiter', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#pattern" => "^(\\-|\\_|\\s)?$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CountPercent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CountPercent', name: 'CountPercent')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateInferenceSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateInferenceSchedulerRequest', name: 'CreateInferenceSchedulerRequest')
    CreateInferenceSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateInferenceSchedulerResponse', name: 'CreateInferenceSchedulerResponse')
    CreateLabelGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateLabelGroupRequest', name: 'CreateLabelGroupRequest')
    CreateLabelGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateLabelGroupResponse', name: 'CreateLabelGroupResponse')
    CreateLabelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateLabelRequest', name: 'CreateLabelRequest')
    CreateLabelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateLabelResponse', name: 'CreateLabelResponse')
    CreateModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateModelRequest', name: 'CreateModelRequest')
    CreateModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateModelResponse', name: 'CreateModelResponse')
    CreateRetrainingSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateRetrainingSchedulerRequest', name: 'CreateRetrainingSchedulerRequest')
    CreateRetrainingSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#CreateRetrainingSchedulerResponse', name: 'CreateRetrainingSchedulerResponse')
    DataDelayOffsetInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutequipment#DataDelayOffsetInMinutes', name: 'DataDelayOffsetInMinutes', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    DataIngestionJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#DataIngestionJobSummaries', name: 'DataIngestionJobSummaries')
    DataIngestionJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DataIngestionJobSummary', name: 'DataIngestionJobSummary')
    DataPreProcessingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DataPreProcessingConfiguration', name: 'DataPreProcessingConfiguration')
    DataQualitySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DataQualitySummary', name: 'DataQualitySummary')
    DataSizeInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutequipment#DataSizeInBytes', name: 'DataSizeInBytes', traits: {"smithy.api#range" => {"min" => 0}})
    DataUploadFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#DataUploadFrequency', name: 'DataUploadFrequency')
    DatasetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#DatasetArn', name: 'DatasetArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:dataset\\/[0-9a-zA-Z_-]{1,200}\\/.+$"})
    DatasetIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#DatasetIdentifier', name: 'DatasetIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    DatasetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#DatasetName', name: 'DatasetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    DatasetSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DatasetSchema', name: 'DatasetSchema')
    DatasetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#DatasetStatus', name: 'DatasetStatus')
    DatasetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#DatasetSummaries', name: 'DatasetSummaries')
    DatasetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DatasetSummary', name: 'DatasetSummary')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteInferenceSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteInferenceSchedulerRequest', name: 'DeleteInferenceSchedulerRequest')
    DeleteLabelGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteLabelGroupRequest', name: 'DeleteLabelGroupRequest')
    DeleteLabelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteLabelRequest', name: 'DeleteLabelRequest')
    DeleteModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteModelRequest', name: 'DeleteModelRequest')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteRetrainingSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DeleteRetrainingSchedulerRequest', name: 'DeleteRetrainingSchedulerRequest')
    DescribeDataIngestionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeDataIngestionJobRequest', name: 'DescribeDataIngestionJobRequest')
    DescribeDataIngestionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeDataIngestionJobResponse', name: 'DescribeDataIngestionJobResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeInferenceSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeInferenceSchedulerRequest', name: 'DescribeInferenceSchedulerRequest')
    DescribeInferenceSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeInferenceSchedulerResponse', name: 'DescribeInferenceSchedulerResponse')
    DescribeLabelGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeLabelGroupRequest', name: 'DescribeLabelGroupRequest')
    DescribeLabelGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeLabelGroupResponse', name: 'DescribeLabelGroupResponse')
    DescribeLabelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeLabelRequest', name: 'DescribeLabelRequest')
    DescribeLabelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeLabelResponse', name: 'DescribeLabelResponse')
    DescribeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeModelRequest', name: 'DescribeModelRequest')
    DescribeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeModelResponse', name: 'DescribeModelResponse')
    DescribeModelVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeModelVersionRequest', name: 'DescribeModelVersionRequest')
    DescribeModelVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeModelVersionResponse', name: 'DescribeModelVersionResponse')
    DescribeResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeResourcePolicyRequest', name: 'DescribeResourcePolicyRequest')
    DescribeResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeResourcePolicyResponse', name: 'DescribeResourcePolicyResponse')
    DescribeRetrainingSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeRetrainingSchedulerRequest', name: 'DescribeRetrainingSchedulerRequest')
    DescribeRetrainingSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DescribeRetrainingSchedulerResponse', name: 'DescribeRetrainingSchedulerResponse')
    DuplicateTimestamps = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#DuplicateTimestamps', name: 'DuplicateTimestamps')
    Equipment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#Equipment', name: 'Equipment', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,200}$"})
    EventDurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutequipment#EventDurationInSeconds', name: 'EventDurationInSeconds', traits: {"smithy.api#range" => {"min" => 0}})
    FaultCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#FaultCode', name: 'FaultCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,100}$"})
    FaultCodes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#FaultCodes', name: 'FaultCodes', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FileNameTimestampFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#FileNameTimestampFormat', name: 'FileNameTimestampFormat', traits: {"smithy.api#pattern" => "^EPOCH|yyyy-MM-dd-HH-mm-ss|yyyyMMddHHmmss$"})
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lookoutequipment#Float', name: 'Float', traits: {"smithy.api#default" => 0})
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    IdempotenceToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#IdempotenceToken', name: 'IdempotenceToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\p{ASCII}{1,256}$"})
    ImportDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ImportDatasetRequest', name: 'ImportDatasetRequest')
    ImportDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ImportDatasetResponse', name: 'ImportDatasetResponse')
    ImportModelVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ImportModelVersionRequest', name: 'ImportModelVersionRequest')
    ImportModelVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ImportModelVersionResponse', name: 'ImportModelVersionResponse')
    InferenceDataImportStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#InferenceDataImportStrategy', name: 'InferenceDataImportStrategy')
    InferenceEventSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#InferenceEventSummaries', name: 'InferenceEventSummaries')
    InferenceEventSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceEventSummary', name: 'InferenceEventSummary')
    InferenceExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#InferenceExecutionStatus', name: 'InferenceExecutionStatus')
    InferenceExecutionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#InferenceExecutionSummaries', name: 'InferenceExecutionSummaries')
    InferenceExecutionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceExecutionSummary', name: 'InferenceExecutionSummary')
    InferenceInputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceInputConfiguration', name: 'InferenceInputConfiguration')
    InferenceInputNameConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceInputNameConfiguration', name: 'InferenceInputNameConfiguration')
    InferenceOutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceOutputConfiguration', name: 'InferenceOutputConfiguration')
    InferenceS3InputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceS3InputConfiguration', name: 'InferenceS3InputConfiguration')
    InferenceS3OutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceS3OutputConfiguration', name: 'InferenceS3OutputConfiguration')
    InferenceSchedulerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#InferenceSchedulerArn', name: 'InferenceSchedulerArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:inference-scheduler\\/.+$"})
    InferenceSchedulerIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#InferenceSchedulerIdentifier', name: 'InferenceSchedulerIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    InferenceSchedulerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#InferenceSchedulerName', name: 'InferenceSchedulerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    InferenceSchedulerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#InferenceSchedulerStatus', name: 'InferenceSchedulerStatus')
    InferenceSchedulerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#InferenceSchedulerSummaries', name: 'InferenceSchedulerSummaries')
    InferenceSchedulerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InferenceSchedulerSummary', name: 'InferenceSchedulerSummary')
    IngestedFilesSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#IngestedFilesSummary', name: 'IngestedFilesSummary')
    IngestionInputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#IngestionInputConfiguration', name: 'IngestionInputConfiguration')
    IngestionJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#IngestionJobId', name: 'IngestionJobId', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Fa-f0-9]{0,32}$"})
    IngestionJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#IngestionJobStatus', name: 'IngestionJobStatus')
    IngestionS3InputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#IngestionS3InputConfiguration', name: 'IngestionS3InputConfiguration')
    InlineDataSchema = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#InlineDataSchema', name: 'InlineDataSchema', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}})
    InsufficientSensorData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InsufficientSensorData', name: 'InsufficientSensorData')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutequipment#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidSensorData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#InvalidSensorData', name: 'InvalidSensorData')
    KeyPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#KeyPattern', name: 'KeyPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:[a-z0-9\\-]*:\\d{12}:[\\w\\-\\/]+$"})
    LabelGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#LabelGroupArn', name: 'LabelGroupArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:label-group\\/.+$"})
    LabelGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#LabelGroupName', name: 'LabelGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    LabelGroupSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#LabelGroupSummaries', name: 'LabelGroupSummaries')
    LabelGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#LabelGroupSummary', name: 'LabelGroupSummary')
    LabelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#LabelId', name: 'LabelId', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Fa-f0-9]{0,32}$"})
    LabelRating = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#LabelRating', name: 'LabelRating')
    LabelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#LabelSummaries', name: 'LabelSummaries')
    LabelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#LabelSummary', name: 'LabelSummary')
    LabelsInputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#LabelsInputConfiguration', name: 'LabelsInputConfiguration')
    LabelsS3InputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#LabelsS3InputConfiguration', name: 'LabelsS3InputConfiguration')
    LargeTimestampGaps = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#LargeTimestampGaps', name: 'LargeTimestampGaps')
    LatestInferenceResult = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#LatestInferenceResult', name: 'LatestInferenceResult')
    ListDataIngestionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListDataIngestionJobsRequest', name: 'ListDataIngestionJobsRequest')
    ListDataIngestionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListDataIngestionJobsResponse', name: 'ListDataIngestionJobsResponse')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListInferenceEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListInferenceEventsRequest', name: 'ListInferenceEventsRequest')
    ListInferenceEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListInferenceEventsResponse', name: 'ListInferenceEventsResponse')
    ListInferenceExecutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListInferenceExecutionsRequest', name: 'ListInferenceExecutionsRequest')
    ListInferenceExecutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListInferenceExecutionsResponse', name: 'ListInferenceExecutionsResponse')
    ListInferenceSchedulersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListInferenceSchedulersRequest', name: 'ListInferenceSchedulersRequest')
    ListInferenceSchedulersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListInferenceSchedulersResponse', name: 'ListInferenceSchedulersResponse')
    ListLabelGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListLabelGroupsRequest', name: 'ListLabelGroupsRequest')
    ListLabelGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListLabelGroupsResponse', name: 'ListLabelGroupsResponse')
    ListLabelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListLabelsRequest', name: 'ListLabelsRequest')
    ListLabelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListLabelsResponse', name: 'ListLabelsResponse')
    ListModelVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListModelVersionsRequest', name: 'ListModelVersionsRequest')
    ListModelVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListModelVersionsResponse', name: 'ListModelVersionsResponse')
    ListModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListModelsRequest', name: 'ListModelsRequest')
    ListModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListModelsResponse', name: 'ListModelsResponse')
    ListOfDiscardedFiles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#ListOfDiscardedFiles', name: 'ListOfDiscardedFiles', traits: {"smithy.api#length" => {"min" => 0}})
    ListRetrainingSchedulersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListRetrainingSchedulersRequest', name: 'ListRetrainingSchedulersRequest')
    ListRetrainingSchedulersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListRetrainingSchedulersResponse', name: 'ListRetrainingSchedulersResponse')
    ListSensorStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListSensorStatisticsRequest', name: 'ListSensorStatisticsRequest')
    ListSensorStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListSensorStatisticsResponse', name: 'ListSensorStatisticsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LookbackWindow = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#LookbackWindow', name: 'LookbackWindow', traits: {"smithy.api#pattern" => "^P180D$|^P360D$|^P540D$|^P720D$"})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutequipment#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MissingCompleteSensorData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#MissingCompleteSensorData', name: 'MissingCompleteSensorData')
    MissingSensorData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#MissingSensorData', name: 'MissingSensorData')
    ModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ModelArn', name: 'ModelArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:model\\/.+$"})
    ModelDiagnosticsOutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ModelDiagnosticsOutputConfiguration', name: 'ModelDiagnosticsOutputConfiguration')
    ModelDiagnosticsS3OutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ModelDiagnosticsS3OutputConfiguration', name: 'ModelDiagnosticsS3OutputConfiguration')
    ModelMetrics = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ModelMetrics', name: 'ModelMetrics', traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}})
    ModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ModelName', name: 'ModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    ModelPromoteMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#ModelPromoteMode', name: 'ModelPromoteMode')
    ModelQuality = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#ModelQuality', name: 'ModelQuality')
    ModelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#ModelStatus', name: 'ModelStatus')
    ModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#ModelSummaries', name: 'ModelSummaries')
    ModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ModelSummary', name: 'ModelSummary')
    ModelVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutequipment#ModelVersion', name: 'ModelVersion', traits: {"smithy.api#range" => {"min" => 1}})
    ModelVersionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ModelVersionArn', name: 'ModelVersionArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:model\\/[0-9a-zA-Z_-]{1,200}\\/.+\\/model-version\\/[0-9]{1,}$"})
    ModelVersionSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#ModelVersionSourceType', name: 'ModelVersionSourceType')
    ModelVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#ModelVersionStatus', name: 'ModelVersionStatus')
    ModelVersionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#ModelVersionSummaries', name: 'ModelVersionSummaries')
    ModelVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ModelVersionSummary', name: 'ModelVersionSummary')
    MonotonicValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#MonotonicValues', name: 'MonotonicValues')
    Monotonicity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#Monotonicity', name: 'Monotonicity')
    MultipleOperatingModes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#MultipleOperatingModes', name: 'MultipleOperatingModes')
    NameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#NameOrArn', name: 'NameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OffCondition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#OffCondition', name: 'OffCondition', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PolicyRevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#PolicyRevisionId', name: 'PolicyRevisionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:.+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetrainingFrequency = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#RetrainingFrequency', name: 'RetrainingFrequency', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^P(\\dY)?(\\d{1,2}M)?(\\d{1,3}D)?$"})
    RetrainingSchedulerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#RetrainingSchedulerStatus', name: 'RetrainingSchedulerStatus')
    RetrainingSchedulerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#RetrainingSchedulerSummaries', name: 'RetrainingSchedulerSummaries')
    RetrainingSchedulerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#RetrainingSchedulerSummary', name: 'RetrainingSchedulerSummary')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,1024}[^/]$"})
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#S3Object', name: 'S3Object')
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(^$)|([\\u0009\\u000A\\u000D\\u0020-\\u00FF]{1,1023}/$)$"})
    SensorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#SensorName', name: 'SensorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z:\#$.\\-_]{1,200}$"})
    SensorStatisticsSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#SensorStatisticsSummaries', name: 'SensorStatisticsSummaries')
    SensorStatisticsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#SensorStatisticsSummary', name: 'SensorStatisticsSummary')
    SensorsWithShortDateRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#SensorsWithShortDateRange', name: 'SensorsWithShortDateRange')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartDataIngestionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StartDataIngestionJobRequest', name: 'StartDataIngestionJobRequest')
    StartDataIngestionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StartDataIngestionJobResponse', name: 'StartDataIngestionJobResponse')
    StartInferenceSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StartInferenceSchedulerRequest', name: 'StartInferenceSchedulerRequest')
    StartInferenceSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StartInferenceSchedulerResponse', name: 'StartInferenceSchedulerResponse')
    StartRetrainingSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StartRetrainingSchedulerRequest', name: 'StartRetrainingSchedulerRequest')
    StartRetrainingSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StartRetrainingSchedulerResponse', name: 'StartRetrainingSchedulerResponse')
    StatisticalIssueStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#StatisticalIssueStatus', name: 'StatisticalIssueStatus')
    StopInferenceSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StopInferenceSchedulerRequest', name: 'StopInferenceSchedulerRequest')
    StopInferenceSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StopInferenceSchedulerResponse', name: 'StopInferenceSchedulerResponse')
    StopRetrainingSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StopRetrainingSchedulerRequest', name: 'StopRetrainingSchedulerRequest')
    StopRetrainingSchedulerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#StopRetrainingSchedulerResponse', name: 'StopRetrainingSchedulerResponse')
    SynthesizedJsonInlineDataSchema = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#SynthesizedJsonInlineDataSchema', name: 'SynthesizedJsonInlineDataSchema', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#mediaType" => "application/json"})
    SynthesizedJsonModelMetrics = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#SynthesizedJsonModelMetrics', name: 'SynthesizedJsonModelMetrics', traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}, "smithy.api#mediaType" => "application/json"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutequipment#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    TargetSamplingRate = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutequipment#TargetSamplingRate', name: 'TargetSamplingRate')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeZoneOffset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutequipment#TimeZoneOffset', name: 'TimeZoneOffset', traits: {"smithy.api#pattern" => "^(\\+|\\-)[0-9]{2}\\:[0-9]{2}$"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lookoutequipment#Timestamp', name: 'Timestamp')
    UnsupportedTimestamps = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UnsupportedTimestamps', name: 'UnsupportedTimestamps')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateActiveModelVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UpdateActiveModelVersionRequest', name: 'UpdateActiveModelVersionRequest')
    UpdateActiveModelVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UpdateActiveModelVersionResponse', name: 'UpdateActiveModelVersionResponse')
    UpdateInferenceSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UpdateInferenceSchedulerRequest', name: 'UpdateInferenceSchedulerRequest')
    UpdateLabelGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UpdateLabelGroupRequest', name: 'UpdateLabelGroupRequest')
    UpdateModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UpdateModelRequest', name: 'UpdateModelRequest')
    UpdateRetrainingSchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#UpdateRetrainingSchedulerRequest', name: 'UpdateRetrainingSchedulerRequest')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutequipment#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AutoPromotionResult.add_member(:model_promoted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL_PROMOTED', traits: {"smithy.api#enumValue" => "MODEL_PROMOTED"}))
    AutoPromotionResult.add_member(:model_not_promoted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL_NOT_PROMOTED', traits: {"smithy.api#enumValue" => "MODEL_NOT_PROMOTED"}))
    AutoPromotionResult.add_member(:retraining_internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRAINING_INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "RETRAINING_INTERNAL_ERROR"}))
    AutoPromotionResult.add_member(:retraining_customer_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRAINING_CUSTOMER_ERROR', traits: {"smithy.api#enumValue" => "RETRAINING_CUSTOMER_ERROR"}))
    AutoPromotionResult.add_member(:retraining_cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRAINING_CANCELLED', traits: {"smithy.api#enumValue" => "RETRAINING_CANCELLED"}))
    CategoricalValues.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticalIssueStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> Indicates whether there is a potential data issue related to categorical values.\n      </p>", "smithy.api#required" => {}}))
    CategoricalValues.add_member(:number_of_category, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfCategory', traits: {"smithy.api#documentation" => "<p> Indicates the number of categories in the data. </p>"}))
    CategoricalValues.type = Types::CategoricalValues
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CountPercent.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#documentation" => "<p> Indicates the count of occurences of the given statistic. </p>", "smithy.api#required" => {}}))
    CountPercent.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Percentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> Indicates the percentage of occurances of the given statistic. </p>", "smithy.api#required" => {}}))
    CountPercent.type = Types::CountPercent
    CreateDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being created. </p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSchema, location_name: 'DatasetSchema', traits: {"smithy.api#documentation" => "<p>A JSON description of the data that is in each time series dataset, including names,\n         column names, and data types. </p>"}))
    CreateDatasetRequest.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout\n         for Equipment. </p>"}))
    CreateDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique identifier for the request. If you do not set the client request token, Amazon\n         Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Any tags associated with the ingested data described in the dataset. </p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being created. </p>"}))
    CreateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the dataset being created. </p>"}))
    CreateDatasetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the <code>CreateDataset</code> operation. </p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateInferenceSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the previously trained machine learning model being used to create the\n         inference scheduler. </p>", "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being created. </p>", "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:data_delay_offset_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: 'DataDelayOffsetInMinutes', traits: {"smithy.api#documentation" => "<p>The interval (in minutes) of planned delay at the start of each inference segment. For\n         example, if inference is set to run every ten minutes, the delay is set to five minutes and\n         the time is 09:08. The inference scheduler will wake up at the configured interval (which,\n         without a delay configured, would be 09:10) plus the additional five minute delay time (so\n         09:15) to check your Amazon S3 bucket. The delay provides a buffer for you to upload data at the\n         same frequency, so that you don't have to stop and restart the scheduler when uploading new\n         data.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html\">Understanding\n            the inference process</a>.</p>"}))
    CreateInferenceSchedulerRequest.add_member(:data_upload_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: 'DataUploadFrequency', traits: {"smithy.api#documentation" => "<p> How often data is uploaded to the source Amazon S3 bucket for the input data. The value\n         chosen is the length of time between data uploads. For instance, if you select 5 minutes,\n         Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This\n         frequency also determines how often Amazon Lookout for Equipment runs inference on your data.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html\">Understanding\n            the inference process</a>.</p>", "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:data_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: 'DataInputConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configuration information for the input data for the inference scheduler,\n         including delimiter, format, and dataset location. </p>", "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:data_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'DataOutputConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configuration information for the output results for the inference scheduler,\n         including the S3 location for the output. </p>", "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a role with permission to access the data source being\n         used for the inference. </p>", "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key used to encrypt inference scheduler data by\n         Amazon Lookout for Equipment. </p>"}))
    CreateInferenceSchedulerRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique identifier for the request. If you do not set the client request token, Amazon\n         Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Any tags associated with the inference scheduler. </p>"}))
    CreateInferenceSchedulerRequest.type = Types::CreateInferenceSchedulerRequest
    CreateInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the inference scheduler being created. </p>"}))
    CreateInferenceSchedulerResponse.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of inference scheduler being created. </p>"}))
    CreateInferenceSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the <code>CreateInferenceScheduler</code> operation. </p>"}))
    CreateInferenceSchedulerResponse.add_member(:model_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelQuality, location_name: 'ModelQuality', traits: {"smithy.api#documentation" => "<p>Provides a quality assessment for a model that uses labels. \n         If Lookout for Equipment determines that the\n         model quality is poor based on training metrics, the value is\n         <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is\n         <code>QUALITY_THRESHOLD_MET</code>. </p>\n         <p>If the model is unlabeled, the model quality can't\n         be assessed and the value of <code>ModelQuality</code> is\n         <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality\n         assessment by adding labels to the input dataset and retraining the model.</p>\n         <p>For information about using labels with your models, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html\">Understanding labeling</a>.</p>\n         <p>For information about improving the quality of a model, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html\">Best practices with\n         Amazon Lookout for Equipment</a>.</p>"}))
    CreateInferenceSchedulerResponse.type = Types::CreateInferenceSchedulerResponse
    CreateLabelGroupRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> Names a group of labels.</p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data. </p>", "smithy.api#required" => {}}))
    CreateLabelGroupRequest.add_member(:fault_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCodes, location_name: 'FaultCodes', traits: {"smithy.api#documentation" => "<p> The acceptable fault codes (indicating the type of anomaly associated with the label)\n         that can be used with this label group.</p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    CreateLabelGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique identifier for the request to create a label group. If you do not set the\n         client request token, Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLabelGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> Tags that provide metadata about the label group you are creating. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    CreateLabelGroupRequest.type = Types::CreateLabelGroupRequest
    CreateLabelGroupResponse.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group that you have created. Data in this field will be retained\n         for service usage. Follow best practices for the security of your data. </p>"}))
    CreateLabelGroupResponse.add_member(:label_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: 'LabelGroupArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the label group that you have created. </p>"}))
    CreateLabelGroupResponse.type = Types::CreateLabelGroupResponse
    CreateLabelRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of a group of labels. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data. </p>", "smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The start time of the labeled event. </p>", "smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p> The end time of the labeled event. </p>", "smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:rating, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelRating, location_name: 'Rating', traits: {"smithy.api#documentation" => "<p> Indicates whether a labeled event represents an anomaly. </p>", "smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:fault_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCode, location_name: 'FaultCode', traits: {"smithy.api#documentation" => "<p> Provides additional information about the label. The fault code must be defined in the\n         FaultCodes attribute of the label group.</p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data. </p>"}))
    CreateLabelRequest.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Comments, location_name: 'Notes', traits: {"smithy.api#documentation" => "<p> Metadata providing additional information about the label. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    CreateLabelRequest.add_member(:equipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Equipment, location_name: 'Equipment', traits: {"smithy.api#documentation" => "<p> Indicates that a label pertains to a particular piece of equipment. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    CreateLabelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique identifier for the request to create a label. If you do not set the client\n         request token, Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLabelRequest.type = Types::CreateLabelRequest
    CreateLabelResponse.add_member(:label_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelId, location_name: 'LabelId', traits: {"smithy.api#documentation" => "<p> The ID of the label that you have created. </p>"}))
    CreateLabelResponse.type = Types::CreateLabelResponse
    CreateModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name for the machine learning model to be created.</p>", "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset for the machine learning model being created. </p>", "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:dataset_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSchema, location_name: 'DatasetSchema', traits: {"smithy.api#documentation" => "<p>The data schema for the machine learning model being created. </p>"}))
    CreateModelRequest.add_member(:labels_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: 'LabelsInputConfiguration', traits: {"smithy.api#documentation" => "<p>The input configuration for the labels being used for the machine learning model that's\n         being created. </p>"}))
    CreateModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token, Amazon\n         Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:training_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingDataStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the time reference in the dataset that should be used to begin the subset of\n         training data for the machine learning model. </p>"}))
    CreateModelRequest.add_member(:training_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingDataEndTime', traits: {"smithy.api#documentation" => "<p>Indicates the time reference in the dataset that should be used to end the subset of\n         training data for the machine learning model. </p>"}))
    CreateModelRequest.add_member(:evaluation_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationDataStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the time reference in the dataset that should be used to begin the subset of\n         evaluation data for the machine learning model. </p>"}))
    CreateModelRequest.add_member(:evaluation_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationDataEndTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference in the dataset that should be used to end the subset of\n         evaluation data for the machine learning model. </p>"}))
    CreateModelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a role with permission to access the data source\n         being used to create the machine learning model. </p>"}))
    CreateModelRequest.add_member(:data_pre_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPreProcessingConfiguration, location_name: 'DataPreProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of\n         the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been\n         collected at a 1 second level and you want the system to resample the data at a 1 minute\n         rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>\n         <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the\n         prefix \"PT\" to the rate you want. The value for a 1 second rate is therefore\n            <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,\n         and the value for a 1 hour rate is <i>PT1H</i>\n         </p>"}))
    CreateModelRequest.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout\n         for Equipment. </p>"}))
    CreateModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> Any tags associated with the machine learning model being created. </p>"}))
    CreateModelRequest.add_member(:off_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: OffCondition, location_name: 'OffCondition', traits: {"smithy.api#documentation" => "<p>Indicates that the asset associated with this sensor has been shut off. As long as this\n         condition is met, Lookout for Equipment will not use data from this asset for training,\n         evaluation, or inference.</p>"}))
    CreateModelRequest.add_member(:model_diagnostics_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDiagnosticsOutputConfiguration, location_name: 'ModelDiagnosticsOutputConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location where you want Amazon Lookout for Equipment to save the pointwise model diagnostics.\n        \n         \n      You must also specify the <code>RoleArn</code> request parameter.</p>"}))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateModelResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model being created. </p>"}))
    CreateModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the <code>CreateModel</code> operation. </p>"}))
    CreateModelResponse.type = Types::CreateModelResponse
    CreateRetrainingSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model to add the retraining scheduler to. </p>", "smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.add_member(:retraining_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RetrainingStartDate', traits: {"smithy.api#documentation" => "<p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the\n         nearest UTC day.</p>"}))
    CreateRetrainingSchedulerRequest.add_member(:retraining_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingFrequency, location_name: 'RetrainingFrequency', traits: {"smithy.api#documentation" => "<p>This parameter uses the <a href=\"https://en.wikipedia.org/wiki/ISO_8601#Durations\">ISO 8601</a> standard to set the frequency at which you want retraining to occur in\n         terms of Years, Months, and/or Days (note: other parameters like Time are not currently\n         supported). The minimum value is 30 days (P30D) and the maximum value is 1 year (P1Y). For\n         example, the following values are valid:</p>\n         <ul>\n            <li>\n               <p>P3M15D – Every 3 months and 15 days</p>\n            </li>\n            <li>\n               <p>P2M – Every 2 months</p>\n            </li>\n            <li>\n               <p>P150D – Every 150 days</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.add_member(:lookback_window, Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackWindow, location_name: 'LookbackWindow', traits: {"smithy.api#documentation" => "<p>The number of past days of data that will be used for retraining.</p>", "smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.add_member(:promote_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPromoteMode, location_name: 'PromoteMode', traits: {"smithy.api#documentation" => "<p>Indicates how the service will use new models. In <code>MANAGED</code> mode, new models\n         will automatically be used for inference if they have better performance than the current\n         model. In <code>MANUAL</code> mode, the new models will not be used <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation\">until they\n            are manually activated</a>.</p>"}))
    CreateRetrainingSchedulerRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token, Amazon\n         Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.type = Types::CreateRetrainingSchedulerRequest
    CreateRetrainingSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model that you added the retraining scheduler to. </p>"}))
    CreateRetrainingSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model that you added the retraining scheduler to. </p>"}))
    CreateRetrainingSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the retraining scheduler. </p>"}))
    CreateRetrainingSchedulerResponse.type = Types::CreateRetrainingSchedulerResponse
    DataIngestionJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIngestionJobSummary)
    DataIngestionJobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Indicates the job ID of the data ingestion job. </p>"}))
    DataIngestionJobSummary.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset used for the data ingestion job. </p>"}))
    DataIngestionJobSummary.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset used in the data ingestion job. </p>"}))
    DataIngestionJobSummary.add_member(:ingestion_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: 'IngestionInputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies information for the input data for the data inference job, including data\n            Amazon S3 location parameters. </p>"}))
    DataIngestionJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the data ingestion job. </p>"}))
    DataIngestionJobSummary.type = Types::DataIngestionJobSummary
    DataPreProcessingConfiguration.add_member(:target_sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSamplingRate, location_name: 'TargetSamplingRate', traits: {"smithy.api#documentation" => "<p>The sampling rate of the data after post processing by Amazon Lookout for Equipment. For example, if you\n         provide data that has been collected at a 1 second level and you want the system to\n         resample the data at a 1 minute rate before training, the <code>TargetSamplingRate</code>\n         is 1 minute.</p>\n         <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the\n         prefix \"PT\" to the rate you want. The value for a 1 second rate is therefore\n            <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,\n         and the value for a 1 hour rate is <i>PT1H</i>\n         </p>"}))
    DataPreProcessingConfiguration.type = Types::DataPreProcessingConfiguration
    DataQualitySummary.add_member(:insufficient_sensor_data, Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientSensorData, location_name: 'InsufficientSensorData', traits: {"smithy.api#documentation" => "<p> Parameter that gives information about insufficient data for sensors in the dataset.\n         This includes information about those sensors that have complete data missing and those\n         with a short date range. </p>", "smithy.api#required" => {}}))
    DataQualitySummary.add_member(:missing_sensor_data, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingSensorData, location_name: 'MissingSensorData', traits: {"smithy.api#documentation" => "<p> Parameter that gives information about data that is missing over all the sensors in the\n         input data. </p>", "smithy.api#required" => {}}))
    DataQualitySummary.add_member(:invalid_sensor_data, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSensorData, location_name: 'InvalidSensorData', traits: {"smithy.api#documentation" => "<p> Parameter that gives information about data that is invalid over all the sensors in the\n         input data. </p>", "smithy.api#required" => {}}))
    DataQualitySummary.add_member(:unsupported_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedTimestamps, location_name: 'UnsupportedTimestamps', traits: {"smithy.api#documentation" => "<p> Parameter that gives information about unsupported timestamps in the input data.\n      </p>", "smithy.api#required" => {}}))
    DataQualitySummary.add_member(:duplicate_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTimestamps, location_name: 'DuplicateTimestamps', traits: {"smithy.api#documentation" => "<p> Parameter that gives information about duplicate timestamps in the input data. </p>", "smithy.api#required" => {}}))
    DataQualitySummary.type = Types::DataQualitySummary
    DataUploadFrequency.add_member(:pt5_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT5M', traits: {"smithy.api#enumValue" => "PT5M"}))
    DataUploadFrequency.add_member(:pt10_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT10M', traits: {"smithy.api#enumValue" => "PT10M"}))
    DataUploadFrequency.add_member(:pt15_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT15M', traits: {"smithy.api#enumValue" => "PT15M"}))
    DataUploadFrequency.add_member(:pt30_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT30M', traits: {"smithy.api#enumValue" => "PT30M"}))
    DataUploadFrequency.add_member(:pt1_h, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT1H', traits: {"smithy.api#enumValue" => "PT1H"}))
    DatasetSchema.add_member(:inline_data_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonInlineDataSchema, location_name: 'InlineDataSchema', traits: {"smithy.api#documentation" => "<p>The data schema used within the given dataset.</p>"}))
    DatasetSchema.type = Types::DatasetSchema
    DatasetStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    DatasetStatus.add_member(:ingestion_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INGESTION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "INGESTION_IN_PROGRESS"}))
    DatasetStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatasetStatus.add_member(:import_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    DatasetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummary)
    DatasetSummary.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset. </p>"}))
    DatasetSummary.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the specified dataset. </p>"}))
    DatasetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the dataset. </p>"}))
    DatasetSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the dataset was created in Amazon Lookout for Equipment. </p>"}))
    DatasetSummary.type = Types::DatasetSummary
    DeleteDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteInferenceSchedulerRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteInferenceSchedulerRequest.type = Types::DeleteInferenceSchedulerRequest
    DeleteLabelGroupRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group that you want to delete. Data in this field will be\n         retained for service usage. Follow best practices for the security of your data. </p>", "smithy.api#required" => {}}))
    DeleteLabelGroupRequest.type = Types::DeleteLabelGroupRequest
    DeleteLabelRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group that contains the label that you want to delete. Data in\n         this field will be retained for service usage. Follow best practices for the security of\n         your data. </p>", "smithy.api#required" => {}}))
    DeleteLabelRequest.add_member(:label_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelId, location_name: 'LabelId', traits: {"smithy.api#documentation" => "<p> The ID of the label that you want to delete. </p>", "smithy.api#required" => {}}))
    DeleteLabelRequest.type = Types::DeleteLabelRequest
    DeleteModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which the resource policy should be\n         deleted.</p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteRetrainingSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model whose retraining scheduler you want to delete. </p>", "smithy.api#required" => {}}))
    DeleteRetrainingSchedulerRequest.type = Types::DeleteRetrainingSchedulerRequest
    DescribeDataIngestionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job ID of the data ingestion job. </p>", "smithy.api#required" => {}}))
    DescribeDataIngestionJobRequest.type = Types::DescribeDataIngestionJobRequest
    DescribeDataIngestionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Indicates the job ID of the data ingestion job. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset being used in the data ingestion job.\n      </p>"}))
    DescribeDataIngestionJobResponse.add_member(:ingestion_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: 'IngestionInputConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the S3 location configuration for the data input for the data ingestion job.\n      </p>"}))
    DescribeDataIngestionJobResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source\n         being ingested. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the data ingestion job was created. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the <code>DataIngestionJob</code> operation. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:failed_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'FailedReason', traits: {"smithy.api#documentation" => "<p>Specifies the reason for failure when a data ingestion job has failed. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:data_quality_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: DataQualitySummary, location_name: 'DataQualitySummary', traits: {"smithy.api#documentation" => "<p> Gives statistics about a completed ingestion job. These statistics primarily relate to\n         quantifying incorrect data such as MissingCompleteSensorData, MissingSensorData,\n         UnsupportedDateFormats, InsufficientSensorData, and DuplicateTimeStamps. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:ingested_files_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedFilesSummary, location_name: 'IngestedFilesSummary'))
    DescribeDataIngestionJobResponse.add_member(:status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'StatusDetail', traits: {"smithy.api#documentation" => "<p> Provides details about status of the ingestion job that is currently in progress.\n      </p>"}))
    DescribeDataIngestionJobResponse.add_member(:ingested_data_size, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSizeInBytes, location_name: 'IngestedDataSize', traits: {"smithy.api#documentation" => "<p> Indicates the size of the ingested dataset. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataStartTime', traits: {"smithy.api#documentation" => "<p> Indicates the earliest timestamp corresponding to data that was successfully ingested\n         during this specific ingestion job. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataEndTime', traits: {"smithy.api#documentation" => "<p> Indicates the latest timestamp corresponding to data that was successfully ingested\n         during this specific ingestion job. </p>"}))
    DescribeDataIngestionJobResponse.add_member(:source_dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'SourceDatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source dataset from which the data used for the\n         data ingestion job was imported from.</p>"}))
    DescribeDataIngestionJobResponse.type = Types::DescribeDataIngestionJobResponse
    DescribeDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset to be described. </p>", "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being described. </p>"}))
    DescribeDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset being described. </p>"}))
    DescribeDatasetResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Specifies the time the dataset was created in Lookout for Equipment. </p>"}))
    DescribeDatasetResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>Specifies the time the dataset was last updated, if it was. </p>"}))
    DescribeDatasetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the dataset. </p>"}))
    DescribeDatasetResponse.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonInlineDataSchema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p>A JSON description of the data that is in each time series dataset, including names,\n         column names, and data types. </p>"}))
    DescribeDatasetResponse.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout\n         for Equipment. </p>"}))
    DescribeDatasetResponse.add_member(:ingestion_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: 'IngestionInputConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the S3 location configuration for the data input for the data ingestion job.\n      </p>"}))
    DescribeDatasetResponse.add_member(:data_quality_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: DataQualitySummary, location_name: 'DataQualitySummary', traits: {"smithy.api#documentation" => "<p> Gives statistics associated with the given dataset for the latest successful associated\n         ingestion job id. These statistics primarily relate to quantifying incorrect data such as\n         MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats,\n         InsufficientSensorData, and DuplicateTimeStamps. </p>"}))
    DescribeDatasetResponse.add_member(:ingested_files_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestedFilesSummary, location_name: 'IngestedFilesSummary', traits: {"smithy.api#documentation" => "<p>IngestedFilesSummary associated with the given dataset for the latest successful\n         associated ingestion job id. </p>"}))
    DescribeDatasetResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role that you are using for this the data\n         ingestion job. </p>"}))
    DescribeDatasetResponse.add_member(:data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataStartTime', traits: {"smithy.api#documentation" => "<p> Indicates the earliest timestamp corresponding to data that was successfully ingested\n         during the most recent ingestion of this particular dataset. </p>"}))
    DescribeDatasetResponse.add_member(:data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataEndTime', traits: {"smithy.api#documentation" => "<p> Indicates the latest timestamp corresponding to data that was successfully ingested\n         during the most recent ingestion of this particular dataset. </p>"}))
    DescribeDatasetResponse.add_member(:source_dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'SourceDatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source dataset from which the current data being\n         described was imported from.</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeInferenceSchedulerRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being described. </p>", "smithy.api#required" => {}}))
    DescribeInferenceSchedulerRequest.type = Types::DescribeInferenceSchedulerRequest
    DescribeInferenceSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model of the inference scheduler\n         being described. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model of the inference scheduler being described.\n      </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being described. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the inference scheduler being described. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the inference scheduler. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:data_delay_offset_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: 'DataDelayOffsetInMinutes', traits: {"smithy.api#documentation" => "<p> A period of time (in minutes) by which inference on the data is delayed after the data\n         starts. For instance, if you select an offset delay time of five minutes, inference will\n         not begin on the data until the first data measurement after the five minute mark. For\n         example, if five minutes is selected, the inference scheduler will wake up at the\n         configured frequency with the additional five minute delay time to check the customer S3\n         bucket. The customer can upload data at the same frequency and they don't need to stop and\n         restart the scheduler when uploading new data.</p>"}))
    DescribeInferenceSchedulerResponse.add_member(:data_upload_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: 'DataUploadFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often data is uploaded to the source S3 bucket for the input data. This\n         value is the length of time between data uploads. For instance, if you select 5 minutes,\n         Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This\n         frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In\n         this example, it starts once every 5 minutes. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Specifies the time at which the inference scheduler was created. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>Specifies the time at which the inference scheduler was last updated, if it was. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:data_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: 'DataInputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies configuration information for the input data for the inference scheduler,\n         including delimiter, format, and dataset location. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:data_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'DataOutputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies information for the output results for the inference scheduler, including\n         the output S3 location. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for\n         the inference scheduler being described. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key used to encrypt inference scheduler data by\n         Amazon Lookout for Equipment. </p>"}))
    DescribeInferenceSchedulerResponse.add_member(:latest_inference_result, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestInferenceResult, location_name: 'LatestInferenceResult', traits: {"smithy.api#documentation" => "<p>Indicates whether the latest execution for the inference scheduler was Anomalous\n         (anomalous events found) or Normal (no anomalous events found).</p>"}))
    DescribeInferenceSchedulerResponse.type = Types::DescribeInferenceSchedulerResponse
    DescribeLabelGroupRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> Returns the name of the label group. </p>", "smithy.api#required" => {}}))
    DescribeLabelGroupRequest.type = Types::DescribeLabelGroupRequest
    DescribeLabelGroupResponse.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group. </p>"}))
    DescribeLabelGroupResponse.add_member(:label_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: 'LabelGroupArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the label group. </p>"}))
    DescribeLabelGroupResponse.add_member(:fault_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCodes, location_name: 'FaultCodes', traits: {"smithy.api#documentation" => "<p> Codes indicating the type of anomaly associated with the labels in the lagbel group.\n      </p>"}))
    DescribeLabelGroupResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p> The time at which the label group was created. </p>"}))
    DescribeLabelGroupResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p> The time at which the label group was updated. </p>"}))
    DescribeLabelGroupResponse.type = Types::DescribeLabelGroupResponse
    DescribeLabelRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> Returns the name of the group containing the label. </p>", "smithy.api#required" => {}}))
    DescribeLabelRequest.add_member(:label_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelId, location_name: 'LabelId', traits: {"smithy.api#documentation" => "<p> Returns the ID of the label. </p>", "smithy.api#required" => {}}))
    DescribeLabelRequest.type = Types::DescribeLabelRequest
    DescribeLabelResponse.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the requested label group. </p>"}))
    DescribeLabelResponse.add_member(:label_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: 'LabelGroupArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the requested label group. </p>"}))
    DescribeLabelResponse.add_member(:label_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelId, location_name: 'LabelId', traits: {"smithy.api#documentation" => "<p> The ID of the requested label. </p>"}))
    DescribeLabelResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The start time of the requested label. </p>"}))
    DescribeLabelResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p> The end time of the requested label. </p>"}))
    DescribeLabelResponse.add_member(:rating, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelRating, location_name: 'Rating', traits: {"smithy.api#documentation" => "<p> Indicates whether a labeled event represents an anomaly. </p>"}))
    DescribeLabelResponse.add_member(:fault_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCode, location_name: 'FaultCode', traits: {"smithy.api#documentation" => "<p> Indicates the type of anomaly associated with the label. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    DescribeLabelResponse.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Comments, location_name: 'Notes', traits: {"smithy.api#documentation" => "<p>Metadata providing additional information about the label.</p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    DescribeLabelResponse.add_member(:equipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Equipment, location_name: 'Equipment', traits: {"smithy.api#documentation" => "<p> Indicates that a label pertains to a particular piece of equipment. </p>"}))
    DescribeLabelResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p> The time at which the label was created. </p>"}))
    DescribeLabelResponse.type = Types::DescribeLabelResponse
    DescribeModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model to be described. </p>", "smithy.api#required" => {}}))
    DescribeModelRequest.type = Types::DescribeModelRequest
    DescribeModelResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model being described. </p>"}))
    DescribeModelResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model being described. </p>"}))
    DescribeModelResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being used by the machine learning being described. </p>"}))
    DescribeModelResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resouce Name (ARN) of the dataset used to create the machine learning model\n         being described. </p>"}))
    DescribeModelResponse.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonInlineDataSchema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p>A JSON description of the data that is in each time series dataset, including names,\n         column names, and data types. </p>"}))
    DescribeModelResponse.add_member(:labels_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: 'LabelsInputConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configuration information about the labels input, including its S3 location.\n      </p>"}))
    DescribeModelResponse.add_member(:training_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingDataStartTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference in the dataset that was used to begin the subset of\n         training data for the machine learning model. </p>"}))
    DescribeModelResponse.add_member(:training_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingDataEndTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference in the dataset that was used to end the subset of training\n         data for the machine learning model. </p>"}))
    DescribeModelResponse.add_member(:evaluation_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationDataStartTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference in the dataset that was used to begin the subset of\n         evaluation data for the machine learning model. </p>"}))
    DescribeModelResponse.add_member(:evaluation_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationDataEndTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference in the dataset that was used to end the subset of\n         evaluation data for the machine learning model. </p>"}))
    DescribeModelResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for\n         the machine learning model being described. </p>"}))
    DescribeModelResponse.add_member(:data_pre_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPreProcessingConfiguration, location_name: 'DataPreProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of\n         the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been\n         collected at a 1 second level and you want the system to resample the data at a 1 minute\n         rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>\n         <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the\n         prefix \"PT\" to the rate you want. The value for a 1 second rate is therefore\n            <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,\n         and the value for a 1 hour rate is <i>PT1H</i>\n         </p>"}))
    DescribeModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies the current status of the model being described. Status describes the status\n         of the most recent action of the model. </p>"}))
    DescribeModelResponse.add_member(:training_execution_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingExecutionStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the time at which the training of the machine learning model began. </p>"}))
    DescribeModelResponse.add_member(:training_execution_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingExecutionEndTime', traits: {"smithy.api#documentation" => "<p>Indicates the time at which the training of the machine learning model was completed.\n      </p>"}))
    DescribeModelResponse.add_member(:failed_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'FailedReason', traits: {"smithy.api#documentation" => "<p>If the training of the machine learning model failed, this indicates the reason for that\n         failure. </p>"}))
    DescribeModelResponse.add_member(:model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonModelMetrics, location_name: 'ModelMetrics', traits: {"smithy.api#documentation" => "<p>The Model Metrics show an aggregated summary of the model's performance within the\n         evaluation time range. This is the JSON content of the metrics created when evaluating the\n         model. </p>"}))
    DescribeModelResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>Indicates the last time the machine learning model was updated. The type of update is\n         not specified. </p>"}))
    DescribeModelResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Indicates the time and date at which the machine learning model was created. </p>"}))
    DescribeModelResponse.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout\n         for Equipment. </p>"}))
    DescribeModelResponse.add_member(:off_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: OffCondition, location_name: 'OffCondition', traits: {"smithy.api#documentation" => "<p>Indicates that the asset associated with this sensor has been shut off. As long as this\n         condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or\n         inference.</p>"}))
    DescribeModelResponse.add_member(:source_model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'SourceModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source model version. This field appears if the\n         active model version was imported.</p>"}))
    DescribeModelResponse.add_member(:import_job_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ImportJobStartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the import job was started. This field appears if the active\n         model version was imported.</p>"}))
    DescribeModelResponse.add_member(:import_job_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ImportJobEndTime', traits: {"smithy.api#documentation" => "<p>The date and time when the import job was completed. This field appears if the active\n         model version was imported.</p>"}))
    DescribeModelResponse.add_member(:active_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ActiveModelVersion', traits: {"smithy.api#documentation" => "<p>The name of the model version used by the inference schedular when running a scheduled\n         inference execution.</p>"}))
    DescribeModelResponse.add_member(:active_model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'ActiveModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version used by the inference scheduler when\n         running a scheduled inference execution.</p>"}))
    DescribeModelResponse.add_member(:model_version_activated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ModelVersionActivatedAt', traits: {"smithy.api#documentation" => "<p>The date the active model version was activated.</p>"}))
    DescribeModelResponse.add_member(:previous_active_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'PreviousActiveModelVersion', traits: {"smithy.api#documentation" => "<p>The model version that was set as the active model version prior to the current active\n         model version.</p>"}))
    DescribeModelResponse.add_member(:previous_active_model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'PreviousActiveModelVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model version that was set as the active model version prior to the\n         current active model version.</p>"}))
    DescribeModelResponse.add_member(:previous_model_version_activated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'PreviousModelVersionActivatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the previous active model version was activated.</p>"}))
    DescribeModelResponse.add_member(:prior_model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonModelMetrics, location_name: 'PriorModelMetrics', traits: {"smithy.api#documentation" => "<p>If the model version was retrained, this field shows a summary of the performance of the\n         prior model on the new training range. You can use the information in this JSON-formatted\n         object to compare the new model version and the prior model version.</p>"}))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_failed_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'LatestScheduledRetrainingFailedReason', traits: {"smithy.api#documentation" => "<p>If the model version was generated by retraining and the training failed, this indicates\n         the reason for that failure. </p>"}))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'LatestScheduledRetrainingStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the most recent scheduled retraining run. </p>"}))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'LatestScheduledRetrainingModelVersion', traits: {"smithy.api#documentation" => "<p>Indicates the most recent model version that was generated by retraining. </p>"}))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestScheduledRetrainingStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the start time of the most recent scheduled retraining run. </p>"}))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_available_data_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'LatestScheduledRetrainingAvailableDataInDays', traits: {"smithy.api#documentation" => "<p>Indicates the number of days of data used in the most recent scheduled retraining run.\n      </p>"}))
    DescribeModelResponse.add_member(:next_scheduled_retraining_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'NextScheduledRetrainingStartDate', traits: {"smithy.api#documentation" => "<p>Indicates the date and time that the next scheduled retraining run will start on. Lookout for Equipment\n         truncates the time you provide to the nearest UTC day.</p>"}))
    DescribeModelResponse.add_member(:accumulated_inference_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AccumulatedInferenceDataStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the start time of the inference data that has been accumulated. </p>"}))
    DescribeModelResponse.add_member(:accumulated_inference_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AccumulatedInferenceDataEndTime', traits: {"smithy.api#documentation" => "<p>Indicates the end time of the inference data that has been accumulated. </p>"}))
    DescribeModelResponse.add_member(:retraining_scheduler_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'RetrainingSchedulerStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the retraining scheduler. </p>"}))
    DescribeModelResponse.add_member(:model_diagnostics_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDiagnosticsOutputConfiguration, location_name: 'ModelDiagnosticsOutputConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for the model's pointwise model diagnostics.</p>"}))
    DescribeModelResponse.add_member(:model_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelQuality, location_name: 'ModelQuality', traits: {"smithy.api#documentation" => "<p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the\n         model quality is poor based on training metrics, the value is\n         <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is\n         <code>QUALITY_THRESHOLD_MET</code>.</p>\n         <p>If the model is unlabeled, the model quality can't\n         be assessed and the value of <code>ModelQuality</code> is\n         <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality\n         assessment by adding labels to the input dataset and retraining the model.</p>\n         <p>For information about using labels with your models, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html\">Understanding labeling</a>.</p>\n         <p>For information about improving the quality of a model, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html\">Best practices with\n         Amazon Lookout for Equipment</a>.</p>"}))
    DescribeModelResponse.type = Types::DescribeModelResponse
    DescribeModelVersionRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model that this version belongs to.</p>", "smithy.api#required" => {}}))
    DescribeModelVersionRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the machine learning model.</p>", "smithy.api#required" => {}}))
    DescribeModelVersionRequest.type = Types::DescribeModelVersionRequest
    DescribeModelVersionResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model that this version belongs to.</p>"}))
    DescribeModelVersionResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the parent machine learning model that this version\n         belong to.</p>"}))
    DescribeModelVersionResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the machine learning model.</p>"}))
    DescribeModelVersionResponse.add_member(:model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'ModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Indicates whether this model version was created by training or by importing.</p>"}))
    DescribeModelVersionResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset used to train the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset used to train the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineDataSchema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p>The schema of the data used to train the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:labels_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: 'LabelsInputConfiguration'))
    DescribeModelVersionResponse.add_member(:training_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingDataStartTime', traits: {"smithy.api#documentation" => "<p>The date on which the training data began being gathered. If you imported the version,\n         this is the date that the training data in the source version began being gathered.</p>"}))
    DescribeModelVersionResponse.add_member(:training_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingDataEndTime', traits: {"smithy.api#documentation" => "<p>The date on which the training data finished being gathered. If you imported the\n         version, this is the date that the training data in the source version finished being\n         gathered.</p>"}))
    DescribeModelVersionResponse.add_member(:evaluation_data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationDataStartTime', traits: {"smithy.api#documentation" => "<p>The date on which the data in the evaluation set began being gathered. If you imported\n         the version, this is the date that the evaluation set data in the source version began\n         being gathered.</p>"}))
    DescribeModelVersionResponse.add_member(:evaluation_data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationDataEndTime', traits: {"smithy.api#documentation" => "<p>The date on which the data in the evaluation set began being gathered. If you imported\n         the version, this is the date that the evaluation set data in the source version finished\n         being gathered.</p>"}))
    DescribeModelVersionResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role that was used to train the model\n         version.</p>"}))
    DescribeModelVersionResponse.add_member(:data_pre_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPreProcessingConfiguration, location_name: 'DataPreProcessingConfiguration'))
    DescribeModelVersionResponse.add_member(:training_execution_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingExecutionStartTime', traits: {"smithy.api#documentation" => "<p>The time when the training of the version began.</p>"}))
    DescribeModelVersionResponse.add_member(:training_execution_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingExecutionEndTime', traits: {"smithy.api#documentation" => "<p>The time when the training of the version completed.</p>"}))
    DescribeModelVersionResponse.add_member(:failed_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'FailedReason', traits: {"smithy.api#documentation" => "<p>The failure message if the training of the model version failed.</p>"}))
    DescribeModelVersionResponse.add_member(:model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelMetrics, location_name: 'ModelMetrics', traits: {"smithy.api#documentation" => "<p>Shows an aggregated summary, in JSON format, of the model's performance within the\n         evaluation time range. These metrics are created when evaluating the model.</p>"}))
    DescribeModelVersionResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>Indicates the last time the machine learning model version was updated.</p>"}))
    DescribeModelVersionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Indicates the time and date at which the machine learning model version was\n         created.</p>"}))
    DescribeModelVersionResponse.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS key key used to encrypt model version data by\n         Amazon Lookout for Equipment.</p>"}))
    DescribeModelVersionResponse.add_member(:off_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: OffCondition, location_name: 'OffCondition', traits: {"smithy.api#documentation" => "<p>Indicates that the asset associated with this sensor has been shut off. As long as this\n         condition is met, Lookout for Equipment will not use data from this asset for training,\n         evaluation, or inference.</p>"}))
    DescribeModelVersionResponse.add_member(:source_model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'SourceModelVersionArn', traits: {"smithy.api#documentation" => "<p>If model version was imported, then this field is the arn of the source model\n         version.</p>"}))
    DescribeModelVersionResponse.add_member(:import_job_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ImportJobStartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the import job began. This field appears if the model version was\n         imported.</p>"}))
    DescribeModelVersionResponse.add_member(:import_job_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ImportJobEndTime', traits: {"smithy.api#documentation" => "<p>The date and time when the import job completed. This field appears if the model version\n         was imported.</p>"}))
    DescribeModelVersionResponse.add_member(:imported_data_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSizeInBytes, location_name: 'ImportedDataSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size in bytes of the imported data. This field appears if the model version was\n         imported.</p>"}))
    DescribeModelVersionResponse.add_member(:prior_model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelMetrics, location_name: 'PriorModelMetrics', traits: {"smithy.api#documentation" => "<p>If the model version was retrained, this field shows a summary of the performance of the\n         prior model on the new training range. You can use the information in this JSON-formatted\n         object to compare the new model version and the prior model version.</p>"}))
    DescribeModelVersionResponse.add_member(:retraining_available_data_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RetrainingAvailableDataInDays', traits: {"smithy.api#documentation" => "<p>Indicates the number of days of data used in the most recent scheduled retraining run.\n      </p>"}))
    DescribeModelVersionResponse.add_member(:auto_promotion_result, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoPromotionResult, location_name: 'AutoPromotionResult', traits: {"smithy.api#documentation" => "<p>Indicates whether the model version was promoted to be the active version after\n         retraining or if there was an error with or cancellation of the retraining. </p>"}))
    DescribeModelVersionResponse.add_member(:auto_promotion_result_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoPromotionResultReason, location_name: 'AutoPromotionResultReason', traits: {"smithy.api#documentation" => "<p>Indicates the reason for the <code>AutoPromotionResult</code>. For example, a model\n         might not be promoted if its performance was worse than the active version, if there was an\n         error during training, or if the retraining scheduler was using <code>MANUAL</code> promote\n         mode. The model will be promoted in <code>MANAGED</code> promote mode if the performance is\n         better than the previous model. </p>"}))
    DescribeModelVersionResponse.add_member(:model_diagnostics_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDiagnosticsOutputConfiguration, location_name: 'ModelDiagnosticsOutputConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location where Amazon Lookout for Equipment saves the pointwise model diagnostics for the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:model_diagnostics_results_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'ModelDiagnosticsResultsObject', traits: {"smithy.api#documentation" => "<p>The Amazon S3 output prefix for where Lookout for Equipment saves the pointwise model diagnostics for the model version.</p>"}))
    DescribeModelVersionResponse.add_member(:model_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelQuality, location_name: 'ModelQuality', traits: {"smithy.api#documentation" => "<p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the\n         model quality is poor based on training metrics, the value is\n         <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is\n         <code>QUALITY_THRESHOLD_MET</code>.</p>\n         <p>If the model is unlabeled, the model quality can't\n         be assessed and the value of <code>ModelQuality</code> is\n         <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality\n         assessment by adding labels to the input dataset and retraining the model.</p>\n         <p>For information about using labels with your models, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html\">Understanding labeling</a>.</p>\n         <p>For information about improving the quality of a model, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html\">Best practices with\n         Amazon Lookout for Equipment</a>.</p>"}))
    DescribeModelVersionResponse.type = Types::DescribeModelVersionResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that is associated with the resource\n         policy.</p>", "smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a revision of the resource policy.</p>"}))
    DescribeResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The resource policy in a JSON-formatted string.</p>"}))
    DescribeResourcePolicyResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the resource policy was created.</p>"}))
    DescribeResourcePolicyResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time when the resource policy was last modified.</p>"}))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeRetrainingSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model that the retraining scheduler is attached to. </p>", "smithy.api#required" => {}}))
    DescribeRetrainingSchedulerRequest.type = Types::DescribeRetrainingSchedulerRequest
    DescribeRetrainingSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model that the retraining scheduler is attached to. </p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model that the retraining scheduler is attached to. </p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:retraining_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RetrainingStartDate', traits: {"smithy.api#documentation" => "<p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the\n         nearest UTC day.</p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:retraining_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingFrequency, location_name: 'RetrainingFrequency', traits: {"smithy.api#documentation" => "<p>The frequency at which the model retraining is set. This follows the <a href=\"https://en.wikipedia.org/wiki/ISO_8601#Durations\">ISO 8601</a>\n         guidelines.</p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:lookback_window, Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackWindow, location_name: 'LookbackWindow', traits: {"smithy.api#documentation" => "<p>The number of past days of data used for retraining.</p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the retraining scheduler. </p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:promote_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPromoteMode, location_name: 'PromoteMode', traits: {"smithy.api#documentation" => "<p>Indicates how the service uses new models. In <code>MANAGED</code> mode, new models are\n         used for inference if they have better performance than the current model. In\n            <code>MANUAL</code> mode, the new models are not used until they are <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation\">manually\n            activated</a>.</p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Indicates the time and date at which the retraining scheduler was created. </p>"}))
    DescribeRetrainingSchedulerResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>Indicates the time and date at which the retraining scheduler was updated. </p>"}))
    DescribeRetrainingSchedulerResponse.type = Types::DescribeRetrainingSchedulerResponse
    DuplicateTimestamps.add_member(:total_number_of_duplicate_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalNumberOfDuplicateTimestamps', traits: {"smithy.api#documentation" => "<p> Indicates the total number of duplicate timestamps. </p>", "smithy.api#required" => {}}))
    DuplicateTimestamps.type = Types::DuplicateTimestamps
    FaultCodes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCode)
    ImportDatasetRequest.add_member(:source_dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'SourceDatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset to import.</p>", "smithy.api#required" => {}}))
    ImportDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning dataset to be created. If the dataset already exists,\n         Amazon Lookout for Equipment overwrites the existing dataset. If you don't specify this field, it is filled\n         with the name of the source dataset.</p>"}))
    ImportDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token,\n         Amazon Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportDatasetRequest.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key key used to encrypt model data by Amazon Lookout for Equipment.\n      </p>"}))
    ImportDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Any tags associated with the dataset to be created.</p>"}))
    ImportDatasetRequest.type = Types::ImportDatasetRequest
    ImportDatasetResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the created machine learning dataset.</p>"}))
    ImportDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset that was imported.</p>"}))
    ImportDatasetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the <code>ImportDataset</code> operation.</p>"}))
    ImportDatasetResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the job of importing the dataset.</p>"}))
    ImportDatasetResponse.type = Types::ImportDatasetResponse
    ImportModelVersionRequest.add_member(:source_model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'SourceModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version to import.</p>", "smithy.api#required" => {}}))
    ImportModelVersionRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name for the machine learning model to be created. If the model already exists,\n         Amazon Lookout for Equipment creates a new version. If you do not specify this field, it is filled with the\n         name of the source model.</p>"}))
    ImportModelVersionRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset for the machine learning model being imported. </p>", "smithy.api#required" => {}}))
    ImportModelVersionRequest.add_member(:labels_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: 'LabelsInputConfiguration'))
    ImportModelVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token,\n         Amazon Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportModelVersionRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a role with permission to access the data source being\n         used to create the machine learning model. </p>"}))
    ImportModelVersionRequest.add_member(:server_side_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'ServerSideKmsKeyId', traits: {"smithy.api#documentation" => "<p>Provides the identifier of the KMS key key used to encrypt model data by Amazon Lookout for Equipment.\n      </p>"}))
    ImportModelVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the machine learning model to be created. </p>"}))
    ImportModelVersionRequest.add_member(:inference_data_import_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceDataImportStrategy, location_name: 'InferenceDataImportStrategy', traits: {"smithy.api#documentation" => "<p>Indicates how to import the accumulated inference data when a model version is imported.\n         The possible values are as follows:</p>\n         <ul>\n            <li>\n               <p>NO_IMPORT – Don't import the data.</p>\n            </li>\n            <li>\n               <p>ADD_WHEN_EMPTY – Only import the data from the source model if there is no\n               existing data in the target model.</p>\n            </li>\n            <li>\n               <p>OVERWRITE – Import the data from the source model and overwrite the\n               existing data in the target model.</p>\n            </li>\n         </ul>"}))
    ImportModelVersionRequest.type = Types::ImportModelVersionRequest
    ImportModelVersionResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name for the machine learning model.</p>"}))
    ImportModelVersionResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model being created. </p>"}))
    ImportModelVersionResponse.add_member(:model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'ModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version being created. </p>"}))
    ImportModelVersionResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model being created.</p>"}))
    ImportModelVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the <code>ImportModelVersion</code> operation. </p>"}))
    ImportModelVersionResponse.type = Types::ImportModelVersionResponse
    InferenceDataImportStrategy.add_member(:no_import, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_IMPORT', traits: {"smithy.api#enumValue" => "NO_IMPORT"}))
    InferenceDataImportStrategy.add_member(:add_when_empty, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD_WHEN_EMPTY', traits: {"smithy.api#enumValue" => "ADD_WHEN_EMPTY"}))
    InferenceDataImportStrategy.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE', traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    InferenceEventSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceEventSummary)
    InferenceEventSummary.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the inference scheduler being used for the inference\n         event. </p>"}))
    InferenceEventSummary.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being used for the inference events. </p>"}))
    InferenceEventSummary.add_member(:event_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the starting time of an inference event. </p>"}))
    InferenceEventSummary.add_member(:event_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EventEndTime', traits: {"smithy.api#documentation" => "<p>Indicates the ending time of an inference event. </p>"}))
    InferenceEventSummary.add_member(:diagnostics, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelMetrics, location_name: 'Diagnostics', traits: {"smithy.api#documentation" => "<p> An array which specifies the names and values of all sensors contributing to an\n         inference event.</p>"}))
    InferenceEventSummary.add_member(:event_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDurationInSeconds, location_name: 'EventDurationInSeconds', traits: {"smithy.api#documentation" => "<p> Indicates the size of an inference event in seconds. </p>"}))
    InferenceEventSummary.type = Types::InferenceEventSummary
    InferenceExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    InferenceExecutionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    InferenceExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    InferenceExecutionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceExecutionSummary)
    InferenceExecutionSummary.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model being used for the inference execution. </p>"}))
    InferenceExecutionSummary.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model used for the inference\n         execution. </p>"}))
    InferenceExecutionSummary.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being used for the inference execution. </p>"}))
    InferenceExecutionSummary.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the inference scheduler being used for the inference\n         execution. </p>"}))
    InferenceExecutionSummary.add_member(:scheduled_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ScheduledStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the start time at which the inference scheduler began the specific inference\n         execution. </p>"}))
    InferenceExecutionSummary.add_member(:data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the time reference in the dataset at which the inference execution began.\n      </p>"}))
    InferenceExecutionSummary.add_member(:data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataEndTime', traits: {"smithy.api#documentation" => "<p>Indicates the time reference in the dataset at which the inference execution stopped.\n      </p>"}))
    InferenceExecutionSummary.add_member(:data_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: 'DataInputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies configuration information for the input data for the inference scheduler,\n         including delimiter, format, and dataset location. </p>"}))
    InferenceExecutionSummary.add_member(:data_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'DataOutputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies configuration information for the output results from for the inference\n         execution, including the output Amazon S3 location.\n      </p>"}))
    InferenceExecutionSummary.add_member(:customer_result_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'CustomerResultObject', traits: {"smithy.api#documentation" => "<p>The S3 object that the inference execution results were uploaded to.</p>"}))
    InferenceExecutionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceExecutionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the inference execution. </p>"}))
    InferenceExecutionSummary.add_member(:failed_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'FailedReason', traits: {"smithy.api#documentation" => "<p> Specifies the reason for failure when an inference execution has failed. </p>"}))
    InferenceExecutionSummary.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The model version used for the inference execution.</p>"}))
    InferenceExecutionSummary.add_member(:model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'ModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the model version used for the inference\n         execution.</p>"}))
    InferenceExecutionSummary.type = Types::InferenceExecutionSummary
    InferenceInputConfiguration.add_member(:s3_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceS3InputConfiguration, location_name: 'S3InputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies configuration information for the input data for the inference, including\n            Amazon S3 location of input data.</p>"}))
    InferenceInputConfiguration.add_member(:input_time_zone_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneOffset, location_name: 'InputTimeZoneOffset', traits: {"smithy.api#documentation" => "<p>Indicates the difference between your time zone and Coordinated Universal Time\n         (UTC).</p>"}))
    InferenceInputConfiguration.add_member(:inference_input_name_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceInputNameConfiguration, location_name: 'InferenceInputNameConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configuration information for the input data for the inference, including\n         timestamp format and delimiter. </p>"}))
    InferenceInputConfiguration.type = Types::InferenceInputConfiguration
    InferenceInputNameConfiguration.add_member(:timestamp_format, Smithy::Schema::Shapes::ShapeRef.new(shape: FileNameTimestampFormat, location_name: 'TimestampFormat', traits: {"smithy.api#documentation" => "<p>The format of the timestamp, whether Epoch time, or standard, with or without hyphens\n         (-). </p>"}))
    InferenceInputNameConfiguration.add_member(:component_timestamp_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTimestampDelimiter, location_name: 'ComponentTimestampDelimiter', traits: {"smithy.api#documentation" => "<p>Indicates the delimiter character used between items in the data. </p>"}))
    InferenceInputNameConfiguration.type = Types::InferenceInputNameConfiguration
    InferenceOutputConfiguration.add_member(:s3_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceS3OutputConfiguration, location_name: 'S3OutputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies configuration information for the output results from for the inference,\n         output S3 location. </p>", "smithy.api#required" => {}}))
    InferenceOutputConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID number for the KMS key key used to encrypt the inference output. </p>"}))
    InferenceOutputConfiguration.type = Types::InferenceOutputConfiguration
    InferenceS3InputConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The bucket containing the input dataset for the inference. </p>", "smithy.api#required" => {}}))
    InferenceS3InputConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The prefix for the S3 bucket used for the input data for the inference. </p>"}))
    InferenceS3InputConfiguration.type = Types::InferenceS3InputConfiguration
    InferenceS3OutputConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p> The bucket containing the output results from the inference </p>", "smithy.api#required" => {}}))
    InferenceS3OutputConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p> The prefix for the S3 bucket used for the output results from the inference. </p>"}))
    InferenceS3OutputConfiguration.type = Types::InferenceS3OutputConfiguration
    InferenceSchedulerStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    InferenceSchedulerStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    InferenceSchedulerStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    InferenceSchedulerStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    InferenceSchedulerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerSummary)
    InferenceSchedulerSummary.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model used for the inference scheduler. </p>"}))
    InferenceSchedulerSummary.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the machine learning model used by the inference\n         scheduler. </p>"}))
    InferenceSchedulerSummary.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler. </p>"}))
    InferenceSchedulerSummary.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the inference scheduler. </p>"}))
    InferenceSchedulerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the inference scheduler. </p>"}))
    InferenceSchedulerSummary.add_member(:data_delay_offset_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: 'DataDelayOffsetInMinutes', traits: {"smithy.api#documentation" => "<p>A period of time (in minutes) by which inference on the data is delayed after the data\n         starts. For instance, if an offset delay time of five minutes was selected, inference will\n         not begin on the data until the first data measurement after the five minute mark. For\n         example, if five minutes is selected, the inference scheduler will wake up at the\n         configured frequency with the additional five minute delay time to check the customer S3\n         bucket. The customer can upload data at the same frequency and they don't need to stop and\n         restart the scheduler when uploading new data. </p>"}))
    InferenceSchedulerSummary.add_member(:data_upload_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: 'DataUploadFrequency', traits: {"smithy.api#documentation" => "<p>How often data is uploaded to the source S3 bucket for the input data. This value is the\n         length of time between data uploads. For instance, if you select 5 minutes, Amazon Lookout\n         for Equipment will upload the real-time data to the source bucket once every 5 minutes.\n         This frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on your\n         data. In this example, it starts once every 5 minutes. </p>"}))
    InferenceSchedulerSummary.add_member(:latest_inference_result, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestInferenceResult, location_name: 'LatestInferenceResult', traits: {"smithy.api#documentation" => "<p>Indicates whether the latest execution for the inference scheduler was Anomalous\n         (anomalous events found) or Normal (no anomalous events found).</p>"}))
    InferenceSchedulerSummary.type = Types::InferenceSchedulerSummary
    IngestedFilesSummary.add_member(:total_number_of_files, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalNumberOfFiles', traits: {"smithy.api#documentation" => "<p>Indicates the total number of files that were submitted for ingestion.</p>", "smithy.api#required" => {}}))
    IngestedFilesSummary.add_member(:ingested_number_of_files, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IngestedNumberOfFiles', traits: {"smithy.api#documentation" => "<p>Indicates the number of files that were successfully ingested.</p>", "smithy.api#required" => {}}))
    IngestedFilesSummary.add_member(:discarded_files, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDiscardedFiles, location_name: 'DiscardedFiles', traits: {"smithy.api#documentation" => "<p>Indicates the number of files that were discarded. A file could be discarded because its\n         format is invalid (for example, a jpg or pdf) or not readable.</p>"}))
    IngestedFilesSummary.type = Types::IngestedFilesSummary
    IngestionInputConfiguration.add_member(:s3_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionS3InputConfiguration, location_name: 'S3InputConfiguration', traits: {"smithy.api#documentation" => "<p>The location information for the S3 bucket used for input data for the data ingestion.\n      </p>", "smithy.api#required" => {}}))
    IngestionInputConfiguration.type = Types::IngestionInputConfiguration
    IngestionJobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    IngestionJobStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    IngestionJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IngestionJobStatus.add_member(:import_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    IngestionS3InputConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket used for the input data for the data ingestion. </p>", "smithy.api#required" => {}}))
    IngestionS3InputConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The prefix for the S3 location being used for the input data for the data ingestion.\n      </p>"}))
    IngestionS3InputConfiguration.add_member(:key_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPattern, location_name: 'KeyPattern', traits: {"smithy.api#documentation" => "<p> The pattern for matching the Amazon S3 files that will be used for ingestion.\n         If the schema was created previously without any KeyPattern, then the default KeyPattern\n         {prefix}/{component_name}/* is used to download files from Amazon S3 according to\n         the schema. This field is required when ingestion is being done for the first time.</p>\n         <p>Valid Values: {prefix}/{component_name}_* | {prefix}/{component_name}/* |\n         {prefix}/{component_name}[DELIMITER]* (Allowed delimiters : space, dot, underscore,\n         hyphen)</p>"}))
    IngestionS3InputConfiguration.type = Types::IngestionS3InputConfiguration
    InsufficientSensorData.add_member(:missing_complete_sensor_data, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingCompleteSensorData, location_name: 'MissingCompleteSensorData', traits: {"smithy.api#documentation" => "<p> Parameter that describes the total number of sensors that have data completely missing\n         for it. </p>", "smithy.api#required" => {}}))
    InsufficientSensorData.add_member(:sensors_with_short_date_range, Smithy::Schema::Shapes::ShapeRef.new(shape: SensorsWithShortDateRange, location_name: 'SensorsWithShortDateRange', traits: {"smithy.api#documentation" => "<p> Parameter that describes the total number of sensors that have a short date range of\n         less than 14 days of data overall. </p>", "smithy.api#required" => {}}))
    InsufficientSensorData.type = Types::InsufficientSensorData
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidSensorData.add_member(:affected_sensor_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AffectedSensorCount', traits: {"smithy.api#documentation" => "<p> Indicates the number of sensors that have at least some invalid values. </p>", "smithy.api#required" => {}}))
    InvalidSensorData.add_member(:total_number_of_invalid_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalNumberOfInvalidValues', traits: {"smithy.api#documentation" => "<p> Indicates the total number of invalid values across all the sensors. </p>", "smithy.api#required" => {}}))
    InvalidSensorData.type = Types::InvalidSensorData
    LabelGroupSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupSummary)
    LabelGroupSummary.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group. </p>"}))
    LabelGroupSummary.add_member(:label_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: 'LabelGroupArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the label group. </p>"}))
    LabelGroupSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p> The time at which the label group was created. </p>"}))
    LabelGroupSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p> The time at which the label group was updated. </p>"}))
    LabelGroupSummary.type = Types::LabelGroupSummary
    LabelRating.add_member(:anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALY', traits: {"smithy.api#enumValue" => "ANOMALY"}))
    LabelRating.add_member(:no_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ANOMALY', traits: {"smithy.api#enumValue" => "NO_ANOMALY"}))
    LabelRating.add_member(:neutral, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEUTRAL', traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    LabelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelSummary)
    LabelSummary.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group. </p>"}))
    LabelSummary.add_member(:label_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelId, location_name: 'LabelId', traits: {"smithy.api#documentation" => "<p> The ID of the label. </p>"}))
    LabelSummary.add_member(:label_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: 'LabelGroupArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the label group. </p>"}))
    LabelSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The timestamp indicating the start of the label. </p>"}))
    LabelSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p> The timestamp indicating the end of the label. </p>"}))
    LabelSummary.add_member(:rating, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelRating, location_name: 'Rating', traits: {"smithy.api#documentation" => "<p> Indicates whether a labeled event represents an anomaly. </p>"}))
    LabelSummary.add_member(:fault_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCode, location_name: 'FaultCode', traits: {"smithy.api#documentation" => "<p> Indicates the type of anomaly associated with the label. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    LabelSummary.add_member(:equipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Equipment, location_name: 'Equipment', traits: {"smithy.api#documentation" => "<p> Indicates that a label pertains to a particular piece of equipment. </p>"}))
    LabelSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p> The time at which the label was created. </p>"}))
    LabelSummary.type = Types::LabelSummary
    LabelsInputConfiguration.add_member(:s3_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsS3InputConfiguration, location_name: 'S3InputConfiguration', traits: {"smithy.api#documentation" => "<p>Contains location information for the S3 location being used for label data. </p>"}))
    LabelsInputConfiguration.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group to be used for label data. </p>"}))
    LabelsInputConfiguration.type = Types::LabelsInputConfiguration
    LabelsS3InputConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket holding the label data. </p>", "smithy.api#required" => {}}))
    LabelsS3InputConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p> The prefix for the S3 bucket used for the label data. </p>"}))
    LabelsS3InputConfiguration.type = Types::LabelsS3InputConfiguration
    LargeTimestampGaps.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticalIssueStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> Indicates whether there is a potential data issue related to large gaps in timestamps.\n      </p>", "smithy.api#required" => {}}))
    LargeTimestampGaps.add_member(:number_of_large_timestamp_gaps, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfLargeTimestampGaps', traits: {"smithy.api#documentation" => "<p> Indicates the number of large timestamp gaps, if there are any. </p>"}))
    LargeTimestampGaps.add_member(:max_timestamp_gap_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxTimestampGapInDays', traits: {"smithy.api#documentation" => "<p> Indicates the size of the largest timestamp gap, in days. </p>"}))
    LargeTimestampGaps.type = Types::LargeTimestampGaps
    LatestInferenceResult.add_member(:anomalous, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALOUS', traits: {"smithy.api#enumValue" => "ANOMALOUS"}))
    LatestInferenceResult.add_member(:normal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NORMAL', traits: {"smithy.api#enumValue" => "NORMAL"}))
    ListDataIngestionJobsRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being used for the data ingestion job. </p>"}))
    ListDataIngestionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token indicating where to continue the listing of data ingestion\n         jobs. </p>"}))
    ListDataIngestionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> Specifies the maximum number of data ingestion jobs to list. </p>"}))
    ListDataIngestionJobsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the data ingestion job. </p>"}))
    ListDataIngestionJobsRequest.type = Types::ListDataIngestionJobsRequest
    ListDataIngestionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of data ingestion\n         jobs. </p>"}))
    ListDataIngestionJobsResponse.add_member(:data_ingestion_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIngestionJobSummaries, location_name: 'DataIngestionJobSummaries', traits: {"smithy.api#documentation" => "<p>Specifies information about the specific data ingestion job, including dataset name and\n         status. </p>"}))
    ListDataIngestionJobsResponse.type = Types::ListDataIngestionJobsResponse
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of datasets.\n      </p>"}))
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> Specifies the maximum number of datasets to list. </p>"}))
    ListDatasetsRequest.add_member(:dataset_name_begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetNameBeginsWith', traits: {"smithy.api#documentation" => "<p>The beginning of the name of the datasets to be listed. </p>"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of datasets.\n      </p>"}))
    ListDatasetsResponse.add_member(:dataset_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummaries, location_name: 'DatasetSummaries', traits: {"smithy.api#documentation" => "<p>Provides information about the specified dataset, including creation time, dataset ARN,\n         and status. </p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListInferenceEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token indicating where to continue the listing of inference\n         events.</p>"}))
    ListInferenceEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of inference events to list. </p>"}))
    ListInferenceEventsRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler for the inference events listed. </p>", "smithy.api#required" => {}}))
    ListInferenceEventsRequest.add_member(:interval_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IntervalStartTime', traits: {"smithy.api#documentation" => "<p> Lookout for Equipment will return all the inference events with an end time equal to or greater than\n         the start time given.</p>", "smithy.api#required" => {}}))
    ListInferenceEventsRequest.add_member(:interval_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IntervalEndTime', traits: {"smithy.api#documentation" => "<p>Returns all the inference events with an end start time equal to or greater than less\n         than the end time given.</p>", "smithy.api#required" => {}}))
    ListInferenceEventsRequest.type = Types::ListInferenceEventsRequest
    ListInferenceEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token indicating where to continue the listing of inference\n         executions. </p>"}))
    ListInferenceEventsResponse.add_member(:inference_event_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceEventSummaries, location_name: 'InferenceEventSummaries', traits: {"smithy.api#documentation" => "<p>Provides an array of information about the individual inference events returned from the\n            <code>ListInferenceEvents</code> operation, including scheduler used, event start time,\n         event end time, diagnostics, and so on. </p>"}))
    ListInferenceEventsResponse.type = Types::ListInferenceEventsResponse
    ListInferenceExecutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token indicating where to continue the listing of inference\n         executions.</p>"}))
    ListInferenceExecutionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of inference executions to list. </p>"}))
    ListInferenceExecutionsRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler for the inference execution listed. </p>", "smithy.api#required" => {}}))
    ListInferenceExecutionsRequest.add_member(:data_start_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataStartTimeAfter', traits: {"smithy.api#documentation" => "<p>The time reference in the inferenced dataset after which Amazon Lookout for Equipment started the inference\n         execution. </p>"}))
    ListInferenceExecutionsRequest.add_member(:data_end_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataEndTimeBefore', traits: {"smithy.api#documentation" => "<p>The time reference in the inferenced dataset before which Amazon Lookout for Equipment stopped the\n         inference execution. </p>"}))
    ListInferenceExecutionsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceExecutionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the inference execution. </p>"}))
    ListInferenceExecutionsRequest.type = Types::ListInferenceExecutionsRequest
    ListInferenceExecutionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of inference\n         executions. </p>"}))
    ListInferenceExecutionsResponse.add_member(:inference_execution_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceExecutionSummaries, location_name: 'InferenceExecutionSummaries', traits: {"smithy.api#documentation" => "<p>Provides an array of information about the individual inference executions returned from\n         the <code>ListInferenceExecutions</code> operation, including model used, inference\n         scheduler, data configuration, and so on.  </p>\n         <note>\n            <p>If you don't supply the <code>InferenceSchedulerName</code> request parameter, or\n            if you supply the name of an inference scheduler that doesn't exist,\n               <code>ListInferenceExecutions</code> returns an empty array in\n               <code>InferenceExecutionSummaries</code>.</p>\n         </note>"}))
    ListInferenceExecutionsResponse.type = Types::ListInferenceExecutionsResponse
    ListInferenceSchedulersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of inference\n         schedulers. </p>"}))
    ListInferenceSchedulersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> Specifies the maximum number of inference schedulers to list. </p>"}))
    ListInferenceSchedulersRequest.add_member(:inference_scheduler_name_begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerNameBeginsWith', traits: {"smithy.api#documentation" => "<p>The beginning of the name of the inference schedulers to be listed. </p>"}))
    ListInferenceSchedulersRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model used by the inference scheduler to be listed.\n      </p>"}))
    ListInferenceSchedulersRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies the current status of the inference schedulers.</p>"}))
    ListInferenceSchedulersRequest.type = Types::ListInferenceSchedulersRequest
    ListInferenceSchedulersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of inference\n         schedulers. </p>"}))
    ListInferenceSchedulersResponse.add_member(:inference_scheduler_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerSummaries, location_name: 'InferenceSchedulerSummaries', traits: {"smithy.api#documentation" => "<p>Provides information about the specified inference scheduler, including data upload\n         frequency, model name and ARN, and status. </p>"}))
    ListInferenceSchedulersResponse.type = Types::ListInferenceSchedulersResponse
    ListLabelGroupsRequest.add_member(:label_group_name_begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupNameBeginsWith', traits: {"smithy.api#documentation" => "<p> The beginning of the name of the label groups to be listed. </p>"}))
    ListLabelGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of label groups.\n      </p>"}))
    ListLabelGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> Specifies the maximum number of label groups to list. </p>"}))
    ListLabelGroupsRequest.type = Types::ListLabelGroupsRequest
    ListLabelGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of label groups.\n      </p>"}))
    ListLabelGroupsResponse.add_member(:label_group_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupSummaries, location_name: 'LabelGroupSummaries', traits: {"smithy.api#documentation" => "<p> A summary of the label groups. </p>"}))
    ListLabelGroupsResponse.type = Types::ListLabelGroupsResponse
    ListLabelsRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> Returns the name of the label group. </p>", "smithy.api#required" => {}}))
    ListLabelsRequest.add_member(:interval_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IntervalStartTime', traits: {"smithy.api#documentation" => "<p> Returns all the labels with a end time equal to or later than the start time given.\n      </p>"}))
    ListLabelsRequest.add_member(:interval_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IntervalEndTime', traits: {"smithy.api#documentation" => "<p> Returns all labels with a start time earlier than the end time given. </p>"}))
    ListLabelsRequest.add_member(:fault_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCode, location_name: 'FaultCode', traits: {"smithy.api#documentation" => "<p> Returns labels with a particular fault code. </p>"}))
    ListLabelsRequest.add_member(:equipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Equipment, location_name: 'Equipment', traits: {"smithy.api#documentation" => "<p> Lists the labels that pertain to a particular piece of equipment. </p>"}))
    ListLabelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of label groups.\n      </p>"}))
    ListLabelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> Specifies the maximum number of labels to list. </p>"}))
    ListLabelsRequest.type = Types::ListLabelsRequest
    ListLabelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of datasets.\n      </p>"}))
    ListLabelsResponse.add_member(:label_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelSummaries, location_name: 'LabelSummaries', traits: {"smithy.api#documentation" => "<p> A summary of the items in the label group. </p>\n         <note>\n            <p>If you don't supply the <code>LabelGroupName</code> request parameter, or if you supply\n            the name of a label group that doesn't exist, <code>ListLabels</code> returns an empty array in\n               <code>LabelSummaries</code>.</p>\n         </note>"}))
    ListLabelsResponse.type = Types::ListLabelsResponse
    ListModelVersionsRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>Then name of the machine learning model for which the model versions are to be\n         listed.</p>", "smithy.api#required" => {}}))
    ListModelVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results exceeds the limit that the response can display, the\n         response returns an opaque pagination token indicating where to continue the listing of\n         machine learning model versions. Use this token in the <code>NextToken</code> field in the\n         request to list the next page of results.</p>"}))
    ListModelVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of machine learning model versions to list.</p>"}))
    ListModelVersionsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filter the results based on the current status of the model version.</p>"}))
    ListModelVersionsRequest.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Filter the results based on the way the model version was generated.</p>"}))
    ListModelVersionsRequest.add_member(:created_at_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAtEndTime', traits: {"smithy.api#documentation" => "<p>Filter results to return all the model versions created before this time.</p>"}))
    ListModelVersionsRequest.add_member(:created_at_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAtStartTime', traits: {"smithy.api#documentation" => "<p>Filter results to return all the model versions created after this time.</p>"}))
    ListModelVersionsRequest.add_member(:max_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'MaxModelVersion', traits: {"smithy.api#documentation" => "<p>Specifies the highest version of the model to return in the list.</p>"}))
    ListModelVersionsRequest.add_member(:min_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'MinModelVersion', traits: {"smithy.api#documentation" => "<p>Specifies the lowest version of the model to return in the list.</p>"}))
    ListModelVersionsRequest.type = Types::ListModelVersionsRequest
    ListModelVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results exceeds the limit that the response can display, the\n         response returns an opaque pagination token indicating where to continue the listing of\n         machine learning model versions. Use this token in the <code>NextToken</code> field in the\n         request to list the next page of results.</p>"}))
    ListModelVersionsResponse.add_member(:model_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionSummaries, location_name: 'ModelVersionSummaries', traits: {"smithy.api#documentation" => "<p>Provides information on the specified model version, including the created time, model\n         and dataset ARNs, and status.</p>\n         <note>\n            <p>If you don't supply the <code>ModelName</code> request parameter, or if you supply the name\n            of a model that doesn't exist, <code>ListModelVersions</code> returns an empty array in\n               <code>ModelVersionSummaries</code>. </p>\n         </note>"}))
    ListModelVersionsResponse.type = Types::ListModelVersionsResponse
    ListModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of machine learning\n         models. </p>"}))
    ListModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> Specifies the maximum number of machine learning models to list. </p>"}))
    ListModelsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the machine learning model. </p>"}))
    ListModelsRequest.add_member(:model_name_begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelNameBeginsWith', traits: {"smithy.api#documentation" => "<p>The beginning of the name of the machine learning models being listed. </p>"}))
    ListModelsRequest.add_member(:dataset_name_begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetNameBeginsWith', traits: {"smithy.api#documentation" => "<p>The beginning of the name of the dataset of the machine learning models to be listed.\n      </p>"}))
    ListModelsRequest.type = Types::ListModelsRequest
    ListModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An opaque pagination token indicating where to continue the listing of machine learning\n         models. </p>"}))
    ListModelsResponse.add_member(:model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSummaries, location_name: 'ModelSummaries', traits: {"smithy.api#documentation" => "<p>Provides information on the specified model, including created time, model and dataset\n         ARNs, and status. </p>"}))
    ListModelsResponse.type = Types::ListModelsResponse
    ListOfDiscardedFiles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object)
    ListRetrainingSchedulersRequest.add_member(:model_name_begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelNameBeginsWith', traits: {"smithy.api#documentation" => "<p>Specify this field to only list retraining schedulers whose machine learning models\n         begin with the value you specify. </p>"}))
    ListRetrainingSchedulersRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specify this field to only list retraining schedulers whose status matches the value you\n         specify. </p>"}))
    ListRetrainingSchedulersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the number of results exceeds the maximum, a pagination token is returned. Use the\n         token in the request to show the next page of retraining schedulers.</p>"}))
    ListRetrainingSchedulersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of retraining schedulers to list. </p>"}))
    ListRetrainingSchedulersRequest.type = Types::ListRetrainingSchedulersRequest
    ListRetrainingSchedulersResponse.add_member(:retraining_scheduler_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerSummaries, location_name: 'RetrainingSchedulerSummaries', traits: {"smithy.api#documentation" => "<p>Provides information on the specified retraining scheduler, including the model name,\n         model ARN, status, and start date. </p>"}))
    ListRetrainingSchedulersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the number of results exceeds the maximum, this pagination token is returned. Use\n         this token in the request to show the next page of retraining schedulers.</p>"}))
    ListRetrainingSchedulersResponse.type = Types::ListRetrainingSchedulersResponse
    ListSensorStatisticsRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p> The name of the dataset associated with the list of Sensor Statistics. </p>", "smithy.api#required" => {}}))
    ListSensorStatisticsRequest.add_member(:ingestion_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobId, location_name: 'IngestionJobId', traits: {"smithy.api#documentation" => "<p> The ingestion job id associated with the list of Sensor Statistics. To get sensor\n         statistics for a particular ingestion job id, both dataset name and ingestion job id must\n         be submitted as inputs. </p>"}))
    ListSensorStatisticsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of sensors for which to retrieve statistics. </p>"}))
    ListSensorStatisticsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token indicating where to continue the listing of sensor\n         statistics. </p>"}))
    ListSensorStatisticsRequest.type = Types::ListSensorStatisticsRequest
    ListSensorStatisticsResponse.add_member(:sensor_statistics_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SensorStatisticsSummaries, location_name: 'SensorStatisticsSummaries', traits: {"smithy.api#documentation" => "<p>Provides ingestion-based statistics regarding the specified sensor with respect to\n         various validation types, such as whether data exists, the number and percentage of missing\n         values, and the number and percentage of duplicate timestamps. </p>"}))
    ListSensorStatisticsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token indicating where to continue the listing of sensor\n         statistics. </p>"}))
    ListSensorStatisticsResponse.type = Types::ListSensorStatisticsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource (such as the dataset or model) that is\n         the focus of the <code>ListTagsForResource</code> operation. </p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> Any tags associated with the resource. </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MissingCompleteSensorData.add_member(:affected_sensor_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AffectedSensorCount', traits: {"smithy.api#documentation" => "<p> Indicates the number of sensors that have data missing completely. </p>", "smithy.api#required" => {}}))
    MissingCompleteSensorData.type = Types::MissingCompleteSensorData
    MissingSensorData.add_member(:affected_sensor_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AffectedSensorCount', traits: {"smithy.api#documentation" => "<p> Indicates the number of sensors that have atleast some data missing. </p>", "smithy.api#required" => {}}))
    MissingSensorData.add_member(:total_number_of_missing_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalNumberOfMissingValues', traits: {"smithy.api#documentation" => "<p> Indicates the total number of missing values across all the sensors. </p>", "smithy.api#required" => {}}))
    MissingSensorData.type = Types::MissingSensorData
    ModelDiagnosticsOutputConfiguration.add_member(:s3_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDiagnosticsS3OutputConfiguration, location_name: 'S3OutputConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location for the pointwise model diagnostics. </p>", "smithy.api#required" => {}}))
    ModelDiagnosticsOutputConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Key Management Service (KMS) key identifier to encrypt the pointwise model diagnostics files.</p>"}))
    ModelDiagnosticsOutputConfiguration.type = Types::ModelDiagnosticsOutputConfiguration
    ModelDiagnosticsS3OutputConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket where the pointwise model diagnostics are located. You must be the owner of the Amazon S3 bucket. </p>", "smithy.api#required" => {}}))
    ModelDiagnosticsS3OutputConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The Amazon S3 prefix for the location of the pointwise model diagnostics. The\n         prefix specifies the folder and evaluation result file name.\n         (<code>bucket</code>).</p>\n         <p>When you call <code>CreateModel</code> or <code>UpdateModel</code>, specify the path\n         within the bucket that you want Lookout for Equipment to save the model to. During training, Lookout for Equipment creates the model evaluation model\n         as a compressed JSON file with the name <code>model_diagnostics_results.json.gz</code>.</p>\n         <p>When you call <code>DescribeModel</code> or <code>DescribeModelVersion</code>, <code>prefix</code> contains\n         the file path and filename of the model evaluation file. </p>"}))
    ModelDiagnosticsS3OutputConfiguration.type = Types::ModelDiagnosticsS3OutputConfiguration
    ModelPromoteMode.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED', traits: {"smithy.api#enumValue" => "MANAGED"}))
    ModelPromoteMode.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    ModelQuality.add_member(:quality_threshold_met, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY_THRESHOLD_MET', traits: {"smithy.api#enumValue" => "QUALITY_THRESHOLD_MET"}))
    ModelQuality.add_member(:cannot_determine_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_DETERMINE_QUALITY', traits: {"smithy.api#enumValue" => "CANNOT_DETERMINE_QUALITY"}))
    ModelQuality.add_member(:poor_quality_detected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POOR_QUALITY_DETECTED', traits: {"smithy.api#enumValue" => "POOR_QUALITY_DETECTED"}))
    ModelStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ModelStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ModelStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelStatus.add_member(:import_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSummary)
    ModelSummary.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model. </p>"}))
    ModelSummary.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the machine learning model. </p>"}))
    ModelSummary.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being used for the machine learning model. </p>"}))
    ModelSummary.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the dataset used to create the model. </p>"}))
    ModelSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the machine learning model. </p>"}))
    ModelSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the specific model was created. </p>"}))
    ModelSummary.add_member(:active_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ActiveModelVersion', traits: {"smithy.api#documentation" => "<p>The model version that the inference scheduler uses to run an inference\n         execution.</p>"}))
    ModelSummary.add_member(:active_model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'ActiveModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version that is set as active. The active\n         model version is the model version that the inference scheduler uses to run an inference\n         execution.</p>"}))
    ModelSummary.add_member(:latest_scheduled_retraining_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'LatestScheduledRetrainingStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the most recent scheduled retraining run. </p>"}))
    ModelSummary.add_member(:latest_scheduled_retraining_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'LatestScheduledRetrainingModelVersion', traits: {"smithy.api#documentation" => "<p>Indicates the most recent model version that was generated by retraining. </p>"}))
    ModelSummary.add_member(:latest_scheduled_retraining_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestScheduledRetrainingStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the start time of the most recent scheduled retraining run. </p>"}))
    ModelSummary.add_member(:next_scheduled_retraining_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'NextScheduledRetrainingStartDate', traits: {"smithy.api#documentation" => "<p>Indicates the date that the next scheduled retraining run will start on. Lookout for Equipment truncates\n         the time you provide to <a href=\"https://docs.aws.amazon.com/https:/docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp\">the nearest UTC day</a>.</p>"}))
    ModelSummary.add_member(:retraining_scheduler_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'RetrainingSchedulerStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the retraining scheduler. </p>"}))
    ModelSummary.add_member(:model_diagnostics_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDiagnosticsOutputConfiguration, location_name: 'ModelDiagnosticsOutputConfiguration'))
    ModelSummary.add_member(:model_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelQuality, location_name: 'ModelQuality', traits: {"smithy.api#documentation" => "<p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the\n         model quality is poor based on training metrics, the value is\n         <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is\n         <code>QUALITY_THRESHOLD_MET</code>.</p>\n         <p>If the model is unlabeled, the model quality can't\n         be assessed and the value of <code>ModelQuality</code> is\n         <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality\n         assessment by adding labels to the input dataset and retraining the model.</p>\n         <p>For information about using labels with your models, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html\">Understanding labeling</a>.</p>\n         <p>For information about improving the quality of a model, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html\">Best practices with\n         Amazon Lookout for Equipment</a>.</p>"}))
    ModelSummary.type = Types::ModelSummary
    ModelVersionSourceType.add_member(:training, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING', traits: {"smithy.api#enumValue" => "TRAINING"}))
    ModelVersionSourceType.add_member(:retraining, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRAINING', traits: {"smithy.api#enumValue" => "RETRAINING"}))
    ModelVersionSourceType.add_member(:import, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT', traits: {"smithy.api#enumValue" => "IMPORT"}))
    ModelVersionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ModelVersionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ModelVersionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelVersionStatus.add_member(:import_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ModelVersionStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    ModelVersionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionSummary)
    ModelVersionSummary.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model that this model version is a version of.</p>"}))
    ModelVersionSummary.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model that this model version is a version\n         of.</p>"}))
    ModelVersionSummary.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model.</p>"}))
    ModelVersionSummary.add_member(:model_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'ModelVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version.</p>"}))
    ModelVersionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when this model version was created.</p>"}))
    ModelVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the model version.</p>"}))
    ModelVersionSummary.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Indicates how this model version was generated.</p>"}))
    ModelVersionSummary.add_member(:model_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelQuality, location_name: 'ModelQuality', traits: {"smithy.api#documentation" => "<p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the\n         model quality is poor based on training metrics, the value is\n         <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is\n         <code>QUALITY_THRESHOLD_MET</code>. </p>\n         <p>If the model is unlabeled, the model quality can't\n         be assessed and the value of <code>ModelQuality</code> is\n         <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality\n         assessment by adding labels to the input dataset and retraining the model.</p>\n         <p>For information about improving the quality of a model, see <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html\">Best practices with\n         Amazon Lookout for Equipment</a>.</p>"}))
    ModelVersionSummary.type = Types::ModelVersionSummary
    MonotonicValues.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticalIssueStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> Indicates whether there is a potential data issue related to having monotonic values.\n      </p>", "smithy.api#required" => {}}))
    MonotonicValues.add_member(:monotonicity, Smithy::Schema::Shapes::ShapeRef.new(shape: Monotonicity, location_name: 'Monotonicity', traits: {"smithy.api#documentation" => "<p> Indicates the monotonicity of values. Can be INCREASING, DECREASING, or STATIC. </p>"}))
    MonotonicValues.type = Types::MonotonicValues
    Monotonicity.add_member(:decreasing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECREASING', traits: {"smithy.api#enumValue" => "DECREASING"}))
    Monotonicity.add_member(:increasing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCREASING', traits: {"smithy.api#enumValue" => "INCREASING"}))
    Monotonicity.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    MultipleOperatingModes.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticalIssueStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> Indicates whether there is a potential data issue related to having multiple operating\n         modes. </p>", "smithy.api#required" => {}}))
    MultipleOperatingModes.type = Types::MultipleOperatingModes
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which the policy is being\n         created.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The JSON-formatted resource policy to create.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a revision of the resource policy.</p>"}))
    PutResourcePolicyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token,\n         Amazon Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which the policy was created.</p>"}))
    PutResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a revision of the resource policy.</p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetrainingSchedulerStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    RetrainingSchedulerStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    RetrainingSchedulerStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    RetrainingSchedulerStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    RetrainingSchedulerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerSummary)
    RetrainingSchedulerSummary.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model that the retraining scheduler is attached to. </p>"}))
    RetrainingSchedulerSummary.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model that the retraining scheduler is attached to. </p>"}))
    RetrainingSchedulerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the retraining scheduler. </p>"}))
    RetrainingSchedulerSummary.add_member(:retraining_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RetrainingStartDate', traits: {"smithy.api#documentation" => "<p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the\n         nearest UTC day.</p>"}))
    RetrainingSchedulerSummary.add_member(:retraining_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingFrequency, location_name: 'RetrainingFrequency', traits: {"smithy.api#documentation" => "<p>The frequency at which the model retraining is set. This follows the <a href=\"https://en.wikipedia.org/wiki/ISO_8601#Durations\">ISO 8601</a>\n         guidelines.</p>"}))
    RetrainingSchedulerSummary.add_member(:lookback_window, Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackWindow, location_name: 'LookbackWindow', traits: {"smithy.api#documentation" => "<p>The number of past days of data used for retraining.</p>"}))
    RetrainingSchedulerSummary.type = Types::RetrainingSchedulerSummary
    S3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The name of the specific S3 bucket. </p>", "smithy.api#required" => {}}))
    S3Object.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Key Management Service (KMS key) key being used to encrypt the S3 object.\n         Without this key, data in the bucket is not accessible. </p>", "smithy.api#required" => {}}))
    S3Object.type = Types::S3Object
    SensorStatisticsSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SensorStatisticsSummary)
    SensorStatisticsSummary.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p> Name of the component to which the particular sensor belongs for which the statistics\n         belong to. </p>"}))
    SensorStatisticsSummary.add_member(:sensor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensorName, location_name: 'SensorName', traits: {"smithy.api#documentation" => "<p> Name of the sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.add_member(:data_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DataExists', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> Parameter that indicates whether data exists for the sensor that the statistics belong\n         to. </p>"}))
    SensorStatisticsSummary.add_member(:missing_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CountPercent, location_name: 'MissingValues', traits: {"smithy.api#documentation" => "<p> Parameter that describes the total number of, and percentage of, values that are\n         missing for the sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.add_member(:invalid_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CountPercent, location_name: 'InvalidValues', traits: {"smithy.api#documentation" => "<p> Parameter that describes the total number of, and percentage of, values that are\n         invalid for the sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.add_member(:invalid_date_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: CountPercent, location_name: 'InvalidDateEntries', traits: {"smithy.api#documentation" => "<p> Parameter that describes the total number of invalid date entries associated with the\n         sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.add_member(:duplicate_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: CountPercent, location_name: 'DuplicateTimestamps', traits: {"smithy.api#documentation" => "<p> Parameter that describes the total number of duplicate timestamp records associated\n         with the sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.add_member(:categorical_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoricalValues, location_name: 'CategoricalValues', traits: {"smithy.api#documentation" => "<p> Parameter that describes potential risk about whether data associated with the sensor\n         is categorical. </p>"}))
    SensorStatisticsSummary.add_member(:multiple_operating_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleOperatingModes, location_name: 'MultipleOperatingModes', traits: {"smithy.api#documentation" => "<p> Parameter that describes potential risk about whether data associated with the sensor\n         has more than one operating mode. </p>"}))
    SensorStatisticsSummary.add_member(:large_timestamp_gaps, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeTimestampGaps, location_name: 'LargeTimestampGaps', traits: {"smithy.api#documentation" => "<p> Parameter that describes potential risk about whether data associated with the sensor\n         contains one or more large gaps between consecutive timestamps. </p>"}))
    SensorStatisticsSummary.add_member(:monotonic_values, Smithy::Schema::Shapes::ShapeRef.new(shape: MonotonicValues, location_name: 'MonotonicValues', traits: {"smithy.api#documentation" => "<p> Parameter that describes potential risk about whether data associated with the sensor\n         is mostly monotonic. </p>"}))
    SensorStatisticsSummary.add_member(:data_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataStartTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference to indicate the beginning of valid data associated with\n         the sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.add_member(:data_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataEndTime', traits: {"smithy.api#documentation" => "<p> Indicates the time reference to indicate the end of valid data associated with the\n         sensor that the statistics belong to. </p>"}))
    SensorStatisticsSummary.type = Types::SensorStatisticsSummary
    SensorsWithShortDateRange.add_member(:affected_sensor_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AffectedSensorCount', traits: {"smithy.api#documentation" => "<p> Indicates the number of sensors that have less than 14 days of data. </p>", "smithy.api#required" => {}}))
    SensorsWithShortDateRange.type = Types::SensorsWithShortDateRange
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartDataIngestionJobRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset being used by the data ingestion job. </p>", "smithy.api#required" => {}}))
    StartDataIngestionJobRequest.add_member(:ingestion_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: 'IngestionInputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies information for the input data for the data ingestion job, including dataset\n         S3 location. </p>", "smithy.api#required" => {}}))
    StartDataIngestionJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for\n         the data ingestion job. </p>", "smithy.api#required" => {}}))
    StartDataIngestionJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotenceToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique identifier for the request. If you do not set the client request token, Amazon\n         Lookout for Equipment generates one. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartDataIngestionJobRequest.type = Types::StartDataIngestionJobRequest
    StartDataIngestionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Indicates the job ID of the data ingestion job. </p>"}))
    StartDataIngestionJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the <code>StartDataIngestionJob</code> operation. </p>"}))
    StartDataIngestionJobResponse.type = Types::StartDataIngestionJobResponse
    StartInferenceSchedulerRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler to be started. </p>", "smithy.api#required" => {}}))
    StartInferenceSchedulerRequest.type = Types::StartInferenceSchedulerRequest
    StartInferenceSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model being used by the inference\n         scheduler. </p>"}))
    StartInferenceSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model being used by the inference scheduler. </p>"}))
    StartInferenceSchedulerResponse.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being started. </p>"}))
    StartInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the inference scheduler being started. </p>"}))
    StartInferenceSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the inference scheduler. </p>"}))
    StartInferenceSchedulerResponse.type = Types::StartInferenceSchedulerResponse
    StartRetrainingSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model whose retraining scheduler you want to start.</p>", "smithy.api#required" => {}}))
    StartRetrainingSchedulerRequest.type = Types::StartRetrainingSchedulerRequest
    StartRetrainingSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model whose retraining scheduler is being started. </p>"}))
    StartRetrainingSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model whose retraining scheduler is being started. </p>"}))
    StartRetrainingSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the retraining scheduler. </p>"}))
    StartRetrainingSchedulerResponse.type = Types::StartRetrainingSchedulerResponse
    StatisticalIssueStatus.add_member(:potential_issue_detected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POTENTIAL_ISSUE_DETECTED', traits: {"smithy.api#enumValue" => "POTENTIAL_ISSUE_DETECTED"}))
    StatisticalIssueStatus.add_member(:no_issue_detected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ISSUE_DETECTED', traits: {"smithy.api#enumValue" => "NO_ISSUE_DETECTED"}))
    StopInferenceSchedulerRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler to be stopped. </p>", "smithy.api#required" => {}}))
    StopInferenceSchedulerRequest.type = Types::StopInferenceSchedulerRequest
    StopInferenceSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model used by the inference\n         scheduler being stopped. </p>"}))
    StopInferenceSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model used by the inference scheduler being stopped.\n      </p>"}))
    StopInferenceSchedulerResponse.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler being stopped. </p>"}))
    StopInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: 'InferenceSchedulerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the inference schedule being stopped. </p>"}))
    StopInferenceSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of the inference scheduler. </p>"}))
    StopInferenceSchedulerResponse.type = Types::StopInferenceSchedulerResponse
    StopRetrainingSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model whose retraining scheduler you want to stop.</p>", "smithy.api#required" => {}}))
    StopRetrainingSchedulerRequest.type = Types::StopRetrainingSchedulerRequest
    StopRetrainingSchedulerResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model whose retraining scheduler is being stopped. </p>"}))
    StopRetrainingSchedulerResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model whose retraining scheduler is being stopped. </p>"}))
    StopRetrainingSchedulerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingSchedulerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the retraining scheduler. </p>"}))
    StopRetrainingSchedulerResponse.type = Types::StopRetrainingSchedulerResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the specified tag. </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for the specified tag. </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the specific resource to which the tag should be\n         associated. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag or tags to be associated with a specific resource. Both the tag key and value\n         are specified. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetSamplingRate.add_member(:pt1_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT1S', traits: {"smithy.api#enumValue" => "PT1S"}))
    TargetSamplingRate.add_member(:pt5_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT5S', traits: {"smithy.api#enumValue" => "PT5S"}))
    TargetSamplingRate.add_member(:pt10_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT10S', traits: {"smithy.api#enumValue" => "PT10S"}))
    TargetSamplingRate.add_member(:pt15_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT15S', traits: {"smithy.api#enumValue" => "PT15S"}))
    TargetSamplingRate.add_member(:pt30_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT30S', traits: {"smithy.api#enumValue" => "PT30S"}))
    TargetSamplingRate.add_member(:pt1_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT1M', traits: {"smithy.api#enumValue" => "PT1M"}))
    TargetSamplingRate.add_member(:pt5_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT5M', traits: {"smithy.api#enumValue" => "PT5M"}))
    TargetSamplingRate.add_member(:pt10_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT10M', traits: {"smithy.api#enumValue" => "PT10M"}))
    TargetSamplingRate.add_member(:pt15_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT15M', traits: {"smithy.api#enumValue" => "PT15M"}))
    TargetSamplingRate.add_member(:pt30_m, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT30M', traits: {"smithy.api#enumValue" => "PT30M"}))
    TargetSamplingRate.add_member(:pt1_h, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT1H', traits: {"smithy.api#enumValue" => "PT1H"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedTimestamps.add_member(:total_number_of_unsupported_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalNumberOfUnsupportedTimestamps', traits: {"smithy.api#documentation" => "<p> Indicates the total number of unsupported timestamps across the ingested data. </p>", "smithy.api#required" => {}}))
    UnsupportedTimestamps.type = Types::UnsupportedTimestamps
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which the tag is currently associated.\n      </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Specifies the key of the tag to be removed from a specified resource. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateActiveModelVersionRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model for which the active model version is being\n         set.</p>", "smithy.api#required" => {}}))
    UpdateActiveModelVersionRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the machine learning model for which the active model version is being\n         set.</p>", "smithy.api#required" => {}}))
    UpdateActiveModelVersionRequest.type = Types::UpdateActiveModelVersionRequest
    UpdateActiveModelVersionResponse.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the machine learning model for which the active model version was\n         set.</p>"}))
    UpdateActiveModelVersionResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model for which the active model\n         version was set.</p>"}))
    UpdateActiveModelVersionResponse.add_member(:current_active_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'CurrentActiveVersion', traits: {"smithy.api#documentation" => "<p>The version that is currently active of the machine learning model for which the active\n         model version was set.</p>"}))
    UpdateActiveModelVersionResponse.add_member(:previous_active_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'PreviousActiveVersion', traits: {"smithy.api#documentation" => "<p>The previous version that was active of the machine learning model for which the active\n         model version was set.</p>"}))
    UpdateActiveModelVersionResponse.add_member(:current_active_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'CurrentActiveVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model version that is the current\n         active model version.</p>"}))
    UpdateActiveModelVersionResponse.add_member(:previous_active_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionArn, location_name: 'PreviousActiveVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the machine learning model version that was the\n         previous active model version.</p>"}))
    UpdateActiveModelVersionResponse.type = Types::UpdateActiveModelVersionResponse
    UpdateInferenceSchedulerRequest.add_member(:inference_scheduler_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: 'InferenceSchedulerName', traits: {"smithy.api#documentation" => "<p>The name of the inference scheduler to be updated. </p>", "smithy.api#required" => {}}))
    UpdateInferenceSchedulerRequest.add_member(:data_delay_offset_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: 'DataDelayOffsetInMinutes', traits: {"smithy.api#documentation" => "<p> A period of time (in minutes) by which inference on the data is delayed after the data\n         starts. For instance, if you select an offset delay time of five minutes, inference will\n         not begin on the data until the first data measurement after the five minute mark. For\n         example, if five minutes is selected, the inference scheduler will wake up at the\n         configured frequency with the additional five minute delay time to check the customer S3\n         bucket. The customer can upload data at the same frequency and they don't need to stop and\n         restart the scheduler when uploading new data.</p>"}))
    UpdateInferenceSchedulerRequest.add_member(:data_upload_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: 'DataUploadFrequency', traits: {"smithy.api#documentation" => "<p>How often data is uploaded to the source S3 bucket for the input data. The value chosen\n         is the length of time between data uploads. For instance, if you select 5 minutes, Amazon\n         Lookout for Equipment will upload the real-time data to the source bucket once every 5\n         minutes. This frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on\n         your data. In this example, it starts once every 5 minutes. </p>"}))
    UpdateInferenceSchedulerRequest.add_member(:data_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: 'DataInputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies information for the input data for the inference scheduler, including\n         delimiter, format, and dataset location. </p>"}))
    UpdateInferenceSchedulerRequest.add_member(:data_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'DataOutputConfiguration', traits: {"smithy.api#documentation" => "<p> Specifies information for the output results from the inference scheduler, including\n         the output S3 location. </p>"}))
    UpdateInferenceSchedulerRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for\n         the inference scheduler. </p>"}))
    UpdateInferenceSchedulerRequest.type = Types::UpdateInferenceSchedulerRequest
    UpdateLabelGroupRequest.add_member(:label_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelGroupName, location_name: 'LabelGroupName', traits: {"smithy.api#documentation" => "<p> The name of the label group to be updated. </p>", "smithy.api#required" => {}}))
    UpdateLabelGroupRequest.add_member(:fault_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: FaultCodes, location_name: 'FaultCodes', traits: {"smithy.api#documentation" => "<p> Updates the code indicating the type of anomaly associated with the label. </p>\n         <p>Data in this field will be retained for service usage. Follow best practices for the\n         security of your data.</p>"}))
    UpdateLabelGroupRequest.type = Types::UpdateLabelGroupRequest
    UpdateModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model to update.</p>", "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:labels_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: 'LabelsInputConfiguration'))
    UpdateModelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model to update.</p>"}))
    UpdateModelRequest.add_member(:model_diagnostics_output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDiagnosticsOutputConfiguration, location_name: 'ModelDiagnosticsOutputConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location where you want Amazon Lookout for Equipment to save the pointwise model diagnostics for the model.\n         You must also specify the <code>RoleArn</code> request parameter.</p>"}))
    UpdateModelRequest.type = Types::UpdateModelRequest
    UpdateRetrainingSchedulerRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name of the model whose retraining scheduler you want to update. </p>", "smithy.api#required" => {}}))
    UpdateRetrainingSchedulerRequest.add_member(:retraining_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RetrainingStartDate', traits: {"smithy.api#documentation" => "<p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the\n         nearest UTC day.</p>"}))
    UpdateRetrainingSchedulerRequest.add_member(:retraining_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrainingFrequency, location_name: 'RetrainingFrequency', traits: {"smithy.api#documentation" => "<p>This parameter uses the <a href=\"https://en.wikipedia.org/wiki/ISO_8601#Durations\">ISO 8601</a> standard to set the frequency at which you want retraining to occur in\n         terms of Years, Months, and/or Days (note: other parameters like Time are not currently\n         supported). The minimum value is 30 days (P30D) and the maximum value is 1 year (P1Y). For\n         example, the following values are valid:</p>\n         <ul>\n            <li>\n               <p>P3M15D – Every 3 months and 15 days</p>\n            </li>\n            <li>\n               <p>P2M – Every 2 months</p>\n            </li>\n            <li>\n               <p>P150D – Every 150 days</p>\n            </li>\n         </ul>"}))
    UpdateRetrainingSchedulerRequest.add_member(:lookback_window, Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackWindow, location_name: 'LookbackWindow', traits: {"smithy.api#documentation" => "<p>The number of past days of data that will be used for retraining.</p>"}))
    UpdateRetrainingSchedulerRequest.add_member(:promote_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPromoteMode, location_name: 'PromoteMode', traits: {"smithy.api#documentation" => "<p>Indicates how the service will use new models. In <code>MANAGED</code> mode, new models\n         will automatically be used for inference if they have better performance than the current\n         model. In <code>MANUAL</code> mode, the new models will not be used <a href=\"https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation\">until they\n            are manually activated</a>.</p>"}))
    UpdateRetrainingSchedulerRequest.type = Types::UpdateRetrainingSchedulerRequest
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSLookoutEquipmentFrontendService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lookoutequipment#AWSLookoutEquipmentFrontendService"
      service.name = "AWSLookoutEquipmentFrontendService"
      service.version = "2020-12-15"
      service.traits = {"aws.api#service" => {"sdkId" => "LookoutEquipment", "arnNamespace" => "lookoutequipment", "cloudFormationName" => "LookoutEquipment", "cloudTrailEventSource" => "lookoutequipment.amazonaws.com", "endpointPrefix" => "lookoutequipment"}, "aws.auth#sigv4" => {"name" => "lookoutequipment"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Lookout for Equipment"}
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_inference_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateInferenceScheduler"
        operation.name = "CreateInferenceScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInferenceSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInferenceSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_label, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateLabel"
        operation.name = "CreateLabel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLabelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLabelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_label_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateLabelGroup"
        operation.name = "CreateLabelGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLabelGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLabelGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateModel"
        operation.name = "CreateModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_retraining_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateRetrainingScheduler"
        operation.name = "CreateRetrainingScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRetrainingSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRetrainingSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_inference_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteInferenceScheduler"
        operation.name = "DeleteInferenceScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInferenceSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_label, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteLabel"
        operation.name = "DeleteLabel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLabelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_label_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteLabelGroup"
        operation.name = "DeleteLabelGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLabelGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_retraining_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteRetrainingScheduler"
        operation.name = "DeleteRetrainingScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRetrainingSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_data_ingestion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeDataIngestionJob"
        operation.name = "DescribeDataIngestionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataIngestionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataIngestionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_inference_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeInferenceScheduler"
        operation.name = "DescribeInferenceScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInferenceSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInferenceSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_label, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeLabel"
        operation.name = "DescribeLabel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLabelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLabelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_label_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeLabelGroup"
        operation.name = "DescribeLabelGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLabelGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLabelGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeModel"
        operation.name = "DescribeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_model_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeModelVersion"
        operation.name = "DescribeModelVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_retraining_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeRetrainingScheduler"
        operation.name = "DescribeRetrainingScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRetrainingSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRetrainingSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:import_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ImportDataset"
        operation.name = "ImportDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:import_model_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ImportModelVersion"
        operation.name = "ImportModelVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportModelVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportModelVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_data_ingestion_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListDataIngestionJobs"
        operation.name = "ListDataIngestionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIngestionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIngestionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataIngestionJobs.new
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_inference_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListInferenceEvents"
        operation.name = "ListInferenceEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInferenceEvents.new
      end)
      service.add_operation(:list_inference_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListInferenceExecutions"
        operation.name = "ListInferenceExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceExecutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceExecutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInferenceExecutions.new
      end)
      service.add_operation(:list_inference_schedulers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListInferenceSchedulers"
        operation.name = "ListInferenceSchedulers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceSchedulersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceSchedulersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInferenceSchedulers.new
      end)
      service.add_operation(:list_label_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListLabelGroups"
        operation.name = "ListLabelGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLabelGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLabelGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLabelGroups.new
      end)
      service.add_operation(:list_labels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListLabels"
        operation.name = "ListLabels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLabelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLabelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLabels.new
      end)
      service.add_operation(:list_model_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListModelVersions"
        operation.name = "ListModelVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListModelVersions.new
      end)
      service.add_operation(:list_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListModels"
        operation.name = "ListModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListModels.new
      end)
      service.add_operation(:list_retraining_schedulers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListRetrainingSchedulers"
        operation.name = "ListRetrainingSchedulers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrainingSchedulersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrainingSchedulersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRetrainingSchedulers.new
      end)
      service.add_operation(:list_sensor_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListSensorStatistics"
        operation.name = "ListSensorStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSensorStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSensorStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSensorStatistics.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_data_ingestion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StartDataIngestionJob"
        operation.name = "StartDataIngestionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataIngestionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataIngestionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_inference_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StartInferenceScheduler"
        operation.name = "StartInferenceScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartInferenceSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartInferenceSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_retraining_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StartRetrainingScheduler"
        operation.name = "StartRetrainingScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRetrainingSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRetrainingSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_inference_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StopInferenceScheduler"
        operation.name = "StopInferenceScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopInferenceSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopInferenceSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_retraining_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StopRetrainingScheduler"
        operation.name = "StopRetrainingScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRetrainingSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRetrainingSchedulerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_active_model_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateActiveModelVersion"
        operation.name = "UpdateActiveModelVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActiveModelVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActiveModelVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_inference_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateInferenceScheduler"
        operation.name = "UpdateInferenceScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInferenceSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_label_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateLabelGroup"
        operation.name = "UpdateLabelGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLabelGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateModel"
        operation.name = "UpdateModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_retraining_scheduler, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateRetrainingScheduler"
        operation.name = "UpdateRetrainingScheduler"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRetrainingSchedulerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
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
