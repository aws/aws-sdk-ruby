# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LookoutforVision
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AnomalyClassFilter = Shapes::StringShape.new(name: 'AnomalyClassFilter')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateModelRequest = Shapes::StructureShape.new(name: 'CreateModelRequest')
    CreateModelResponse = Shapes::StructureShape.new(name: 'CreateModelResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    DatasetChanges = Shapes::BlobShape.new(name: 'DatasetChanges')
    DatasetDescription = Shapes::StructureShape.new(name: 'DatasetDescription')
    DatasetEntry = Shapes::StringShape.new(name: 'DatasetEntry')
    DatasetEntryList = Shapes::ListShape.new(name: 'DatasetEntryList')
    DatasetGroundTruthManifest = Shapes::StructureShape.new(name: 'DatasetGroundTruthManifest')
    DatasetImageStats = Shapes::StructureShape.new(name: 'DatasetImageStats')
    DatasetMetadata = Shapes::StructureShape.new(name: 'DatasetMetadata')
    DatasetMetadataList = Shapes::ListShape.new(name: 'DatasetMetadataList')
    DatasetSource = Shapes::StructureShape.new(name: 'DatasetSource')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetStatusMessage = Shapes::StringShape.new(name: 'DatasetStatusMessage')
    DatasetType = Shapes::StringShape.new(name: 'DatasetType')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DeleteModelRequest = Shapes::StructureShape.new(name: 'DeleteModelRequest')
    DeleteModelResponse = Shapes::StructureShape.new(name: 'DeleteModelResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeModelRequest = Shapes::StructureShape.new(name: 'DescribeModelRequest')
    DescribeModelResponse = Shapes::StructureShape.new(name: 'DescribeModelResponse')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResponse = Shapes::StructureShape.new(name: 'DescribeProjectResponse')
    DetectAnomaliesRequest = Shapes::StructureShape.new(name: 'DetectAnomaliesRequest')
    DetectAnomaliesResponse = Shapes::StructureShape.new(name: 'DetectAnomaliesResponse')
    DetectAnomalyResult = Shapes::StructureShape.new(name: 'DetectAnomalyResult')
    ExceptionString = Shapes::StringShape.new(name: 'ExceptionString')
    Float = Shapes::FloatShape.new(name: 'Float')
    ImageSource = Shapes::StructureShape.new(name: 'ImageSource')
    ImageSourceType = Shapes::StringShape.new(name: 'ImageSourceType')
    InferenceUnits = Shapes::IntegerShape.new(name: 'InferenceUnits')
    InputS3Object = Shapes::StructureShape.new(name: 'InputS3Object')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsLabeled = Shapes::BooleanShape.new(name: 'IsLabeled')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListDatasetEntriesRequest = Shapes::StructureShape.new(name: 'ListDatasetEntriesRequest')
    ListDatasetEntriesResponse = Shapes::StructureShape.new(name: 'ListDatasetEntriesResponse')
    ListModelsRequest = Shapes::StructureShape.new(name: 'ListModelsRequest')
    ListModelsResponse = Shapes::StructureShape.new(name: 'ListModelsResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelDescription = Shapes::StructureShape.new(name: 'ModelDescription')
    ModelDescriptionMessage = Shapes::StringShape.new(name: 'ModelDescriptionMessage')
    ModelHostingStatus = Shapes::StringShape.new(name: 'ModelHostingStatus')
    ModelMetadata = Shapes::StructureShape.new(name: 'ModelMetadata')
    ModelMetadataList = Shapes::ListShape.new(name: 'ModelMetadataList')
    ModelPerformance = Shapes::StructureShape.new(name: 'ModelPerformance')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    ModelStatusMessage = Shapes::StringShape.new(name: 'ModelStatusMessage')
    ModelVersion = Shapes::StringShape.new(name: 'ModelVersion')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    OutputS3Object = Shapes::StructureShape.new(name: 'OutputS3Object')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ProjectArn = Shapes::StringShape.new(name: 'ProjectArn')
    ProjectDescription = Shapes::StructureShape.new(name: 'ProjectDescription')
    ProjectMetadata = Shapes::StructureShape.new(name: 'ProjectMetadata')
    ProjectMetadataList = Shapes::ListShape.new(name: 'ProjectMetadataList')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartModelRequest = Shapes::StructureShape.new(name: 'StartModelRequest')
    StartModelResponse = Shapes::StructureShape.new(name: 'StartModelResponse')
    StopModelRequest = Shapes::StructureShape.new(name: 'StopModelRequest')
    StopModelResponse = Shapes::StructureShape.new(name: 'StopModelResponse')
    Stream = Shapes::BlobShape.new(name: 'Stream', requiresLength: true, streaming: true)
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateDatasetEntriesRequest = Shapes::StructureShape.new(name: 'UpdateDatasetEntriesRequest')
    UpdateDatasetEntriesResponse = Shapes::StructureShape.new(name: 'UpdateDatasetEntriesResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateDatasetRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    CreateDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location_name: "DatasetType"))
    CreateDatasetRequest.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DatasetSource, location_name: "DatasetSource"))
    CreateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_metadata, Shapes::ShapeRef.new(shape: DatasetMetadata, location_name: "DatasetMetadata"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateModelRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    CreateModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ModelDescription, location_name: "Description"))
    CreateModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateModelRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateModelRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateModelRequest.struct_class = Types::CreateModelRequest

    CreateModelResponse.add_member(:model_metadata, Shapes::ShapeRef.new(shape: ModelMetadata, location_name: "ModelMetadata"))
    CreateModelResponse.struct_class = Types::CreateModelResponse

    CreateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "ProjectName"))
    CreateProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:project_metadata, Shapes::ShapeRef.new(shape: ProjectMetadata, location_name: "ProjectMetadata"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    DatasetDescription.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    DatasetDescription.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType"))
    DatasetDescription.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DatasetDescription.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTimestamp"))
    DatasetDescription.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetDescription.add_member(:status_message, Shapes::ShapeRef.new(shape: DatasetStatusMessage, location_name: "StatusMessage"))
    DatasetDescription.add_member(:image_stats, Shapes::ShapeRef.new(shape: DatasetImageStats, location_name: "ImageStats"))
    DatasetDescription.struct_class = Types::DatasetDescription

    DatasetEntryList.member = Shapes::ShapeRef.new(shape: DatasetEntry)

    DatasetGroundTruthManifest.add_member(:s3_object, Shapes::ShapeRef.new(shape: InputS3Object, location_name: "S3Object"))
    DatasetGroundTruthManifest.struct_class = Types::DatasetGroundTruthManifest

    DatasetImageStats.add_member(:total, Shapes::ShapeRef.new(shape: Integer, location_name: "Total"))
    DatasetImageStats.add_member(:labeled, Shapes::ShapeRef.new(shape: Integer, location_name: "Labeled"))
    DatasetImageStats.add_member(:normal, Shapes::ShapeRef.new(shape: Integer, location_name: "Normal"))
    DatasetImageStats.add_member(:anomaly, Shapes::ShapeRef.new(shape: Integer, location_name: "Anomaly"))
    DatasetImageStats.struct_class = Types::DatasetImageStats

    DatasetMetadata.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType"))
    DatasetMetadata.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DatasetMetadata.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetMetadata.add_member(:status_message, Shapes::ShapeRef.new(shape: DatasetStatusMessage, location_name: "StatusMessage"))
    DatasetMetadata.struct_class = Types::DatasetMetadata

    DatasetMetadataList.member = Shapes::ShapeRef.new(shape: DatasetMetadata)

    DatasetSource.add_member(:ground_truth_manifest, Shapes::ShapeRef.new(shape: DatasetGroundTruthManifest, location_name: "GroundTruthManifest"))
    DatasetSource.struct_class = Types::DatasetSource

    DeleteDatasetRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DeleteDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location: "uri", location_name: "datasetType"))
    DeleteDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DeleteModelRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DeleteModelRequest.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location: "uri", location_name: "modelVersion"))
    DeleteModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteModelRequest.struct_class = Types::DeleteModelRequest

    DeleteModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    DeleteModelResponse.struct_class = Types::DeleteModelResponse

    DeleteProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DeleteProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DescribeDatasetRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DescribeDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location: "uri", location_name: "datasetType"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "DatasetDescription"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeModelRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DescribeModelRequest.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location: "uri", location_name: "modelVersion"))
    DescribeModelRequest.struct_class = Types::DescribeModelRequest

    DescribeModelResponse.add_member(:model_description, Shapes::ShapeRef.new(shape: ModelDescription, location_name: "ModelDescription"))
    DescribeModelResponse.struct_class = Types::DescribeModelResponse

    DescribeProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResponse.add_member(:project_description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "ProjectDescription"))
    DescribeProjectResponse.struct_class = Types::DescribeProjectResponse

    DetectAnomaliesRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DetectAnomaliesRequest.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location: "uri", location_name: "modelVersion"))
    DetectAnomaliesRequest.add_member(:body, Shapes::ShapeRef.new(shape: Stream, required: true, location_name: "Body"))
    DetectAnomaliesRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location: "header", location_name: "content-type"))
    DetectAnomaliesRequest.struct_class = Types::DetectAnomaliesRequest
    DetectAnomaliesRequest[:payload] = :body
    DetectAnomaliesRequest[:payload_member] = DetectAnomaliesRequest.member(:body)

    DetectAnomaliesResponse.add_member(:detect_anomaly_result, Shapes::ShapeRef.new(shape: DetectAnomalyResult, location_name: "DetectAnomalyResult"))
    DetectAnomaliesResponse.struct_class = Types::DetectAnomaliesResponse

    DetectAnomalyResult.add_member(:source, Shapes::ShapeRef.new(shape: ImageSource, location_name: "Source"))
    DetectAnomalyResult.add_member(:is_anomalous, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAnomalous"))
    DetectAnomalyResult.add_member(:confidence, Shapes::ShapeRef.new(shape: Float, location_name: "Confidence"))
    DetectAnomalyResult.struct_class = Types::DetectAnomalyResult

    ImageSource.add_member(:type, Shapes::ShapeRef.new(shape: ImageSourceType, location_name: "Type"))
    ImageSource.struct_class = Types::ImageSource

    InputS3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "Bucket"))
    InputS3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "Key"))
    InputS3Object.add_member(:version_id, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "VersionId"))
    InputS3Object.struct_class = Types::InputS3Object

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDatasetEntriesRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    ListDatasetEntriesRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location: "uri", location_name: "datasetType"))
    ListDatasetEntriesRequest.add_member(:labeled, Shapes::ShapeRef.new(shape: IsLabeled, location: "querystring", location_name: "labeled"))
    ListDatasetEntriesRequest.add_member(:anomaly_class, Shapes::ShapeRef.new(shape: AnomalyClassFilter, location: "querystring", location_name: "anomalyClass"))
    ListDatasetEntriesRequest.add_member(:before_creation_date, Shapes::ShapeRef.new(shape: DateTime, location: "querystring", location_name: "createdBefore"))
    ListDatasetEntriesRequest.add_member(:after_creation_date, Shapes::ShapeRef.new(shape: DateTime, location: "querystring", location_name: "createdAfter"))
    ListDatasetEntriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDatasetEntriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "maxResults"))
    ListDatasetEntriesRequest.add_member(:source_ref_contains, Shapes::ShapeRef.new(shape: QueryString, location: "querystring", location_name: "sourceRefContains"))
    ListDatasetEntriesRequest.struct_class = Types::ListDatasetEntriesRequest

    ListDatasetEntriesResponse.add_member(:dataset_entries, Shapes::ShapeRef.new(shape: DatasetEntryList, location_name: "DatasetEntries"))
    ListDatasetEntriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDatasetEntriesResponse.struct_class = Types::ListDatasetEntriesResponse

    ListModelsRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    ListModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "maxResults"))
    ListModelsRequest.struct_class = Types::ListModelsRequest

    ListModelsResponse.add_member(:models, Shapes::ShapeRef.new(shape: ModelMetadataList, location_name: "Models"))
    ListModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListModelsResponse.struct_class = Types::ListModelsResponse

    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectMetadataList, location_name: "Projects"))
    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ModelDescription.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, location_name: "ModelVersion"))
    ModelDescription.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    ModelDescription.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ModelDescription.add_member(:description, Shapes::ShapeRef.new(shape: ModelDescriptionMessage, location_name: "Description"))
    ModelDescription.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    ModelDescription.add_member(:status_message, Shapes::ShapeRef.new(shape: ModelStatusMessage, location_name: "StatusMessage"))
    ModelDescription.add_member(:performance, Shapes::ShapeRef.new(shape: ModelPerformance, location_name: "Performance"))
    ModelDescription.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    ModelDescription.add_member(:evaluation_manifest, Shapes::ShapeRef.new(shape: OutputS3Object, location_name: "EvaluationManifest"))
    ModelDescription.add_member(:evaluation_result, Shapes::ShapeRef.new(shape: OutputS3Object, location_name: "EvaluationResult"))
    ModelDescription.add_member(:evaluation_end_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "EvaluationEndTimestamp"))
    ModelDescription.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ModelDescription.struct_class = Types::ModelDescription

    ModelMetadata.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ModelMetadata.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, location_name: "ModelVersion"))
    ModelMetadata.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "ModelArn"))
    ModelMetadata.add_member(:description, Shapes::ShapeRef.new(shape: ModelDescriptionMessage, location_name: "Description"))
    ModelMetadata.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    ModelMetadata.add_member(:status_message, Shapes::ShapeRef.new(shape: ModelStatusMessage, location_name: "StatusMessage"))
    ModelMetadata.add_member(:performance, Shapes::ShapeRef.new(shape: ModelPerformance, location_name: "Performance"))
    ModelMetadata.struct_class = Types::ModelMetadata

    ModelMetadataList.member = Shapes::ShapeRef.new(shape: ModelMetadata)

    ModelPerformance.add_member(:f1_score, Shapes::ShapeRef.new(shape: Float, location_name: "F1Score"))
    ModelPerformance.add_member(:recall, Shapes::ShapeRef.new(shape: Float, location_name: "Recall"))
    ModelPerformance.add_member(:precision, Shapes::ShapeRef.new(shape: Float, location_name: "Precision"))
    ModelPerformance.struct_class = Types::ModelPerformance

    OutputConfig.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "S3Location"))
    OutputConfig.struct_class = Types::OutputConfig

    OutputS3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "Bucket"))
    OutputS3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "Key"))
    OutputS3Object.struct_class = Types::OutputS3Object

    ProjectDescription.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    ProjectDescription.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    ProjectDescription.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectDescription.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetMetadataList, location_name: "Datasets"))
    ProjectDescription.struct_class = Types::ProjectDescription

    ProjectMetadata.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    ProjectMetadata.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    ProjectMetadata.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectMetadata.struct_class = Types::ProjectMetadata

    ProjectMetadataList.member = Shapes::ShapeRef.new(shape: ProjectMetadata)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "Bucket"))
    S3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "Prefix"))
    S3Location.struct_class = Types::S3Location

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ExceptionString, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartModelRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    StartModelRequest.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location: "uri", location_name: "modelVersion"))
    StartModelRequest.add_member(:min_inference_units, Shapes::ShapeRef.new(shape: InferenceUnits, required: true, location_name: "MinInferenceUnits"))
    StartModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    StartModelRequest.struct_class = Types::StartModelRequest

    StartModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelHostingStatus, location_name: "Status"))
    StartModelResponse.struct_class = Types::StartModelResponse

    StopModelRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    StopModelRequest.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location: "uri", location_name: "modelVersion"))
    StopModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    StopModelRequest.struct_class = Types::StopModelRequest

    StopModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelHostingStatus, location_name: "Status"))
    StopModelResponse.struct_class = Types::StopModelResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: ExceptionString, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ExceptionString, location_name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateDatasetEntriesRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    UpdateDatasetEntriesRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location: "uri", location_name: "datasetType"))
    UpdateDatasetEntriesRequest.add_member(:changes, Shapes::ShapeRef.new(shape: DatasetChanges, required: true, location_name: "Changes"))
    UpdateDatasetEntriesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateDatasetEntriesRequest.struct_class = Types::UpdateDatasetEntriesRequest

    UpdateDatasetEntriesResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    UpdateDatasetEntriesResponse.struct_class = Types::UpdateDatasetEntriesResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionString, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-20"

      api.metadata = {
        "apiVersion" => "2020-11-20",
        "endpointPrefix" => "lookoutvision",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Lookout for Vision",
        "serviceId" => "LookoutVision",
        "signatureVersion" => "v4",
        "signingName" => "lookoutvision",
        "uid" => "lookoutvision-2020-11-20",
      }

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/datasets"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModel"
        o.http_method = "POST"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models"
        o.input = Shapes::ShapeRef.new(shape: CreateModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/2020-11-20/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/datasets/{datasetType}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models/{modelVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-11-20/projects/{projectName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "GET"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/datasets/{datasetType}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModel"
        o.http_method = "GET"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models/{modelVersion}"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "GET"
        o.http_request_uri = "/2020-11-20/projects/{projectName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:detect_anomalies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectAnomalies"
        o.http_method = "POST"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models/{modelVersion}/detect"
        o.input = Shapes::ShapeRef.new(shape: DetectAnomaliesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectAnomaliesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_dataset_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetEntries"
        o.http_method = "GET"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/datasets/{datasetType}/entries"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModels"
        o.http_method = "GET"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models"
        o.input = Shapes::ShapeRef.new(shape: ListModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/2020-11-20/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartModel"
        o.http_method = "POST"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models/{modelVersion}/start"
        o.input = Shapes::ShapeRef.new(shape: StartModelRequest)
        o.output = Shapes::ShapeRef.new(shape: StartModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopModel"
        o.http_method = "POST"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/models/{modelVersion}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopModelRequest)
        o.output = Shapes::ShapeRef.new(shape: StopModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_dataset_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatasetEntries"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-11-20/projects/{projectName}/datasets/{datasetType}/entries"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
