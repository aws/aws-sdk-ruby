# frozen_string_literal: true

# This is generated code!

module Aws::LookoutVision
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Anomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#Anomaly", name: "Anomaly")
    AnomalyClassFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#AnomalyClassFilter", name: "AnomalyClassFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(normal|anomaly)$"})
    AnomalyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#AnomalyList", name: "AnomalyList")
    AnomalyMask = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lookoutvision#AnomalyMask", name: "AnomalyMask", traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    AnomalyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#AnomalyName", name: "AnomalyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lookoutvision#Boolean", name: "Boolean")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    Color = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#Color", name: "Color", traits: {"smithy.api#length" => {"min" => 7, "max" => 7}, "smithy.api#pattern" => "^\\#[a-zA-Z0-9]{6}$"})
    CompilerOptions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#CompilerOptions", name: "CompilerOptions", traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ComponentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ComponentDescription", name: "ComponentDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_. ()':,;?]+$"})
    ComponentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ComponentName", name: "ComponentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.]+$"})
    ComponentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ComponentVersion", name: "ComponentVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([0-9]{1,6})\\.([0-9]{1,6})\\.([0-9]{1,6})$"})
    ComponentVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ComponentVersionArn", name: "ComponentVersionArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:aws:components:[^:]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ContentType", name: "ContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#CreateModelRequest", name: "CreateModelRequest")
    CreateModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#CreateModelResponse", name: "CreateModelResponse")
    CreateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#CreateProjectRequest", name: "CreateProjectRequest")
    CreateProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#CreateProjectResponse", name: "CreateProjectResponse")
    DatasetChanges = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lookoutvision#DatasetChanges", name: "DatasetChanges", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    DatasetDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DatasetDescription", name: "DatasetDescription")
    DatasetEntry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#DatasetEntry", name: "DatasetEntry", traits: {"smithy.api#length" => {"min" => 2, "max" => 8192}, "smithy.api#pattern" => "^\\{.*\\}$"})
    DatasetEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#DatasetEntryList", name: "DatasetEntryList")
    DatasetGroundTruthManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DatasetGroundTruthManifest", name: "DatasetGroundTruthManifest")
    DatasetImageStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DatasetImageStats", name: "DatasetImageStats")
    DatasetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DatasetMetadata", name: "DatasetMetadata")
    DatasetMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#DatasetMetadataList", name: "DatasetMetadataList")
    DatasetSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DatasetSource", name: "DatasetSource")
    DatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#DatasetStatus", name: "DatasetStatus")
    DatasetStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#DatasetStatusMessage", name: "DatasetStatusMessage")
    DatasetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#DatasetType", name: "DatasetType", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^train|test$"})
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lookoutvision#DateTime", name: "DateTime")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DeleteDatasetResponse", name: "DeleteDatasetResponse")
    DeleteModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DeleteModelRequest", name: "DeleteModelRequest")
    DeleteModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DeleteModelResponse", name: "DeleteModelResponse")
    DeleteProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DeleteProjectRequest", name: "DeleteProjectRequest")
    DeleteProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DeleteProjectResponse", name: "DeleteProjectResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeModelPackagingJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeModelPackagingJobRequest", name: "DescribeModelPackagingJobRequest")
    DescribeModelPackagingJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeModelPackagingJobResponse", name: "DescribeModelPackagingJobResponse")
    DescribeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeModelRequest", name: "DescribeModelRequest")
    DescribeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeModelResponse", name: "DescribeModelResponse")
    DescribeProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeProjectRequest", name: "DescribeProjectRequest")
    DescribeProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DescribeProjectResponse", name: "DescribeProjectResponse")
    DetectAnomaliesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DetectAnomaliesRequest", name: "DetectAnomaliesRequest")
    DetectAnomaliesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DetectAnomaliesResponse", name: "DetectAnomaliesResponse")
    DetectAnomalyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#DetectAnomalyResult", name: "DetectAnomalyResult")
    ExceptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ExceptionString", name: "ExceptionString")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lookoutvision#Float", name: "Float")
    GreengrassConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#GreengrassConfiguration", name: "GreengrassConfiguration")
    GreengrassOutputDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#GreengrassOutputDetails", name: "GreengrassOutputDetails")
    ImageSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ImageSource", name: "ImageSource")
    ImageSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ImageSourceType", name: "ImageSourceType", traits: {"smithy.api#pattern" => "^direct$"})
    InferenceUnits = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutvision#InferenceUnits", name: "InferenceUnits", traits: {"smithy.api#range" => {"min" => 1}})
    InputS3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#InputS3Object", name: "InputS3Object")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutvision#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsLabeled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lookoutvision#IsLabeled", name: "IsLabeled")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    ListDatasetEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListDatasetEntriesRequest", name: "ListDatasetEntriesRequest")
    ListDatasetEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListDatasetEntriesResponse", name: "ListDatasetEntriesResponse")
    ListModelPackagingJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListModelPackagingJobsRequest", name: "ListModelPackagingJobsRequest")
    ListModelPackagingJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListModelPackagingJobsResponse", name: "ListModelPackagingJobsResponse")
    ListModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListModelsRequest", name: "ListModelsRequest")
    ListModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListModelsResponse", name: "ListModelsResponse")
    ListProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListProjectsRequest", name: "ListProjectsRequest")
    ListProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListProjectsResponse", name: "ListProjectsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelArn", name: "ModelArn")
    ModelDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelDescription", name: "ModelDescription")
    ModelDescriptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelDescriptionMessage", name: "ModelDescriptionMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    ModelHostingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#ModelHostingStatus", name: "ModelHostingStatus")
    ModelMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelMetadata", name: "ModelMetadata")
    ModelMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#ModelMetadataList", name: "ModelMetadataList")
    ModelPackagingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingConfiguration", name: "ModelPackagingConfiguration")
    ModelPackagingDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingDescription", name: "ModelPackagingDescription")
    ModelPackagingJobDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingJobDescription", name: "ModelPackagingJobDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_. ()':,;?]+$"})
    ModelPackagingJobMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingJobMetadata", name: "ModelPackagingJobMetadata")
    ModelPackagingJobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingJobName", name: "ModelPackagingJobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ModelPackagingJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingJobStatus", name: "ModelPackagingJobStatus")
    ModelPackagingJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingJobsList", name: "ModelPackagingJobsList")
    ModelPackagingMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingMethod", name: "ModelPackagingMethod", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ModelPackagingOutputDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingOutputDetails", name: "ModelPackagingOutputDetails")
    ModelPackagingStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelPackagingStatusMessage", name: "ModelPackagingStatusMessage")
    ModelPerformance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ModelPerformance", name: "ModelPerformance")
    ModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#ModelStatus", name: "ModelStatus")
    ModelStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelStatusMessage", name: "ModelStatusMessage")
    ModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelVersion", name: "ModelVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^([1-9][0-9]*|latest)$"})
    ModelVersionNoLatest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ModelVersionNoLatest", name: "ModelVersionNoLatest", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^([1-9][0-9]*)$"})
    OutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#OutputConfig", name: "OutputConfig")
    OutputS3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#OutputS3Object", name: "OutputS3Object")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutvision#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\+\\=]{0,2048}$"})
    PixelAnomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#PixelAnomaly", name: "PixelAnomaly")
    ProjectArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ProjectArn", name: "ProjectArn")
    ProjectDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ProjectDescription", name: "ProjectDescription")
    ProjectMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ProjectMetadata", name: "ProjectMetadata")
    ProjectMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#ProjectMetadataList", name: "ProjectMetadataList")
    ProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#ProjectName", name: "ProjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_\\-]*$"})
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#ResourceType", name: "ResourceType")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lookoutvision#RetryAfterSeconds", name: "RetryAfterSeconds")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9!_.*'()-][/a-zA-Z0-9!_.*'()-]*)?$"})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#S3Location", name: "S3Location")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9!_.*'()-][/a-zA-Z0-9!_.*'()-]*)?$"})
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#S3ObjectVersion", name: "S3ObjectVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartModelPackagingJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#StartModelPackagingJobRequest", name: "StartModelPackagingJobRequest")
    StartModelPackagingJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#StartModelPackagingJobResponse", name: "StartModelPackagingJobResponse")
    StartModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#StartModelRequest", name: "StartModelRequest")
    StartModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#StartModelResponse", name: "StartModelResponse")
    StopModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#StopModelRequest", name: "StopModelRequest")
    StopModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#StopModelResponse", name: "StopModelResponse")
    Stream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lookoutvision#Stream", name: "Stream", traits: {"smithy.api#requiresLength" => {}, "smithy.api#streaming" => {}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#Tag", name: "Tag")
    TagArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#TagArn", name: "TagArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lookoutvision#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lookoutvision#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetDevice = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#TargetDevice", name: "TargetDevice")
    TargetPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#TargetPlatform", name: "TargetPlatform")
    TargetPlatformAccelerator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#TargetPlatformAccelerator", name: "TargetPlatformAccelerator")
    TargetPlatformArch = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#TargetPlatformArch", name: "TargetPlatformArch")
    TargetPlatformOs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lookoutvision#TargetPlatformOs", name: "TargetPlatformOs")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDatasetEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#UpdateDatasetEntriesRequest", name: "UpdateDatasetEntriesRequest")
    UpdateDatasetEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#UpdateDatasetEntriesResponse", name: "UpdateDatasetEntriesResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lookoutvision#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Anomaly.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyName, name: "Name"))
    Anomaly.add_member(:pixel_anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: PixelAnomaly, name: "PixelAnomaly"))
    Anomaly.type = Types::Anomaly
    AnomalyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Anomaly, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateDatasetRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSource, name: "DatasetSource"))
    CreateDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetMetadata, name: "DatasetMetadata"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateModelRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDescriptionMessage, name: "Description"))
    CreateModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateModelRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateModelResponse.add_member(:model_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelMetadata, name: "ModelMetadata"))
    CreateModelResponse.type = Types::CreateModelResponse
    CreateProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:project_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectMetadata, name: "ProjectMetadata"))
    CreateProjectResponse.type = Types::CreateProjectResponse
    DatasetDescription.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName"))
    DatasetDescription.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    DatasetDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    DatasetDescription.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedTimestamp"))
    DatasetDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "Status"))
    DatasetDescription.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatusMessage, name: "StatusMessage"))
    DatasetDescription.add_member(:image_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetImageStats, name: "ImageStats"))
    DatasetDescription.type = Types::DatasetDescription
    DatasetEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntry, name: "member")
    DatasetGroundTruthManifest.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: InputS3Object, name: "S3Object"))
    DatasetGroundTruthManifest.type = Types::DatasetGroundTruthManifest
    DatasetImageStats.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Total"))
    DatasetImageStats.add_member(:labeled, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Labeled"))
    DatasetImageStats.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Normal"))
    DatasetImageStats.add_member(:anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Anomaly"))
    DatasetImageStats.type = Types::DatasetImageStats
    DatasetMetadata.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    DatasetMetadata.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    DatasetMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "Status"))
    DatasetMetadata.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatusMessage, name: "StatusMessage"))
    DatasetMetadata.type = Types::DatasetMetadata
    DatasetMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetMetadata, name: "member")
    DatasetSource.add_member(:ground_truth_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetGroundTruthManifest, name: "GroundTruthManifest"))
    DatasetSource.type = Types::DatasetSource
    DatasetStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DatasetStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatasetStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    DatasetStatus.add_member(:update_failed_rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_FAILED_ROLLBACK_IN_PROGRESS"}))
    DatasetStatus.add_member(:update_failed_rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_FAILED_ROLLBACK_COMPLETE"}))
    DatasetStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DatasetStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    DatasetStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    DeleteDatasetRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteModelRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersionNoLatest, name: "ModelVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, name: "ModelArn"))
    DeleteModelResponse.type = Types::DeleteModelResponse
    DeleteProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArn, name: "ProjectArn"))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DescribeDatasetRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDescription, name: "DatasetDescription"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeModelPackagingJobRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelPackagingJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobName, name: "JobName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelPackagingJobRequest.type = Types::DescribeModelPackagingJobRequest
    DescribeModelPackagingJobResponse.add_member(:model_packaging_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingDescription, name: "ModelPackagingDescription"))
    DescribeModelPackagingJobResponse.type = Types::DescribeModelPackagingJobResponse
    DescribeModelRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeModelRequest.type = Types::DescribeModelRequest
    DescribeModelResponse.add_member(:model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDescription, name: "ModelDescription"))
    DescribeModelResponse.type = Types::DescribeModelResponse
    DescribeProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProjectRequest.type = Types::DescribeProjectRequest
    DescribeProjectResponse.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectDescription, name: "ProjectDescription"))
    DescribeProjectResponse.type = Types::DescribeProjectResponse
    DetectAnomaliesRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DetectAnomaliesRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DetectAnomaliesRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Stream, name: "Body", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DetectAnomaliesRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    DetectAnomaliesRequest[:http_payload] = :body
    DetectAnomaliesRequest[:http_payload_member] = DetectAnomaliesRequest.member(:body)
    DetectAnomaliesRequest.type = Types::DetectAnomaliesRequest
    DetectAnomaliesResponse.add_member(:detect_anomaly_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectAnomalyResult, name: "DetectAnomalyResult"))
    DetectAnomaliesResponse.type = Types::DetectAnomaliesResponse
    DetectAnomalyResult.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, name: "Source"))
    DetectAnomalyResult.add_member(:is_anomalous, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsAnomalous"))
    DetectAnomalyResult.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Confidence"))
    DetectAnomalyResult.add_member(:anomalies, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyList, name: "Anomalies"))
    DetectAnomalyResult.add_member(:anomaly_mask, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyMask, name: "AnomalyMask"))
    DetectAnomalyResult.type = Types::DetectAnomalyResult
    GreengrassConfiguration.add_member(:compiler_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CompilerOptions, name: "CompilerOptions"))
    GreengrassConfiguration.add_member(:target_device, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDevice, name: "TargetDevice"))
    GreengrassConfiguration.add_member(:target_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPlatform, name: "TargetPlatform"))
    GreengrassConfiguration.add_member(:s3_output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3OutputLocation", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GreengrassConfiguration.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, name: "ComponentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GreengrassConfiguration.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersion, name: "ComponentVersion"))
    GreengrassConfiguration.add_member(:component_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDescription, name: "ComponentDescription"))
    GreengrassConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GreengrassConfiguration.type = Types::GreengrassConfiguration
    GreengrassOutputDetails.add_member(:component_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArn, name: "ComponentVersionArn"))
    GreengrassOutputDetails.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, name: "ComponentName"))
    GreengrassOutputDetails.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersion, name: "ComponentVersion"))
    GreengrassOutputDetails.type = Types::GreengrassOutputDetails
    ImageSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSourceType, name: "Type"))
    ImageSource.type = Types::ImageSource
    InputS3Object.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "Bucket", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InputS3Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InputS3Object.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "VersionId"))
    InputS3Object.type = Types::InputS3Object
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListDatasetEntriesRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetEntriesRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetEntriesRequest.add_member(:labeled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLabeled, name: "Labeled", traits: {"smithy.api#httpQuery" => "labeled"}))
    ListDatasetEntriesRequest.add_member(:anomaly_class, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyClassFilter, name: "AnomalyClass", traits: {"smithy.api#httpQuery" => "anomalyClass"}))
    ListDatasetEntriesRequest.add_member(:before_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "BeforeCreationDate", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListDatasetEntriesRequest.add_member(:after_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "AfterCreationDate", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListDatasetEntriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetEntriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetEntriesRequest.add_member(:source_ref_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "SourceRefContains", traits: {"smithy.api#httpQuery" => "sourceRefContains"}))
    ListDatasetEntriesRequest.type = Types::ListDatasetEntriesRequest
    ListDatasetEntriesResponse.add_member(:dataset_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntryList, name: "DatasetEntries"))
    ListDatasetEntriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListDatasetEntriesResponse.type = Types::ListDatasetEntriesResponse
    ListModelPackagingJobsRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListModelPackagingJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelPackagingJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelPackagingJobsRequest.type = Types::ListModelPackagingJobsRequest
    ListModelPackagingJobsResponse.add_member(:model_packaging_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobsList, name: "ModelPackagingJobs"))
    ListModelPackagingJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListModelPackagingJobsResponse.type = Types::ListModelPackagingJobsResponse
    ListModelsRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelsRequest.type = Types::ListModelsRequest
    ListModelsResponse.add_member(:models, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelMetadataList, name: "Models"))
    ListModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListModelsResponse.type = Types::ListModelsResponse
    ListProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:projects, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectMetadataList, name: "Projects"))
    ListProjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModelDescription.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion"))
    ModelDescription.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, name: "ModelArn"))
    ModelDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    ModelDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDescriptionMessage, name: "Description"))
    ModelDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "Status"))
    ModelDescription.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatusMessage, name: "StatusMessage"))
    ModelDescription.add_member(:performance, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPerformance, name: "Performance"))
    ModelDescription.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig"))
    ModelDescription.add_member(:evaluation_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputS3Object, name: "EvaluationManifest"))
    ModelDescription.add_member(:evaluation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputS3Object, name: "EvaluationResult"))
    ModelDescription.add_member(:evaluation_end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EvaluationEndTimestamp"))
    ModelDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    ModelDescription.add_member(:min_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnits, name: "MinInferenceUnits"))
    ModelDescription.add_member(:max_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnits, name: "MaxInferenceUnits"))
    ModelDescription.type = Types::ModelDescription
    ModelHostingStatus.add_member(:starting_hosting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING_HOSTING", traits: {"smithy.api#enumValue" => "STARTING_HOSTING"}))
    ModelHostingStatus.add_member(:hosted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSTED", traits: {"smithy.api#enumValue" => "HOSTED"}))
    ModelHostingStatus.add_member(:hosting_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSTING_FAILED", traits: {"smithy.api#enumValue" => "HOSTING_FAILED"}))
    ModelHostingStatus.add_member(:stopping_hosting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING_HOSTING", traits: {"smithy.api#enumValue" => "STOPPING_HOSTING"}))
    ModelHostingStatus.add_member(:system_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_UPDATING", traits: {"smithy.api#enumValue" => "SYSTEM_UPDATING"}))
    ModelMetadata.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    ModelMetadata.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion"))
    ModelMetadata.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelArn, name: "ModelArn"))
    ModelMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDescriptionMessage, name: "Description"))
    ModelMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "Status"))
    ModelMetadata.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatusMessage, name: "StatusMessage"))
    ModelMetadata.add_member(:performance, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPerformance, name: "Performance"))
    ModelMetadata.type = Types::ModelMetadata
    ModelMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ModelMetadata, name: "member")
    ModelPackagingConfiguration.add_member(:greengrass, ::Smithy::Schema::Shapes::MemberShape.new(target: GreengrassConfiguration, name: "Greengrass", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModelPackagingConfiguration.type = Types::ModelPackagingConfiguration
    ModelPackagingDescription.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobName, name: "JobName"))
    ModelPackagingDescription.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName"))
    ModelPackagingDescription.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion"))
    ModelPackagingDescription.add_member(:model_packaging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingConfiguration, name: "ModelPackagingConfiguration"))
    ModelPackagingDescription.add_member(:model_packaging_job_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobDescription, name: "ModelPackagingJobDescription"))
    ModelPackagingDescription.add_member(:model_packaging_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingMethod, name: "ModelPackagingMethod"))
    ModelPackagingDescription.add_member(:model_packaging_output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingOutputDetails, name: "ModelPackagingOutputDetails"))
    ModelPackagingDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobStatus, name: "Status"))
    ModelPackagingDescription.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingStatusMessage, name: "StatusMessage"))
    ModelPackagingDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    ModelPackagingDescription.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedTimestamp"))
    ModelPackagingDescription.type = Types::ModelPackagingDescription
    ModelPackagingJobMetadata.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobName, name: "JobName"))
    ModelPackagingJobMetadata.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName"))
    ModelPackagingJobMetadata.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion"))
    ModelPackagingJobMetadata.add_member(:model_packaging_job_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobDescription, name: "ModelPackagingJobDescription"))
    ModelPackagingJobMetadata.add_member(:model_packaging_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingMethod, name: "ModelPackagingMethod"))
    ModelPackagingJobMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobStatus, name: "Status"))
    ModelPackagingJobMetadata.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingStatusMessage, name: "StatusMessage"))
    ModelPackagingJobMetadata.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    ModelPackagingJobMetadata.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedTimestamp"))
    ModelPackagingJobMetadata.type = Types::ModelPackagingJobMetadata
    ModelPackagingJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ModelPackagingJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ModelPackagingJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ModelPackagingJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelPackagingJobsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobMetadata, name: "member")
    ModelPackagingOutputDetails.add_member(:greengrass, ::Smithy::Schema::Shapes::MemberShape.new(target: GreengrassOutputDetails, name: "Greengrass"))
    ModelPackagingOutputDetails.type = Types::ModelPackagingOutputDetails
    ModelPerformance.add_member(:f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "F1Score"))
    ModelPerformance.add_member(:recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Recall"))
    ModelPerformance.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Precision"))
    ModelPerformance.type = Types::ModelPerformance
    ModelStatus.add_member(:training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING", traits: {"smithy.api#enumValue" => "TRAINING"}))
    ModelStatus.add_member(:trained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINED", traits: {"smithy.api#enumValue" => "TRAINED"}))
    ModelStatus.add_member(:training_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING_FAILED", traits: {"smithy.api#enumValue" => "TRAINING_FAILED"}))
    ModelStatus.add_member(:starting_hosting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING_HOSTING", traits: {"smithy.api#enumValue" => "STARTING_HOSTING"}))
    ModelStatus.add_member(:hosted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSTED", traits: {"smithy.api#enumValue" => "HOSTED"}))
    ModelStatus.add_member(:hosting_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSTING_FAILED", traits: {"smithy.api#enumValue" => "HOSTING_FAILED"}))
    ModelStatus.add_member(:stopping_hosting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING_HOSTING", traits: {"smithy.api#enumValue" => "STOPPING_HOSTING"}))
    ModelStatus.add_member(:system_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_UPDATING", traits: {"smithy.api#enumValue" => "SYSTEM_UPDATING"}))
    ModelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    OutputConfig.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OutputConfig.type = Types::OutputConfig
    OutputS3Object.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "Bucket", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OutputS3Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OutputS3Object.type = Types::OutputS3Object
    PixelAnomaly.add_member(:total_percentage_area, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "TotalPercentageArea"))
    PixelAnomaly.add_member(:color, ::Smithy::Schema::Shapes::MemberShape.new(target: Color, name: "Color"))
    PixelAnomaly.type = Types::PixelAnomaly
    ProjectDescription.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArn, name: "ProjectArn"))
    ProjectDescription.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName"))
    ProjectDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    ProjectDescription.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetMetadataList, name: "Datasets"))
    ProjectDescription.type = Types::ProjectDescription
    ProjectMetadata.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArn, name: "ProjectArn"))
    ProjectMetadata.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName"))
    ProjectMetadata.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTimestamp"))
    ProjectMetadata.type = Types::ProjectMetadata
    ProjectMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectMetadata, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECT", traits: {"smithy.api#enumValue" => "PROJECT"}))
    ResourceType.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASET", traits: {"smithy.api#enumValue" => "DATASET"}))
    ResourceType.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODEL", traits: {"smithy.api#enumValue" => "MODEL"}))
    ResourceType.add_member(:trial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIAL", traits: {"smithy.api#enumValue" => "TRIAL"}))
    ResourceType.add_member(:model_package_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODEL_PACKAGE_JOB", traits: {"smithy.api#enumValue" => "MODEL_PACKAGE_JOB"}))
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "Bucket", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    S3Location.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "Prefix"))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "QuotaCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "ServiceCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartModelPackagingJobRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartModelPackagingJobRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartModelPackagingJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobName, name: "JobName"))
    StartModelPackagingJobRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingConfiguration, name: "Configuration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartModelPackagingJobRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobDescription, name: "Description"))
    StartModelPackagingJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    StartModelPackagingJobRequest.type = Types::StartModelPackagingJobRequest
    StartModelPackagingJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPackagingJobName, name: "JobName"))
    StartModelPackagingJobResponse.type = Types::StartModelPackagingJobResponse
    StartModelRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartModelRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartModelRequest.add_member(:min_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnits, name: "MinInferenceUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    StartModelRequest.add_member(:max_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnits, name: "MaxInferenceUnits"))
    StartModelRequest.type = Types::StartModelRequest
    StartModelResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelHostingStatus, name: "Status"))
    StartModelResponse.type = Types::StartModelResponse
    StopModelRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopModelRequest.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    StopModelRequest.type = Types::StopModelRequest
    StopModelResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelHostingStatus, name: "Status"))
    StopModelResponse.type = Types::StopModelResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetDevice.add_member(:jetson_xavier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JETSON_XAVIER", traits: {"smithy.api#enumValue" => "jetson_xavier"}))
    TargetPlatform.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPlatformOs, name: "Os", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetPlatform.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPlatformArch, name: "Arch", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetPlatform.add_member(:accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPlatformAccelerator, name: "Accelerator"))
    TargetPlatform.type = Types::TargetPlatform
    TargetPlatformAccelerator.add_member(:nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NVIDIA", traits: {"smithy.api#enumValue" => "NVIDIA"}))
    TargetPlatformArch.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM64", traits: {"smithy.api#enumValue" => "ARM64"}))
    TargetPlatformArch.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "X86_64", traits: {"smithy.api#enumValue" => "X86_64"}))
    TargetPlatformOs.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetEntriesRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "ProjectName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetChanges, name: "Changes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateDatasetEntriesRequest.type = Types::UpdateDatasetEntriesRequest
    UpdateDatasetEntriesResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "Status"))
    UpdateDatasetEntriesResponse.type = Types::UpdateDatasetEntriesResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionString, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    LookoutVisionService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lookoutvision#LookoutVisionService"
      service.name = "LookoutVisionService"
      service.version = "2020-11-20"
      service.traits = {"aws.api#service" => {"sdkId" => "LookoutVision", "arnNamespace" => "lookoutvision", "cloudFormationName" => "LookoutVision", "cloudTrailEventSource" => "lookoutvision.amazonaws.com", "endpointPrefix" => "lookoutvision"}, "aws.auth#sigv4" => {"name" => "lookoutvision"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lookout for Vision"}
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/datasets", "code" => 202}}
      end)
      service.add_operation(:create_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#CreateModel"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models", "code" => 202}}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#CreateProject"
        operation.name = "CreateProject"
        operation.input = CreateProjectRequest
        operation.output = CreateProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = DeleteDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}", "code" => 202}}
      end)
      service.add_operation(:delete_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = DeleteModelRequest
        operation.output = DeleteModelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}", "code" => 202}}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = DeleteProjectRequest
        operation.output = DeleteProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/projects/{ProjectName}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}", "code" => 200}}
      end)
      service.add_operation(:describe_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeModel"
        operation.name = "DescribeModel"
        operation.input = DescribeModelRequest
        operation.output = DescribeModelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}", "code" => 200}}
      end)
      service.add_operation(:describe_model_packaging_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeModelPackagingJob"
        operation.name = "DescribeModelPackagingJob"
        operation.input = DescribeModelPackagingJobRequest
        operation.output = DescribeModelPackagingJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/modelpackagingjobs/{JobName}", "code" => 200}}
      end)
      service.add_operation(:describe_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DescribeProject"
        operation.name = "DescribeProject"
        operation.input = DescribeProjectRequest
        operation.output = DescribeProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}", "code" => 200}}
      end)
      service.add_operation(:detect_anomalies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#DetectAnomalies"
        operation.name = "DetectAnomalies"
        operation.input = DetectAnomaliesRequest
        operation.output = DetectAnomaliesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/detect", "code" => 200}}
      end)
      service.add_operation(:list_dataset_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListDatasetEntries"
        operation.name = "ListDatasetEntries"
        operation.input = ListDatasetEntriesRequest
        operation.output = ListDatasetEntriesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasetEntries.new
      end)
      service.add_operation(:list_model_packaging_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListModelPackagingJobs"
        operation.name = "ListModelPackagingJobs"
        operation.input = ListModelPackagingJobsRequest
        operation.output = ListModelPackagingJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/modelpackagingjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListModelPackagingJobs.new
      end)
      service.add_operation(:list_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListModels"
        operation.name = "ListModels"
        operation.input = ListModelsRequest
        operation.output = ListModelsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects/{ProjectName}/models", "code" => 200}}
        operation[:paginator] = Paginators::ListModels.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListProjects"
        operation.name = "ListProjects"
        operation.input = ListProjectsRequest
        operation.output = ListProjectsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/projects", "code" => 200}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-11-20/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#StartModel"
        operation.name = "StartModel"
        operation.input = StartModelRequest
        operation.output = StartModelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/start", "code" => 202}}
      end)
      service.add_operation(:start_model_packaging_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#StartModelPackagingJob"
        operation.name = "StartModelPackagingJob"
        operation.input = StartModelPackagingJobRequest
        operation.output = StartModelPackagingJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/modelpackagingjobs", "code" => 200}}
      end)
      service.add_operation(:stop_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#StopModel"
        operation.name = "StopModel"
        operation.input = StopModelRequest
        operation.output = StopModelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/stop", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-11-20/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-11-20/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_dataset_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lookoutvision#UpdateDatasetEntries"
        operation.name = "UpdateDatasetEntries"
        operation.input = UpdateDatasetEntriesRequest
        operation.output = UpdateDatasetEntriesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries", "code" => 202}}
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
