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
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    CategoricalValues = Shapes::StructureShape.new(name: 'CategoricalValues')
    Comments = Shapes::StringShape.new(name: 'Comments')
    ComponentName = Shapes::StringShape.new(name: 'ComponentName')
    ComponentTimestampDelimiter = Shapes::StringShape.new(name: 'ComponentTimestampDelimiter')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CountPercent = Shapes::StructureShape.new(name: 'CountPercent')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'CreateInferenceSchedulerRequest')
    CreateInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'CreateInferenceSchedulerResponse')
    CreateLabelGroupRequest = Shapes::StructureShape.new(name: 'CreateLabelGroupRequest')
    CreateLabelGroupResponse = Shapes::StructureShape.new(name: 'CreateLabelGroupResponse')
    CreateLabelRequest = Shapes::StructureShape.new(name: 'CreateLabelRequest')
    CreateLabelResponse = Shapes::StructureShape.new(name: 'CreateLabelResponse')
    CreateModelRequest = Shapes::StructureShape.new(name: 'CreateModelRequest')
    CreateModelResponse = Shapes::StructureShape.new(name: 'CreateModelResponse')
    DataDelayOffsetInMinutes = Shapes::IntegerShape.new(name: 'DataDelayOffsetInMinutes')
    DataIngestionJobSummaries = Shapes::ListShape.new(name: 'DataIngestionJobSummaries')
    DataIngestionJobSummary = Shapes::StructureShape.new(name: 'DataIngestionJobSummary')
    DataPreProcessingConfiguration = Shapes::StructureShape.new(name: 'DataPreProcessingConfiguration')
    DataQualitySummary = Shapes::StructureShape.new(name: 'DataQualitySummary')
    DataSizeInBytes = Shapes::IntegerShape.new(name: 'DataSizeInBytes')
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
    DeleteLabelGroupRequest = Shapes::StructureShape.new(name: 'DeleteLabelGroupRequest')
    DeleteLabelRequest = Shapes::StructureShape.new(name: 'DeleteLabelRequest')
    DeleteModelRequest = Shapes::StructureShape.new(name: 'DeleteModelRequest')
    DescribeDataIngestionJobRequest = Shapes::StructureShape.new(name: 'DescribeDataIngestionJobRequest')
    DescribeDataIngestionJobResponse = Shapes::StructureShape.new(name: 'DescribeDataIngestionJobResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'DescribeInferenceSchedulerRequest')
    DescribeInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'DescribeInferenceSchedulerResponse')
    DescribeLabelGroupRequest = Shapes::StructureShape.new(name: 'DescribeLabelGroupRequest')
    DescribeLabelGroupResponse = Shapes::StructureShape.new(name: 'DescribeLabelGroupResponse')
    DescribeLabelRequest = Shapes::StructureShape.new(name: 'DescribeLabelRequest')
    DescribeLabelResponse = Shapes::StructureShape.new(name: 'DescribeLabelResponse')
    DescribeModelRequest = Shapes::StructureShape.new(name: 'DescribeModelRequest')
    DescribeModelResponse = Shapes::StructureShape.new(name: 'DescribeModelResponse')
    DuplicateTimestamps = Shapes::StructureShape.new(name: 'DuplicateTimestamps')
    Equipment = Shapes::StringShape.new(name: 'Equipment')
    EventDurationInSeconds = Shapes::IntegerShape.new(name: 'EventDurationInSeconds')
    FaultCode = Shapes::StringShape.new(name: 'FaultCode')
    FaultCodes = Shapes::ListShape.new(name: 'FaultCodes')
    FileNameTimestampFormat = Shapes::StringShape.new(name: 'FileNameTimestampFormat')
    Float = Shapes::FloatShape.new(name: 'Float')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdempotenceToken = Shapes::StringShape.new(name: 'IdempotenceToken')
    InferenceEventSummaries = Shapes::ListShape.new(name: 'InferenceEventSummaries')
    InferenceEventSummary = Shapes::StructureShape.new(name: 'InferenceEventSummary')
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
    IngestedFilesSummary = Shapes::StructureShape.new(name: 'IngestedFilesSummary')
    IngestionInputConfiguration = Shapes::StructureShape.new(name: 'IngestionInputConfiguration')
    IngestionJobId = Shapes::StringShape.new(name: 'IngestionJobId')
    IngestionJobStatus = Shapes::StringShape.new(name: 'IngestionJobStatus')
    IngestionS3InputConfiguration = Shapes::StructureShape.new(name: 'IngestionS3InputConfiguration')
    InlineDataSchema = Shapes::StringShape.new(name: 'InlineDataSchema')
    InsufficientSensorData = Shapes::StructureShape.new(name: 'InsufficientSensorData')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidSensorData = Shapes::StructureShape.new(name: 'InvalidSensorData')
    KeyPattern = Shapes::StringShape.new(name: 'KeyPattern')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LabelGroupArn = Shapes::StringShape.new(name: 'LabelGroupArn')
    LabelGroupName = Shapes::StringShape.new(name: 'LabelGroupName')
    LabelGroupSummaries = Shapes::ListShape.new(name: 'LabelGroupSummaries')
    LabelGroupSummary = Shapes::StructureShape.new(name: 'LabelGroupSummary')
    LabelId = Shapes::StringShape.new(name: 'LabelId')
    LabelRating = Shapes::StringShape.new(name: 'LabelRating')
    LabelSummaries = Shapes::ListShape.new(name: 'LabelSummaries')
    LabelSummary = Shapes::StructureShape.new(name: 'LabelSummary')
    LabelsInputConfiguration = Shapes::StructureShape.new(name: 'LabelsInputConfiguration')
    LabelsS3InputConfiguration = Shapes::StructureShape.new(name: 'LabelsS3InputConfiguration')
    LargeTimestampGaps = Shapes::StructureShape.new(name: 'LargeTimestampGaps')
    LatestInferenceResult = Shapes::StringShape.new(name: 'LatestInferenceResult')
    ListDataIngestionJobsRequest = Shapes::StructureShape.new(name: 'ListDataIngestionJobsRequest')
    ListDataIngestionJobsResponse = Shapes::StructureShape.new(name: 'ListDataIngestionJobsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListInferenceEventsRequest = Shapes::StructureShape.new(name: 'ListInferenceEventsRequest')
    ListInferenceEventsResponse = Shapes::StructureShape.new(name: 'ListInferenceEventsResponse')
    ListInferenceExecutionsRequest = Shapes::StructureShape.new(name: 'ListInferenceExecutionsRequest')
    ListInferenceExecutionsResponse = Shapes::StructureShape.new(name: 'ListInferenceExecutionsResponse')
    ListInferenceSchedulersRequest = Shapes::StructureShape.new(name: 'ListInferenceSchedulersRequest')
    ListInferenceSchedulersResponse = Shapes::StructureShape.new(name: 'ListInferenceSchedulersResponse')
    ListLabelGroupsRequest = Shapes::StructureShape.new(name: 'ListLabelGroupsRequest')
    ListLabelGroupsResponse = Shapes::StructureShape.new(name: 'ListLabelGroupsResponse')
    ListLabelsRequest = Shapes::StructureShape.new(name: 'ListLabelsRequest')
    ListLabelsResponse = Shapes::StructureShape.new(name: 'ListLabelsResponse')
    ListModelsRequest = Shapes::StructureShape.new(name: 'ListModelsRequest')
    ListModelsResponse = Shapes::StructureShape.new(name: 'ListModelsResponse')
    ListOfDiscardedFiles = Shapes::ListShape.new(name: 'ListOfDiscardedFiles')
    ListSensorStatisticsRequest = Shapes::StructureShape.new(name: 'ListSensorStatisticsRequest')
    ListSensorStatisticsResponse = Shapes::StructureShape.new(name: 'ListSensorStatisticsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MissingCompleteSensorData = Shapes::StructureShape.new(name: 'MissingCompleteSensorData')
    MissingSensorData = Shapes::StructureShape.new(name: 'MissingSensorData')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelMetrics = Shapes::StringShape.new(name: 'ModelMetrics')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    ModelSummaries = Shapes::ListShape.new(name: 'ModelSummaries')
    ModelSummary = Shapes::StructureShape.new(name: 'ModelSummary')
    MonotonicValues = Shapes::StructureShape.new(name: 'MonotonicValues')
    Monotonicity = Shapes::StringShape.new(name: 'Monotonicity')
    MultipleOperatingModes = Shapes::StructureShape.new(name: 'MultipleOperatingModes')
    NameOrArn = Shapes::StringShape.new(name: 'NameOrArn')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OffCondition = Shapes::StringShape.new(name: 'OffCondition')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    SensorName = Shapes::StringShape.new(name: 'SensorName')
    SensorStatisticsSummaries = Shapes::ListShape.new(name: 'SensorStatisticsSummaries')
    SensorStatisticsSummary = Shapes::StructureShape.new(name: 'SensorStatisticsSummary')
    SensorsWithShortDateRange = Shapes::StructureShape.new(name: 'SensorsWithShortDateRange')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartDataIngestionJobRequest = Shapes::StructureShape.new(name: 'StartDataIngestionJobRequest')
    StartDataIngestionJobResponse = Shapes::StructureShape.new(name: 'StartDataIngestionJobResponse')
    StartInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'StartInferenceSchedulerRequest')
    StartInferenceSchedulerResponse = Shapes::StructureShape.new(name: 'StartInferenceSchedulerResponse')
    StatisticalIssueStatus = Shapes::StringShape.new(name: 'StatisticalIssueStatus')
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
    UnsupportedTimestamps = Shapes::StructureShape.new(name: 'UnsupportedTimestamps')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInferenceSchedulerRequest = Shapes::StructureShape.new(name: 'UpdateInferenceSchedulerRequest')
    UpdateLabelGroupRequest = Shapes::StructureShape.new(name: 'UpdateLabelGroupRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CategoricalValues.add_member(:status, Shapes::ShapeRef.new(shape: StatisticalIssueStatus, required: true, location_name: "Status"))
    CategoricalValues.add_member(:number_of_category, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfCategory"))
    CategoricalValues.struct_class = Types::CategoricalValues

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CountPercent.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Count"))
    CountPercent.add_member(:percentage, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "Percentage"))
    CountPercent.struct_class = Types::CountPercent

    CreateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "DatasetName"))
    CreateDatasetRequest.add_member(:dataset_schema, Shapes::ShapeRef.new(shape: DatasetSchema, location_name: "DatasetSchema"))
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

    CreateLabelGroupRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    CreateLabelGroupRequest.add_member(:fault_codes, Shapes::ShapeRef.new(shape: FaultCodes, location_name: "FaultCodes"))
    CreateLabelGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotenceToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateLabelGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLabelGroupRequest.struct_class = Types::CreateLabelGroupRequest

    CreateLabelGroupResponse.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupName"))
    CreateLabelGroupResponse.add_member(:label_group_arn, Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: "LabelGroupArn"))
    CreateLabelGroupResponse.struct_class = Types::CreateLabelGroupResponse

    CreateLabelRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    CreateLabelRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    CreateLabelRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    CreateLabelRequest.add_member(:rating, Shapes::ShapeRef.new(shape: LabelRating, required: true, location_name: "Rating"))
    CreateLabelRequest.add_member(:fault_code, Shapes::ShapeRef.new(shape: FaultCode, location_name: "FaultCode"))
    CreateLabelRequest.add_member(:notes, Shapes::ShapeRef.new(shape: Comments, location_name: "Notes"))
    CreateLabelRequest.add_member(:equipment, Shapes::ShapeRef.new(shape: Equipment, location_name: "Equipment"))
    CreateLabelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotenceToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateLabelRequest.struct_class = Types::CreateLabelRequest

    CreateLabelResponse.add_member(:label_id, Shapes::ShapeRef.new(shape: LabelId, location_name: "LabelId"))
    CreateLabelResponse.struct_class = Types::CreateLabelResponse

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

    DataQualitySummary.add_member(:insufficient_sensor_data, Shapes::ShapeRef.new(shape: InsufficientSensorData, required: true, location_name: "InsufficientSensorData"))
    DataQualitySummary.add_member(:missing_sensor_data, Shapes::ShapeRef.new(shape: MissingSensorData, required: true, location_name: "MissingSensorData"))
    DataQualitySummary.add_member(:invalid_sensor_data, Shapes::ShapeRef.new(shape: InvalidSensorData, required: true, location_name: "InvalidSensorData"))
    DataQualitySummary.add_member(:unsupported_timestamps, Shapes::ShapeRef.new(shape: UnsupportedTimestamps, required: true, location_name: "UnsupportedTimestamps"))
    DataQualitySummary.add_member(:duplicate_timestamps, Shapes::ShapeRef.new(shape: DuplicateTimestamps, required: true, location_name: "DuplicateTimestamps"))
    DataQualitySummary.struct_class = Types::DataQualitySummary

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

    DeleteLabelGroupRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    DeleteLabelGroupRequest.struct_class = Types::DeleteLabelGroupRequest

    DeleteLabelRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    DeleteLabelRequest.add_member(:label_id, Shapes::ShapeRef.new(shape: LabelId, required: true, location_name: "LabelId"))
    DeleteLabelRequest.struct_class = Types::DeleteLabelRequest

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
    DescribeDataIngestionJobResponse.add_member(:data_quality_summary, Shapes::ShapeRef.new(shape: DataQualitySummary, location_name: "DataQualitySummary"))
    DescribeDataIngestionJobResponse.add_member(:ingested_files_summary, Shapes::ShapeRef.new(shape: IngestedFilesSummary, location_name: "IngestedFilesSummary"))
    DescribeDataIngestionJobResponse.add_member(:status_detail, Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "StatusDetail"))
    DescribeDataIngestionJobResponse.add_member(:ingested_data_size, Shapes::ShapeRef.new(shape: DataSizeInBytes, location_name: "IngestedDataSize"))
    DescribeDataIngestionJobResponse.add_member(:data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataStartTime"))
    DescribeDataIngestionJobResponse.add_member(:data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataEndTime"))
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
    DescribeDatasetResponse.add_member(:data_quality_summary, Shapes::ShapeRef.new(shape: DataQualitySummary, location_name: "DataQualitySummary"))
    DescribeDatasetResponse.add_member(:ingested_files_summary, Shapes::ShapeRef.new(shape: IngestedFilesSummary, location_name: "IngestedFilesSummary"))
    DescribeDatasetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    DescribeDatasetResponse.add_member(:data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataStartTime"))
    DescribeDatasetResponse.add_member(:data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataEndTime"))
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
    DescribeInferenceSchedulerResponse.add_member(:latest_inference_result, Shapes::ShapeRef.new(shape: LatestInferenceResult, location_name: "LatestInferenceResult"))
    DescribeInferenceSchedulerResponse.struct_class = Types::DescribeInferenceSchedulerResponse

    DescribeLabelGroupRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    DescribeLabelGroupRequest.struct_class = Types::DescribeLabelGroupRequest

    DescribeLabelGroupResponse.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupName"))
    DescribeLabelGroupResponse.add_member(:label_group_arn, Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: "LabelGroupArn"))
    DescribeLabelGroupResponse.add_member(:fault_codes, Shapes::ShapeRef.new(shape: FaultCodes, location_name: "FaultCodes"))
    DescribeLabelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeLabelGroupResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeLabelGroupResponse.struct_class = Types::DescribeLabelGroupResponse

    DescribeLabelRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    DescribeLabelRequest.add_member(:label_id, Shapes::ShapeRef.new(shape: LabelId, required: true, location_name: "LabelId"))
    DescribeLabelRequest.struct_class = Types::DescribeLabelRequest

    DescribeLabelResponse.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupName"))
    DescribeLabelResponse.add_member(:label_group_arn, Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: "LabelGroupArn"))
    DescribeLabelResponse.add_member(:label_id, Shapes::ShapeRef.new(shape: LabelId, location_name: "LabelId"))
    DescribeLabelResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DescribeLabelResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeLabelResponse.add_member(:rating, Shapes::ShapeRef.new(shape: LabelRating, location_name: "Rating"))
    DescribeLabelResponse.add_member(:fault_code, Shapes::ShapeRef.new(shape: FaultCode, location_name: "FaultCode"))
    DescribeLabelResponse.add_member(:notes, Shapes::ShapeRef.new(shape: Comments, location_name: "Notes"))
    DescribeLabelResponse.add_member(:equipment, Shapes::ShapeRef.new(shape: Equipment, location_name: "Equipment"))
    DescribeLabelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeLabelResponse.struct_class = Types::DescribeLabelResponse

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

    DuplicateTimestamps.add_member(:total_number_of_duplicate_timestamps, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalNumberOfDuplicateTimestamps"))
    DuplicateTimestamps.struct_class = Types::DuplicateTimestamps

    FaultCodes.member = Shapes::ShapeRef.new(shape: FaultCode)

    InferenceEventSummaries.member = Shapes::ShapeRef.new(shape: InferenceEventSummary)

    InferenceEventSummary.add_member(:inference_scheduler_arn, Shapes::ShapeRef.new(shape: InferenceSchedulerArn, location_name: "InferenceSchedulerArn"))
    InferenceEventSummary.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerName, location_name: "InferenceSchedulerName"))
    InferenceEventSummary.add_member(:event_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventStartTime"))
    InferenceEventSummary.add_member(:event_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventEndTime"))
    InferenceEventSummary.add_member(:diagnostics, Shapes::ShapeRef.new(shape: ModelMetrics, location_name: "Diagnostics"))
    InferenceEventSummary.add_member(:event_duration_in_seconds, Shapes::ShapeRef.new(shape: EventDurationInSeconds, location_name: "EventDurationInSeconds"))
    InferenceEventSummary.struct_class = Types::InferenceEventSummary

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
    InferenceSchedulerSummary.add_member(:latest_inference_result, Shapes::ShapeRef.new(shape: LatestInferenceResult, location_name: "LatestInferenceResult"))
    InferenceSchedulerSummary.struct_class = Types::InferenceSchedulerSummary

    IngestedFilesSummary.add_member(:total_number_of_files, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalNumberOfFiles"))
    IngestedFilesSummary.add_member(:ingested_number_of_files, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "IngestedNumberOfFiles"))
    IngestedFilesSummary.add_member(:discarded_files, Shapes::ShapeRef.new(shape: ListOfDiscardedFiles, location_name: "DiscardedFiles"))
    IngestedFilesSummary.struct_class = Types::IngestedFilesSummary

    IngestionInputConfiguration.add_member(:s3_input_configuration, Shapes::ShapeRef.new(shape: IngestionS3InputConfiguration, required: true, location_name: "S3InputConfiguration"))
    IngestionInputConfiguration.struct_class = Types::IngestionInputConfiguration

    IngestionS3InputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    IngestionS3InputConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Prefix"))
    IngestionS3InputConfiguration.add_member(:key_pattern, Shapes::ShapeRef.new(shape: KeyPattern, location_name: "KeyPattern"))
    IngestionS3InputConfiguration.struct_class = Types::IngestionS3InputConfiguration

    InsufficientSensorData.add_member(:missing_complete_sensor_data, Shapes::ShapeRef.new(shape: MissingCompleteSensorData, required: true, location_name: "MissingCompleteSensorData"))
    InsufficientSensorData.add_member(:sensors_with_short_date_range, Shapes::ShapeRef.new(shape: SensorsWithShortDateRange, required: true, location_name: "SensorsWithShortDateRange"))
    InsufficientSensorData.struct_class = Types::InsufficientSensorData

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidSensorData.add_member(:affected_sensor_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "AffectedSensorCount"))
    InvalidSensorData.add_member(:total_number_of_invalid_values, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalNumberOfInvalidValues"))
    InvalidSensorData.struct_class = Types::InvalidSensorData

    LabelGroupSummaries.member = Shapes::ShapeRef.new(shape: LabelGroupSummary)

    LabelGroupSummary.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupName"))
    LabelGroupSummary.add_member(:label_group_arn, Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: "LabelGroupArn"))
    LabelGroupSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    LabelGroupSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    LabelGroupSummary.struct_class = Types::LabelGroupSummary

    LabelSummaries.member = Shapes::ShapeRef.new(shape: LabelSummary)

    LabelSummary.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupName"))
    LabelSummary.add_member(:label_id, Shapes::ShapeRef.new(shape: LabelId, location_name: "LabelId"))
    LabelSummary.add_member(:label_group_arn, Shapes::ShapeRef.new(shape: LabelGroupArn, location_name: "LabelGroupArn"))
    LabelSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    LabelSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    LabelSummary.add_member(:rating, Shapes::ShapeRef.new(shape: LabelRating, location_name: "Rating"))
    LabelSummary.add_member(:fault_code, Shapes::ShapeRef.new(shape: FaultCode, location_name: "FaultCode"))
    LabelSummary.add_member(:equipment, Shapes::ShapeRef.new(shape: Equipment, location_name: "Equipment"))
    LabelSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    LabelSummary.struct_class = Types::LabelSummary

    LabelsInputConfiguration.add_member(:s3_input_configuration, Shapes::ShapeRef.new(shape: LabelsS3InputConfiguration, location_name: "S3InputConfiguration"))
    LabelsInputConfiguration.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupName"))
    LabelsInputConfiguration.struct_class = Types::LabelsInputConfiguration

    LabelsS3InputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    LabelsS3InputConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Prefix"))
    LabelsS3InputConfiguration.struct_class = Types::LabelsS3InputConfiguration

    LargeTimestampGaps.add_member(:status, Shapes::ShapeRef.new(shape: StatisticalIssueStatus, required: true, location_name: "Status"))
    LargeTimestampGaps.add_member(:number_of_large_timestamp_gaps, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfLargeTimestampGaps"))
    LargeTimestampGaps.add_member(:max_timestamp_gap_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxTimestampGapInDays"))
    LargeTimestampGaps.struct_class = Types::LargeTimestampGaps

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

    ListInferenceEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInferenceEventsRequest.add_member(:inference_scheduler_name, Shapes::ShapeRef.new(shape: InferenceSchedulerIdentifier, required: true, location_name: "InferenceSchedulerName"))
    ListInferenceEventsRequest.add_member(:interval_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "IntervalStartTime"))
    ListInferenceEventsRequest.add_member(:interval_end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "IntervalEndTime"))
    ListInferenceEventsRequest.struct_class = Types::ListInferenceEventsRequest

    ListInferenceEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceEventsResponse.add_member(:inference_event_summaries, Shapes::ShapeRef.new(shape: InferenceEventSummaries, location_name: "InferenceEventSummaries"))
    ListInferenceEventsResponse.struct_class = Types::ListInferenceEventsResponse

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
    ListInferenceSchedulersRequest.add_member(:status, Shapes::ShapeRef.new(shape: InferenceSchedulerStatus, location_name: "Status"))
    ListInferenceSchedulersRequest.struct_class = Types::ListInferenceSchedulersRequest

    ListInferenceSchedulersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceSchedulersResponse.add_member(:inference_scheduler_summaries, Shapes::ShapeRef.new(shape: InferenceSchedulerSummaries, location_name: "InferenceSchedulerSummaries"))
    ListInferenceSchedulersResponse.struct_class = Types::ListInferenceSchedulersResponse

    ListLabelGroupsRequest.add_member(:label_group_name_begins_with, Shapes::ShapeRef.new(shape: LabelGroupName, location_name: "LabelGroupNameBeginsWith"))
    ListLabelGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLabelGroupsRequest.struct_class = Types::ListLabelGroupsRequest

    ListLabelGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelGroupsResponse.add_member(:label_group_summaries, Shapes::ShapeRef.new(shape: LabelGroupSummaries, location_name: "LabelGroupSummaries"))
    ListLabelGroupsResponse.struct_class = Types::ListLabelGroupsResponse

    ListLabelsRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    ListLabelsRequest.add_member(:interval_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "IntervalStartTime"))
    ListLabelsRequest.add_member(:interval_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "IntervalEndTime"))
    ListLabelsRequest.add_member(:fault_code, Shapes::ShapeRef.new(shape: FaultCode, location_name: "FaultCode"))
    ListLabelsRequest.add_member(:equipment, Shapes::ShapeRef.new(shape: Equipment, location_name: "Equipment"))
    ListLabelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLabelsRequest.struct_class = Types::ListLabelsRequest

    ListLabelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelsResponse.add_member(:label_summaries, Shapes::ShapeRef.new(shape: LabelSummaries, location_name: "LabelSummaries"))
    ListLabelsResponse.struct_class = Types::ListLabelsResponse

    ListModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    ListModelsRequest.add_member(:model_name_begins_with, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelNameBeginsWith"))
    ListModelsRequest.add_member(:dataset_name_begins_with, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetNameBeginsWith"))
    ListModelsRequest.struct_class = Types::ListModelsRequest

    ListModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: ModelSummaries, location_name: "ModelSummaries"))
    ListModelsResponse.struct_class = Types::ListModelsResponse

    ListOfDiscardedFiles.member = Shapes::ShapeRef.new(shape: S3Object)

    ListSensorStatisticsRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "DatasetName"))
    ListSensorStatisticsRequest.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: IngestionJobId, location_name: "IngestionJobId"))
    ListSensorStatisticsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSensorStatisticsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSensorStatisticsRequest.struct_class = Types::ListSensorStatisticsRequest

    ListSensorStatisticsResponse.add_member(:sensor_statistics_summaries, Shapes::ShapeRef.new(shape: SensorStatisticsSummaries, location_name: "SensorStatisticsSummaries"))
    ListSensorStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSensorStatisticsResponse.struct_class = Types::ListSensorStatisticsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MissingCompleteSensorData.add_member(:affected_sensor_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "AffectedSensorCount"))
    MissingCompleteSensorData.struct_class = Types::MissingCompleteSensorData

    MissingSensorData.add_member(:affected_sensor_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "AffectedSensorCount"))
    MissingSensorData.add_member(:total_number_of_missing_values, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalNumberOfMissingValues"))
    MissingSensorData.struct_class = Types::MissingSensorData

    ModelSummaries.member = Shapes::ShapeRef.new(shape: ModelSummary)

    ModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    ModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    ModelSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    ModelSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    ModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    ModelSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ModelSummary.struct_class = Types::ModelSummary

    MonotonicValues.add_member(:status, Shapes::ShapeRef.new(shape: StatisticalIssueStatus, required: true, location_name: "Status"))
    MonotonicValues.add_member(:monotonicity, Shapes::ShapeRef.new(shape: Monotonicity, location_name: "Monotonicity"))
    MonotonicValues.struct_class = Types::MonotonicValues

    MultipleOperatingModes.add_member(:status, Shapes::ShapeRef.new(shape: StatisticalIssueStatus, required: true, location_name: "Status"))
    MultipleOperatingModes.struct_class = Types::MultipleOperatingModes

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "Key"))
    S3Object.struct_class = Types::S3Object

    SensorStatisticsSummaries.member = Shapes::ShapeRef.new(shape: SensorStatisticsSummary)

    SensorStatisticsSummary.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, location_name: "ComponentName"))
    SensorStatisticsSummary.add_member(:sensor_name, Shapes::ShapeRef.new(shape: SensorName, location_name: "SensorName"))
    SensorStatisticsSummary.add_member(:data_exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "DataExists"))
    SensorStatisticsSummary.add_member(:missing_values, Shapes::ShapeRef.new(shape: CountPercent, location_name: "MissingValues"))
    SensorStatisticsSummary.add_member(:invalid_values, Shapes::ShapeRef.new(shape: CountPercent, location_name: "InvalidValues"))
    SensorStatisticsSummary.add_member(:invalid_date_entries, Shapes::ShapeRef.new(shape: CountPercent, location_name: "InvalidDateEntries"))
    SensorStatisticsSummary.add_member(:duplicate_timestamps, Shapes::ShapeRef.new(shape: CountPercent, location_name: "DuplicateTimestamps"))
    SensorStatisticsSummary.add_member(:categorical_values, Shapes::ShapeRef.new(shape: CategoricalValues, location_name: "CategoricalValues"))
    SensorStatisticsSummary.add_member(:multiple_operating_modes, Shapes::ShapeRef.new(shape: MultipleOperatingModes, location_name: "MultipleOperatingModes"))
    SensorStatisticsSummary.add_member(:large_timestamp_gaps, Shapes::ShapeRef.new(shape: LargeTimestampGaps, location_name: "LargeTimestampGaps"))
    SensorStatisticsSummary.add_member(:monotonic_values, Shapes::ShapeRef.new(shape: MonotonicValues, location_name: "MonotonicValues"))
    SensorStatisticsSummary.add_member(:data_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataStartTime"))
    SensorStatisticsSummary.add_member(:data_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DataEndTime"))
    SensorStatisticsSummary.struct_class = Types::SensorStatisticsSummary

    SensorsWithShortDateRange.add_member(:affected_sensor_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "AffectedSensorCount"))
    SensorsWithShortDateRange.struct_class = Types::SensorsWithShortDateRange

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

    UnsupportedTimestamps.add_member(:total_number_of_unsupported_timestamps, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalNumberOfUnsupportedTimestamps"))
    UnsupportedTimestamps.struct_class = Types::UnsupportedTimestamps

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

    UpdateLabelGroupRequest.add_member(:label_group_name, Shapes::ShapeRef.new(shape: LabelGroupName, required: true, location_name: "LabelGroupName"))
    UpdateLabelGroupRequest.add_member(:fault_codes, Shapes::ShapeRef.new(shape: FaultCodes, location_name: "FaultCodes"))
    UpdateLabelGroupRequest.struct_class = Types::UpdateLabelGroupRequest

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

      api.add_operation(:create_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLabelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_label_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLabelGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLabelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLabelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:delete_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_label_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLabelGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLabelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:describe_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLabelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_label_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLabelGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLabelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLabelGroupResponse)
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

      api.add_operation(:list_inference_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInferenceEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInferenceEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInferenceEventsResponse)
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

      api.add_operation(:list_label_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLabelGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLabelGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLabelGroupsResponse)
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

      api.add_operation(:list_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLabelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLabelsResponse)
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

      api.add_operation(:list_sensor_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSensorStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSensorStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSensorStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:update_label_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLabelGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLabelGroupRequest)
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
