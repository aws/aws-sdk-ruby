# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LookoutEquipment
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceArn = Shapes::StringShape.new(name: 'AmazonResourceArn')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    ComponentTimestampDelimiter = Shapes::StringShape.new(name: 'ComponentTimestampDelimiter')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'CreateInferenceSchedulerRequest')
    CreateInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'CreateInferenceSchedulerResponse')
    CreateModelRequest = Shapes::StructureShape.new(name: 'CreateModelRequest')
    CreateModelResponse = Shapes::StructureShape.new(name: 'CreateModelResponse')
    DataDelayOffsetInMinutes = Shapes::IntegerShape.new(name: 'DataDelayOffsetInMinutes')
    DataIngestionJobSummaries = Shapes::ListShape.new(name: 'DataIngestionJobSummaries')
    DataIngestionJobSummary = Shapes::StructureShape.new(name: 'DataIngestionJobSummary')
    DataPreProcessingConfiguration = Shapes::StructureShape.new(name: 'DataPreProcessingConfiguration')
    DataUploadFrequency = Shapes::StringShape.new(name: 'DataUploadFrequency')
    DatasetArn = Shapes::StringShape.new(name: 'DatasetArn')
    DatasetIdentifier = Shapes::StringShape.new(name: 'DatasetIdentifier')
    DatasetName = Shapes::StringShape.new(name: 'DatasetName')
    DatasetSchema = Shapes::StructureShape.new(name: 'DatasetSchema')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetSummaries = Shapes::ListShape.new(name: 'DatasetSummaries')
    DatasetSummary = Shapes::StructureShape.new(name: 'DatasetSummary')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'DeleteInferenceSchedulerRequest')
    DeleteModelRequest = Shapes::StructureShape.new(name: 'DeleteModelRequest')
    DescribeDataIngestionJobRequest = Shapes::StructureShape.new(name: 'DescribeDataIngestionJobRequest')
    DescribeDataIngestionJobResponse = Shapes::StructureShape.new(name: 'DescribeDataIngestionJobResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'DescribeInferenceSchedulerRequest')
    DescribeInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'DescribeInferenceSchedulerResponse')
    DescribeModelRequest = Shapes::StructureShape.new(name: 'DescribeModelRequest')
    DescribeModelResponse = Shapes::StructureShape.new(name: 'DescribeModelResponse')
    FileNameTimestampFormat = Shapes::StringShape.new(name: 'FileNameTimestampFormat')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdempotenceToken = Shapes::StringShape.new(name: 'IdempotenceToken')
    InferenceExecutionStatus = Shapes::StringShape.new(name: 'InferenceExecutionStatus')
    InferenceExecutionSummaries = Shapes::ListShape.new(name: 'InferenceExecutionSummaries')
    InferenceExecutionSummary = Shapes::StructureShape.new(name: 'InferenceExecutionSummary')
    InferenceInputConfiguration = Shapes::StructureShape.new(name: 'InferenceInputConfiguration')
    InferenceInputNameConfiguration = Shapes::StructureShape.new(name: 'InferenceInputNameConfiguration')
    InferenceOutputConfiguration = Shapes::StructureShape.new(name: 'InferenceOutputConfiguration')
    InferenceS3InputConfiguration = Shapes::StructureShape.new(name: 'InferenceS3InputConfiguration')
    InferenceS3OutputConfiguration = Shapes::StructureShape.new(name: 'InferenceS3OutputConfiguration')
    InferenceSchedulerArn = Shapes::StringShape.new(name: 'InferenceSchedulerArn')
    InferenceSchedulerIdentifier = Shapes::StringShape.new(name: 'InferenceSchedulerIdentifier')
    InferenceSchedulerName = Shapes::StringShape.new(name: 'InferenceSchedulerName')
    InferenceSchedulerStatus = Shapes::StringShape.new(name: 'InferenceSchedulerStatus')
    InferenceSchedulerSummaries = Shapes::ListShape.new(name: 'InferenceSchedulerSummaries')
    InferenceSchedulerSummary = Shapes::StructureShape.new(name: 'InferenceSchedulerSummary')
    IngestionInputConfiguration = Shapes::StructureShape.new(name: 'IngestionInputConfiguration')
    IngestionJobId = Shapes::StringShape.new(name: 'IngestionJobId')
    IngestionJobStatus = Shapes::StringShape.new(name: 'IngestionJobStatus')
    IngestionS3InputConfiguration = Shapes::StructureShape.new(name: 'IngestionS3InputConfiguration')
    InlineDataSchema = Shapes::StringShape.new(name: 'InlineDataSchema')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LabelsInputConfiguration = Shapes::StructureShape.new(name: 'LabelsInputConfiguration')
    LabelsS3InputConfiguration = Shapes::StructureShape.new(name: 'LabelsS3InputConfiguration')
    ListDataIngestionJobsRequest = Shapes::StructureShape.new(name: 'ListDataIngestionJobsRequest')
    ListDataIngestionJobsResponse = Shapes::StructureShape.new(name: 'ListDataIngestionJobsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListInferenceExecutionsRequest = Shapes::StructureShape.new(name: 'ListInferenceExecutionsRequest')
    ListInferenceExecutionsResponse = Shapes::StructureShape.new(name: 'ListInferenceExecutionsResponse')
    ListInferenceSchedulersRequest = Shapes::StructureShape.new(name: 'ListInferenceSchedulersRequest')
    ListInferenceSchedulersResponse = Shapes::StructureShape.new(name: 'ListInferenceSchedulersResponse')
    ListModelsRequest = Shapes::StructureShape.new(name: 'ListModelsRequest')
    ListModelsResponse = Shapes::StructureShape.new(name: 'ListModelsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelMetrics = Shapes::StringShape.new(name: 'ModelMetrics')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    ModelSummaries = Shapes::ListShape.new(name: 'ModelSummaries')
    ModelSummary = Shapes::StructureShape.new(name: 'ModelSummary')
    NameOrArn = Shapes::StringShape.new(name: 'NameOrArn')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OffCondition = Shapes::StringShape.new(name: 'OffCondition')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartDataIngestionJobRequest = Shapes::StructureShape.new(name: 'StartDataIngestionJobRequest')
    StartDataIngestionJobResponse = Shapes::StructureShape.new(name: 'StartDataIngestionJobResponse')
    StartInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'StartInferenceSchedulerRequest')
    StartInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'StartInferenceSchedulerResponse')
    StopInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'StopInferenceSchedulerRequest')
    StopInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'StopInferenceSchedulerResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetSamplingRate = Shapes::StringShape.new(name: 'TargetSamplingRate')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeZoneOffset = Shapes::StringShape.new(name: 'TimeZoneOffset')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'UpdateInferenceSchedulerRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "DatasetName"))
    CreateDatasetRequest.add_member(:dataset_schema, Shapes::ShapeRef.new(shape: DatasetSchema, required: true, location_name: "DatasetSchema"))
    CreateDatasetRequest.add_member(:server_side_kms_key_id, Shapes::ShapeRef.new(shape: NameOrArn, location_name: "ServerSideKmsKeyId"))
    CreateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotenceToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    CreateDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateInferenceSchedulerRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateInferenceSchedulerRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, required: true, location_name: "InferenceSchedulerName"))
    CreateInferenceSchedulerRequest.add_member(:data_delay_offset_in_minutes, Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    CreateInferenceSchedulerRequest.add_member(:data_upload_frequency, Shapes::ShapeRef.new(shape: DataUploadFrequency, required: true, location_name: "DataUploadFrequency"))
    CreateInferenceSchedulerRequest.add_member(:data_input_configuration, Shapes::ShapeRef.new(shape: InferenceInputConfiguration, required: true, location_name: "DataInputConfiguration"))
    CreateInferenceSchedulerRequest.add_member(:data_output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, required: true, location_name: "DataOutputConfiguration"))
    CreateInferenceSchedulerRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    CreateInferenceSchedulerRequest.add_member(:server_side_kms_key_id, Shapes::ShapeRef.new(shape: NameOrArn, location_name: "ServerSideKmsKeyId"))
    CreateInferenceSchedulerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotenceToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateInferenceSchedulerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateInferenceSchedulerRequest.struct_class = Types::CreateInferenceSchedulerRequest

    CreateInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    CreateInferenceSchedulerResponse.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    CreateInferenceSchedulerResponse.add_member(:status, Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: "Status"))
    CreateInferenceSchedulerResponse.struct_class = Types::CreateInferenceSchedulerResponse

    CreateModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateModelRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "DatasetName"))
    CreateModelRequest.add_member(:dataset_schema, Shapes::ShapeRef.new(shape: DatasetSchema, location_name: "DatasetSchema"))
    CreateModelRequest.add_member(:labels_input_configuration, Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    CreateModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotenceToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateModelRequest.add_member(:training_data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingDataStartTime"))
    CreateModelRequest.add_member(:training_data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingDataEndTime"))
    CreateModelRequest.add_member(:evaluation_data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EvaluationDataStartTime"))
    CreateModelRequest.add_member(:evaluation_data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EvaluationDataEndTime"))
    CreateModelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    CreateModelRequest.add_member(:data_pre_processing_configuration, Shapes::ShapeRef.new(shape: DataPreProcessingConfiguration, location_name: "DataPreProcessingConfiguration"))
    CreateModelRequest.add_member(:server_side_kms_key_id, Shapes::ShapeRef.new(shape: NameOrArn, location_name: "ServerSideKmsKeyId"))
    CreateModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelRequest.add_member(:off_condition, Shapes::ShapeRef.new(shape: OffCondition, location_name: "OffCondition"))
    CreateModelRequest.struct_class = Types::CreateModelRequest

    CreateModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    CreateModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    CreateModelResponse.struct_class = Types::CreateModelResponse

    DataIngestionJobSummaries.member = Shapes::ShapeRef.new(shape: DataIngestionJobSummary)

    DataIngestionJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: IngestionJobId, location_name: "JobId"))
    DataIngestionJobSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DataIngestionJobSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DataIngestionJobSummary.add_member(:ingestion_input_configuration, Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: "IngestionInputConfiguration"))
    DataIngestionJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: "Status"))
    DataIngestionJobSummary.struct_class = Types::DataIngestionJobSummary

    DataPreProcessingConfiguration.add_member(:target_sampling_rate, Shapes::ShapeRef.new(shape: TargetSamplingRate, location_name: "TargetSamplingRate"))
    DataPreProcessingConfiguration.struct_class = Types::DataPreProcessingConfiguration

    DatasetSchema.add_member(:inline_data_schema, Shapes::ShapeRef.new(shape: InlineDataSchema, location_name: "InlineDataSchema", metadata: {"jsonvalue"=>true}))
    DatasetSchema.struct_class = Types::DatasetSchema

    DatasetSummaries.member = Shapes::ShapeRef.new(shape: DatasetSummary)

    DatasetSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DatasetSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DatasetSummary.struct_class = Types::DatasetSummary

    DeleteDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "DatasetName"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteInferenceSchedulerRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    DeleteInferenceSchedulerRequest.struct_class = Types::DeleteInferenceSchedulerRequest

    DeleteModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DeleteModelRequest.struct_class = Types::DeleteModelRequest

    DescribeDataIngestionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: IngestionJobId, required: true, location_name: "JobId"))
    DescribeDataIngestionJobRequest.struct_class = Types::DescribeDataIngestionJobRequest

    DescribeDataIngestionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: IngestionJobId, location_name: "JobId"))
    DescribeDataIngestionJobResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DescribeDataIngestionJobResponse.add_member(:ingestion_input_configuration, Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: "IngestionInputConfiguration"))
    DescribeDataIngestionJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    DescribeDataIngestionJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeDataIngestionJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: "Status"))
    DescribeDataIngestionJobResponse.add_member(:failed_reason, Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "FailedReason"))
    DescribeDataIngestionJobResponse.struct_class = Types::DescribeDataIngestionJobResponse

    DescribeDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "DatasetName"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DescribeDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DescribeDatasetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeDatasetResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    DescribeDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DescribeDatasetResponse.add_member(:schema, Shapes::ShapeRef.new(shape: InlineDataSchema, location_name: "Schema", metadata: {"jsonvalue"=>true}))
    DescribeDatasetResponse.add_member(:server_side_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeDatasetResponse.add_member(:ingestion_input_configuration, Shapes::ShapeRef.new(shape: IngestionInputConfiguration, location_name: "IngestionInputConfiguration"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeInferenceSchedulerRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    DescribeInferenceSchedulerRequest.struct_class = Types::DescribeInferenceSchedulerRequest

    DescribeInferenceSchedulerResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    DescribeInferenceSchedulerResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    DescribeInferenceSchedulerResponse.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    DescribeInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    DescribeInferenceSchedulerResponse.add_member(:status, Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: "Status"))
    DescribeInferenceSchedulerResponse.add_member(:data_delay_offset_in_minutes, Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    DescribeInferenceSchedulerResponse.add_member(:data_upload_frequency, Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: "DataUploadFrequency"))
    DescribeInferenceSchedulerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeInferenceSchedulerResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeInferenceSchedulerResponse.add_member(:data_input_configuration, Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: "DataInputConfiguration"))
    DescribeInferenceSchedulerResponse.add_member(:data_output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: "DataOutputConfiguration"))
    DescribeInferenceSchedulerResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    DescribeInferenceSchedulerResponse.add_member(:server_side_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeInferenceSchedulerResponse.struct_class = Types::DescribeInferenceSchedulerResponse

    DescribeModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelRequest.struct_class = Types::DescribeModelRequest

    DescribeModelResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    DescribeModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    DescribeModelResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DescribeModelResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DescribeModelResponse.add_member(:schema, Shapes::ShapeRef.new(shape: InlineDataSchema, location_name: "Schema", metadata: {"jsonvalue"=>true}))
    DescribeModelResponse.add_member(:labels_input_configuration, Shapes::ShapeRef.new(shape: LabelsInputConfiguration, location_name: "LabelsInputConfiguration"))
    DescribeModelResponse.add_member(:training_data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingDataStartTime"))
    DescribeModelResponse.add_member(:training_data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingDataEndTime"))
    DescribeModelResponse.add_member(:evaluation_data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EvaluationDataStartTime"))
    DescribeModelResponse.add_member(:evaluation_data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EvaluationDataEndTime"))
    DescribeModelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    DescribeModelResponse.add_member(:data_pre_processing_configuration, Shapes::ShapeRef.new(shape: DataPreProcessingConfiguration, location_name: "DataPreProcessingConfiguration"))
    DescribeModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    DescribeModelResponse.add_member(:training_execution_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingExecutionStartTime"))
    DescribeModelResponse.add_member(:training_execution_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingExecutionEndTime"))
    DescribeModelResponse.add_member(:failed_reason, Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "FailedReason"))
    DescribeModelResponse.add_member(:model_metrics, Shapes::ShapeRef.new(shape: ModelMetrics, location_name: "ModelMetrics", metadata: {"jsonvalue"=>true}))
    DescribeModelResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DescribeModelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeModelResponse.add_member(:server_side_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "ServerSideKmsKeyId"))
    DescribeModelResponse.add_member(:off_condition, Shapes::ShapeRef.new(shape: OffCondition, location_name: "OffCondition"))
    DescribeModelResponse.struct_class = Types::DescribeModelResponse

    InferenceExecutionSummaries.member = Shapes::ShapeRef.new(shape: InferenceExecutionSummary)

    InferenceExecutionSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    InferenceExecutionSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    InferenceExecutionSummary.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    InferenceExecutionSummary.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    InferenceExecutionSummary.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledStartTime"))
    InferenceExecutionSummary.add_member(:data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataStartTime"))
    InferenceExecutionSummary.add_member(:data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataEndTime"))
    InferenceExecutionSummary.add_member(:data_input_configuration, Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: "DataInputConfiguration"))
    InferenceExecutionSummary.add_member(:data_output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: "DataOutputConfiguration"))
    InferenceExecutionSummary.add_member(:customer_result_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "CustomerResultObject"))
    InferenceExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: InferenceExecutionStatus, location_name: "Status"))
    InferenceExecutionSummary.add_member(:failed_reason, Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "FailedReason"))
    InferenceExecutionSummary.struct_class = Types::InferenceExecutionSummary

    InferenceInputConfiguration.add_member(:s3_input_configuration, Shapes::ShapeRef.new(shape: InferenceS3InputConfiguration, location_name: "S3InputConfiguration"))
    InferenceInputConfiguration.add_member(:input_time_zone_offset, Shapes::ShapeRef.new(shape: TimeZoneOffset, location_name: "InputTimeZoneOffset"))
    InferenceInputConfiguration.add_member(:inference_input_name_configuration, Shapes::ShapeRef.new(shape: InferenceInputNameConfiguration, location_name: "InferenceInputNameConfiguration"))
    InferenceInputConfiguration.struct_class = Types::InferenceInputConfiguration

    InferenceInputNameConfiguration.add_member(:timestamp_format, Shapes::ShapeRef.new(shape: FileNameTimestampFormat, location_name: "TimestampFormat"))
    InferenceInputNameConfiguration.add_member(:component_timestamp_delimiter, Shapes::ShapeRef.new(shape: ComponentTimestampDelimiter, location_name: "ComponentTimestampDelimiter"))
    InferenceInputNameConfiguration.struct_class = Types::InferenceInputNameConfiguration

    InferenceOutputConfiguration.add_member(:s3_output_configuration, Shapes::ShapeRef.new(shape: InferenceS3OutputConfiguration, required: true, location_name: "S3OutputConfiguration"))
    InferenceOutputConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NameOrArn, location_name: "KmsKeyId"))
    InferenceOutputConfiguration.struct_class = Types::InferenceOutputConfiguration

    InferenceS3InputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    InferenceS3InputConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Prefix"))
    InferenceS3InputConfiguration.struct_class = Types::InferenceS3InputConfiguration

    InferenceS3OutputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    InferenceS3OutputConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Prefix"))
    InferenceS3OutputConfiguration.struct_class = Types::InferenceS3OutputConfiguration

    InferenceSchedulerSummaries.member = Shapes::ShapeRef.new(shape: InferenceSchedulerSummary)

    InferenceSchedulerSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    InferenceSchedulerSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    InferenceSchedulerSummary.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    InferenceSchedulerSummary.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    InferenceSchedulerSummary.add_member(:status, Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: "Status"))
    InferenceSchedulerSummary.add_member(:data_delay_offset_in_minutes, Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    InferenceSchedulerSummary.add_member(:data_upload_frequency, Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: "DataUploadFrequency"))
    InferenceSchedulerSummary.struct_class = Types::InferenceSchedulerSummary

    IngestionInputConfiguration.add_member(:s3_input_configuration, Shapes::ShapeRef.new(shape: IngestionS3InputConfiguration, required: true, location_name: "S3InputConfiguration"))
    IngestionInputConfiguration.struct_class = Types::IngestionInputConfiguration

    IngestionS3InputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    IngestionS3InputConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Prefix"))
    IngestionS3InputConfiguration.struct_class = Types::IngestionS3InputConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    LabelsInputConfiguration.add_member(:s3_input_configuration, Shapes::ShapeRef.new(shape: LabelsS3InputConfiguration, required: true, location_name: "S3InputConfiguration"))
    LabelsInputConfiguration.struct_class = Types::LabelsInputConfiguration

    LabelsS3InputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    LabelsS3InputConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Prefix"))
    LabelsS3InputConfiguration.struct_class = Types::LabelsS3InputConfiguration

    ListDataIngestionJobsRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    ListDataIngestionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataIngestionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDataIngestionJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: "Status"))
    ListDataIngestionJobsRequest.struct_class = Types::ListDataIngestionJobsRequest

    ListDataIngestionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataIngestionJobsResponse.add_member(:data_ingestion_job_summaries, Shapes::ShapeRef.new(shape: DataIngestionJobSummaries, location_name: "DataIngestionJobSummaries"))
    ListDataIngestionJobsResponse.struct_class = Types::ListDataIngestionJobsResponse

    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDatasetsRequest.add_member(:dataset_name_begins_with, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetNameBeginsWith"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetsResponse.add_member(:dataset_summaries, Shapes::ShapeRef.new(shape: DatasetSummaries, location_name: "DatasetSummaries"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListInferenceExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInferenceExecutionsRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    ListInferenceExecutionsRequest.add_member(:data_start_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataStartTimeAfter"))
    ListInferenceExecutionsRequest.add_member(:data_end_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataEndTimeBefore"))
    ListInferenceExecutionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: InferenceExecutionStatus, location_name: "Status"))
    ListInferenceExecutionsRequest.struct_class = Types::ListInferenceExecutionsRequest

    ListInferenceExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceExecutionsResponse.add_member(:inference_execution_summaries, Shapes::ShapeRef.new(shape: InferenceExecutionSummaries, location_name: "InferenceExecutionSummaries"))
    ListInferenceExecutionsResponse.struct_class = Types::ListInferenceExecutionsResponse

    ListInferenceSchedulersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceSchedulersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInferenceSchedulersRequest.add_member(:inference_scheduler_name_begins_with, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, location_name: "InferenceSchedulerNameBeginsWith"))
    ListInferenceSchedulersRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    ListInferenceSchedulersRequest.struct_class = Types::ListInferenceSchedulersRequest

    ListInferenceSchedulersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceSchedulersResponse.add_member(:inference_scheduler_summaries, Shapes::ShapeRef.new(shape: InferenceSchedulerSummaries, location_name: "InferenceSchedulerSummaries"))
    ListInferenceSchedulersResponse.struct_class = Types::ListInferenceSchedulersResponse

    ListModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    ListModelsRequest.add_member(:model_name_begins_with, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelNameBeginsWith"))
    ListModelsRequest.add_member(:dataset_name_begins_with, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetNameBeginsWith"))
    ListModelsRequest.struct_class = Types::ListModelsRequest

    ListModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: ModelSummaries, location_name: "ModelSummaries"))
    ListModelsResponse.struct_class = Types::ListModelsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ModelSummaries.member = Shapes::ShapeRef.new(shape: ModelSummary)

    ModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    ModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    ModelSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    ModelSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    ModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    ModelSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ModelSummary.struct_class = Types::ModelSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "Key"))
    S3Object.struct_class = Types::S3Object

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartDataIngestionJobRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "DatasetName"))
    StartDataIngestionJobRequest.add_member(:ingestion_input_configuration, Shapes::ShapeRef.new(shape: IngestionInputConfiguration, required: true, location_name: "IngestionInputConfiguration"))
    StartDataIngestionJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    StartDataIngestionJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotenceToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartDataIngestionJobRequest.struct_class = Types::StartDataIngestionJobRequest

    StartDataIngestionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: IngestionJobId, location_name: "JobId"))
    StartDataIngestionJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: "Status"))
    StartDataIngestionJobResponse.struct_class = Types::StartDataIngestionJobResponse

    StartInferenceSchedulerRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    StartInferenceSchedulerRequest.struct_class = Types::StartInferenceSchedulerRequest

    StartInferenceSchedulerResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    StartInferenceSchedulerResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    StartInferenceSchedulerResponse.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    StartInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    StartInferenceSchedulerResponse.add_member(:status, Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: "Status"))
    StartInferenceSchedulerResponse.struct_class = Types::StartInferenceSchedulerResponse

    StopInferenceSchedulerRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    StopInferenceSchedulerRequest.struct_class = Types::StopInferenceSchedulerRequest

    StopInferenceSchedulerResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    StopInferenceSchedulerResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    StopInferenceSchedulerResponse.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    StopInferenceSchedulerResponse.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    StopInferenceSchedulerResponse.add_member(:status, Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: "Status"))
    StopInferenceSchedulerResponse.struct_class = Types::StopInferenceSchedulerResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateInferenceSchedulerRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    UpdateInferenceSchedulerRequest.add_member(:data_delay_offset_in_minutes, Shapes::ShapeRef.new(shape: DataDelayOffsetInMinutes, location_name: "DataDelayOffsetInMinutes"))
    UpdateInferenceSchedulerRequest.add_member(:data_upload_frequency, Shapes::ShapeRef.new(shape: DataUploadFrequency, location_name: "DataUploadFrequency"))
    UpdateInferenceSchedulerRequest.add_member(:data_input_configuration, Shapes::ShapeRef.new(shape: InferenceInputConfiguration, location_name: "DataInputConfiguration"))
    UpdateInferenceSchedulerRequest.add_member(:data_output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: "DataOutputConfiguration"))
    UpdateInferenceSchedulerRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    UpdateInferenceSchedulerRequest.struct_class = Types::UpdateInferenceSchedulerRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-12-15"

      api.metadata = {
        "apiVersion" => "2020-12-15",
        "endpointPrefix" => "lookoutequipment",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "LookoutEquipment",
        "serviceFullName" => "Amazon Lookout for Equipment",
        "serviceId" => "LookoutEquipment",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSLookoutEquipmentFrontendService",
        "uid" => "lookoutequipment-2020-12-15",
      }

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_inference_scheduler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInferenceScheduler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInferenceSchedulerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInferenceSchedulerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_inference_scheduler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInferenceScheduler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInferenceSchedulerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_data_ingestion_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataIngestionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataIngestionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataIngestionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_inference_scheduler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInferenceScheduler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInferenceSchedulerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInferenceSchedulerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_data_ingestion_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataIngestionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataIngestionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataIngestionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inference_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInferenceExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInferenceExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInferenceExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inference_schedulers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInferenceSchedulers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInferenceSchedulersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInferenceSchedulersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_data_ingestion_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataIngestionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDataIngestionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataIngestionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_inference_scheduler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInferenceScheduler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartInferenceSchedulerRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInferenceSchedulerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_inference_scheduler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopInferenceScheduler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopInferenceSchedulerRequest)
        o.output = Shapes::ShapeRef.new(shape: StopInferenceSchedulerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_inference_scheduler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInferenceScheduler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInferenceSchedulerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
