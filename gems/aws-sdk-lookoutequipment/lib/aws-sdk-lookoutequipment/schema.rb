# frozen_string_literal: true

# This is generated code!

module Aws::LookoutEquipment
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#AmazonResourceArn", name: "AmazonResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AutoPromotionResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#AutoPromotionResult", name: "AutoPromotionResult")
    AutoPromotionResultReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#AutoPromotionResultReason", name: "AutoPromotionResultReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lookoutequipment#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#BoundedLengthString", name: "BoundedLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,5000}$"})
    CategoricalValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CategoricalValues", name: "CategoricalValues")
    Comments = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#Comments", name: "Comments", traits: {"smithy.api#length" => {"min" => 1, "max" => 2560}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,2560}$"})
    ComponentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ComponentName", name: "ComponentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._\\-]{1,200}$"})
    ComponentTimestampDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ComponentTimestampDelimiter", name: "ComponentTimestampDelimiter", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#pattern" => "^(\\-|\\_|\\s)?$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CountPercent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CountPercent", name: "CountPercent")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateInferenceSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateInferenceSchedulerRequest", name: "CreateInferenceSchedulerRequest")
    CreateInferenceSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateInferenceSchedulerResponse", name: "CreateInferenceSchedulerResponse")
    CreateLabelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateLabelGroupRequest", name: "CreateLabelGroupRequest")
    CreateLabelGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateLabelGroupResponse", name: "CreateLabelGroupResponse")
    CreateLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateLabelRequest", name: "CreateLabelRequest")
    CreateLabelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateLabelResponse", name: "CreateLabelResponse")
    CreateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateModelRequest", name: "CreateModelRequest")
    CreateModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateModelResponse", name: "CreateModelResponse")
    CreateRetrainingSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateRetrainingSchedulerRequest", name: "CreateRetrainingSchedulerRequest")
    CreateRetrainingSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#CreateRetrainingSchedulerResponse", name: "CreateRetrainingSchedulerResponse")
    DataDelayOffsetInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutequipment#DataDelayOffsetInMinutes", name: "DataDelayOffsetInMinutes", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    DataIngestionJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#DataIngestionJobSummaries", name: "DataIngestionJobSummaries")
    DataIngestionJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DataIngestionJobSummary", name: "DataIngestionJobSummary")
    DataPreProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DataPreProcessingConfiguration", name: "DataPreProcessingConfiguration")
    DataQualitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DataQualitySummary", name: "DataQualitySummary")
    DataSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutequipment#DataSizeInBytes", name: "DataSizeInBytes", traits: {"smithy.api#range" => {"min" => 0}})
    DataUploadFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#DataUploadFrequency", name: "DataUploadFrequency")
    DatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#DatasetArn", name: "DatasetArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:dataset\\/[0-9a-zA-Z_-]{1,200}\\/.+$"})
    DatasetIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#DatasetIdentifier", name: "DatasetIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    DatasetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#DatasetName", name: "DatasetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    DatasetSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DatasetSchema", name: "DatasetSchema")
    DatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#DatasetStatus", name: "DatasetStatus")
    DatasetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#DatasetSummaries", name: "DatasetSummaries")
    DatasetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DatasetSummary", name: "DatasetSummary")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteInferenceSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteInferenceSchedulerRequest", name: "DeleteInferenceSchedulerRequest")
    DeleteLabelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteLabelGroupRequest", name: "DeleteLabelGroupRequest")
    DeleteLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteLabelRequest", name: "DeleteLabelRequest")
    DeleteModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteModelRequest", name: "DeleteModelRequest")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteRetrainingSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DeleteRetrainingSchedulerRequest", name: "DeleteRetrainingSchedulerRequest")
    DescribeDataIngestionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeDataIngestionJobRequest", name: "DescribeDataIngestionJobRequest")
    DescribeDataIngestionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeDataIngestionJobResponse", name: "DescribeDataIngestionJobResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeInferenceSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeInferenceSchedulerRequest", name: "DescribeInferenceSchedulerRequest")
    DescribeInferenceSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeInferenceSchedulerResponse", name: "DescribeInferenceSchedulerResponse")
    DescribeLabelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeLabelGroupRequest", name: "DescribeLabelGroupRequest")
    DescribeLabelGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeLabelGroupResponse", name: "DescribeLabelGroupResponse")
    DescribeLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeLabelRequest", name: "DescribeLabelRequest")
    DescribeLabelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeLabelResponse", name: "DescribeLabelResponse")
    DescribeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeModelRequest", name: "DescribeModelRequest")
    DescribeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeModelResponse", name: "DescribeModelResponse")
    DescribeModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeModelVersionRequest", name: "DescribeModelVersionRequest")
    DescribeModelVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeModelVersionResponse", name: "DescribeModelVersionResponse")
    DescribeResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeResourcePolicyRequest", name: "DescribeResourcePolicyRequest")
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeResourcePolicyResponse", name: "DescribeResourcePolicyResponse")
    DescribeRetrainingSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeRetrainingSchedulerRequest", name: "DescribeRetrainingSchedulerRequest")
    DescribeRetrainingSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DescribeRetrainingSchedulerResponse", name: "DescribeRetrainingSchedulerResponse")
    DuplicateTimestamps = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#DuplicateTimestamps", name: "DuplicateTimestamps")
    Equipment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#Equipment", name: "Equipment", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,200}$"})
    EventDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutequipment#EventDurationInSeconds", name: "EventDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0}})
    FaultCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#FaultCode", name: "FaultCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,100}$"})
    FaultCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#FaultCodes", name: "FaultCodes", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FileNameTimestampFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#FileNameTimestampFormat", name: "FileNameTimestampFormat", traits: {"smithy.api#pattern" => "^EPOCH|yyyy-MM-dd-HH-mm-ss|yyyyMMddHHmmss$"})
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lookoutequipment#Float", name: "Float", traits: {"smithy.api#default" => 0})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    IdempotenceToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#IdempotenceToken", name: "IdempotenceToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\p{ASCII}{1,256}$"})
    ImportDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ImportDatasetRequest", name: "ImportDatasetRequest")
    ImportDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ImportDatasetResponse", name: "ImportDatasetResponse")
    ImportModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ImportModelVersionRequest", name: "ImportModelVersionRequest")
    ImportModelVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ImportModelVersionResponse", name: "ImportModelVersionResponse")
    InferenceDataImportStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#InferenceDataImportStrategy", name: "InferenceDataImportStrategy")
    InferenceEventSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#InferenceEventSummaries", name: "InferenceEventSummaries")
    InferenceEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceEventSummary", name: "InferenceEventSummary")
    InferenceExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#InferenceExecutionStatus", name: "InferenceExecutionStatus")
    InferenceExecutionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#InferenceExecutionSummaries", name: "InferenceExecutionSummaries")
    InferenceExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceExecutionSummary", name: "InferenceExecutionSummary")
    InferenceInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceInputConfiguration", name: "InferenceInputConfiguration")
    InferenceInputNameConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceInputNameConfiguration", name: "InferenceInputNameConfiguration")
    InferenceOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceOutputConfiguration", name: "InferenceOutputConfiguration")
    InferenceS3InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceS3InputConfiguration", name: "InferenceS3InputConfiguration")
    InferenceS3OutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceS3OutputConfiguration", name: "InferenceS3OutputConfiguration")
    InferenceSchedulerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#InferenceSchedulerArn", name: "InferenceSchedulerArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:inference-scheduler\\/.+$"})
    InferenceSchedulerIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#InferenceSchedulerIdentifier", name: "InferenceSchedulerIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    InferenceSchedulerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#InferenceSchedulerName", name: "InferenceSchedulerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    InferenceSchedulerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#InferenceSchedulerStatus", name: "InferenceSchedulerStatus")
    InferenceSchedulerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#InferenceSchedulerSummaries", name: "InferenceSchedulerSummaries")
    InferenceSchedulerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InferenceSchedulerSummary", name: "InferenceSchedulerSummary")
    IngestedFilesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#IngestedFilesSummary", name: "IngestedFilesSummary")
    IngestionInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#IngestionInputConfiguration", name: "IngestionInputConfiguration")
    IngestionJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#IngestionJobId", name: "IngestionJobId", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Fa-f0-9]{0,32}$"})
    IngestionJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#IngestionJobStatus", name: "IngestionJobStatus")
    IngestionS3InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#IngestionS3InputConfiguration", name: "IngestionS3InputConfiguration")
    InlineDataSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#InlineDataSchema", name: "InlineDataSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}})
    InsufficientSensorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InsufficientSensorData", name: "InsufficientSensorData")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutequipment#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidSensorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#InvalidSensorData", name: "InvalidSensorData")
    KeyPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#KeyPattern", name: "KeyPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:[a-z0-9\\-]*:\\d{12}:[\\w\\-\\/]+$"})
    LabelGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#LabelGroupArn", name: "LabelGroupArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:label-group\\/.+$"})
    LabelGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#LabelGroupName", name: "LabelGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    LabelGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#LabelGroupSummaries", name: "LabelGroupSummaries")
    LabelGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#LabelGroupSummary", name: "LabelGroupSummary")
    LabelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#LabelId", name: "LabelId", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Fa-f0-9]{0,32}$"})
    LabelRating = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#LabelRating", name: "LabelRating")
    LabelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#LabelSummaries", name: "LabelSummaries")
    LabelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#LabelSummary", name: "LabelSummary")
    LabelsInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#LabelsInputConfiguration", name: "LabelsInputConfiguration")
    LabelsS3InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#LabelsS3InputConfiguration", name: "LabelsS3InputConfiguration")
    LargeTimestampGaps = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#LargeTimestampGaps", name: "LargeTimestampGaps")
    LatestInferenceResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#LatestInferenceResult", name: "LatestInferenceResult")
    ListDataIngestionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListDataIngestionJobsRequest", name: "ListDataIngestionJobsRequest")
    ListDataIngestionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListDataIngestionJobsResponse", name: "ListDataIngestionJobsResponse")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListInferenceEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListInferenceEventsRequest", name: "ListInferenceEventsRequest")
    ListInferenceEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListInferenceEventsResponse", name: "ListInferenceEventsResponse")
    ListInferenceExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListInferenceExecutionsRequest", name: "ListInferenceExecutionsRequest")
    ListInferenceExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListInferenceExecutionsResponse", name: "ListInferenceExecutionsResponse")
    ListInferenceSchedulersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListInferenceSchedulersRequest", name: "ListInferenceSchedulersRequest")
    ListInferenceSchedulersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListInferenceSchedulersResponse", name: "ListInferenceSchedulersResponse")
    ListLabelGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListLabelGroupsRequest", name: "ListLabelGroupsRequest")
    ListLabelGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListLabelGroupsResponse", name: "ListLabelGroupsResponse")
    ListLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListLabelsRequest", name: "ListLabelsRequest")
    ListLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListLabelsResponse", name: "ListLabelsResponse")
    ListModelVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListModelVersionsRequest", name: "ListModelVersionsRequest")
    ListModelVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListModelVersionsResponse", name: "ListModelVersionsResponse")
    ListModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListModelsRequest", name: "ListModelsRequest")
    ListModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListModelsResponse", name: "ListModelsResponse")
    ListOfDiscardedFiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#ListOfDiscardedFiles", name: "ListOfDiscardedFiles", traits: {"smithy.api#length" => {"min" => 0}})
    ListRetrainingSchedulersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListRetrainingSchedulersRequest", name: "ListRetrainingSchedulersRequest")
    ListRetrainingSchedulersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListRetrainingSchedulersResponse", name: "ListRetrainingSchedulersResponse")
    ListSensorStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListSensorStatisticsRequest", name: "ListSensorStatisticsRequest")
    ListSensorStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListSensorStatisticsResponse", name: "ListSensorStatisticsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LookbackWindow = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#LookbackWindow", name: "LookbackWindow", traits: {"smithy.api#pattern" => "^P180D$|^P360D$|^P540D$|^P720D$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutequipment#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MissingCompleteSensorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#MissingCompleteSensorData", name: "MissingCompleteSensorData")
    MissingSensorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#MissingSensorData", name: "MissingSensorData")
    ModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ModelArn", name: "ModelArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:model\\/.+$"})
    ModelDiagnosticsOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ModelDiagnosticsOutputConfiguration", name: "ModelDiagnosticsOutputConfiguration")
    ModelDiagnosticsS3OutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ModelDiagnosticsS3OutputConfiguration", name: "ModelDiagnosticsS3OutputConfiguration")
    ModelMetrics = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ModelMetrics", name: "ModelMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}})
    ModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ModelName", name: "ModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,200}$"})
    ModelPromoteMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#ModelPromoteMode", name: "ModelPromoteMode")
    ModelQuality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#ModelQuality", name: "ModelQuality")
    ModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#ModelStatus", name: "ModelStatus")
    ModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#ModelSummaries", name: "ModelSummaries")
    ModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ModelSummary", name: "ModelSummary")
    ModelVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutequipment#ModelVersion", name: "ModelVersion", traits: {"smithy.api#range" => {"min" => 1}})
    ModelVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ModelVersionArn", name: "ModelVersionArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:model\\/[0-9a-zA-Z_-]{1,200}\\/.+\\/model-version\\/[0-9]{1,}$"})
    ModelVersionSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#ModelVersionSourceType", name: "ModelVersionSourceType")
    ModelVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#ModelVersionStatus", name: "ModelVersionStatus")
    ModelVersionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#ModelVersionSummaries", name: "ModelVersionSummaries")
    ModelVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ModelVersionSummary", name: "ModelVersionSummary")
    MonotonicValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#MonotonicValues", name: "MonotonicValues")
    Monotonicity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#Monotonicity", name: "Monotonicity")
    MultipleOperatingModes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#MultipleOperatingModes", name: "MultipleOperatingModes")
    NameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#NameOrArn", name: "NameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OffCondition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#OffCondition", name: "OffCondition", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#PolicyRevisionId", name: "PolicyRevisionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:.+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetrainingFrequency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#RetrainingFrequency", name: "RetrainingFrequency", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^P(\\dY)?(\\d{1,2}M)?(\\d{1,3}D)?$"})
    RetrainingSchedulerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#RetrainingSchedulerStatus", name: "RetrainingSchedulerStatus")
    RetrainingSchedulerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#RetrainingSchedulerSummaries", name: "RetrainingSchedulerSummaries")
    RetrainingSchedulerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#RetrainingSchedulerSummary", name: "RetrainingSchedulerSummary")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,1024}[^/]$"})
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#S3Object", name: "S3Object")
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(^$)|([\\u0009\\u000A\\u000D\\u0020-\\u00FF]{1,1023}/$)$"})
    SensorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#SensorName", name: "SensorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z:\#$.\\-_]{1,200}$"})
    SensorStatisticsSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#SensorStatisticsSummaries", name: "SensorStatisticsSummaries")
    SensorStatisticsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#SensorStatisticsSummary", name: "SensorStatisticsSummary")
    SensorsWithShortDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#SensorsWithShortDateRange", name: "SensorsWithShortDateRange")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartDataIngestionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StartDataIngestionJobRequest", name: "StartDataIngestionJobRequest")
    StartDataIngestionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StartDataIngestionJobResponse", name: "StartDataIngestionJobResponse")
    StartInferenceSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StartInferenceSchedulerRequest", name: "StartInferenceSchedulerRequest")
    StartInferenceSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StartInferenceSchedulerResponse", name: "StartInferenceSchedulerResponse")
    StartRetrainingSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StartRetrainingSchedulerRequest", name: "StartRetrainingSchedulerRequest")
    StartRetrainingSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StartRetrainingSchedulerResponse", name: "StartRetrainingSchedulerResponse")
    StatisticalIssueStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#StatisticalIssueStatus", name: "StatisticalIssueStatus")
    StopInferenceSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StopInferenceSchedulerRequest", name: "StopInferenceSchedulerRequest")
    StopInferenceSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StopInferenceSchedulerResponse", name: "StopInferenceSchedulerResponse")
    StopRetrainingSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StopRetrainingSchedulerRequest", name: "StopRetrainingSchedulerRequest")
    StopRetrainingSchedulerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#StopRetrainingSchedulerResponse", name: "StopRetrainingSchedulerResponse")
    SynthesizedJsonInlineDataSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#SynthesizedJsonInlineDataSchema", name: "SynthesizedJsonInlineDataSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#mediaType" => "application/json"})
    SynthesizedJsonModelMetrics = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#SynthesizedJsonModelMetrics", name: "SynthesizedJsonModelMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}, "smithy.api#mediaType" => "application/json"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutequipment#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    TargetSamplingRate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutequipment#TargetSamplingRate", name: "TargetSamplingRate")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeZoneOffset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutequipment#TimeZoneOffset", name: "TimeZoneOffset", traits: {"smithy.api#pattern" => "^(\\+|\\-)[0-9]{2}\\:[0-9]{2}$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lookoutequipment#Timestamp", name: "Timestamp")
    UnsupportedTimestamps = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UnsupportedTimestamps", name: "UnsupportedTimestamps")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateActiveModelVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UpdateActiveModelVersionRequest", name: "UpdateActiveModelVersionRequest")
    UpdateActiveModelVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UpdateActiveModelVersionResponse", name: "UpdateActiveModelVersionResponse")
    UpdateInferenceSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UpdateInferenceSchedulerRequest", name: "UpdateInferenceSchedulerRequest")
    UpdateLabelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UpdateLabelGroupRequest", name: "UpdateLabelGroupRequest")
    UpdateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UpdateModelRequest", name: "UpdateModelRequest")
    UpdateRetrainingSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#UpdateRetrainingSchedulerRequest", name: "UpdateRetrainingSchedulerRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutequipment#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AutoPromotionResult.add_member(:model_promoted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODEL_PROMOTED", traits: {"smithy.api#enumValue" => "MODEL_PROMOTED"}))
    AutoPromotionResult.add_member(:model_not_promoted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODEL_NOT_PROMOTED", traits: {"smithy.api#enumValue" => "MODEL_NOT_PROMOTED"}))
    AutoPromotionResult.add_member(:retraining_internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRAINING_INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "RETRAINING_INTERNAL_ERROR"}))
    AutoPromotionResult.add_member(:retraining_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRAINING_CUSTOMER_ERROR", traits: {"smithy.api#enumValue" => "RETRAINING_CUSTOMER_ERROR"}))
    AutoPromotionResult.add_member(:retraining_cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRAINING_CANCELLED", traits: {"smithy.api#enumValue" => "RETRAINING_CANCELLED"}))
    CategoricalValues.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticalIssueStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    CategoricalValues.add_member(:number_of_category, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "NumberOfCategory"))
    CategoricalValues.type = Types::CategoricalValues
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CountPercent.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Count", traits: {"smithy.api#required" => {}}))
    CountPercent.add_member(:percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Percentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CountPercent.type = Types::CountPercent
    CreateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSchema, location_name: "DatasetSchema"))
    CreateDatasetRequest.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "ServerSideKmsKeyId"))
    CreateDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    CreateDatasetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, location_name: "Status"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateInferenceSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:data_delay_offset_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    CreateInferenceSchedulerRequest.add_member(:data_upload_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: DataUploadFrequency, location_name: "DataUploadFrequency", traits: {"smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:data_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceInputConfiguration, location_name: "DataInputConfiguration", traits: {"smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:data_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceOutputConfiguration, location_name: "DataOutputConfiguration", traits: {"smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "ServerSideKmsKeyId"))
    CreateInferenceSchedulerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateInferenceSchedulerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateInferenceSchedulerRequest.type = Types::CreateInferenceSchedulerRequest
    CreateInferenceSchedulerResponse.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    CreateInferenceSchedulerResponse.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    CreateInferenceSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerStatus, location_name: "Status"))
    CreateInferenceSchedulerResponse.add_member(:model_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelQuality, location_name: "ModelQuality"))
    CreateInferenceSchedulerResponse.type = Types::CreateInferenceSchedulerResponse
    CreateLabelGroupRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    CreateLabelGroupRequest.add_member(:fault_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCodes, location_name: "FaultCodes"))
    CreateLabelGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLabelGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateLabelGroupRequest.type = Types::CreateLabelGroupRequest
    CreateLabelGroupResponse.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName"))
    CreateLabelGroupResponse.add_member(:label_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupArn, location_name: "LabelGroupArn"))
    CreateLabelGroupResponse.type = Types::CreateLabelGroupResponse
    CreateLabelRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime", traits: {"smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime", traits: {"smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:rating, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelRating, location_name: "Rating", traits: {"smithy.api#required" => {}}))
    CreateLabelRequest.add_member(:fault_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCode, location_name: "FaultCode"))
    CreateLabelRequest.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Comments, location_name: "Notes"))
    CreateLabelRequest.add_member(:equipment, ::Smithy::Schema::Shapes::MemberShape.new(target: Equipment, location_name: "Equipment"))
    CreateLabelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLabelRequest.type = Types::CreateLabelRequest
    CreateLabelResponse.add_member(:label_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelId, location_name: "LabelId"))
    CreateLabelResponse.type = Types::CreateLabelResponse
    CreateModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    CreateModelRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    CreateModelRequest.add_member(:dataset_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSchema, location_name: "DatasetSchema"))
    CreateModelRequest.add_member(:labels_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    CreateModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:training_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingDataStartTime"))
    CreateModelRequest.add_member(:training_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingDataEndTime"))
    CreateModelRequest.add_member(:evaluation_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EvaluationDataStartTime"))
    CreateModelRequest.add_member(:evaluation_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EvaluationDataEndTime"))
    CreateModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    CreateModelRequest.add_member(:data_pre_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPreProcessingConfiguration, location_name: "DataPreProcessingConfiguration"))
    CreateModelRequest.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "ServerSideKmsKeyId"))
    CreateModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateModelRequest.add_member(:off_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: OffCondition, location_name: "OffCondition"))
    CreateModelRequest.add_member(:model_diagnostics_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDiagnosticsOutputConfiguration, location_name: "ModelDiagnosticsOutputConfiguration"))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    CreateModelResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, location_name: "Status"))
    CreateModelResponse.type = Types::CreateModelResponse
    CreateRetrainingSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.add_member(:retraining_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RetrainingStartDate"))
    CreateRetrainingSchedulerRequest.add_member(:retraining_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingFrequency, location_name: "RetrainingFrequency", traits: {"smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.add_member(:lookback_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LookbackWindow, location_name: "LookbackWindow", traits: {"smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.add_member(:promote_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPromoteMode, location_name: "PromoteMode"))
    CreateRetrainingSchedulerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRetrainingSchedulerRequest.type = Types::CreateRetrainingSchedulerRequest
    CreateRetrainingSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    CreateRetrainingSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    CreateRetrainingSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "Status"))
    CreateRetrainingSchedulerResponse.type = Types::CreateRetrainingSchedulerResponse
    DataIngestionJobSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataIngestionJobSummary)
    DataIngestionJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobId, location_name: "JobId"))
    DataIngestionJobSummary.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DataIngestionJobSummary.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    DataIngestionJobSummary.add_member(:ingestion_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionInputConfiguration, location_name: "IngestionInputConfiguration"))
    DataIngestionJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobStatus, location_name: "Status"))
    DataIngestionJobSummary.type = Types::DataIngestionJobSummary
    DataPreProcessingConfiguration.add_member(:target_sampling_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSamplingRate, location_name: "TargetSamplingRate"))
    DataPreProcessingConfiguration.type = Types::DataPreProcessingConfiguration
    DataQualitySummary.add_member(:insufficient_sensor_data, ::Smithy::Schema::Shapes::MemberShape.new(target: InsufficientSensorData, location_name: "InsufficientSensorData", traits: {"smithy.api#required" => {}}))
    DataQualitySummary.add_member(:missing_sensor_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MissingSensorData, location_name: "MissingSensorData", traits: {"smithy.api#required" => {}}))
    DataQualitySummary.add_member(:invalid_sensor_data, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidSensorData, location_name: "InvalidSensorData", traits: {"smithy.api#required" => {}}))
    DataQualitySummary.add_member(:unsupported_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsupportedTimestamps, location_name: "UnsupportedTimestamps", traits: {"smithy.api#required" => {}}))
    DataQualitySummary.add_member(:duplicate_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: DuplicateTimestamps, location_name: "DuplicateTimestamps", traits: {"smithy.api#required" => {}}))
    DataQualitySummary.type = Types::DataQualitySummary
    DataUploadFrequency.add_member(:pt5_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT5M", traits: {"smithy.api#enumValue" => "PT5M"}))
    DataUploadFrequency.add_member(:pt10_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT10M", traits: {"smithy.api#enumValue" => "PT10M"}))
    DataUploadFrequency.add_member(:pt15_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT15M", traits: {"smithy.api#enumValue" => "PT15M"}))
    DataUploadFrequency.add_member(:pt30_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT30M", traits: {"smithy.api#enumValue" => "PT30M"}))
    DataUploadFrequency.add_member(:pt1_h, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT1H", traits: {"smithy.api#enumValue" => "PT1H"}))
    DatasetSchema.add_member(:inline_data_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonInlineDataSchema, location_name: "InlineDataSchema"))
    DatasetSchema.type = Types::DatasetSchema
    DatasetStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    DatasetStatus.add_member(:ingestion_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INGESTION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "INGESTION_IN_PROGRESS"}))
    DatasetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatasetStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    DatasetSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummary)
    DatasetSummary.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DatasetSummary.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    DatasetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, location_name: "Status"))
    DatasetSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DatasetSummary.type = Types::DatasetSummary
    DeleteDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteInferenceSchedulerRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    DeleteInferenceSchedulerRequest.type = Types::DeleteInferenceSchedulerRequest
    DeleteLabelGroupRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    DeleteLabelGroupRequest.type = Types::DeleteLabelGroupRequest
    DeleteLabelRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    DeleteLabelRequest.add_member(:label_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelId, location_name: "LabelId", traits: {"smithy.api#required" => {}}))
    DeleteLabelRequest.type = Types::DeleteLabelRequest
    DeleteModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteRetrainingSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    DeleteRetrainingSchedulerRequest.type = Types::DeleteRetrainingSchedulerRequest
    DescribeDataIngestionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeDataIngestionJobRequest.type = Types::DescribeDataIngestionJobRequest
    DescribeDataIngestionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobId, location_name: "JobId"))
    DescribeDataIngestionJobResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    DescribeDataIngestionJobResponse.add_member(:ingestion_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionInputConfiguration, location_name: "IngestionInputConfiguration"))
    DescribeDataIngestionJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    DescribeDataIngestionJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeDataIngestionJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobStatus, location_name: "Status"))
    DescribeDataIngestionJobResponse.add_member(:failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "FailedReason"))
    DescribeDataIngestionJobResponse.add_member(:data_quality_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: DataQualitySummary, location_name: "DataQualitySummary"))
    DescribeDataIngestionJobResponse.add_member(:ingested_files_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestedFilesSummary, location_name: "IngestedFilesSummary"))
    DescribeDataIngestionJobResponse.add_member(:status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "StatusDetail"))
    DescribeDataIngestionJobResponse.add_member(:ingested_data_size, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSizeInBytes, location_name: "IngestedDataSize"))
    DescribeDataIngestionJobResponse.add_member(:data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataStartTime"))
    DescribeDataIngestionJobResponse.add_member(:data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataEndTime"))
    DescribeDataIngestionJobResponse.add_member(:source_dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "SourceDatasetArn"))
    DescribeDataIngestionJobResponse.type = Types::DescribeDataIngestionJobResponse
    DescribeDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DescribeDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    DescribeDatasetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeDatasetResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedAt"))
    DescribeDatasetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, location_name: "Status"))
    DescribeDatasetResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonInlineDataSchema, location_name: "Schema"))
    DescribeDatasetResponse.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeDatasetResponse.add_member(:ingestion_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionInputConfiguration, location_name: "IngestionInputConfiguration"))
    DescribeDatasetResponse.add_member(:data_quality_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: DataQualitySummary, location_name: "DataQualitySummary"))
    DescribeDatasetResponse.add_member(:ingested_files_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestedFilesSummary, location_name: "IngestedFilesSummary"))
    DescribeDatasetResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    DescribeDatasetResponse.add_member(:data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataStartTime"))
    DescribeDatasetResponse.add_member(:data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataEndTime"))
    DescribeDatasetResponse.add_member(:source_dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "SourceDatasetArn"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeInferenceSchedulerRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    DescribeInferenceSchedulerRequest.type = Types::DescribeInferenceSchedulerRequest
    DescribeInferenceSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    DescribeInferenceSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    DescribeInferenceSchedulerResponse.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    DescribeInferenceSchedulerResponse.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    DescribeInferenceSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerStatus, location_name: "Status"))
    DescribeInferenceSchedulerResponse.add_member(:data_delay_offset_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    DescribeInferenceSchedulerResponse.add_member(:data_upload_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: DataUploadFrequency, location_name: "DataUploadFrequency"))
    DescribeInferenceSchedulerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeInferenceSchedulerResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    DescribeInferenceSchedulerResponse.add_member(:data_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceInputConfiguration, location_name: "DataInputConfiguration"))
    DescribeInferenceSchedulerResponse.add_member(:data_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceOutputConfiguration, location_name: "DataOutputConfiguration"))
    DescribeInferenceSchedulerResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    DescribeInferenceSchedulerResponse.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeInferenceSchedulerResponse.add_member(:latest_inference_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestInferenceResult, location_name: "LatestInferenceResult"))
    DescribeInferenceSchedulerResponse.type = Types::DescribeInferenceSchedulerResponse
    DescribeLabelGroupRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    DescribeLabelGroupRequest.type = Types::DescribeLabelGroupRequest
    DescribeLabelGroupResponse.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName"))
    DescribeLabelGroupResponse.add_member(:label_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupArn, location_name: "LabelGroupArn"))
    DescribeLabelGroupResponse.add_member(:fault_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCodes, location_name: "FaultCodes"))
    DescribeLabelGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeLabelGroupResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    DescribeLabelGroupResponse.type = Types::DescribeLabelGroupResponse
    DescribeLabelRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    DescribeLabelRequest.add_member(:label_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelId, location_name: "LabelId", traits: {"smithy.api#required" => {}}))
    DescribeLabelRequest.type = Types::DescribeLabelRequest
    DescribeLabelResponse.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName"))
    DescribeLabelResponse.add_member(:label_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupArn, location_name: "LabelGroupArn"))
    DescribeLabelResponse.add_member(:label_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelId, location_name: "LabelId"))
    DescribeLabelResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    DescribeLabelResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime"))
    DescribeLabelResponse.add_member(:rating, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelRating, location_name: "Rating"))
    DescribeLabelResponse.add_member(:fault_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCode, location_name: "FaultCode"))
    DescribeLabelResponse.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Comments, location_name: "Notes"))
    DescribeLabelResponse.add_member(:equipment, ::Smithy::Schema::Shapes::MemberShape.new(target: Equipment, location_name: "Equipment"))
    DescribeLabelResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeLabelResponse.type = Types::DescribeLabelResponse
    DescribeModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    DescribeModelRequest.type = Types::DescribeModelRequest
    DescribeModelResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    DescribeModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    DescribeModelResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DescribeModelResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    DescribeModelResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonInlineDataSchema, location_name: "Schema"))
    DescribeModelResponse.add_member(:labels_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    DescribeModelResponse.add_member(:training_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingDataStartTime"))
    DescribeModelResponse.add_member(:training_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingDataEndTime"))
    DescribeModelResponse.add_member(:evaluation_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EvaluationDataStartTime"))
    DescribeModelResponse.add_member(:evaluation_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EvaluationDataEndTime"))
    DescribeModelResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    DescribeModelResponse.add_member(:data_pre_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPreProcessingConfiguration, location_name: "DataPreProcessingConfiguration"))
    DescribeModelResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, location_name: "Status"))
    DescribeModelResponse.add_member(:training_execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingExecutionStartTime"))
    DescribeModelResponse.add_member(:training_execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingExecutionEndTime"))
    DescribeModelResponse.add_member(:failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "FailedReason"))
    DescribeModelResponse.add_member(:model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonModelMetrics, location_name: "ModelMetrics"))
    DescribeModelResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    DescribeModelResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeModelResponse.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeModelResponse.add_member(:off_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: OffCondition, location_name: "OffCondition"))
    DescribeModelResponse.add_member(:source_model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "SourceModelVersionArn"))
    DescribeModelResponse.add_member(:import_job_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ImportJobStartTime"))
    DescribeModelResponse.add_member(:import_job_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ImportJobEndTime"))
    DescribeModelResponse.add_member(:active_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ActiveModelVersion"))
    DescribeModelResponse.add_member(:active_model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "ActiveModelVersionArn"))
    DescribeModelResponse.add_member(:model_version_activated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ModelVersionActivatedAt"))
    DescribeModelResponse.add_member(:previous_active_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "PreviousActiveModelVersion"))
    DescribeModelResponse.add_member(:previous_active_model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "PreviousActiveModelVersionArn"))
    DescribeModelResponse.add_member(:previous_model_version_activated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "PreviousModelVersionActivatedAt"))
    DescribeModelResponse.add_member(:prior_model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonModelMetrics, location_name: "PriorModelMetrics"))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "LatestScheduledRetrainingFailedReason"))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionStatus, location_name: "LatestScheduledRetrainingStatus"))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "LatestScheduledRetrainingModelVersion"))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LatestScheduledRetrainingStartTime"))
    DescribeModelResponse.add_member(:latest_scheduled_retraining_available_data_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "LatestScheduledRetrainingAvailableDataInDays"))
    DescribeModelResponse.add_member(:next_scheduled_retraining_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "NextScheduledRetrainingStartDate"))
    DescribeModelResponse.add_member(:accumulated_inference_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "AccumulatedInferenceDataStartTime"))
    DescribeModelResponse.add_member(:accumulated_inference_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "AccumulatedInferenceDataEndTime"))
    DescribeModelResponse.add_member(:retraining_scheduler_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "RetrainingSchedulerStatus"))
    DescribeModelResponse.add_member(:model_diagnostics_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDiagnosticsOutputConfiguration, location_name: "ModelDiagnosticsOutputConfiguration"))
    DescribeModelResponse.add_member(:model_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelQuality, location_name: "ModelQuality"))
    DescribeModelResponse.type = Types::DescribeModelResponse
    DescribeModelVersionRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    DescribeModelVersionRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    DescribeModelVersionRequest.type = Types::DescribeModelVersionRequest
    DescribeModelVersionResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    DescribeModelVersionResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    DescribeModelVersionResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion"))
    DescribeModelVersionResponse.add_member(:model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "ModelVersionArn"))
    DescribeModelVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionStatus, location_name: "Status"))
    DescribeModelVersionResponse.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionSourceType, location_name: "SourceType"))
    DescribeModelVersionResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DescribeModelVersionResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    DescribeModelVersionResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineDataSchema, location_name: "Schema"))
    DescribeModelVersionResponse.add_member(:labels_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    DescribeModelVersionResponse.add_member(:training_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingDataStartTime"))
    DescribeModelVersionResponse.add_member(:training_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingDataEndTime"))
    DescribeModelVersionResponse.add_member(:evaluation_data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EvaluationDataStartTime"))
    DescribeModelVersionResponse.add_member(:evaluation_data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EvaluationDataEndTime"))
    DescribeModelVersionResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    DescribeModelVersionResponse.add_member(:data_pre_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPreProcessingConfiguration, location_name: "DataPreProcessingConfiguration"))
    DescribeModelVersionResponse.add_member(:training_execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingExecutionStartTime"))
    DescribeModelVersionResponse.add_member(:training_execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TrainingExecutionEndTime"))
    DescribeModelVersionResponse.add_member(:failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "FailedReason"))
    DescribeModelVersionResponse.add_member(:model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelMetrics, location_name: "ModelMetrics"))
    DescribeModelVersionResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    DescribeModelVersionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeModelVersionResponse.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeModelVersionResponse.add_member(:off_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: OffCondition, location_name: "OffCondition"))
    DescribeModelVersionResponse.add_member(:source_model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "SourceModelVersionArn"))
    DescribeModelVersionResponse.add_member(:import_job_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ImportJobStartTime"))
    DescribeModelVersionResponse.add_member(:import_job_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ImportJobEndTime"))
    DescribeModelVersionResponse.add_member(:imported_data_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSizeInBytes, location_name: "ImportedDataSizeInBytes"))
    DescribeModelVersionResponse.add_member(:prior_model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelMetrics, location_name: "PriorModelMetrics"))
    DescribeModelVersionResponse.add_member(:retraining_available_data_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "RetrainingAvailableDataInDays"))
    DescribeModelVersionResponse.add_member(:auto_promotion_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoPromotionResult, location_name: "AutoPromotionResult"))
    DescribeModelVersionResponse.add_member(:auto_promotion_result_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoPromotionResultReason, location_name: "AutoPromotionResultReason"))
    DescribeModelVersionResponse.add_member(:model_diagnostics_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDiagnosticsOutputConfiguration, location_name: "ModelDiagnosticsOutputConfiguration"))
    DescribeModelVersionResponse.add_member(:model_diagnostics_results_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, location_name: "ModelDiagnosticsResultsObject"))
    DescribeModelVersionResponse.add_member(:model_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelQuality, location_name: "ModelQuality"))
    DescribeModelVersionResponse.type = Types::DescribeModelVersionResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, location_name: "PolicyRevisionId"))
    DescribeResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "ResourcePolicy"))
    DescribeResourcePolicyResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    DescribeResourcePolicyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastModifiedTime"))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeRetrainingSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    DescribeRetrainingSchedulerRequest.type = Types::DescribeRetrainingSchedulerRequest
    DescribeRetrainingSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    DescribeRetrainingSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    DescribeRetrainingSchedulerResponse.add_member(:retraining_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RetrainingStartDate"))
    DescribeRetrainingSchedulerResponse.add_member(:retraining_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingFrequency, location_name: "RetrainingFrequency"))
    DescribeRetrainingSchedulerResponse.add_member(:lookback_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LookbackWindow, location_name: "LookbackWindow"))
    DescribeRetrainingSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "Status"))
    DescribeRetrainingSchedulerResponse.add_member(:promote_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPromoteMode, location_name: "PromoteMode"))
    DescribeRetrainingSchedulerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    DescribeRetrainingSchedulerResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    DescribeRetrainingSchedulerResponse.type = Types::DescribeRetrainingSchedulerResponse
    DuplicateTimestamps.add_member(:total_number_of_duplicate_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "TotalNumberOfDuplicateTimestamps", traits: {"smithy.api#required" => {}}))
    DuplicateTimestamps.type = Types::DuplicateTimestamps
    FaultCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCode)
    ImportDatasetRequest.add_member(:source_dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "SourceDatasetArn", traits: {"smithy.api#required" => {}}))
    ImportDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    ImportDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportDatasetRequest.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "ServerSideKmsKeyId"))
    ImportDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ImportDatasetRequest.type = Types::ImportDatasetRequest
    ImportDatasetResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    ImportDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    ImportDatasetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, location_name: "Status"))
    ImportDatasetResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobId, location_name: "JobId"))
    ImportDatasetResponse.type = Types::ImportDatasetResponse
    ImportModelVersionRequest.add_member(:source_model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "SourceModelVersionArn", traits: {"smithy.api#required" => {}}))
    ImportModelVersionRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    ImportModelVersionRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    ImportModelVersionRequest.add_member(:labels_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    ImportModelVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportModelVersionRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    ImportModelVersionRequest.add_member(:server_side_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "ServerSideKmsKeyId"))
    ImportModelVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ImportModelVersionRequest.add_member(:inference_data_import_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceDataImportStrategy, location_name: "InferenceDataImportStrategy"))
    ImportModelVersionRequest.type = Types::ImportModelVersionRequest
    ImportModelVersionResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    ImportModelVersionResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    ImportModelVersionResponse.add_member(:model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "ModelVersionArn"))
    ImportModelVersionResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion"))
    ImportModelVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionStatus, location_name: "Status"))
    ImportModelVersionResponse.type = Types::ImportModelVersionResponse
    InferenceDataImportStrategy.add_member(:no_import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_IMPORT", traits: {"smithy.api#enumValue" => "NO_IMPORT"}))
    InferenceDataImportStrategy.add_member(:add_when_empty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADD_WHEN_EMPTY", traits: {"smithy.api#enumValue" => "ADD_WHEN_EMPTY"}))
    InferenceDataImportStrategy.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERWRITE", traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    InferenceEventSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceEventSummary)
    InferenceEventSummary.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    InferenceEventSummary.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    InferenceEventSummary.add_member(:event_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EventStartTime"))
    InferenceEventSummary.add_member(:event_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EventEndTime"))
    InferenceEventSummary.add_member(:diagnostics, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelMetrics, location_name: "Diagnostics"))
    InferenceEventSummary.add_member(:event_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDurationInSeconds, location_name: "EventDurationInSeconds"))
    InferenceEventSummary.type = Types::InferenceEventSummary
    InferenceExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    InferenceExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    InferenceExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    InferenceExecutionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceExecutionSummary)
    InferenceExecutionSummary.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    InferenceExecutionSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    InferenceExecutionSummary.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    InferenceExecutionSummary.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    InferenceExecutionSummary.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ScheduledStartTime"))
    InferenceExecutionSummary.add_member(:data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataStartTime"))
    InferenceExecutionSummary.add_member(:data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataEndTime"))
    InferenceExecutionSummary.add_member(:data_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceInputConfiguration, location_name: "DataInputConfiguration"))
    InferenceExecutionSummary.add_member(:data_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceOutputConfiguration, location_name: "DataOutputConfiguration"))
    InferenceExecutionSummary.add_member(:customer_result_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, location_name: "CustomerResultObject"))
    InferenceExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceExecutionStatus, location_name: "Status"))
    InferenceExecutionSummary.add_member(:failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "FailedReason"))
    InferenceExecutionSummary.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion"))
    InferenceExecutionSummary.add_member(:model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "ModelVersionArn"))
    InferenceExecutionSummary.type = Types::InferenceExecutionSummary
    InferenceInputConfiguration.add_member(:s3_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceS3InputConfiguration, location_name: "S3InputConfiguration"))
    InferenceInputConfiguration.add_member(:input_time_zone_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZoneOffset, location_name: "InputTimeZoneOffset"))
    InferenceInputConfiguration.add_member(:inference_input_name_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceInputNameConfiguration, location_name: "InferenceInputNameConfiguration"))
    InferenceInputConfiguration.type = Types::InferenceInputConfiguration
    InferenceInputNameConfiguration.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileNameTimestampFormat, location_name: "TimestampFormat"))
    InferenceInputNameConfiguration.add_member(:component_timestamp_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTimestampDelimiter, location_name: "ComponentTimestampDelimiter"))
    InferenceInputNameConfiguration.type = Types::InferenceInputNameConfiguration
    InferenceOutputConfiguration.add_member(:s3_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceS3OutputConfiguration, location_name: "S3OutputConfiguration", traits: {"smithy.api#required" => {}}))
    InferenceOutputConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "KmsKeyId"))
    InferenceOutputConfiguration.type = Types::InferenceOutputConfiguration
    InferenceS3InputConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    InferenceS3InputConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, location_name: "Prefix"))
    InferenceS3InputConfiguration.type = Types::InferenceS3InputConfiguration
    InferenceS3OutputConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    InferenceS3OutputConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, location_name: "Prefix"))
    InferenceS3OutputConfiguration.type = Types::InferenceS3OutputConfiguration
    InferenceSchedulerStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    InferenceSchedulerStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InferenceSchedulerStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    InferenceSchedulerStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    InferenceSchedulerSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerSummary)
    InferenceSchedulerSummary.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    InferenceSchedulerSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    InferenceSchedulerSummary.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    InferenceSchedulerSummary.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    InferenceSchedulerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerStatus, location_name: "Status"))
    InferenceSchedulerSummary.add_member(:data_delay_offset_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    InferenceSchedulerSummary.add_member(:data_upload_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: DataUploadFrequency, location_name: "DataUploadFrequency"))
    InferenceSchedulerSummary.add_member(:latest_inference_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestInferenceResult, location_name: "LatestInferenceResult"))
    InferenceSchedulerSummary.type = Types::InferenceSchedulerSummary
    IngestedFilesSummary.add_member(:total_number_of_files, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "TotalNumberOfFiles", traits: {"smithy.api#required" => {}}))
    IngestedFilesSummary.add_member(:ingested_number_of_files, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "IngestedNumberOfFiles", traits: {"smithy.api#required" => {}}))
    IngestedFilesSummary.add_member(:discarded_files, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDiscardedFiles, location_name: "DiscardedFiles"))
    IngestedFilesSummary.type = Types::IngestedFilesSummary
    IngestionInputConfiguration.add_member(:s3_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionS3InputConfiguration, location_name: "S3InputConfiguration", traits: {"smithy.api#required" => {}}))
    IngestionInputConfiguration.type = Types::IngestionInputConfiguration
    IngestionJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    IngestionJobStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    IngestionJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IngestionJobStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    IngestionS3InputConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    IngestionS3InputConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, location_name: "Prefix"))
    IngestionS3InputConfiguration.add_member(:key_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPattern, location_name: "KeyPattern"))
    IngestionS3InputConfiguration.type = Types::IngestionS3InputConfiguration
    InsufficientSensorData.add_member(:missing_complete_sensor_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MissingCompleteSensorData, location_name: "MissingCompleteSensorData", traits: {"smithy.api#required" => {}}))
    InsufficientSensorData.add_member(:sensors_with_short_date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SensorsWithShortDateRange, location_name: "SensorsWithShortDateRange", traits: {"smithy.api#required" => {}}))
    InsufficientSensorData.type = Types::InsufficientSensorData
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidSensorData.add_member(:affected_sensor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "AffectedSensorCount", traits: {"smithy.api#required" => {}}))
    InvalidSensorData.add_member(:total_number_of_invalid_values, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "TotalNumberOfInvalidValues", traits: {"smithy.api#required" => {}}))
    InvalidSensorData.type = Types::InvalidSensorData
    LabelGroupSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupSummary)
    LabelGroupSummary.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName"))
    LabelGroupSummary.add_member(:label_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupArn, location_name: "LabelGroupArn"))
    LabelGroupSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    LabelGroupSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    LabelGroupSummary.type = Types::LabelGroupSummary
    LabelRating.add_member(:anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANOMALY", traits: {"smithy.api#enumValue" => "ANOMALY"}))
    LabelRating.add_member(:no_anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_ANOMALY", traits: {"smithy.api#enumValue" => "NO_ANOMALY"}))
    LabelRating.add_member(:neutral, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEUTRAL", traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    LabelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummary)
    LabelSummary.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName"))
    LabelSummary.add_member(:label_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelId, location_name: "LabelId"))
    LabelSummary.add_member(:label_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupArn, location_name: "LabelGroupArn"))
    LabelSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    LabelSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime"))
    LabelSummary.add_member(:rating, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelRating, location_name: "Rating"))
    LabelSummary.add_member(:fault_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCode, location_name: "FaultCode"))
    LabelSummary.add_member(:equipment, ::Smithy::Schema::Shapes::MemberShape.new(target: Equipment, location_name: "Equipment"))
    LabelSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    LabelSummary.type = Types::LabelSummary
    LabelsInputConfiguration.add_member(:s3_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsS3InputConfiguration, location_name: "S3InputConfiguration"))
    LabelsInputConfiguration.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName"))
    LabelsInputConfiguration.type = Types::LabelsInputConfiguration
    LabelsS3InputConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    LabelsS3InputConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, location_name: "Prefix"))
    LabelsS3InputConfiguration.type = Types::LabelsS3InputConfiguration
    LargeTimestampGaps.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticalIssueStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    LargeTimestampGaps.add_member(:number_of_large_timestamp_gaps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "NumberOfLargeTimestampGaps"))
    LargeTimestampGaps.add_member(:max_timestamp_gap_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "MaxTimestampGapInDays"))
    LargeTimestampGaps.type = Types::LargeTimestampGaps
    LatestInferenceResult.add_member(:anomalous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANOMALOUS", traits: {"smithy.api#enumValue" => "ANOMALOUS"}))
    LatestInferenceResult.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NORMAL", traits: {"smithy.api#enumValue" => "NORMAL"}))
    ListDataIngestionJobsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    ListDataIngestionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDataIngestionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListDataIngestionJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobStatus, location_name: "Status"))
    ListDataIngestionJobsRequest.type = Types::ListDataIngestionJobsRequest
    ListDataIngestionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDataIngestionJobsResponse.add_member(:data_ingestion_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIngestionJobSummaries, location_name: "DataIngestionJobSummaries"))
    ListDataIngestionJobsResponse.type = Types::ListDataIngestionJobsResponse
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListDatasetsRequest.add_member(:dataset_name_begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetNameBeginsWith"))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDatasetsResponse.add_member(:dataset_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummaries, location_name: "DatasetSummaries"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListInferenceEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListInferenceEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListInferenceEventsRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    ListInferenceEventsRequest.add_member(:interval_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "IntervalStartTime", traits: {"smithy.api#required" => {}}))
    ListInferenceEventsRequest.add_member(:interval_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "IntervalEndTime", traits: {"smithy.api#required" => {}}))
    ListInferenceEventsRequest.type = Types::ListInferenceEventsRequest
    ListInferenceEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListInferenceEventsResponse.add_member(:inference_event_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceEventSummaries, location_name: "InferenceEventSummaries"))
    ListInferenceEventsResponse.type = Types::ListInferenceEventsResponse
    ListInferenceExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListInferenceExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListInferenceExecutionsRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    ListInferenceExecutionsRequest.add_member(:data_start_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataStartTimeAfter"))
    ListInferenceExecutionsRequest.add_member(:data_end_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataEndTimeBefore"))
    ListInferenceExecutionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceExecutionStatus, location_name: "Status"))
    ListInferenceExecutionsRequest.type = Types::ListInferenceExecutionsRequest
    ListInferenceExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListInferenceExecutionsResponse.add_member(:inference_execution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceExecutionSummaries, location_name: "InferenceExecutionSummaries"))
    ListInferenceExecutionsResponse.type = Types::ListInferenceExecutionsResponse
    ListInferenceSchedulersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListInferenceSchedulersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListInferenceSchedulersRequest.add_member(:inference_scheduler_name_begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerNameBeginsWith"))
    ListInferenceSchedulersRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    ListInferenceSchedulersRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerStatus, location_name: "Status"))
    ListInferenceSchedulersRequest.type = Types::ListInferenceSchedulersRequest
    ListInferenceSchedulersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListInferenceSchedulersResponse.add_member(:inference_scheduler_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerSummaries, location_name: "InferenceSchedulerSummaries"))
    ListInferenceSchedulersResponse.type = Types::ListInferenceSchedulersResponse
    ListLabelGroupsRequest.add_member(:label_group_name_begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupNameBeginsWith"))
    ListLabelGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListLabelGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListLabelGroupsRequest.type = Types::ListLabelGroupsRequest
    ListLabelGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListLabelGroupsResponse.add_member(:label_group_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupSummaries, location_name: "LabelGroupSummaries"))
    ListLabelGroupsResponse.type = Types::ListLabelGroupsResponse
    ListLabelsRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    ListLabelsRequest.add_member(:interval_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "IntervalStartTime"))
    ListLabelsRequest.add_member(:interval_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "IntervalEndTime"))
    ListLabelsRequest.add_member(:fault_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCode, location_name: "FaultCode"))
    ListLabelsRequest.add_member(:equipment, ::Smithy::Schema::Shapes::MemberShape.new(target: Equipment, location_name: "Equipment"))
    ListLabelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListLabelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListLabelsRequest.type = Types::ListLabelsRequest
    ListLabelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListLabelsResponse.add_member(:label_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummaries, location_name: "LabelSummaries"))
    ListLabelsResponse.type = Types::ListLabelsResponse
    ListModelVersionsRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    ListModelVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListModelVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListModelVersionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionStatus, location_name: "Status"))
    ListModelVersionsRequest.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionSourceType, location_name: "SourceType"))
    ListModelVersionsRequest.add_member(:created_at_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAtEndTime"))
    ListModelVersionsRequest.add_member(:created_at_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAtStartTime"))
    ListModelVersionsRequest.add_member(:max_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "MaxModelVersion"))
    ListModelVersionsRequest.add_member(:min_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "MinModelVersion"))
    ListModelVersionsRequest.type = Types::ListModelVersionsRequest
    ListModelVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListModelVersionsResponse.add_member(:model_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionSummaries, location_name: "ModelVersionSummaries"))
    ListModelVersionsResponse.type = Types::ListModelVersionsResponse
    ListModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListModelsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, location_name: "Status"))
    ListModelsRequest.add_member(:model_name_begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelNameBeginsWith"))
    ListModelsRequest.add_member(:dataset_name_begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetNameBeginsWith"))
    ListModelsRequest.type = Types::ListModelsRequest
    ListModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListModelsResponse.add_member(:model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelSummaries, location_name: "ModelSummaries"))
    ListModelsResponse.type = Types::ListModelsResponse
    ListOfDiscardedFiles.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object)
    ListRetrainingSchedulersRequest.add_member(:model_name_begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelNameBeginsWith"))
    ListRetrainingSchedulersRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "Status"))
    ListRetrainingSchedulersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRetrainingSchedulersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListRetrainingSchedulersRequest.type = Types::ListRetrainingSchedulersRequest
    ListRetrainingSchedulersResponse.add_member(:retraining_scheduler_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerSummaries, location_name: "RetrainingSchedulerSummaries"))
    ListRetrainingSchedulersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRetrainingSchedulersResponse.type = Types::ListRetrainingSchedulersResponse
    ListSensorStatisticsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    ListSensorStatisticsRequest.add_member(:ingestion_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobId, location_name: "IngestionJobId"))
    ListSensorStatisticsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListSensorStatisticsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListSensorStatisticsRequest.type = Types::ListSensorStatisticsRequest
    ListSensorStatisticsResponse.add_member(:sensor_statistics_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SensorStatisticsSummaries, location_name: "SensorStatisticsSummaries"))
    ListSensorStatisticsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListSensorStatisticsResponse.type = Types::ListSensorStatisticsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MissingCompleteSensorData.add_member(:affected_sensor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "AffectedSensorCount", traits: {"smithy.api#required" => {}}))
    MissingCompleteSensorData.type = Types::MissingCompleteSensorData
    MissingSensorData.add_member(:affected_sensor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "AffectedSensorCount", traits: {"smithy.api#required" => {}}))
    MissingSensorData.add_member(:total_number_of_missing_values, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "TotalNumberOfMissingValues", traits: {"smithy.api#required" => {}}))
    MissingSensorData.type = Types::MissingSensorData
    ModelDiagnosticsOutputConfiguration.add_member(:s3_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDiagnosticsS3OutputConfiguration, location_name: "S3OutputConfiguration", traits: {"smithy.api#required" => {}}))
    ModelDiagnosticsOutputConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, location_name: "KmsKeyId"))
    ModelDiagnosticsOutputConfiguration.type = Types::ModelDiagnosticsOutputConfiguration
    ModelDiagnosticsS3OutputConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    ModelDiagnosticsS3OutputConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, location_name: "Prefix"))
    ModelDiagnosticsS3OutputConfiguration.type = Types::ModelDiagnosticsS3OutputConfiguration
    ModelPromoteMode.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    ModelPromoteMode.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    ModelQuality.add_member(:quality_threshold_met, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY_THRESHOLD_MET", traits: {"smithy.api#enumValue" => "QUALITY_THRESHOLD_MET"}))
    ModelQuality.add_member(:cannot_determine_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_DETERMINE_QUALITY", traits: {"smithy.api#enumValue" => "CANNOT_DETERMINE_QUALITY"}))
    ModelQuality.add_member(:poor_quality_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POOR_QUALITY_DETECTED", traits: {"smithy.api#enumValue" => "POOR_QUALITY_DETECTED"}))
    ModelStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ModelStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ModelStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ModelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ModelSummary)
    ModelSummary.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    ModelSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    ModelSummary.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    ModelSummary.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, location_name: "DatasetArn"))
    ModelSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, location_name: "Status"))
    ModelSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    ModelSummary.add_member(:active_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ActiveModelVersion"))
    ModelSummary.add_member(:active_model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "ActiveModelVersionArn"))
    ModelSummary.add_member(:latest_scheduled_retraining_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionStatus, location_name: "LatestScheduledRetrainingStatus"))
    ModelSummary.add_member(:latest_scheduled_retraining_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "LatestScheduledRetrainingModelVersion"))
    ModelSummary.add_member(:latest_scheduled_retraining_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LatestScheduledRetrainingStartTime"))
    ModelSummary.add_member(:next_scheduled_retraining_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "NextScheduledRetrainingStartDate"))
    ModelSummary.add_member(:retraining_scheduler_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "RetrainingSchedulerStatus"))
    ModelSummary.add_member(:model_diagnostics_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDiagnosticsOutputConfiguration, location_name: "ModelDiagnosticsOutputConfiguration"))
    ModelSummary.add_member(:model_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelQuality, location_name: "ModelQuality"))
    ModelSummary.type = Types::ModelSummary
    ModelVersionSourceType.add_member(:training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING", traits: {"smithy.api#enumValue" => "TRAINING"}))
    ModelVersionSourceType.add_member(:retraining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRAINING", traits: {"smithy.api#enumValue" => "RETRAINING"}))
    ModelVersionSourceType.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT"}))
    ModelVersionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ModelVersionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ModelVersionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelVersionStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ModelVersionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ModelVersionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionSummary)
    ModelVersionSummary.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    ModelVersionSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    ModelVersionSummary.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion"))
    ModelVersionSummary.add_member(:model_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "ModelVersionArn"))
    ModelVersionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    ModelVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionStatus, location_name: "Status"))
    ModelVersionSummary.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionSourceType, location_name: "SourceType"))
    ModelVersionSummary.add_member(:model_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelQuality, location_name: "ModelQuality"))
    ModelVersionSummary.type = Types::ModelVersionSummary
    MonotonicValues.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticalIssueStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    MonotonicValues.add_member(:monotonicity, ::Smithy::Schema::Shapes::MemberShape.new(target: Monotonicity, location_name: "Monotonicity"))
    MonotonicValues.type = Types::MonotonicValues
    Monotonicity.add_member(:decreasing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DECREASING", traits: {"smithy.api#enumValue" => "DECREASING"}))
    Monotonicity.add_member(:increasing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCREASING", traits: {"smithy.api#enumValue" => "INCREASING"}))
    Monotonicity.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATIC", traits: {"smithy.api#enumValue" => "STATIC"}))
    MultipleOperatingModes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticalIssueStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    MultipleOperatingModes.type = Types::MultipleOperatingModes
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "ResourcePolicy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, location_name: "PolicyRevisionId"))
    PutResourcePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, location_name: "PolicyRevisionId"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetrainingSchedulerStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RetrainingSchedulerStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    RetrainingSchedulerStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    RetrainingSchedulerStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    RetrainingSchedulerSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerSummary)
    RetrainingSchedulerSummary.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    RetrainingSchedulerSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    RetrainingSchedulerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "Status"))
    RetrainingSchedulerSummary.add_member(:retraining_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RetrainingStartDate"))
    RetrainingSchedulerSummary.add_member(:retraining_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingFrequency, location_name: "RetrainingFrequency"))
    RetrainingSchedulerSummary.add_member(:lookback_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LookbackWindow, location_name: "LookbackWindow"))
    RetrainingSchedulerSummary.type = Types::RetrainingSchedulerSummary
    S3Object.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    S3Object.type = Types::S3Object
    SensorStatisticsSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SensorStatisticsSummary)
    SensorStatisticsSummary.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, location_name: "ComponentName"))
    SensorStatisticsSummary.add_member(:sensor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensorName, location_name: "SensorName"))
    SensorStatisticsSummary.add_member(:data_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DataExists", traits: {"smithy.api#default" => false}))
    SensorStatisticsSummary.add_member(:missing_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CountPercent, location_name: "MissingValues"))
    SensorStatisticsSummary.add_member(:invalid_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CountPercent, location_name: "InvalidValues"))
    SensorStatisticsSummary.add_member(:invalid_date_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountPercent, location_name: "InvalidDateEntries"))
    SensorStatisticsSummary.add_member(:duplicate_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: CountPercent, location_name: "DuplicateTimestamps"))
    SensorStatisticsSummary.add_member(:categorical_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalValues, location_name: "CategoricalValues"))
    SensorStatisticsSummary.add_member(:multiple_operating_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipleOperatingModes, location_name: "MultipleOperatingModes"))
    SensorStatisticsSummary.add_member(:large_timestamp_gaps, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeTimestampGaps, location_name: "LargeTimestampGaps"))
    SensorStatisticsSummary.add_member(:monotonic_values, ::Smithy::Schema::Shapes::MemberShape.new(target: MonotonicValues, location_name: "MonotonicValues"))
    SensorStatisticsSummary.add_member(:data_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataStartTime"))
    SensorStatisticsSummary.add_member(:data_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DataEndTime"))
    SensorStatisticsSummary.type = Types::SensorStatisticsSummary
    SensorsWithShortDateRange.add_member(:affected_sensor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "AffectedSensorCount", traits: {"smithy.api#required" => {}}))
    SensorsWithShortDateRange.type = Types::SensorsWithShortDateRange
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartDataIngestionJobRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    StartDataIngestionJobRequest.add_member(:ingestion_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionInputConfiguration, location_name: "IngestionInputConfiguration", traits: {"smithy.api#required" => {}}))
    StartDataIngestionJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    StartDataIngestionJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotenceToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartDataIngestionJobRequest.type = Types::StartDataIngestionJobRequest
    StartDataIngestionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobId, location_name: "JobId"))
    StartDataIngestionJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionJobStatus, location_name: "Status"))
    StartDataIngestionJobResponse.type = Types::StartDataIngestionJobResponse
    StartInferenceSchedulerRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    StartInferenceSchedulerRequest.type = Types::StartInferenceSchedulerRequest
    StartInferenceSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    StartInferenceSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    StartInferenceSchedulerResponse.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    StartInferenceSchedulerResponse.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    StartInferenceSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerStatus, location_name: "Status"))
    StartInferenceSchedulerResponse.type = Types::StartInferenceSchedulerResponse
    StartRetrainingSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    StartRetrainingSchedulerRequest.type = Types::StartRetrainingSchedulerRequest
    StartRetrainingSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    StartRetrainingSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    StartRetrainingSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "Status"))
    StartRetrainingSchedulerResponse.type = Types::StartRetrainingSchedulerResponse
    StatisticalIssueStatus.add_member(:potential_issue_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POTENTIAL_ISSUE_DETECTED", traits: {"smithy.api#enumValue" => "POTENTIAL_ISSUE_DETECTED"}))
    StatisticalIssueStatus.add_member(:no_issue_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_ISSUE_DETECTED", traits: {"smithy.api#enumValue" => "NO_ISSUE_DETECTED"}))
    StopInferenceSchedulerRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    StopInferenceSchedulerRequest.type = Types::StopInferenceSchedulerRequest
    StopInferenceSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    StopInferenceSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    StopInferenceSchedulerResponse.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    StopInferenceSchedulerResponse.add_member(:inference_scheduler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    StopInferenceSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerStatus, location_name: "Status"))
    StopInferenceSchedulerResponse.type = Types::StopInferenceSchedulerResponse
    StopRetrainingSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    StopRetrainingSchedulerRequest.type = Types::StopRetrainingSchedulerRequest
    StopRetrainingSchedulerResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    StopRetrainingSchedulerResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    StopRetrainingSchedulerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingSchedulerStatus, location_name: "Status"))
    StopRetrainingSchedulerResponse.type = Types::StopRetrainingSchedulerResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetSamplingRate.add_member(:pt1_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT1S", traits: {"smithy.api#enumValue" => "PT1S"}))
    TargetSamplingRate.add_member(:pt5_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT5S", traits: {"smithy.api#enumValue" => "PT5S"}))
    TargetSamplingRate.add_member(:pt10_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT10S", traits: {"smithy.api#enumValue" => "PT10S"}))
    TargetSamplingRate.add_member(:pt15_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT15S", traits: {"smithy.api#enumValue" => "PT15S"}))
    TargetSamplingRate.add_member(:pt30_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT30S", traits: {"smithy.api#enumValue" => "PT30S"}))
    TargetSamplingRate.add_member(:pt1_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT1M", traits: {"smithy.api#enumValue" => "PT1M"}))
    TargetSamplingRate.add_member(:pt5_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT5M", traits: {"smithy.api#enumValue" => "PT5M"}))
    TargetSamplingRate.add_member(:pt10_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT10M", traits: {"smithy.api#enumValue" => "PT10M"}))
    TargetSamplingRate.add_member(:pt15_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT15M", traits: {"smithy.api#enumValue" => "PT15M"}))
    TargetSamplingRate.add_member(:pt30_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT30M", traits: {"smithy.api#enumValue" => "PT30M"}))
    TargetSamplingRate.add_member(:pt1_h, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT1H", traits: {"smithy.api#enumValue" => "PT1H"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedTimestamps.add_member(:total_number_of_unsupported_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "TotalNumberOfUnsupportedTimestamps", traits: {"smithy.api#required" => {}}))
    UnsupportedTimestamps.type = Types::UnsupportedTimestamps
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateActiveModelVersionRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    UpdateActiveModelVersionRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    UpdateActiveModelVersionRequest.type = Types::UpdateActiveModelVersionRequest
    UpdateActiveModelVersionResponse.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName"))
    UpdateActiveModelVersionResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, location_name: "ModelArn"))
    UpdateActiveModelVersionResponse.add_member(:current_active_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "CurrentActiveVersion"))
    UpdateActiveModelVersionResponse.add_member(:previous_active_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "PreviousActiveVersion"))
    UpdateActiveModelVersionResponse.add_member(:current_active_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "CurrentActiveVersionArn"))
    UpdateActiveModelVersionResponse.add_member(:previous_active_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionArn, location_name: "PreviousActiveVersionArn"))
    UpdateActiveModelVersionResponse.type = Types::UpdateActiveModelVersionResponse
    UpdateInferenceSchedulerRequest.add_member(:inference_scheduler_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerName", traits: {"smithy.api#required" => {}}))
    UpdateInferenceSchedulerRequest.add_member(:data_delay_offset_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    UpdateInferenceSchedulerRequest.add_member(:data_upload_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: DataUploadFrequency, location_name: "DataUploadFrequency"))
    UpdateInferenceSchedulerRequest.add_member(:data_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceInputConfiguration, location_name: "DataInputConfiguration"))
    UpdateInferenceSchedulerRequest.add_member(:data_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceOutputConfiguration, location_name: "DataOutputConfiguration"))
    UpdateInferenceSchedulerRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    UpdateInferenceSchedulerRequest.type = Types::UpdateInferenceSchedulerRequest
    UpdateLabelGroupRequest.add_member(:label_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelGroupName, location_name: "LabelGroupName", traits: {"smithy.api#required" => {}}))
    UpdateLabelGroupRequest.add_member(:fault_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: FaultCodes, location_name: "FaultCodes"))
    UpdateLabelGroupRequest.type = Types::UpdateLabelGroupRequest
    UpdateModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:labels_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    UpdateModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    UpdateModelRequest.add_member(:model_diagnostics_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDiagnosticsOutputConfiguration, location_name: "ModelDiagnosticsOutputConfiguration"))
    UpdateModelRequest.type = Types::UpdateModelRequest
    UpdateRetrainingSchedulerRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, location_name: "ModelName", traits: {"smithy.api#required" => {}}))
    UpdateRetrainingSchedulerRequest.add_member(:retraining_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RetrainingStartDate"))
    UpdateRetrainingSchedulerRequest.add_member(:retraining_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrainingFrequency, location_name: "RetrainingFrequency"))
    UpdateRetrainingSchedulerRequest.add_member(:lookback_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LookbackWindow, location_name: "LookbackWindow"))
    UpdateRetrainingSchedulerRequest.add_member(:promote_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPromoteMode, location_name: "PromoteMode"))
    UpdateRetrainingSchedulerRequest.type = Types::UpdateRetrainingSchedulerRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSLookoutEquipmentFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lookoutequipment#AWSLookoutEquipmentFrontendService"
      service.name = "AWSLookoutEquipmentFrontendService"
      service.version = "2020-12-15"
      service.traits = {"aws.api#service" => {"sdkId" => "LookoutEquipment", "arnNamespace" => "lookoutequipment", "cloudFormationName" => "LookoutEquipment", "cloudTrailEventSource" => "lookoutequipment.amazonaws.com", "endpointPrefix" => "lookoutequipment"}, "aws.auth#sigv4" => {"name" => "lookoutequipment"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Lookout for Equipment"}
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_inference_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateInferenceScheduler"
        operation.name = "CreateInferenceScheduler"
        operation.input = CreateInferenceSchedulerRequest
        operation.output = CreateInferenceSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateLabel"
        operation.name = "CreateLabel"
        operation.input = CreateLabelRequest
        operation.output = CreateLabelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_label_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateLabelGroup"
        operation.name = "CreateLabelGroup"
        operation.input = CreateLabelGroupRequest
        operation.output = CreateLabelGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateModel"
        operation.name = "CreateModel"
        operation.input = CreateModelRequest
        operation.output = CreateModelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_retraining_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#CreateRetrainingScheduler"
        operation.name = "CreateRetrainingScheduler"
        operation.input = CreateRetrainingSchedulerRequest
        operation.output = CreateRetrainingSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_inference_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteInferenceScheduler"
        operation.name = "DeleteInferenceScheduler"
        operation.input = DeleteInferenceSchedulerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteLabel"
        operation.name = "DeleteLabel"
        operation.input = DeleteLabelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_label_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteLabelGroup"
        operation.name = "DeleteLabelGroup"
        operation.input = DeleteLabelGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = DeleteModelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_retraining_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DeleteRetrainingScheduler"
        operation.name = "DeleteRetrainingScheduler"
        operation.input = DeleteRetrainingSchedulerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_data_ingestion_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeDataIngestionJob"
        operation.name = "DescribeDataIngestionJob"
        operation.input = DescribeDataIngestionJobRequest
        operation.output = DescribeDataIngestionJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_inference_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeInferenceScheduler"
        operation.name = "DescribeInferenceScheduler"
        operation.input = DescribeInferenceSchedulerRequest
        operation.output = DescribeInferenceSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeLabel"
        operation.name = "DescribeLabel"
        operation.input = DescribeLabelRequest
        operation.output = DescribeLabelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_label_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeLabelGroup"
        operation.name = "DescribeLabelGroup"
        operation.input = DescribeLabelGroupRequest
        operation.output = DescribeLabelGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeModel"
        operation.name = "DescribeModel"
        operation.input = DescribeModelRequest
        operation.output = DescribeModelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeModelVersion"
        operation.name = "DescribeModelVersion"
        operation.input = DescribeModelVersionRequest
        operation.output = DescribeModelVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = DescribeResourcePolicyRequest
        operation.output = DescribeResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_retraining_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#DescribeRetrainingScheduler"
        operation.name = "DescribeRetrainingScheduler"
        operation.input = DescribeRetrainingSchedulerRequest
        operation.output = DescribeRetrainingSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:import_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ImportDataset"
        operation.name = "ImportDataset"
        operation.input = ImportDatasetRequest
        operation.output = ImportDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:import_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ImportModelVersion"
        operation.name = "ImportModelVersion"
        operation.input = ImportModelVersionRequest
        operation.output = ImportModelVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_data_ingestion_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListDataIngestionJobs"
        operation.name = "ListDataIngestionJobs"
        operation.input = ListDataIngestionJobsRequest
        operation.output = ListDataIngestionJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataIngestionJobs.new
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_inference_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListInferenceEvents"
        operation.name = "ListInferenceEvents"
        operation.input = ListInferenceEventsRequest
        operation.output = ListInferenceEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInferenceEvents.new
      end)
      service.add_operation(:list_inference_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListInferenceExecutions"
        operation.name = "ListInferenceExecutions"
        operation.input = ListInferenceExecutionsRequest
        operation.output = ListInferenceExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInferenceExecutions.new
      end)
      service.add_operation(:list_inference_schedulers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListInferenceSchedulers"
        operation.name = "ListInferenceSchedulers"
        operation.input = ListInferenceSchedulersRequest
        operation.output = ListInferenceSchedulersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInferenceSchedulers.new
      end)
      service.add_operation(:list_label_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListLabelGroups"
        operation.name = "ListLabelGroups"
        operation.input = ListLabelGroupsRequest
        operation.output = ListLabelGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLabelGroups.new
      end)
      service.add_operation(:list_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListLabels"
        operation.name = "ListLabels"
        operation.input = ListLabelsRequest
        operation.output = ListLabelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLabels.new
      end)
      service.add_operation(:list_model_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListModelVersions"
        operation.name = "ListModelVersions"
        operation.input = ListModelVersionsRequest
        operation.output = ListModelVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListModelVersions.new
      end)
      service.add_operation(:list_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListModels"
        operation.name = "ListModels"
        operation.input = ListModelsRequest
        operation.output = ListModelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListModels.new
      end)
      service.add_operation(:list_retraining_schedulers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListRetrainingSchedulers"
        operation.name = "ListRetrainingSchedulers"
        operation.input = ListRetrainingSchedulersRequest
        operation.output = ListRetrainingSchedulersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRetrainingSchedulers.new
      end)
      service.add_operation(:list_sensor_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListSensorStatistics"
        operation.name = "ListSensorStatistics"
        operation.input = ListSensorStatisticsRequest
        operation.output = ListSensorStatisticsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSensorStatistics.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_data_ingestion_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StartDataIngestionJob"
        operation.name = "StartDataIngestionJob"
        operation.input = StartDataIngestionJobRequest
        operation.output = StartDataIngestionJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_inference_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StartInferenceScheduler"
        operation.name = "StartInferenceScheduler"
        operation.input = StartInferenceSchedulerRequest
        operation.output = StartInferenceSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_retraining_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StartRetrainingScheduler"
        operation.name = "StartRetrainingScheduler"
        operation.input = StartRetrainingSchedulerRequest
        operation.output = StartRetrainingSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_inference_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StopInferenceScheduler"
        operation.name = "StopInferenceScheduler"
        operation.input = StopInferenceSchedulerRequest
        operation.output = StopInferenceSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_retraining_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#StopRetrainingScheduler"
        operation.name = "StopRetrainingScheduler"
        operation.input = StopRetrainingSchedulerRequest
        operation.output = StopRetrainingSchedulerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_active_model_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateActiveModelVersion"
        operation.name = "UpdateActiveModelVersion"
        operation.input = UpdateActiveModelVersionRequest
        operation.output = UpdateActiveModelVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_inference_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateInferenceScheduler"
        operation.name = "UpdateInferenceScheduler"
        operation.input = UpdateInferenceSchedulerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_label_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateLabelGroup"
        operation.name = "UpdateLabelGroup"
        operation.input = UpdateLabelGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateModel"
        operation.name = "UpdateModel"
        operation.input = UpdateModelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_retraining_scheduler, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutequipment#UpdateRetrainingScheduler"
        operation.name = "UpdateRetrainingScheduler"
        operation.input = UpdateRetrainingSchedulerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
