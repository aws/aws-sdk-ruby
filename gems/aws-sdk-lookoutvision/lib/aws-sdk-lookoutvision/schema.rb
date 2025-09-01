# frozen_string_literal: true

# This is generated code!

module Aws::LookoutVision
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Anomaly = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#Anomaly', name: 'Anomaly')
    AnomalyClassFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#AnomalyClassFilter', name: 'AnomalyClassFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(normal|anomaly)$"})
    AnomalyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#AnomalyList', name: 'AnomalyList')
    AnomalyMask = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.lookoutvision#AnomalyMask', name: 'AnomalyMask', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    AnomalyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#AnomalyName', name: 'AnomalyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lookoutvision#Boolean', name: 'Boolean')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    Color = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#Color', name: 'Color', traits: {"smithy.api#length" => {"min" => 7, "max" => 7}, "smithy.api#pattern" => "^\\#[a-zA-Z0-9]{6}$"})
    CompilerOptions = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#CompilerOptions', name: 'CompilerOptions', traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ComponentDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ComponentDescription', name: 'ComponentDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_. ()':,;?]+$"})
    ComponentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ComponentName', name: 'ComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.]+$"})
    ComponentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ComponentVersion', name: 'ComponentVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([0-9]{1,6})\\.([0-9]{1,6})\\.([0-9]{1,6})$"})
    ComponentVersionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ComponentVersionArn', name: 'ComponentVersionArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:aws:components:[^:]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#CreateModelRequest', name: 'CreateModelRequest')
    CreateModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#CreateModelResponse', name: 'CreateModelResponse')
    CreateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#CreateProjectResponse', name: 'CreateProjectResponse')
    DatasetChanges = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.lookoutvision#DatasetChanges', name: 'DatasetChanges', traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    DatasetDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DatasetDescription', name: 'DatasetDescription')
    DatasetEntry = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#DatasetEntry', name: 'DatasetEntry', traits: {"smithy.api#length" => {"min" => 2, "max" => 8192}, "smithy.api#pattern" => "^\\{.*\\}$"})
    DatasetEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#DatasetEntryList', name: 'DatasetEntryList')
    DatasetGroundTruthManifest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DatasetGroundTruthManifest', name: 'DatasetGroundTruthManifest')
    DatasetImageStats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DatasetImageStats', name: 'DatasetImageStats')
    DatasetMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DatasetMetadata', name: 'DatasetMetadata')
    DatasetMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#DatasetMetadataList', name: 'DatasetMetadataList')
    DatasetSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DatasetSource', name: 'DatasetSource')
    DatasetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#DatasetStatus', name: 'DatasetStatus')
    DatasetStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#DatasetStatusMessage', name: 'DatasetStatusMessage')
    DatasetType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#DatasetType', name: 'DatasetType', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^train|test$"})
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lookoutvision#DateTime', name: 'DateTime')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DeleteDatasetResponse', name: 'DeleteDatasetResponse')
    DeleteModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DeleteModelRequest', name: 'DeleteModelRequest')
    DeleteModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DeleteModelResponse', name: 'DeleteModelResponse')
    DeleteProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DeleteProjectResponse', name: 'DeleteProjectResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeModelPackagingJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeModelPackagingJobRequest', name: 'DescribeModelPackagingJobRequest')
    DescribeModelPackagingJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeModelPackagingJobResponse', name: 'DescribeModelPackagingJobResponse')
    DescribeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeModelRequest', name: 'DescribeModelRequest')
    DescribeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeModelResponse', name: 'DescribeModelResponse')
    DescribeProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeProjectRequest', name: 'DescribeProjectRequest')
    DescribeProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DescribeProjectResponse', name: 'DescribeProjectResponse')
    DetectAnomaliesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DetectAnomaliesRequest', name: 'DetectAnomaliesRequest')
    DetectAnomaliesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DetectAnomaliesResponse', name: 'DetectAnomaliesResponse')
    DetectAnomalyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#DetectAnomalyResult', name: 'DetectAnomalyResult')
    ExceptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ExceptionString', name: 'ExceptionString')
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lookoutvision#Float', name: 'Float')
    GreengrassConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#GreengrassConfiguration', name: 'GreengrassConfiguration')
    GreengrassOutputDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#GreengrassOutputDetails', name: 'GreengrassOutputDetails')
    ImageSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ImageSource', name: 'ImageSource')
    ImageSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ImageSourceType', name: 'ImageSourceType', traits: {"smithy.api#pattern" => "^direct$"})
    InferenceUnits = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutvision#InferenceUnits', name: 'InferenceUnits', traits: {"smithy.api#range" => {"min" => 1}})
    InputS3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#InputS3Object', name: 'InputS3Object')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutvision#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsLabeled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lookoutvision#IsLabeled', name: 'IsLabeled')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    ListDatasetEntriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListDatasetEntriesRequest', name: 'ListDatasetEntriesRequest')
    ListDatasetEntriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListDatasetEntriesResponse', name: 'ListDatasetEntriesResponse')
    ListModelPackagingJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListModelPackagingJobsRequest', name: 'ListModelPackagingJobsRequest')
    ListModelPackagingJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListModelPackagingJobsResponse', name: 'ListModelPackagingJobsResponse')
    ListModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListModelsRequest', name: 'ListModelsRequest')
    ListModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListModelsResponse', name: 'ListModelsResponse')
    ListProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListProjectsRequest', name: 'ListProjectsRequest')
    ListProjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListProjectsResponse', name: 'ListProjectsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelArn', name: 'ModelArn')
    ModelDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelDescription', name: 'ModelDescription')
    ModelDescriptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelDescriptionMessage', name: 'ModelDescriptionMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    ModelHostingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#ModelHostingStatus', name: 'ModelHostingStatus')
    ModelMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelMetadata', name: 'ModelMetadata')
    ModelMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#ModelMetadataList', name: 'ModelMetadataList')
    ModelPackagingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingConfiguration', name: 'ModelPackagingConfiguration')
    ModelPackagingDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingDescription', name: 'ModelPackagingDescription')
    ModelPackagingJobDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingJobDescription', name: 'ModelPackagingJobDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_. ()':,;?]+$"})
    ModelPackagingJobMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingJobMetadata', name: 'ModelPackagingJobMetadata')
    ModelPackagingJobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingJobName', name: 'ModelPackagingJobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ModelPackagingJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingJobStatus', name: 'ModelPackagingJobStatus')
    ModelPackagingJobsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingJobsList', name: 'ModelPackagingJobsList')
    ModelPackagingMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingMethod', name: 'ModelPackagingMethod', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ModelPackagingOutputDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingOutputDetails', name: 'ModelPackagingOutputDetails')
    ModelPackagingStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelPackagingStatusMessage', name: 'ModelPackagingStatusMessage')
    ModelPerformance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ModelPerformance', name: 'ModelPerformance')
    ModelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#ModelStatus', name: 'ModelStatus')
    ModelStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelStatusMessage', name: 'ModelStatusMessage')
    ModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelVersion', name: 'ModelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^([1-9][0-9]*|latest)$"})
    ModelVersionNoLatest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ModelVersionNoLatest', name: 'ModelVersionNoLatest', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^([1-9][0-9]*)$"})
    OutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#OutputConfig', name: 'OutputConfig')
    OutputS3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#OutputS3Object', name: 'OutputS3Object')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutvision#PageSize', name: 'PageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\+\\=]{0,2048}$"})
    PixelAnomaly = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#PixelAnomaly', name: 'PixelAnomaly')
    ProjectArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ProjectArn', name: 'ProjectArn')
    ProjectDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ProjectDescription', name: 'ProjectDescription')
    ProjectMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ProjectMetadata', name: 'ProjectMetadata')
    ProjectMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#ProjectMetadataList', name: 'ProjectMetadataList')
    ProjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#ProjectName', name: 'ProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_\\-]*$"})
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#ResourceType', name: 'ResourceType')
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lookoutvision#RetryAfterSeconds', name: 'RetryAfterSeconds')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    S3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#S3KeyPrefix', name: 'S3KeyPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9!_.*'()-][/a-zA-Z0-9!_.*'()-]*)?$"})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#S3Location', name: 'S3Location')
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9!_.*'()-][/a-zA-Z0-9!_.*'()-]*)?$"})
    S3ObjectVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#S3ObjectVersion', name: 'S3ObjectVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartModelPackagingJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#StartModelPackagingJobRequest', name: 'StartModelPackagingJobRequest')
    StartModelPackagingJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#StartModelPackagingJobResponse', name: 'StartModelPackagingJobResponse')
    StartModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#StartModelRequest', name: 'StartModelRequest')
    StartModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#StartModelResponse', name: 'StartModelResponse')
    StopModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#StopModelRequest', name: 'StopModelRequest')
    StopModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#StopModelResponse', name: 'StopModelResponse')
    Stream = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.lookoutvision#Stream', name: 'Stream', traits: {"smithy.api#requiresLength" => {}, "smithy.api#streaming" => {}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#Tag', name: 'Tag')
    TagArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#TagArn', name: 'TagArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lookoutvision#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lookoutvision#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetDevice = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#TargetDevice', name: 'TargetDevice')
    TargetPlatform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#TargetPlatform', name: 'TargetPlatform')
    TargetPlatformAccelerator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#TargetPlatformAccelerator', name: 'TargetPlatformAccelerator')
    TargetPlatformArch = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#TargetPlatformArch', name: 'TargetPlatformArch')
    TargetPlatformOs = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lookoutvision#TargetPlatformOs', name: 'TargetPlatformOs')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDatasetEntriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#UpdateDatasetEntriesRequest', name: 'UpdateDatasetEntriesRequest')
    UpdateDatasetEntriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#UpdateDatasetEntriesResponse', name: 'UpdateDatasetEntriesResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lookoutvision#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Anomaly.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of an anomaly type found in an image.  \n         <code>Name</code> maps to an anomaly type in the training dataset, apart from the anomaly type <code>background</code>.\n      The service automatically inserts the <code>background</code> anomaly type into the response from <code>DetectAnomalies</code>. </p>"}))
    Anomaly.add_member(:pixel_anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: PixelAnomaly, location_name: 'PixelAnomaly', traits: {"smithy.api#documentation" => "<p>Information about the pixel mask that covers an anomaly type.</p>"}))
    Anomaly.type = Types::Anomaly
    AnomalyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Anomaly)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of the resource.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateDatasetRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project in which you want to create a dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of the dataset. Specify <code>train</code> for a training dataset.\n      Specify <code>test</code> for a test dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSource, location_name: 'DatasetSource', traits: {"smithy.api#documentation" => "<p>The location of the manifest file that Amazon Lookout for Vision uses to create the dataset.</p>\n         <p>If you don't specify <code>DatasetSource</code>, an empty dataset is created and the operation \n      synchronously returns. Later, you can add JSON Lines by calling <a>UpdateDatasetEntries</a>.\n     </p>\n         <p>If you specify a value for <code>DataSource</code>, the manifest at the S3 location\n     is validated and used to create the dataset. The call to <code>CreateDataset</code> is asynchronous\n     and might take a while to complete. To find out the current status, Check the value of <code>Status</code>\n     returned in a call to <a>DescribeDataset</a>.</p>"}))
    CreateDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>CreateDataset</code>\n      completes only once.  You choose the value to pass. For example, An issue might prevent you\n      from getting a response from <code>CreateDataset</code>.\n      In this case, safely retry your call\n       to <code>CreateDataset</code> by using the same <code>ClientToken</code> parameter value.</p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n         This prevents retries after a network error from making multiple dataset creation requests. You'll need to\n         provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n       value for <code>ClientToken</code> is considered a new call to <code>CreateDataset</code>. An idempotency\n       token is active for 8 hours.\n    </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadata, location_name: 'DatasetMetadata', traits: {"smithy.api#documentation" => "<p>Information about the dataset.</p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateModelRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project in which you want to create a model version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDescriptionMessage, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the version of the model.</p>"}))
    CreateModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>\n      completes only once.  You choose the value to pass. For example, An issue\n      might prevent you from getting a response from <code>CreateModel</code>.\n      In this case, safely retry your call\n       to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. </p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n            This prevents retries after a network error from starting multiple training jobs. You'll need to\n            provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n       value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency\n       token is active for 8 hours.</p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateModelRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The location where Amazon Lookout for Vision saves the training results.</p>", "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier for your AWS KMS key.\n         The key is used to encrypt training and test images copied into the service for model training. Your \n         source images are unaffected.\n         If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>"}))
    CreateModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that you want to attach to the model.</p>"}))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateModelResponse.add_member(:model_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelMetadata, location_name: 'ModelMetadata', traits: {"smithy.api#documentation" => "<p>The response from a call to <code>CreateModel</code>.</p>"}))
    CreateModelResponse.type = Types::CreateModelResponse
    CreateProjectRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name for the project.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>CreateProject</code>\n      completes only once.  You choose the value to pass. For example, An issue might prevent you from \n      getting a response from <code>CreateProject</code>.\n      In this case, safely retry your call\n       to <code>CreateProject</code> by using the same <code>ClientToken</code> parameter value. </p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n          This prevents retries after a network error from making multiple project creation requests. You'll need to\n           provide your own value for other use cases. </p>\n         <p>An error occurs\n       if the other input parameters are not the same as in the first request. Using a different  \n       value for <code>ClientToken</code> is considered a new call to <code>CreateProject</code>. An idempotency\n       token is active for 8 hours.</p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:project_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectMetadata, location_name: 'ProjectMetadata', traits: {"smithy.api#documentation" => "<p>Information about the project.</p>"}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    DatasetDescription.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the dataset.</p>"}))
    DatasetDescription.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The type of the dataset. The value <code>train</code> represents a training dataset or single dataset project.\n      The value <code>test</code> represents a test dataset.</p>"}))
    DatasetDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix timestamp for the time and date that the dataset was created.</p>"}))
    DatasetDescription.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix timestamp for the date and time that the dataset was last updated.</p>"}))
    DatasetDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the dataset.</p>"}))
    DatasetDescription.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the dataset. </p>"}))
    DatasetDescription.add_member(:image_stats, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetImageStats, location_name: 'ImageStats', traits: {"smithy.api#documentation" => "<p>Statistics about the images in a dataset.</p>"}))
    DatasetDescription.type = Types::DatasetDescription
    DatasetEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntry)
    DatasetGroundTruthManifest.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: InputS3Object, location_name: 'S3Object', traits: {"smithy.api#documentation" => "<p>The S3 bucket location for the manifest file.</p>"}))
    DatasetGroundTruthManifest.type = Types::DatasetGroundTruthManifest
    DatasetImageStats.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Total', traits: {"smithy.api#documentation" => "<p>The total number of images in the dataset.</p>"}))
    DatasetImageStats.add_member(:labeled, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Labeled', traits: {"smithy.api#documentation" => "<p>The total number of labeled images.</p>"}))
    DatasetImageStats.add_member(:normal, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Normal', traits: {"smithy.api#documentation" => "<p>The total number of images labeled as normal.</p>"}))
    DatasetImageStats.add_member(:anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Anomaly', traits: {"smithy.api#documentation" => "<p>the total number of images labeled as an anomaly.</p>"}))
    DatasetImageStats.type = Types::DatasetImageStats
    DatasetMetadata.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The type of the dataset.</p>"}))
    DatasetMetadata.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix timestamp for the date and time that the dataset was created. </p>"}))
    DatasetMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status for the dataset.</p>"}))
    DatasetMetadata.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the dataset.</p>"}))
    DatasetMetadata.type = Types::DatasetMetadata
    DatasetMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadata)
    DatasetSource.add_member(:ground_truth_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetGroundTruthManifest, location_name: 'GroundTruthManifest', traits: {"smithy.api#documentation" => "<p>Location information for the manifest file.</p>"}))
    DatasetSource.type = Types::DatasetSource
    DatasetStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:create_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DatasetStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatasetStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:update_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    DatasetStatus.add_member(:update_failed_rollback_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_ROLLBACK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_ROLLBACK_IN_PROGRESS"}))
    DatasetStatus.add_member(:update_failed_rollback_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_ROLLBACK_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_ROLLBACK_COMPLETE"}))
    DatasetStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DatasetStatus.add_member(:delete_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_COMPLETE', traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    DatasetStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    DeleteDatasetRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the dataset that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The type of the dataset to delete. Specify <code>train</code> to delete the training dataset.\n      Specify <code>test</code> to delete the test dataset. To delete the dataset in a single dataset project, \n         specify <code>train</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>DeleteDataset</code>\n      completes only once.  You choose the value to pass. For example, An issue might prevent you from getting a response from <code>DeleteDataset</code>.\n      In this case, safely retry your call\n       to <code>DeleteDataset</code> by using the same <code>ClientToken</code> parameter value. </p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n                 This prevents retries after a network error from making multiple deletetion requests. You'll need to\n                 provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n       value for <code>ClientToken</code> is considered a new call to <code>DeleteDataset</code>. An idempotency\n       token is active for 8 hours.</p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteModelRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the model that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersionNoLatest, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>DeleteModel</code>\n      completes only once.  You choose the value to pass. For example, an issue might prevent\n      you from getting a response from <code>DeleteModel</code>.\n      In this case, safely retry your call\n       to <code>DeleteModel</code> by using the same <code>ClientToken</code> parameter value.</p>\n         <p>If you don't supply a value for ClientToken, the AWS SDK you are using inserts a value for you. \n         This prevents retries after a network error from making multiple model deletion requests. You'll need to\n         provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n       value for <code>ClientToken</code> is considered a new call to <code>DeleteModel</code>. An idempotency\n       token is active for 8 hours.</p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteModelResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model that was deleted.</p>"}))
    DeleteModelResponse.type = Types::DeleteModelResponse
    DeleteProjectRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>DeleteProject</code>\n         completes only once.  You choose the value to pass. For example, An issue\n         might prevent you from getting a response from <code>DeleteProject</code>.\n         In this case, safely retry your call\n         to <code>DeleteProject</code> by using the same <code>ClientToken</code> parameter value. </p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n         This prevents retries after a network error from making multiple project deletion requests. You'll need to\n         provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n         value for <code>ClientToken</code> is considered a new call to <code>DeleteProject</code>. An idempotency\n         token is active for 8 hours.</p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project that was deleted.</p>"}))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DescribeDatasetRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the dataset that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The type of the dataset to describe. Specify <code>train</code> to describe the \n      training dataset. Specify <code>test</code> to describe the test dataset.\n      If you have a single dataset project, specify <code>train</code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: 'DatasetDescription', traits: {"smithy.api#documentation" => "<p>The description of the requested dataset. </p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeModelPackagingJobRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the model packaging job that you want to describe. \n</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelPackagingJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The job name for the model packaging job. \n\n</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelPackagingJobRequest.type = Types::DescribeModelPackagingJobRequest
    DescribeModelPackagingJobResponse.add_member(:model_packaging_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingDescription, location_name: 'ModelPackagingDescription', traits: {"smithy.api#documentation" => "<p>The description of the model packaging job.\n</p>"}))
    DescribeModelPackagingJobResponse.type = Types::DescribeModelPackagingJobResponse
    DescribeModelRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The project that contains the version of a model that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelRequest.type = Types::DescribeModelRequest
    DescribeModelResponse.add_member(:model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDescription, location_name: 'ModelDescription', traits: {"smithy.api#documentation" => "<p>Contains the description of the model.</p>"}))
    DescribeModelResponse.type = Types::DescribeModelResponse
    DescribeProjectRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProjectRequest.type = Types::DescribeProjectRequest
    DescribeProjectResponse.add_member(:project_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription, location_name: 'ProjectDescription', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    DescribeProjectResponse.type = Types::DescribeProjectResponse
    DetectAnomaliesRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the model version that you want to use.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DetectAnomaliesRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model that you want to use.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DetectAnomaliesRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Stream, location_name: 'Body', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unencrypted image bytes that you want to analyze. </p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DetectAnomaliesRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of the image passed in <code>Body</code>.\n         Valid values are <code>image/png</code> (PNG format images) and <code>image/jpeg</code> (JPG format images). </p>", "smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    DetectAnomaliesRequest[:http_payload] = :body
    DetectAnomaliesRequest[:http_payload_member] = DetectAnomaliesRequest.member(:body)
    DetectAnomaliesRequest.type = Types::DetectAnomaliesRequest
    DetectAnomaliesResponse.add_member(:detect_anomaly_result, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectAnomalyResult, location_name: 'DetectAnomalyResult', traits: {"smithy.api#documentation" => "<p>The results of the <code>DetectAnomalies</code> operation.</p>"}))
    DetectAnomaliesResponse.type = Types::DetectAnomaliesResponse
    DetectAnomalyResult.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSource, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source of the image that was analyzed. <code>direct</code> means that the\n      images was supplied from the local computer. No other values are supported.</p>"}))
    DetectAnomalyResult.add_member(:is_anomalous, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsAnomalous', traits: {"smithy.api#documentation" => "<p>True if Amazon Lookout for Vision classifies the image as containing an anomaly, otherwise false.</p>"}))
    DetectAnomalyResult.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Lookout for Vision has in the accuracy of the classification in <code>IsAnomalous</code>.</p>"}))
    DetectAnomalyResult.add_member(:anomalies, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyList, location_name: 'Anomalies', traits: {"smithy.api#documentation" => "<p>If the model is an image segmentation model, <code>Anomalies</code> contains a list of\n         anomaly types found in the image. There is one entry for each type of anomaly found (even\n         if multiple instances of an anomaly type exist on the image). The first element in the list\n         is always an anomaly type representing the image background ('background') and shouldn't be\n         considered an anomaly. Amazon Lookout for Vision automatically add the background anomaly type to the\n         response, and you don't need to declare a background anomaly type in your dataset.</p>\n         <p>If the list has one entry ('background'), no anomalies were found on the image.</p>\n         <p></p>\n         <p>An image classification model doesn't return an <code>Anomalies</code> list. </p>"}))
    DetectAnomalyResult.add_member(:anomaly_mask, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyMask, location_name: 'AnomalyMask', traits: {"smithy.api#documentation" => "<p>If the model is an image segmentation model, <code>AnomalyMask</code> contains pixel masks that covers all anomaly types found on the image.\n          \n      Each anomaly type has a different mask color. To map a color to an anomaly type, see the <code>color</code> field\n      of the <a>PixelAnomaly</a> object.</p>\n         <p>An image classification model doesn't return an <code>Anomalies</code> list. </p>"}))
    DetectAnomalyResult.type = Types::DetectAnomalyResult
    GreengrassConfiguration.add_member(:compiler_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CompilerOptions, location_name: 'CompilerOptions', traits: {"smithy.api#documentation" => "<p>Additional compiler options for the Greengrass component. Currently, \n   only NVIDIA Graphics Processing Units (GPU) and CPU accelerators are supported. \n   If you specify <code>TargetDevice</code>, don't specify <code>CompilerOptions</code>.</p>\n         <p>For more information, see \n      <i>Compiler options</i> in the  Amazon Lookout for Vision Developer Guide. </p>"}))
    GreengrassConfiguration.add_member(:target_device, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDevice, location_name: 'TargetDevice', traits: {"smithy.api#documentation" => "<p>The target device for the model. Currently the only supported value is <code>jetson_xavier</code>.\n      If you specify <code>TargetDevice</code>, you can't specify\n      <code>TargetPlatform</code>.\n\n</p>"}))
    GreengrassConfiguration.add_member(:target_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetPlatform, location_name: 'TargetPlatform', traits: {"smithy.api#documentation" => "<p>The target platform for the model. If you specify <code>TargetPlatform</code>, you can't specify\n         <code>TargetDevice</code>. \n      </p>"}))
    GreengrassConfiguration.add_member(:s3_output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3OutputLocation', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>\n         An S3 location in which Lookout for Vision stores the component artifacts. \n      </p>", "smithy.api#required" => {}}))
    GreengrassConfiguration.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>\n   A name for the AWS IoT Greengrass component. \n</p>", "smithy.api#required" => {}}))
    GreengrassConfiguration.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersion, location_name: 'ComponentVersion', traits: {"smithy.api#documentation" => "<p>A Version for the AWS IoT Greengrass component. If you don't provide a\n      value, a default value of <code>\n               <i>Model Version</i>.0.0</code> is used.\n</p>"}))
    GreengrassConfiguration.add_member(:component_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDescription, location_name: 'ComponentDescription', traits: {"smithy.api#documentation" => "<p>\n   A description for the AWS IoT Greengrass component.\n</p>"}))
    GreengrassConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n   A set of tags (key-value pairs) that you want to attach to the AWS IoT Greengrass component.\n</p>"}))
    GreengrassConfiguration.type = Types::GreengrassConfiguration
    GreengrassOutputDetails.add_member(:component_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionArn, location_name: 'ComponentVersionArn', traits: {"smithy.api#documentation" => "<p>\nThe Amazon Resource Name (ARN) of the component.\n</p>"}))
    GreengrassOutputDetails.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>\nThe name of the component.\n</p>"}))
    GreengrassOutputDetails.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersion, location_name: 'ComponentVersion', traits: {"smithy.api#documentation" => "<p>\nThe version of the component.\n</p>"}))
    GreengrassOutputDetails.type = Types::GreengrassOutputDetails
    ImageSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the image.</p>"}))
    ImageSource.type = Types::ImageSource
    InputS3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'Bucket', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the manifest.</p>", "smithy.api#required" => {}}))
    InputS3Object.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name and location of the manifest file withiin the bucket.</p>", "smithy.api#required" => {}}))
    InputS3Object.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the bucket.</p>"}))
    InputS3Object.type = Types::InputS3Object
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The period of time, in seconds, before the operation can be retried.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListDatasetEntriesRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the dataset that you want to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetEntriesRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The type of the dataset that you want to list.  Specify <code>train</code> to list \n         the training dataset. Specify <code>test</code> to list the test dataset. If you have a single dataset\n      project, specify <code>train</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetEntriesRequest.add_member(:labeled, Smithy::Schema::Shapes::ShapeRef.new(shape: IsLabeled, location_name: 'Labeled', traits: {"smithy.api#documentation" => "<p>Specify <code>true</code> to include labeled entries, otherwise specify <code>false</code>. If you\n      don't specify a value, Lookout for Vision returns all entries.</p>", "smithy.api#httpQuery" => "labeled"}))
    ListDatasetEntriesRequest.add_member(:anomaly_class, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyClassFilter, location_name: 'AnomalyClass', traits: {"smithy.api#documentation" => "<p>Specify <code>normal</code> to include only normal images. Specify <code>anomaly</code> to only include\n         anomalous entries. If you don't specify a value, Amazon Lookout for Vision returns normal and anomalous images.</p>", "smithy.api#httpQuery" => "anomalyClass"}))
    ListDatasetEntriesRequest.add_member(:before_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'BeforeCreationDate', traits: {"smithy.api#documentation" => "<p>Only includes entries before the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>", "smithy.api#httpQuery" => "createdBefore"}))
    ListDatasetEntriesRequest.add_member(:after_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AfterCreationDate', traits: {"smithy.api#documentation" => "<p>Only includes entries after the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>", "smithy.api#httpQuery" => "createdAfter"}))
    ListDatasetEntriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more data to retrieve),\n         Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to\n         retrieve the next set of dataset entries.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatasetEntriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n         If you specify a value greater than 100, a ValidationException\n         error occurs. The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatasetEntriesRequest.add_member(:source_ref_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'SourceRefContains', traits: {"smithy.api#documentation" => "<p>Perform a \"contains\" search on the  values of the <code>source-ref</code> key within the dataset. \n         For example a value of \"IMG_17\"  returns all JSON Lines where the <code>source-ref</code> key value matches <i>*IMG_17*</i>.</p>", "smithy.api#httpQuery" => "sourceRefContains"}))
    ListDatasetEntriesRequest.type = Types::ListDatasetEntriesRequest
    ListDatasetEntriesResponse.add_member(:dataset_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntryList, location_name: 'DatasetEntries', traits: {"smithy.api#documentation" => "<p>A list of the entries (JSON Lines) within the dataset.</p>"}))
    ListDatasetEntriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Lookout for Vision returns this token\n         that you can use in the subsequent request to retrieve the next set ofdataset entries.</p>"}))
    ListDatasetEntriesResponse.type = Types::ListDatasetEntriesResponse
    ListModelPackagingJobsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>\nThe name of the project for which you want to list the model packaging jobs.\n</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListModelPackagingJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n      results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination \n      token to retrieve the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListModelPackagingJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n      If you specify a value greater than 100, a ValidationException\n      error occurs. The default value is 100. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListModelPackagingJobsRequest.type = Types::ListModelPackagingJobsRequest
    ListModelPackagingJobsResponse.add_member(:model_packaging_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobsList, location_name: 'ModelPackagingJobs', traits: {"smithy.api#documentation" => "<p>\nA list of the model packaging jobs created for the specified Amazon Lookout for Vision project.\n</p>"}))
    ListModelPackagingJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n   results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination \n   token to retrieve the next set of results.\n</p>"}))
    ListModelPackagingJobsResponse.type = Types::ListModelPackagingJobsResponse
    ListModelsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the model versions that you want to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more data to retrieve),\n         Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to\n         retrieve the next set of models.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n         If you specify a value greater than 100, a ValidationException\n         error occurs. The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListModelsRequest.type = Types::ListModelsRequest
    ListModelsResponse.add_member(:models, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelMetadataList, location_name: 'Models', traits: {"smithy.api#documentation" => "<p>A list of model versions in the specified project. </p>"}))
    ListModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Lookout for Vision returns this token\n         that you can use in the subsequent request to retrieve the next set of models. </p>"}))
    ListModelsResponse.type = Types::ListModelsResponse
    ListProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more data to retrieve),\n         Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to\n         retrieve the next set of projects.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProjectsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n         If you specify a value greater than 100, a ValidationException\n         error occurs. The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:projects, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectMetadataList, location_name: 'Projects', traits: {"smithy.api#documentation" => "<p>A list of projects in your AWS account.</p>"}))
    ListProjectsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Lookout for Vision returns this token\n         that you can use in the subsequent request to retrieve the next set of projects.</p>"}))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model for which you want to list tags. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tag keys and values attached to the specified model.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModelDescription.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model</p>"}))
    ModelDescription.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model.</p>"}))
    ModelDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The unix timestamp for the date and time that the model was created. </p>"}))
    ModelDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDescriptionMessage, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the model.</p>"}))
    ModelDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the model.</p>"}))
    ModelDescription.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the model.</p>"}))
    ModelDescription.add_member(:performance, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPerformance, location_name: 'Performance', traits: {"smithy.api#documentation" => "<p>Performance metrics for the model. Created during training.</p>"}))
    ModelDescription.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>The S3 location where Amazon Lookout for Vision saves model training files.</p>"}))
    ModelDescription.add_member(:evaluation_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputS3Object, location_name: 'EvaluationManifest', traits: {"smithy.api#documentation" => "<p>The S3 location where Amazon Lookout for Vision saves the manifest file\n         that was used to test the trained model and generate the performance scores.</p>"}))
    ModelDescription.add_member(:evaluation_result, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputS3Object, location_name: 'EvaluationResult', traits: {"smithy.api#documentation" => "<p>The S3 location where Amazon Lookout for Vision saves the performance metrics.</p>"}))
    ModelDescription.add_member(:evaluation_end_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EvaluationEndTimestamp', traits: {"smithy.api#documentation" => "<p>The unix timestamp for the date and time that the evaluation ended. </p>"}))
    ModelDescription.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifer for the AWS Key Management Service (AWS KMS) key that was used to encrypt the model\n         during training.</p>"}))
    ModelDescription.add_member(:min_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MinInferenceUnits', traits: {"smithy.api#documentation" => "<p>The minimum number of inference units used by the model. For more information,\n         see <a>StartModel</a>\n         </p>"}))
    ModelDescription.add_member(:max_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MaxInferenceUnits', traits: {"smithy.api#documentation" => "<p>The maximum number of inference units Amazon Lookout for Vision uses to auto-scale the model.\n         For more information, see <a>StartModel</a>.</p>"}))
    ModelDescription.type = Types::ModelDescription
    ModelHostingStatus.add_member(:starting_hosting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING_HOSTING', traits: {"smithy.api#enumValue" => "STARTING_HOSTING"}))
    ModelHostingStatus.add_member(:hosted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOSTED', traits: {"smithy.api#enumValue" => "HOSTED"}))
    ModelHostingStatus.add_member(:hosting_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOSTING_FAILED', traits: {"smithy.api#enumValue" => "HOSTING_FAILED"}))
    ModelHostingStatus.add_member(:stopping_hosting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING_HOSTING', traits: {"smithy.api#enumValue" => "STOPPING_HOSTING"}))
    ModelHostingStatus.add_member(:system_updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_UPDATING', traits: {"smithy.api#enumValue" => "SYSTEM_UPDATING"}))
    ModelMetadata.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The unix timestamp for the date and time that the model was created. </p>"}))
    ModelMetadata.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model.</p>"}))
    ModelMetadata.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model.</p>"}))
    ModelMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDescriptionMessage, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the model.</p>"}))
    ModelMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the model.</p>"}))
    ModelMetadata.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the model.</p>"}))
    ModelMetadata.add_member(:performance, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPerformance, location_name: 'Performance', traits: {"smithy.api#documentation" => "<p>Performance metrics for the model. Not available until training has successfully completed.</p>"}))
    ModelMetadata.type = Types::ModelMetadata
    ModelMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModelMetadata)
    ModelPackagingConfiguration.add_member(:greengrass, Smithy::Schema::Shapes::ShapeRef.new(shape: GreengrassConfiguration, location_name: 'Greengrass', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>\nConfiguration information for the AWS IoT Greengrass component in a model packaging job.\n</p>", "smithy.api#required" => {}}))
    ModelPackagingConfiguration.type = Types::ModelPackagingConfiguration
    ModelPackagingDescription.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>\nThe name of the model packaging job.\n</p>"}))
    ModelPackagingDescription.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that's associated with a model that's in the model package.\n\n</p>"}))
    ModelPackagingDescription.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used in the model packaging job.\n\n</p>"}))
    ModelPackagingDescription.add_member(:model_packaging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingConfiguration, location_name: 'ModelPackagingConfiguration', traits: {"smithy.api#documentation" => "<p>\nThe configuration information used in the model packaging job.\n</p>"}))
    ModelPackagingDescription.add_member(:model_packaging_job_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobDescription, location_name: 'ModelPackagingJobDescription', traits: {"smithy.api#documentation" => "<p>The description for the model packaging job.\n\n</p>"}))
    ModelPackagingDescription.add_member(:model_packaging_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingMethod, location_name: 'ModelPackagingMethod', traits: {"smithy.api#documentation" => "<p>The AWS service used to package the job. Currently Lookout for Vision can package\njobs with AWS IoT Greengrass.\n</p>"}))
    ModelPackagingDescription.add_member(:model_packaging_output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingOutputDetails, location_name: 'ModelPackagingOutputDetails', traits: {"smithy.api#documentation" => "<p>Information about the output of the model packaging job. For more information,\n   see <a>DescribeModelPackagingJob</a>.\n</p>"}))
    ModelPackagingDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\nThe status of the model packaging job.\n</p>"}))
    ModelPackagingDescription.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>\nThe status message for the model packaging job.\n</p>"}))
    ModelPackagingDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The Unix timestamp for the time and date that the model packaging job was created.\n</p>"}))
    ModelPackagingDescription.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The Unix timestamp for the time and date that the model packaging job was last updated.\n</p>"}))
    ModelPackagingDescription.type = Types::ModelPackagingDescription
    ModelPackagingJobMetadata.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>\nThe name of the model packaging job.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>\nThe project that contains the model that is in the model package.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>\nThe version of the model that is in the model package.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:model_packaging_job_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobDescription, location_name: 'ModelPackagingJobDescription', traits: {"smithy.api#documentation" => "<p>\nThe description for the model packaging job.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:model_packaging_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingMethod, location_name: 'ModelPackagingMethod', traits: {"smithy.api#documentation" => "<p>\nThe AWS service used to package the job. Currently Lookout for Vision can package\n      jobs with AWS IoT Greengrass.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the model packaging job.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the model packaging job.\n</p>"}))
    ModelPackagingJobMetadata.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix timestamp for the time and date that the model packaging job was created.</p>"}))
    ModelPackagingJobMetadata.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix timestamp for the time and date that the model packaging job was last updated.</p>"}))
    ModelPackagingJobMetadata.type = Types::ModelPackagingJobMetadata
    ModelPackagingJobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ModelPackagingJobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ModelPackagingJobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ModelPackagingJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelPackagingJobsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobMetadata)
    ModelPackagingOutputDetails.add_member(:greengrass, Smithy::Schema::Shapes::ShapeRef.new(shape: GreengrassOutputDetails, location_name: 'Greengrass', traits: {"smithy.api#documentation" => "<p>\nInformation about the AWS IoT Greengrass component in a model packaging job.\n</p>"}))
    ModelPackagingOutputDetails.type = Types::ModelPackagingOutputDetails
    ModelPerformance.add_member(:f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'F1Score', traits: {"smithy.api#documentation" => "<p>The overall F1 score metric for the trained model.</p>"}))
    ModelPerformance.add_member(:recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Recall', traits: {"smithy.api#documentation" => "<p>The overall recall metric value for the trained model. </p>"}))
    ModelPerformance.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Precision', traits: {"smithy.api#documentation" => "<p>The overall precision metric value for the trained model.</p>"}))
    ModelPerformance.type = Types::ModelPerformance
    ModelStatus.add_member(:training, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING', traits: {"smithy.api#enumValue" => "TRAINING"}))
    ModelStatus.add_member(:trained, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINED', traits: {"smithy.api#enumValue" => "TRAINED"}))
    ModelStatus.add_member(:training_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_FAILED', traits: {"smithy.api#enumValue" => "TRAINING_FAILED"}))
    ModelStatus.add_member(:starting_hosting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING_HOSTING', traits: {"smithy.api#enumValue" => "STARTING_HOSTING"}))
    ModelStatus.add_member(:hosted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOSTED', traits: {"smithy.api#enumValue" => "HOSTED"}))
    ModelStatus.add_member(:hosting_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOSTING_FAILED', traits: {"smithy.api#enumValue" => "HOSTING_FAILED"}))
    ModelStatus.add_member(:stopping_hosting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING_HOSTING', traits: {"smithy.api#enumValue" => "STOPPING_HOSTING"}))
    ModelStatus.add_member(:system_updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_UPDATING', traits: {"smithy.api#enumValue" => "SYSTEM_UPDATING"}))
    ModelStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    OutputConfig.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 location for the output.</p>", "smithy.api#required" => {}}))
    OutputConfig.type = Types::OutputConfig
    OutputS3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'Bucket', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The bucket that contains the training output.</p>", "smithy.api#required" => {}}))
    OutputS3Object.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The location of the training output in the bucket.</p>", "smithy.api#required" => {}}))
    OutputS3Object.type = Types::OutputS3Object
    PixelAnomaly.add_member(:total_percentage_area, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'TotalPercentageArea', traits: {"smithy.api#documentation" => "<p>The percentage area of the image that the anomaly type covers.</p>"}))
    PixelAnomaly.add_member(:color, Smithy::Schema::Shapes::ShapeRef.new(shape: Color, location_name: 'Color', traits: {"smithy.api#documentation" => "<p>A hex color value for the mask that covers an anomaly type. Each anomaly type has\n         a different mask color. The color maps to the color of the anomaly type used in the\n         training dataset. </p>"}))
    PixelAnomaly.type = Types::PixelAnomaly
    ProjectDescription.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project.</p>"}))
    ProjectDescription.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>"}))
    ProjectDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The unix timestamp for the date and time that the project was created. </p>"}))
    ProjectDescription.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadataList, location_name: 'Datasets', traits: {"smithy.api#documentation" => "<p>A list of datasets in the project.</p>"}))
    ProjectDescription.type = Types::ProjectDescription
    ProjectMetadata.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project.</p>"}))
    ProjectMetadata.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>"}))
    ProjectMetadata.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The unix timestamp for the date and time that the project was created. </p>"}))
    ProjectMetadata.type = Types::ProjectMetadata
    ProjectMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectMetadata)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of the resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROJECT', traits: {"smithy.api#enumValue" => "PROJECT"}))
    ResourceType.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATASET', traits: {"smithy.api#enumValue" => "DATASET"}))
    ResourceType.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    ResourceType.add_member(:trial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIAL', traits: {"smithy.api#enumValue" => "TRIAL"}))
    ResourceType.add_member(:model_package_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL_PACKAGE_JOB', traits: {"smithy.api#enumValue" => "MODEL_PACKAGE_JOB"}))
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'Bucket', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 bucket that contains the training or model packaging job output. If you are training a model,\n         the bucket must in your AWS account. If you use an S3 bucket for a model packaging job,\n      the S3 bucket must be in the same AWS Region and AWS account in which you use AWS IoT Greengrass.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The path of the folder, within the S3 bucket, that contains the output.</p>"}))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'QuotaCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The quota code. </p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'ServiceCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The service code. </p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartModelPackagingJobRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>\nThe name of the project which contains the version of the model that you want to package.\n</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartModelPackagingJobRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>\nThe version of the model within the project that you want to package.\n</p>", "smithy.api#required" => {}}))
    StartModelPackagingJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>A name for the model packaging job. If you don't supply a value, the service creates\n   a job name for you.\n</p>"}))
    StartModelPackagingJobRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingConfiguration, location_name: 'Configuration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The configuration for the model packaging job.\n</p>", "smithy.api#required" => {}}))
    StartModelPackagingJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the model packaging job.\n</p>"}))
    StartModelPackagingJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>StartModelPackagingJob</code>\n      completes only once.  You choose the value to pass. For example, An issue might prevent you\n      from getting a response from <code>StartModelPackagingJob</code>.\n      In this case, safely retry your call\n      to <code>StartModelPackagingJob</code> by using the same <code>ClientToken</code> parameter value.</p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n      This prevents retries after a network error from making multiple dataset creation requests. You'll need to\n      provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n      value for <code>ClientToken</code> is considered a new call to <code>StartModelPackagingJob</code>. An idempotency\n      token is active for 8 hours.\n   </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    StartModelPackagingJobRequest.type = Types::StartModelPackagingJobRequest
    StartModelPackagingJobResponse.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelPackagingJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The job name for the model packaging job. If you don't supply a job name in the <code>JobName</code> input parameter,\n   the service creates a job name for you.\n\n</p>"}))
    StartModelPackagingJobResponse.type = Types::StartModelPackagingJobResponse
    StartModelRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the model that you want to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartModelRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model that you want to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartModelRequest.add_member(:min_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MinInferenceUnits', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The minimum number of inference units to use. A single\n         inference unit represents 1 hour of processing. \n         Use a higher number to increase the TPS throughput of your model. You are charged for the number\n         of inference units that you use.\n      </p>", "smithy.api#required" => {}}))
    StartModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>StartModel</code>\n         completes only once.  You choose the value to pass. For example, An issue might prevent \n         you from getting a response from <code>StartModel</code>.\n         In this case, safely retry your call\n         to <code>StartModel</code> by using the same <code>ClientToken</code> parameter value. </p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n         This prevents retries after a network error from making multiple start requests. You'll need to\n         provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n         value for <code>ClientToken</code> is considered a new call to <code>StartModel</code>. An idempotency\n         token is active for 8 hours.\n      </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    StartModelRequest.add_member(:max_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MaxInferenceUnits', traits: {"smithy.api#documentation" => "<p>The maximum number of inference units to use for auto-scaling the model. If you don't\n         specify a value, Amazon Lookout for Vision doesn't auto-scale the model.</p>"}))
    StartModelRequest.type = Types::StartModelRequest
    StartModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelHostingStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current running status of the model.</p>"}))
    StartModelResponse.type = Types::StartModelResponse
    StopModelRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the model that you want to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopModelRequest.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model that you want to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>StopModel</code>\n         completes only once.  You choose the value to pass. For example, An issue \n         might prevent you from getting a response from <code>StopModel</code>.\n         In this case, safely retry your call\n         to <code>StopModel</code> by using the same <code>ClientToken</code> parameter value.</p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n         This prevents retries after a network error from making multiple stop requests. You'll need to\n         provide your own value for other use cases. </p>\n         <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  \n         value for <code>ClientToken</code> is considered a new call to <code>StopModel</code>. An idempotency\n         token is active for 8 hours.\n         \n        \n      </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    StopModelRequest.type = Types::StopModelRequest
    StopModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelHostingStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the model.</p>"}))
    StopModelResponse.type = Types::StopModelResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The key of the tag that is attached to the specified model.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value of the tag that is attached to the specified model.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model to assign the tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The key-value tags to assign to the model.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetDevice.add_member(:jetson_xavier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JETSON_XAVIER', traits: {"smithy.api#enumValue" => "jetson_xavier"}))
    TargetPlatform.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetPlatformOs, location_name: 'Os', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The target operating system for the model. Linux is the only operating system\n         that is currently supported.\n      </p>", "smithy.api#required" => {}}))
    TargetPlatform.add_member(:arch, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetPlatformArch, location_name: 'Arch', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The target architecture for the model. The currently supported architectures are\n         X86_64 (64-bit version of the x86 instruction set) and ARM_64 (ARMv8 64-bit CPU).\n      </p>", "smithy.api#required" => {}}))
    TargetPlatform.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetPlatformAccelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>The target accelerator for the model. Currently, Amazon Lookout for Vision only supports NVIDIA (Nvidia graphics processing unit) \n         and CPU accelerators. If you specify NVIDIA as an accelerator, you must also specify the <code>gpu-code</code>, <code>trt-ver</code>,\n         and <code>cuda-ver</code> compiler options. If you don't specify an accelerator, Lookout for Vision uses the CPU for compilation and we highly recommend that you use the\n         <a>GreengrassConfiguration$CompilerOptions</a> field. For example, you can use the following compiler options for CPU: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>mcpu</code>: CPU micro-architecture. For example, <code>{'mcpu': 'skylake-avx512'}</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>mattr</code>: CPU flags. For example, <code>{'mattr': ['+neon', '+vfpv4']}</code>\n               </p>\n            </li>\n         </ul>"}))
    TargetPlatform.type = Types::TargetPlatform
    TargetPlatformAccelerator.add_member(:nvidia, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NVIDIA', traits: {"smithy.api#enumValue" => "NVIDIA"}))
    TargetPlatformArch.add_member(:arm64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARM64', traits: {"smithy.api#enumValue" => "ARM64"}))
    TargetPlatformArch.add_member(:x86_64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'X86_64', traits: {"smithy.api#enumValue" => "X86_64"}))
    TargetPlatformOs.add_member(:linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The quota code. </p>"}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code. </p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The period of time, in seconds, before the operation can be retried. </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model from which you want to remove tags. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of the keys of the tags that you want to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetEntriesRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that contains the dataset that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The type of the dataset that you want to update. Specify <code>train</code> to update\n      the training dataset. Specify <code>test</code> to update the test dataset. If you\n       have a single dataset project, specify <code>train</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:changes, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetChanges, location_name: 'Changes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The entries to add to the dataset.</p>", "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>ClientToken is an idempotency token that ensures a call to <code>UpdateDatasetEntries</code>\n         completes only once.  You choose the value to pass. For example, An issue \n         might prevent you from getting a response from <code>UpdateDatasetEntries</code>.\n         In this case, safely retry your call\n         to <code>UpdateDatasetEntries</code> by using the same <code>ClientToken</code> parameter value.</p>\n         <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. \n         This prevents retries after a network error from making multiple updates with the same dataset entries. You'll need to\n         provide your own value for other use cases. </p>\n         <p>An error occurs\n         if the other input parameters are not the same as in the first request. Using a different  \n         value for <code>ClientToken</code> is considered a new call to <code>UpdateDatasetEntries</code>. An idempotency\n         token is active for 8 hours.\n      </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateDatasetEntriesRequest.type = Types::UpdateDatasetEntriesRequest
    UpdateDatasetEntriesResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the dataset update.</p>"}))
    UpdateDatasetEntriesResponse.type = Types::UpdateDatasetEntriesResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionString, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    LookoutVisionService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lookoutvision#LookoutVisionService"
      service.name = "LookoutVisionService"
      service.version = "2020-11-20"
      service.traits = {"aws.api#service" => {"sdkId" => "LookoutVision", "arnNamespace" => "lookoutvision", "cloudFormationName" => "LookoutVision", "cloudTrailEventSource" => "lookoutvision.amazonaws.com", "endpointPrefix" => "lookoutvision"}, "aws.auth#sigv4" => {"name" => "lookoutvision"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lookout for Vision"}
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/datasets", "code" => 202}}
      end)
      service.add_operation(:create_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#CreateModel"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models", "code" => 202}}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}", "code" => 202}}
      end)
      service.add_operation(:delete_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}", "code" => 202}}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/projects/{ProjectName}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}", "code" => 200}}
      end)
      service.add_operation(:describe_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeModel"
        operation.name = "DescribeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}", "code" => 200}}
      end)
      service.add_operation(:describe_model_packaging_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeModelPackagingJob"
        operation.name = "DescribeModelPackagingJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelPackagingJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeModelPackagingJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/modelpackagingjobs/{JobName}", "code" => 200}}
      end)
      service.add_operation(:describe_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeProject"
        operation.name = "DescribeProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}", "code" => 200}}
      end)
      service.add_operation(:detect_anomalies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DetectAnomalies"
        operation.name = "DetectAnomalies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectAnomaliesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectAnomaliesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/detect", "code" => 200}}
      end)
      service.add_operation(:list_dataset_entries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListDatasetEntries"
        operation.name = "ListDatasetEntries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasetEntries.new
      end)
      service.add_operation(:list_model_packaging_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListModelPackagingJobs"
        operation.name = "ListModelPackagingJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelPackagingJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelPackagingJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/modelpackagingjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListModelPackagingJobs.new
      end)
      service.add_operation(:list_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListModels"
        operation.name = "ListModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/models", "code" => 200}}
        operation[:paginator] = Paginators::ListModels.new
      end)
      service.add_operation(:list_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListProjects"
        operation.name = "ListProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects", "code" => 200}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#StartModel"
        operation.name = "StartModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/start", "code" => 202}}
      end)
      service.add_operation(:start_model_packaging_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#StartModelPackagingJob"
        operation.name = "StartModelPackagingJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartModelPackagingJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartModelPackagingJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/modelpackagingjobs", "code" => 200}}
      end)
      service.add_operation(:stop_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#StopModel"
        operation.name = "StopModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/stop", "code" => 202}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_dataset_entries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#UpdateDatasetEntries"
        operation.name = "UpdateDatasetEntries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetEntriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetEntriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries", "code" => 202}}
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
