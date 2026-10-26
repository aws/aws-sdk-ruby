# frozen_string_literal: true

# This is generated code!

module Aws::KinesisAnalyticsV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddApplicationCloudWatchLoggingOptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationCloudWatchLoggingOptionRequest", name: "AddApplicationCloudWatchLoggingOptionRequest")
    AddApplicationCloudWatchLoggingOptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationCloudWatchLoggingOptionResponse", name: "AddApplicationCloudWatchLoggingOptionResponse")
    AddApplicationInputProcessingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationInputProcessingConfigurationRequest", name: "AddApplicationInputProcessingConfigurationRequest")
    AddApplicationInputProcessingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationInputProcessingConfigurationResponse", name: "AddApplicationInputProcessingConfigurationResponse")
    AddApplicationInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationInputRequest", name: "AddApplicationInputRequest")
    AddApplicationInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationInputResponse", name: "AddApplicationInputResponse")
    AddApplicationOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationOutputRequest", name: "AddApplicationOutputRequest")
    AddApplicationOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationOutputResponse", name: "AddApplicationOutputResponse")
    AddApplicationReferenceDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationReferenceDataSourceRequest", name: "AddApplicationReferenceDataSourceRequest")
    AddApplicationReferenceDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationReferenceDataSourceResponse", name: "AddApplicationReferenceDataSourceResponse")
    AddApplicationVpcConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationVpcConfigurationRequest", name: "AddApplicationVpcConfigurationRequest")
    AddApplicationVpcConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#AddApplicationVpcConfigurationResponse", name: "AddApplicationVpcConfigurationResponse")
    ApplicationCodeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationCodeConfiguration", name: "ApplicationCodeConfiguration")
    ApplicationCodeConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationCodeConfigurationDescription", name: "ApplicationCodeConfigurationDescription")
    ApplicationCodeConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationCodeConfigurationUpdate", name: "ApplicationCodeConfigurationUpdate")
    ApplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationConfiguration", name: "ApplicationConfiguration")
    ApplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationConfigurationDescription", name: "ApplicationConfigurationDescription")
    ApplicationConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationConfigurationUpdate", name: "ApplicationConfigurationUpdate")
    ApplicationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationDescription", name: "ApplicationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ApplicationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationDetail", name: "ApplicationDetail")
    ApplicationEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationEncryptionConfiguration", name: "ApplicationEncryptionConfiguration")
    ApplicationEncryptionConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationEncryptionConfigurationDescription", name: "ApplicationEncryptionConfigurationDescription")
    ApplicationEncryptionConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationEncryptionConfigurationUpdate", name: "ApplicationEncryptionConfigurationUpdate")
    ApplicationMaintenanceConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceConfigurationDescription", name: "ApplicationMaintenanceConfigurationDescription")
    ApplicationMaintenanceConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceConfigurationUpdate", name: "ApplicationMaintenanceConfigurationUpdate")
    ApplicationMaintenanceWindowEndTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceWindowEndTime", name: "ApplicationMaintenanceWindowEndTime", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([01][0-9]|2[0-3]):[0-5][0-9]$"})
    ApplicationMaintenanceWindowStartTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceWindowStartTime", name: "ApplicationMaintenanceWindowStartTime", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([01][0-9]|2[0-3]):[0-5][0-9]$"})
    ApplicationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationMode", name: "ApplicationMode")
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ApplicationOperationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationOperationInfo", name: "ApplicationOperationInfo")
    ApplicationOperationInfoDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationOperationInfoDetails", name: "ApplicationOperationInfoDetails")
    ApplicationOperationInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationOperationInfoList", name: "ApplicationOperationInfoList")
    ApplicationRestoreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationRestoreConfiguration", name: "ApplicationRestoreConfiguration")
    ApplicationRestoreType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationRestoreType", name: "ApplicationRestoreType")
    ApplicationSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSnapshotConfiguration", name: "ApplicationSnapshotConfiguration")
    ApplicationSnapshotConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSnapshotConfigurationDescription", name: "ApplicationSnapshotConfigurationDescription")
    ApplicationSnapshotConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSnapshotConfigurationUpdate", name: "ApplicationSnapshotConfigurationUpdate")
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationStatus", name: "ApplicationStatus")
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSummaries", name: "ApplicationSummaries")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSummary", name: "ApplicationSummary")
    ApplicationSystemRollbackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSystemRollbackConfiguration", name: "ApplicationSystemRollbackConfiguration")
    ApplicationSystemRollbackConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSystemRollbackConfigurationDescription", name: "ApplicationSystemRollbackConfigurationDescription")
    ApplicationSystemRollbackConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationSystemRollbackConfigurationUpdate", name: "ApplicationSystemRollbackConfigurationUpdate")
    ApplicationVersionChangeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationVersionChangeDetails", name: "ApplicationVersionChangeDetails")
    ApplicationVersionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationVersionId", name: "ApplicationVersionId", traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    ApplicationVersionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationVersionSummaries", name: "ApplicationVersionSummaries")
    ApplicationVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ApplicationVersionSummary", name: "ApplicationVersionSummary")
    ArtifactType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#ArtifactType", name: "ArtifactType")
    AuthorizedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#AuthorizedUrl", name: "AuthorizedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    BasePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#BasePath", name: "BasePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/!-_.*'()]+$"})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kinesisanalyticsv2#BooleanObject", name: "BooleanObject")
    BucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#BucketARN", name: "BucketARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    CSVMappingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CSVMappingParameters", name: "CSVMappingParameters")
    CatalogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CatalogConfiguration", name: "CatalogConfiguration")
    CatalogConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CatalogConfigurationDescription", name: "CatalogConfigurationDescription")
    CatalogConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CatalogConfigurationUpdate", name: "CatalogConfigurationUpdate")
    CheckpointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CheckpointConfiguration", name: "CheckpointConfiguration")
    CheckpointConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CheckpointConfigurationDescription", name: "CheckpointConfigurationDescription")
    CheckpointConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CheckpointConfigurationUpdate", name: "CheckpointConfigurationUpdate")
    CheckpointInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#CheckpointInterval", name: "CheckpointInterval", traits: {"smithy.api#range" => {"min" => 1}})
    CloudWatchLoggingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOption", name: "CloudWatchLoggingOption")
    CloudWatchLoggingOptionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionDescription", name: "CloudWatchLoggingOptionDescription")
    CloudWatchLoggingOptionDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionDescriptions", name: "CloudWatchLoggingOptionDescriptions")
    CloudWatchLoggingOptionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionUpdate", name: "CloudWatchLoggingOptionUpdate")
    CloudWatchLoggingOptionUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionUpdates", name: "CloudWatchLoggingOptionUpdates")
    CloudWatchLoggingOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptions", name: "CloudWatchLoggingOptions")
    CodeContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeContent", name: "CodeContent")
    CodeContentDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeContentDescription", name: "CodeContentDescription")
    CodeContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeContentType", name: "CodeContentType")
    CodeContentUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeContentUpdate", name: "CodeContentUpdate")
    CodeMD5 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeMD5", name: "CodeMD5", traits: {"smithy.api#length" => {"min" => 128, "max" => 128}})
    CodeSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeSize", name: "CodeSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 52428800}})
    CodeValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CodeValidationException", name: "CodeValidationException", traits: {"smithy.api#error" => "client"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConditionalToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ConditionalToken", name: "ConditionalToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9-_+/=]+$"})
    ConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#ConfigurationType", name: "ConfigurationType")
    CreateApplicationPresignedUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CreateApplicationPresignedUrlRequest", name: "CreateApplicationPresignedUrlRequest")
    CreateApplicationPresignedUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CreateApplicationPresignedUrlResponse", name: "CreateApplicationPresignedUrlResponse")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateApplicationSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CreateApplicationSnapshotRequest", name: "CreateApplicationSnapshotRequest")
    CreateApplicationSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CreateApplicationSnapshotResponse", name: "CreateApplicationSnapshotResponse")
    CustomArtifactConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CustomArtifactConfiguration", name: "CustomArtifactConfiguration")
    CustomArtifactConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#CustomArtifactConfigurationDescription", name: "CustomArtifactConfigurationDescription")
    CustomArtifactsConfigurationDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#CustomArtifactsConfigurationDescriptionList", name: "CustomArtifactsConfigurationDescriptionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CustomArtifactsConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#CustomArtifactsConfigurationList", name: "CustomArtifactsConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DatabaseARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#DatabaseARN", name: "DatabaseARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    DeleteApplicationCloudWatchLoggingOptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationCloudWatchLoggingOptionRequest", name: "DeleteApplicationCloudWatchLoggingOptionRequest")
    DeleteApplicationCloudWatchLoggingOptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationCloudWatchLoggingOptionResponse", name: "DeleteApplicationCloudWatchLoggingOptionResponse")
    DeleteApplicationInputProcessingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationInputProcessingConfigurationRequest", name: "DeleteApplicationInputProcessingConfigurationRequest")
    DeleteApplicationInputProcessingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationInputProcessingConfigurationResponse", name: "DeleteApplicationInputProcessingConfigurationResponse")
    DeleteApplicationOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationOutputRequest", name: "DeleteApplicationOutputRequest")
    DeleteApplicationOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationOutputResponse", name: "DeleteApplicationOutputResponse")
    DeleteApplicationReferenceDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationReferenceDataSourceRequest", name: "DeleteApplicationReferenceDataSourceRequest")
    DeleteApplicationReferenceDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationReferenceDataSourceResponse", name: "DeleteApplicationReferenceDataSourceResponse")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DeleteApplicationSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationSnapshotRequest", name: "DeleteApplicationSnapshotRequest")
    DeleteApplicationSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationSnapshotResponse", name: "DeleteApplicationSnapshotResponse")
    DeleteApplicationVpcConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationVpcConfigurationRequest", name: "DeleteApplicationVpcConfigurationRequest")
    DeleteApplicationVpcConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeleteApplicationVpcConfigurationResponse", name: "DeleteApplicationVpcConfigurationResponse")
    DeployAsApplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeployAsApplicationConfiguration", name: "DeployAsApplicationConfiguration")
    DeployAsApplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeployAsApplicationConfigurationDescription", name: "DeployAsApplicationConfigurationDescription")
    DeployAsApplicationConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DeployAsApplicationConfigurationUpdate", name: "DeployAsApplicationConfigurationUpdate")
    DescribeApplicationOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationOperationRequest", name: "DescribeApplicationOperationRequest")
    DescribeApplicationOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationOperationResponse", name: "DescribeApplicationOperationResponse")
    DescribeApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationRequest", name: "DescribeApplicationRequest")
    DescribeApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationResponse", name: "DescribeApplicationResponse")
    DescribeApplicationSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationSnapshotRequest", name: "DescribeApplicationSnapshotRequest")
    DescribeApplicationSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationSnapshotResponse", name: "DescribeApplicationSnapshotResponse")
    DescribeApplicationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationVersionRequest", name: "DescribeApplicationVersionRequest")
    DescribeApplicationVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DescribeApplicationVersionResponse", name: "DescribeApplicationVersionResponse")
    DestinationSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DestinationSchema", name: "DestinationSchema")
    DiscoverInputSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DiscoverInputSchemaRequest", name: "DiscoverInputSchemaRequest")
    DiscoverInputSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#DiscoverInputSchemaResponse", name: "DiscoverInputSchemaResponse")
    EnvironmentProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#EnvironmentProperties", name: "EnvironmentProperties")
    EnvironmentPropertyDescriptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#EnvironmentPropertyDescriptions", name: "EnvironmentPropertyDescriptions")
    EnvironmentPropertyUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#EnvironmentPropertyUpdates", name: "EnvironmentPropertyUpdates")
    ErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ErrorInfo", name: "ErrorInfo")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ErrorMessage", name: "ErrorMessage")
    ErrorString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ErrorString", name: "ErrorString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    FileKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#FileKey", name: "FileKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FlinkApplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#FlinkApplicationConfiguration", name: "FlinkApplicationConfiguration")
    FlinkApplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#FlinkApplicationConfigurationDescription", name: "FlinkApplicationConfigurationDescription")
    FlinkApplicationConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#FlinkApplicationConfigurationUpdate", name: "FlinkApplicationConfigurationUpdate")
    FlinkRunConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#FlinkRunConfiguration", name: "FlinkRunConfiguration")
    GlueDataCatalogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#GlueDataCatalogConfiguration", name: "GlueDataCatalogConfiguration")
    GlueDataCatalogConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#GlueDataCatalogConfigurationDescription", name: "GlueDataCatalogConfigurationDescription")
    GlueDataCatalogConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#GlueDataCatalogConfigurationUpdate", name: "GlueDataCatalogConfigurationUpdate")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    InAppStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#InAppStreamName", name: "InAppStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^-\\s<>&]*$"})
    InAppStreamNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#InAppStreamNames", name: "InAppStreamNames")
    InAppTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#InAppTableName", name: "InAppTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    Input = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#Input", name: "Input")
    InputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputDescription", name: "InputDescription")
    InputDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputDescriptions", name: "InputDescriptions")
    InputLambdaProcessor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputLambdaProcessor", name: "InputLambdaProcessor")
    InputLambdaProcessorDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputLambdaProcessorDescription", name: "InputLambdaProcessorDescription")
    InputLambdaProcessorUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputLambdaProcessorUpdate", name: "InputLambdaProcessorUpdate")
    InputParallelism = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputParallelism", name: "InputParallelism")
    InputParallelismCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputParallelismCount", name: "InputParallelismCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    InputParallelismUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputParallelismUpdate", name: "InputParallelismUpdate")
    InputProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputProcessingConfiguration", name: "InputProcessingConfiguration")
    InputProcessingConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputProcessingConfigurationDescription", name: "InputProcessingConfigurationDescription")
    InputProcessingConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputProcessingConfigurationUpdate", name: "InputProcessingConfigurationUpdate")
    InputSchemaUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputSchemaUpdate", name: "InputSchemaUpdate")
    InputStartingPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputStartingPosition", name: "InputStartingPosition")
    InputStartingPositionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputStartingPositionConfiguration", name: "InputStartingPositionConfiguration")
    InputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputUpdate", name: "InputUpdate")
    InputUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#InputUpdates", name: "InputUpdates")
    Inputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#Inputs", name: "Inputs")
    InvalidApplicationConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InvalidApplicationConfigurationException", name: "InvalidApplicationConfigurationException", traits: {"smithy.api#error" => "client"})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    JSONMappingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#JSONMappingParameters", name: "JSONMappingParameters")
    JobPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#JobPlanDescription", name: "JobPlanDescription")
    KeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#KeyId", name: "KeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#KeyType", name: "KeyType")
    KinesisAnalyticsARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisAnalyticsARN", name: "KinesisAnalyticsARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    KinesisFirehoseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisFirehoseInput", name: "KinesisFirehoseInput")
    KinesisFirehoseInputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisFirehoseInputDescription", name: "KinesisFirehoseInputDescription")
    KinesisFirehoseInputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisFirehoseInputUpdate", name: "KinesisFirehoseInputUpdate")
    KinesisFirehoseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisFirehoseOutput", name: "KinesisFirehoseOutput")
    KinesisFirehoseOutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisFirehoseOutputDescription", name: "KinesisFirehoseOutputDescription")
    KinesisFirehoseOutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisFirehoseOutputUpdate", name: "KinesisFirehoseOutputUpdate")
    KinesisStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisStreamsInput", name: "KinesisStreamsInput")
    KinesisStreamsInputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisStreamsInputDescription", name: "KinesisStreamsInputDescription")
    KinesisStreamsInputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisStreamsInputUpdate", name: "KinesisStreamsInputUpdate")
    KinesisStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisStreamsOutput", name: "KinesisStreamsOutput")
    KinesisStreamsOutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisStreamsOutputDescription", name: "KinesisStreamsOutputDescription")
    KinesisStreamsOutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#KinesisStreamsOutputUpdate", name: "KinesisStreamsOutputUpdate")
    LambdaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#LambdaOutput", name: "LambdaOutput")
    LambdaOutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#LambdaOutputDescription", name: "LambdaOutputDescription")
    LambdaOutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#LambdaOutputUpdate", name: "LambdaOutputUpdate")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListApplicationOperationsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationOperationsInputLimit", name: "ListApplicationOperationsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationOperationsRequest", name: "ListApplicationOperationsRequest")
    ListApplicationOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationOperationsResponse", name: "ListApplicationOperationsResponse")
    ListApplicationSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationSnapshotsRequest", name: "ListApplicationSnapshotsRequest")
    ListApplicationSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationSnapshotsResponse", name: "ListApplicationSnapshotsResponse")
    ListApplicationVersionsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationVersionsInputLimit", name: "ListApplicationVersionsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationVersionsRequest", name: "ListApplicationVersionsRequest")
    ListApplicationVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationVersionsResponse", name: "ListApplicationVersionsResponse")
    ListApplicationsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationsInputLimit", name: "ListApplicationsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListSnapshotsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListSnapshotsInputLimit", name: "ListSnapshotsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#LogLevel", name: "LogLevel")
    LogStreamARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#LogStreamARN", name: "LogStreamARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    MappingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#MappingParameters", name: "MappingParameters")
    MavenArtifactId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#MavenArtifactId", name: "MavenArtifactId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    MavenGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#MavenGroupId", name: "MavenGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    MavenReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#MavenReference", name: "MavenReference")
    MavenVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#MavenVersion", name: "MavenVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    MetricsLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#MetricsLevel", name: "MetricsLevel")
    MinPauseBetweenCheckpoints = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#MinPauseBetweenCheckpoints", name: "MinPauseBetweenCheckpoints", traits: {"smithy.api#range" => {"min" => 0}})
    MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#MonitoringConfiguration", name: "MonitoringConfiguration")
    MonitoringConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#MonitoringConfigurationDescription", name: "MonitoringConfigurationDescription")
    MonitoringConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#MonitoringConfigurationUpdate", name: "MonitoringConfigurationUpdate")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ObjectVersion", name: "ObjectVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#Operation", name: "Operation", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OperationFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#OperationFailureDetails", name: "OperationFailureDetails")
    OperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#OperationId", name: "OperationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#OperationStatus", name: "OperationStatus")
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#Output", name: "Output")
    OutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#OutputDescription", name: "OutputDescription")
    OutputDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#OutputDescriptions", name: "OutputDescriptions")
    OutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#OutputUpdate", name: "OutputUpdate")
    OutputUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#OutputUpdates", name: "OutputUpdates")
    Outputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#Outputs", name: "Outputs")
    Parallelism = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#Parallelism", name: "Parallelism", traits: {"smithy.api#range" => {"min" => 1}})
    ParallelismConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParallelismConfiguration", name: "ParallelismConfiguration")
    ParallelismConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParallelismConfigurationDescription", name: "ParallelismConfigurationDescription")
    ParallelismConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParallelismConfigurationUpdate", name: "ParallelismConfigurationUpdate")
    ParallelismPerKPU = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParallelismPerKPU", name: "ParallelismPerKPU", traits: {"smithy.api#range" => {"min" => 1}})
    ParsedInputRecord = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParsedInputRecord", name: "ParsedInputRecord")
    ParsedInputRecordField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParsedInputRecordField", name: "ParsedInputRecordField")
    ParsedInputRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ParsedInputRecords", name: "ParsedInputRecords")
    ProcessedInputRecord = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ProcessedInputRecord", name: "ProcessedInputRecord")
    ProcessedInputRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ProcessedInputRecords", name: "ProcessedInputRecords")
    PropertyGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#PropertyGroup", name: "PropertyGroup")
    PropertyGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#PropertyGroups", name: "PropertyGroups", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#PropertyKey", name: "PropertyKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PropertyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kinesisanalyticsv2#PropertyMap", name: "PropertyMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    PropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#PropertyValue", name: "PropertyValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RawInputRecord = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RawInputRecord", name: "RawInputRecord")
    RawInputRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#RawInputRecords", name: "RawInputRecords")
    RecordColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordColumn", name: "RecordColumn")
    RecordColumnDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordColumnDelimiter", name: "RecordColumnDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    RecordColumnMapping = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordColumnMapping", name: "RecordColumnMapping", traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    RecordColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordColumnName", name: "RecordColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^-\\s<>&]*$"})
    RecordColumnSqlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordColumnSqlType", name: "RecordColumnSqlType", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecordColumns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordColumns", name: "RecordColumns", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    RecordEncoding = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordEncoding", name: "RecordEncoding", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^UTF-8$"})
    RecordFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordFormat", name: "RecordFormat")
    RecordFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordFormatType", name: "RecordFormatType")
    RecordRowDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordRowDelimiter", name: "RecordRowDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    RecordRowPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RecordRowPath", name: "RecordRowPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^(?=^\\$)(?=^\\S+$).*$"})
    ReferenceDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ReferenceDataSource", name: "ReferenceDataSource")
    ReferenceDataSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceDescription", name: "ReferenceDataSourceDescription")
    ReferenceDataSourceDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceDescriptions", name: "ReferenceDataSourceDescriptions")
    ReferenceDataSourceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceUpdate", name: "ReferenceDataSourceUpdate")
    ReferenceDataSourceUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceUpdates", name: "ReferenceDataSourceUpdates")
    ReferenceDataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#ReferenceDataSources", name: "ReferenceDataSources")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceProvisionedThroughputExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ResourceProvisionedThroughputExceededException", name: "ResourceProvisionedThroughputExceededException", traits: {"smithy.api#error" => "client"})
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    RollbackApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RollbackApplicationRequest", name: "RollbackApplicationRequest")
    RollbackApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RollbackApplicationResponse", name: "RollbackApplicationResponse")
    RunConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RunConfiguration", name: "RunConfiguration")
    RunConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RunConfigurationDescription", name: "RunConfigurationDescription")
    RunConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#RunConfigurationUpdate", name: "RunConfigurationUpdate")
    RuntimeEnvironment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#RuntimeEnvironment", name: "RuntimeEnvironment")
    S3ApplicationCodeLocationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ApplicationCodeLocationDescription", name: "S3ApplicationCodeLocationDescription")
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3Configuration", name: "S3Configuration")
    S3ContentBaseLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ContentBaseLocation", name: "S3ContentBaseLocation")
    S3ContentBaseLocationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ContentBaseLocationDescription", name: "S3ContentBaseLocationDescription")
    S3ContentBaseLocationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ContentBaseLocationUpdate", name: "S3ContentBaseLocationUpdate")
    S3ContentLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ContentLocation", name: "S3ContentLocation")
    S3ContentLocationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ContentLocationUpdate", name: "S3ContentLocationUpdate")
    S3ReferenceDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ReferenceDataSource", name: "S3ReferenceDataSource")
    S3ReferenceDataSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ReferenceDataSourceDescription", name: "S3ReferenceDataSourceDescription")
    S3ReferenceDataSourceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#S3ReferenceDataSourceUpdate", name: "S3ReferenceDataSourceUpdate")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#SecurityGroupId", name: "SecurityGroupId")
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionExpirationDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisanalyticsv2#SessionExpirationDurationInSeconds", name: "SessionExpirationDurationInSeconds", traits: {"smithy.api#range" => {"min" => 1800, "max" => 43200}})
    SnapshotDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#SnapshotDetails", name: "SnapshotDetails")
    SnapshotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#SnapshotName", name: "SnapshotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    SnapshotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#SnapshotStatus", name: "SnapshotStatus")
    SnapshotSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#SnapshotSummaries", name: "SnapshotSummaries")
    SourceSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#SourceSchema", name: "SourceSchema")
    SqlApplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#SqlApplicationConfiguration", name: "SqlApplicationConfiguration")
    SqlApplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#SqlApplicationConfigurationDescription", name: "SqlApplicationConfigurationDescription")
    SqlApplicationConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#SqlApplicationConfigurationUpdate", name: "SqlApplicationConfigurationUpdate")
    SqlRunConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#SqlRunConfiguration", name: "SqlRunConfiguration")
    SqlRunConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#SqlRunConfigurations", name: "SqlRunConfigurations")
    StartApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#StartApplicationRequest", name: "StartApplicationRequest")
    StartApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#StartApplicationResponse", name: "StartApplicationResponse")
    StopApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#StopApplicationRequest", name: "StopApplicationRequest")
    StopApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#StopApplicationResponse", name: "StopApplicationResponse")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#SubnetId", name: "SubnetId")
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TextContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#TextContent", name: "TextContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kinesisanalyticsv2#Timestamp", name: "Timestamp")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UnableToDetectSchemaException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UnableToDetectSchemaException", name: "UnableToDetectSchemaException", traits: {"smithy.api#error" => "client"})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationMaintenanceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UpdateApplicationMaintenanceConfigurationRequest", name: "UpdateApplicationMaintenanceConfigurationRequest")
    UpdateApplicationMaintenanceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UpdateApplicationMaintenanceConfigurationResponse", name: "UpdateApplicationMaintenanceConfigurationResponse")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UrlType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisanalyticsv2#UrlType", name: "UrlType")
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcConfiguration", name: "VpcConfiguration")
    VpcConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcConfigurationDescription", name: "VpcConfigurationDescription")
    VpcConfigurationDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcConfigurationDescriptions", name: "VpcConfigurationDescriptions")
    VpcConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcConfigurationUpdate", name: "VpcConfigurationUpdate")
    VpcConfigurationUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcConfigurationUpdates", name: "VpcConfigurationUpdates")
    VpcConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcConfigurations", name: "VpcConfigurations")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisanalyticsv2#VpcId", name: "VpcId")
    ZeppelinApplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZeppelinApplicationConfiguration", name: "ZeppelinApplicationConfiguration")
    ZeppelinApplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZeppelinApplicationConfigurationDescription", name: "ZeppelinApplicationConfigurationDescription")
    ZeppelinApplicationConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZeppelinApplicationConfigurationUpdate", name: "ZeppelinApplicationConfigurationUpdate")
    ZeppelinMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZeppelinMonitoringConfiguration", name: "ZeppelinMonitoringConfiguration")
    ZeppelinMonitoringConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZeppelinMonitoringConfigurationDescription", name: "ZeppelinMonitoringConfigurationDescription")
    ZeppelinMonitoringConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZeppelinMonitoringConfigurationUpdate", name: "ZeppelinMonitoringConfigurationUpdate")
    ZipFileContent = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.kinesisanalyticsv2#ZipFileContent", name: "ZipFileContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 52428800}})

    AddApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId"))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOption, name: "CloudWatchLoggingOption", traits: {"smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:conditional_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalToken, name: "ConditionalToken"))
    AddApplicationCloudWatchLoggingOptionRequest.type = Types::AddApplicationCloudWatchLoggingOptionRequest
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:cloud_watch_logging_option_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptionDescriptions, name: "CloudWatchLoggingOptionDescriptions"))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    AddApplicationCloudWatchLoggingOptionResponse.type = Types::AddApplicationCloudWatchLoggingOptionResponse
    AddApplicationInputProcessingConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InputId", traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProcessingConfiguration, name: "InputProcessingConfiguration", traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.type = Types::AddApplicationInputProcessingConfigurationRequest
    AddApplicationInputProcessingConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    AddApplicationInputProcessingConfigurationResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    AddApplicationInputProcessingConfigurationResponse.add_member(:input_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InputId"))
    AddApplicationInputProcessingConfigurationResponse.add_member(:input_processing_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProcessingConfigurationDescription, name: "InputProcessingConfigurationDescription"))
    AddApplicationInputProcessingConfigurationResponse.type = Types::AddApplicationInputProcessingConfigurationResponse
    AddApplicationInputRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Input, name: "Input", traits: {"smithy.api#required" => {}}))
    AddApplicationInputRequest.type = Types::AddApplicationInputRequest
    AddApplicationInputResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    AddApplicationInputResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    AddApplicationInputResponse.add_member(:input_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDescriptions, name: "InputDescriptions"))
    AddApplicationInputResponse.type = Types::AddApplicationInputResponse
    AddApplicationOutputRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: Output, name: "Output", traits: {"smithy.api#required" => {}}))
    AddApplicationOutputRequest.type = Types::AddApplicationOutputRequest
    AddApplicationOutputResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    AddApplicationOutputResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    AddApplicationOutputResponse.add_member(:output_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDescriptions, name: "OutputDescriptions"))
    AddApplicationOutputResponse.type = Types::AddApplicationOutputResponse
    AddApplicationReferenceDataSourceRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:reference_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSource, name: "ReferenceDataSource", traits: {"smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.type = Types::AddApplicationReferenceDataSourceRequest
    AddApplicationReferenceDataSourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    AddApplicationReferenceDataSourceResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    AddApplicationReferenceDataSourceResponse.add_member(:reference_data_source_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSourceDescriptions, name: "ReferenceDataSourceDescriptions"))
    AddApplicationReferenceDataSourceResponse.type = Types::AddApplicationReferenceDataSourceResponse
    AddApplicationVpcConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    AddApplicationVpcConfigurationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId"))
    AddApplicationVpcConfigurationRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration", traits: {"smithy.api#required" => {}}))
    AddApplicationVpcConfigurationRequest.add_member(:conditional_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalToken, name: "ConditionalToken"))
    AddApplicationVpcConfigurationRequest.type = Types::AddApplicationVpcConfigurationRequest
    AddApplicationVpcConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    AddApplicationVpcConfigurationResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    AddApplicationVpcConfigurationResponse.add_member(:vpc_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationDescription, name: "VpcConfigurationDescription"))
    AddApplicationVpcConfigurationResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    AddApplicationVpcConfigurationResponse.type = Types::AddApplicationVpcConfigurationResponse
    ApplicationCodeConfiguration.add_member(:code_content, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeContent, name: "CodeContent"))
    ApplicationCodeConfiguration.add_member(:code_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeContentType, name: "CodeContentType", traits: {"smithy.api#required" => {}}))
    ApplicationCodeConfiguration.type = Types::ApplicationCodeConfiguration
    ApplicationCodeConfigurationDescription.add_member(:code_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeContentType, name: "CodeContentType", traits: {"smithy.api#required" => {}}))
    ApplicationCodeConfigurationDescription.add_member(:code_content_description, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeContentDescription, name: "CodeContentDescription"))
    ApplicationCodeConfigurationDescription.type = Types::ApplicationCodeConfigurationDescription
    ApplicationCodeConfigurationUpdate.add_member(:code_content_type_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeContentType, name: "CodeContentTypeUpdate"))
    ApplicationCodeConfigurationUpdate.add_member(:code_content_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeContentUpdate, name: "CodeContentUpdate"))
    ApplicationCodeConfigurationUpdate.type = Types::ApplicationCodeConfigurationUpdate
    ApplicationConfiguration.add_member(:sql_application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlApplicationConfiguration, name: "SqlApplicationConfiguration"))
    ApplicationConfiguration.add_member(:flink_application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlinkApplicationConfiguration, name: "FlinkApplicationConfiguration"))
    ApplicationConfiguration.add_member(:environment_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentProperties, name: "EnvironmentProperties"))
    ApplicationConfiguration.add_member(:application_code_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCodeConfiguration, name: "ApplicationCodeConfiguration"))
    ApplicationConfiguration.add_member(:application_snapshot_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSnapshotConfiguration, name: "ApplicationSnapshotConfiguration"))
    ApplicationConfiguration.add_member(:application_system_rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSystemRollbackConfiguration, name: "ApplicationSystemRollbackConfiguration"))
    ApplicationConfiguration.add_member(:vpc_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurations, name: "VpcConfigurations"))
    ApplicationConfiguration.add_member(:zeppelin_application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeppelinApplicationConfiguration, name: "ZeppelinApplicationConfiguration"))
    ApplicationConfiguration.add_member(:application_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationEncryptionConfiguration, name: "ApplicationEncryptionConfiguration"))
    ApplicationConfiguration.type = Types::ApplicationConfiguration
    ApplicationConfigurationDescription.add_member(:sql_application_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlApplicationConfigurationDescription, name: "SqlApplicationConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:application_code_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCodeConfigurationDescription, name: "ApplicationCodeConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:run_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RunConfigurationDescription, name: "RunConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:flink_application_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlinkApplicationConfigurationDescription, name: "FlinkApplicationConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:environment_property_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentPropertyDescriptions, name: "EnvironmentPropertyDescriptions"))
    ApplicationConfigurationDescription.add_member(:application_snapshot_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSnapshotConfigurationDescription, name: "ApplicationSnapshotConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:application_system_rollback_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSystemRollbackConfigurationDescription, name: "ApplicationSystemRollbackConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:vpc_configuration_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationDescriptions, name: "VpcConfigurationDescriptions"))
    ApplicationConfigurationDescription.add_member(:zeppelin_application_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeppelinApplicationConfigurationDescription, name: "ZeppelinApplicationConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:application_encryption_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationEncryptionConfigurationDescription, name: "ApplicationEncryptionConfigurationDescription"))
    ApplicationConfigurationDescription.type = Types::ApplicationConfigurationDescription
    ApplicationConfigurationUpdate.add_member(:sql_application_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlApplicationConfigurationUpdate, name: "SqlApplicationConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:application_code_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCodeConfigurationUpdate, name: "ApplicationCodeConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:flink_application_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: FlinkApplicationConfigurationUpdate, name: "FlinkApplicationConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:environment_property_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentPropertyUpdates, name: "EnvironmentPropertyUpdates"))
    ApplicationConfigurationUpdate.add_member(:application_snapshot_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSnapshotConfigurationUpdate, name: "ApplicationSnapshotConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:application_system_rollback_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSystemRollbackConfigurationUpdate, name: "ApplicationSystemRollbackConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:vpc_configuration_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationUpdates, name: "VpcConfigurationUpdates"))
    ApplicationConfigurationUpdate.add_member(:zeppelin_application_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeppelinApplicationConfigurationUpdate, name: "ZeppelinApplicationConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:application_encryption_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationEncryptionConfigurationUpdate, name: "ApplicationEncryptionConfigurationUpdate"))
    ApplicationConfigurationUpdate.type = Types::ApplicationConfigurationUpdate
    ApplicationDetail.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN", traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "ApplicationDescription"))
    ApplicationDetail.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:service_execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ServiceExecutionRole"))
    ApplicationDetail.add_member(:application_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "ApplicationStatus", traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId", traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:create_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTimestamp"))
    ApplicationDetail.add_member(:last_update_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTimestamp"))
    ApplicationDetail.add_member(:application_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfigurationDescription, name: "ApplicationConfigurationDescription"))
    ApplicationDetail.add_member(:cloud_watch_logging_option_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptionDescriptions, name: "CloudWatchLoggingOptionDescriptions"))
    ApplicationDetail.add_member(:application_maintenance_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMaintenanceConfigurationDescription, name: "ApplicationMaintenanceConfigurationDescription"))
    ApplicationDetail.add_member(:application_version_updated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionUpdatedFrom"))
    ApplicationDetail.add_member(:application_version_rolled_back_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionRolledBackFrom"))
    ApplicationDetail.add_member(:application_version_create_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApplicationVersionCreateTimestamp"))
    ApplicationDetail.add_member(:conditional_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalToken, name: "ConditionalToken"))
    ApplicationDetail.add_member(:application_version_rolled_back_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionRolledBackTo"))
    ApplicationDetail.add_member(:application_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMode, name: "ApplicationMode"))
    ApplicationDetail.type = Types::ApplicationDetail
    ApplicationEncryptionConfiguration.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId"))
    ApplicationEncryptionConfiguration.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#required" => {}}))
    ApplicationEncryptionConfiguration.type = Types::ApplicationEncryptionConfiguration
    ApplicationEncryptionConfigurationDescription.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId"))
    ApplicationEncryptionConfigurationDescription.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#required" => {}}))
    ApplicationEncryptionConfigurationDescription.type = Types::ApplicationEncryptionConfigurationDescription
    ApplicationEncryptionConfigurationUpdate.add_member(:key_id_update, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyIdUpdate"))
    ApplicationEncryptionConfigurationUpdate.add_member(:key_type_update, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyTypeUpdate", traits: {"smithy.api#required" => {}}))
    ApplicationEncryptionConfigurationUpdate.type = Types::ApplicationEncryptionConfigurationUpdate
    ApplicationMaintenanceConfigurationDescription.add_member(:application_maintenance_window_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMaintenanceWindowStartTime, name: "ApplicationMaintenanceWindowStartTime", traits: {"smithy.api#required" => {}}))
    ApplicationMaintenanceConfigurationDescription.add_member(:application_maintenance_window_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMaintenanceWindowEndTime, name: "ApplicationMaintenanceWindowEndTime", traits: {"smithy.api#required" => {}}))
    ApplicationMaintenanceConfigurationDescription.type = Types::ApplicationMaintenanceConfigurationDescription
    ApplicationMaintenanceConfigurationUpdate.add_member(:application_maintenance_window_start_time_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMaintenanceWindowStartTime, name: "ApplicationMaintenanceWindowStartTimeUpdate", traits: {"smithy.api#required" => {}}))
    ApplicationMaintenanceConfigurationUpdate.type = Types::ApplicationMaintenanceConfigurationUpdate
    ApplicationMode.add_member(:streaming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAMING", traits: {"smithy.api#enumValue" => "STREAMING"}))
    ApplicationMode.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERACTIVE", traits: {"smithy.api#enumValue" => "INTERACTIVE"}))
    ApplicationOperationInfo.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    ApplicationOperationInfo.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    ApplicationOperationInfo.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    ApplicationOperationInfo.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    ApplicationOperationInfo.add_member(:operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "OperationStatus"))
    ApplicationOperationInfo.type = Types::ApplicationOperationInfo
    ApplicationOperationInfoDetails.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation", traits: {"smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "OperationStatus", traits: {"smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:application_version_change_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionChangeDetails, name: "ApplicationVersionChangeDetails"))
    ApplicationOperationInfoDetails.add_member(:operation_failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationFailureDetails, name: "OperationFailureDetails"))
    ApplicationOperationInfoDetails.type = Types::ApplicationOperationInfoDetails
    ApplicationOperationInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationOperationInfo, name: "member"))
    ApplicationRestoreConfiguration.add_member(:application_restore_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationRestoreType, name: "ApplicationRestoreType", traits: {"smithy.api#required" => {}}))
    ApplicationRestoreConfiguration.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "SnapshotName"))
    ApplicationRestoreConfiguration.type = Types::ApplicationRestoreConfiguration
    ApplicationRestoreType.add_member(:skip_restore_from_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP_RESTORE_FROM_SNAPSHOT", traits: {"smithy.api#enumValue" => "SKIP_RESTORE_FROM_SNAPSHOT"}))
    ApplicationRestoreType.add_member(:restore_from_latest_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_FROM_LATEST_SNAPSHOT", traits: {"smithy.api#enumValue" => "RESTORE_FROM_LATEST_SNAPSHOT"}))
    ApplicationRestoreType.add_member(:restore_from_custom_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_FROM_CUSTOM_SNAPSHOT", traits: {"smithy.api#enumValue" => "RESTORE_FROM_CUSTOM_SNAPSHOT"}))
    ApplicationSnapshotConfiguration.add_member(:snapshots_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "SnapshotsEnabled", traits: {"smithy.api#required" => {}}))
    ApplicationSnapshotConfiguration.type = Types::ApplicationSnapshotConfiguration
    ApplicationSnapshotConfigurationDescription.add_member(:snapshots_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "SnapshotsEnabled", traits: {"smithy.api#required" => {}}))
    ApplicationSnapshotConfigurationDescription.type = Types::ApplicationSnapshotConfigurationDescription
    ApplicationSnapshotConfigurationUpdate.add_member(:snapshots_enabled_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "SnapshotsEnabledUpdate", traits: {"smithy.api#required" => {}}))
    ApplicationSnapshotConfigurationUpdate.type = Types::ApplicationSnapshotConfigurationUpdate
    ApplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ApplicationStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    ApplicationStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ApplicationStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ApplicationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApplicationStatus.add_member(:autoscaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOSCALING", traits: {"smithy.api#enumValue" => "AUTOSCALING"}))
    ApplicationStatus.add_member(:force_stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORCE_STOPPING", traits: {"smithy.api#enumValue" => "FORCE_STOPPING"}))
    ApplicationStatus.add_member(:rolling_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLING_BACK", traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    ApplicationStatus.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ApplicationStatus.add_member(:rolled_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLED_BACK", traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    ApplicationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ApplicationSummary.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "ApplicationStatus", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMode, name: "ApplicationMode"))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSystemRollbackConfiguration.add_member(:rollback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "RollbackEnabled", traits: {"smithy.api#required" => {}}))
    ApplicationSystemRollbackConfiguration.type = Types::ApplicationSystemRollbackConfiguration
    ApplicationSystemRollbackConfigurationDescription.add_member(:rollback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "RollbackEnabled", traits: {"smithy.api#required" => {}}))
    ApplicationSystemRollbackConfigurationDescription.type = Types::ApplicationSystemRollbackConfigurationDescription
    ApplicationSystemRollbackConfigurationUpdate.add_member(:rollback_enabled_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "RollbackEnabledUpdate", traits: {"smithy.api#required" => {}}))
    ApplicationSystemRollbackConfigurationUpdate.type = Types::ApplicationSystemRollbackConfigurationUpdate
    ApplicationVersionChangeDetails.add_member(:application_version_updated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionUpdatedFrom", traits: {"smithy.api#required" => {}}))
    ApplicationVersionChangeDetails.add_member(:application_version_updated_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionUpdatedTo", traits: {"smithy.api#required" => {}}))
    ApplicationVersionChangeDetails.type = Types::ApplicationVersionChangeDetails
    ApplicationVersionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionSummary, name: "member"))
    ApplicationVersionSummary.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId", traits: {"smithy.api#required" => {}}))
    ApplicationVersionSummary.add_member(:application_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "ApplicationStatus", traits: {"smithy.api#required" => {}}))
    ApplicationVersionSummary.type = Types::ApplicationVersionSummary
    ArtifactType.add_member(:udf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDF", traits: {"smithy.api#enumValue" => "UDF"}))
    ArtifactType.add_member(:dependency_jar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPENDENCY_JAR", traits: {"smithy.api#enumValue" => "DEPENDENCY_JAR"}))
    CSVMappingParameters.add_member(:record_row_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordRowDelimiter, name: "RecordRowDelimiter", traits: {"smithy.api#required" => {}}))
    CSVMappingParameters.add_member(:record_column_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumnDelimiter, name: "RecordColumnDelimiter", traits: {"smithy.api#required" => {}}))
    CSVMappingParameters.type = Types::CSVMappingParameters
    CatalogConfiguration.add_member(:glue_data_catalog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogConfiguration, name: "GlueDataCatalogConfiguration", traits: {"smithy.api#required" => {}}))
    CatalogConfiguration.type = Types::CatalogConfiguration
    CatalogConfigurationDescription.add_member(:glue_data_catalog_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogConfigurationDescription, name: "GlueDataCatalogConfigurationDescription", traits: {"smithy.api#required" => {}}))
    CatalogConfigurationDescription.type = Types::CatalogConfigurationDescription
    CatalogConfigurationUpdate.add_member(:glue_data_catalog_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogConfigurationUpdate, name: "GlueDataCatalogConfigurationUpdate", traits: {"smithy.api#required" => {}}))
    CatalogConfigurationUpdate.type = Types::CatalogConfigurationUpdate
    CheckpointConfiguration.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationType", traits: {"smithy.api#required" => {}}))
    CheckpointConfiguration.add_member(:checkpointing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "CheckpointingEnabled"))
    CheckpointConfiguration.add_member(:checkpoint_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointInterval, name: "CheckpointInterval"))
    CheckpointConfiguration.add_member(:min_pause_between_checkpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: MinPauseBetweenCheckpoints, name: "MinPauseBetweenCheckpoints"))
    CheckpointConfiguration.type = Types::CheckpointConfiguration
    CheckpointConfigurationDescription.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationType"))
    CheckpointConfigurationDescription.add_member(:checkpointing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "CheckpointingEnabled"))
    CheckpointConfigurationDescription.add_member(:checkpoint_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointInterval, name: "CheckpointInterval"))
    CheckpointConfigurationDescription.add_member(:min_pause_between_checkpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: MinPauseBetweenCheckpoints, name: "MinPauseBetweenCheckpoints"))
    CheckpointConfigurationDescription.type = Types::CheckpointConfigurationDescription
    CheckpointConfigurationUpdate.add_member(:configuration_type_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationTypeUpdate"))
    CheckpointConfigurationUpdate.add_member(:checkpointing_enabled_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "CheckpointingEnabledUpdate"))
    CheckpointConfigurationUpdate.add_member(:checkpoint_interval_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointInterval, name: "CheckpointIntervalUpdate"))
    CheckpointConfigurationUpdate.add_member(:min_pause_between_checkpoints_update, ::Smithy::Schema::Shapes::MemberShape.new(target: MinPauseBetweenCheckpoints, name: "MinPauseBetweenCheckpointsUpdate"))
    CheckpointConfigurationUpdate.type = Types::CheckpointConfigurationUpdate
    CloudWatchLoggingOption.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamARN, name: "LogStreamARN", traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOption.type = Types::CloudWatchLoggingOption
    CloudWatchLoggingOptionDescription.add_member(:cloud_watch_logging_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "CloudWatchLoggingOptionId"))
    CloudWatchLoggingOptionDescription.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamARN, name: "LogStreamARN", traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOptionDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    CloudWatchLoggingOptionDescription.type = Types::CloudWatchLoggingOptionDescription
    CloudWatchLoggingOptionDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptionDescription, name: "member"))
    CloudWatchLoggingOptionUpdate.add_member(:cloud_watch_logging_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "CloudWatchLoggingOptionId", traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOptionUpdate.add_member(:log_stream_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamARN, name: "LogStreamARNUpdate"))
    CloudWatchLoggingOptionUpdate.type = Types::CloudWatchLoggingOptionUpdate
    CloudWatchLoggingOptionUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptionUpdate, name: "member"))
    CloudWatchLoggingOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOption, name: "member"))
    CodeContent.add_member(:text_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TextContent, name: "TextContent"))
    CodeContent.add_member(:zip_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ZipFileContent, name: "ZipFileContent"))
    CodeContent.add_member(:s3_content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentLocation, name: "S3ContentLocation"))
    CodeContent.type = Types::CodeContent
    CodeContentDescription.add_member(:text_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TextContent, name: "TextContent"))
    CodeContentDescription.add_member(:code_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeMD5, name: "CodeMD5"))
    CodeContentDescription.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSize, name: "CodeSize"))
    CodeContentDescription.add_member(:s3_application_code_location_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ApplicationCodeLocationDescription, name: "S3ApplicationCodeLocationDescription"))
    CodeContentDescription.type = Types::CodeContentDescription
    CodeContentType.add_member(:plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    CodeContentType.add_member(:zipfile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZIPFILE", traits: {"smithy.api#enumValue" => "ZIPFILE"}))
    CodeContentUpdate.add_member(:text_content_update, ::Smithy::Schema::Shapes::MemberShape.new(target: TextContent, name: "TextContentUpdate"))
    CodeContentUpdate.add_member(:zip_file_content_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ZipFileContent, name: "ZipFileContentUpdate"))
    CodeContentUpdate.add_member(:s3_content_location_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentLocationUpdate, name: "S3ContentLocationUpdate"))
    CodeContentUpdate.type = Types::CodeContentUpdate
    CodeValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    CodeValidationException.type = Types::CodeValidationException
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ConfigurationType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    CreateApplicationPresignedUrlRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    CreateApplicationPresignedUrlRequest.add_member(:url_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlType, name: "UrlType", traits: {"smithy.api#required" => {}}))
    CreateApplicationPresignedUrlRequest.add_member(:session_expiration_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionExpirationDurationInSeconds, name: "SessionExpirationDurationInSeconds"))
    CreateApplicationPresignedUrlRequest.type = Types::CreateApplicationPresignedUrlRequest
    CreateApplicationPresignedUrlResponse.add_member(:authorized_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedUrl, name: "AuthorizedUrl"))
    CreateApplicationPresignedUrlResponse.type = Types::CreateApplicationPresignedUrlResponse
    CreateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "ApplicationDescription"))
    CreateApplicationRequest.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:service_execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ServiceExecutionRole", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfiguration, name: "ApplicationConfiguration"))
    CreateApplicationRequest.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateApplicationRequest.add_member(:application_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMode, name: "ApplicationMode"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDetail, name: "ApplicationDetail", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateApplicationSnapshotRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    CreateApplicationSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "SnapshotName", traits: {"smithy.api#required" => {}}))
    CreateApplicationSnapshotRequest.type = Types::CreateApplicationSnapshotRequest
    CreateApplicationSnapshotResponse.type = Types::CreateApplicationSnapshotResponse
    CustomArtifactConfiguration.add_member(:artifact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactType, name: "ArtifactType", traits: {"smithy.api#required" => {}}))
    CustomArtifactConfiguration.add_member(:s3_content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentLocation, name: "S3ContentLocation"))
    CustomArtifactConfiguration.add_member(:maven_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: MavenReference, name: "MavenReference"))
    CustomArtifactConfiguration.type = Types::CustomArtifactConfiguration
    CustomArtifactConfigurationDescription.add_member(:artifact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactType, name: "ArtifactType"))
    CustomArtifactConfigurationDescription.add_member(:s3_content_location_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentLocation, name: "S3ContentLocationDescription"))
    CustomArtifactConfigurationDescription.add_member(:maven_reference_description, ::Smithy::Schema::Shapes::MemberShape.new(target: MavenReference, name: "MavenReferenceDescription"))
    CustomArtifactConfigurationDescription.type = Types::CustomArtifactConfigurationDescription
    CustomArtifactsConfigurationDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomArtifactConfigurationDescription, name: "member"))
    CustomArtifactsConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomArtifactConfiguration, name: "member"))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId"))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "CloudWatchLoggingOptionId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:conditional_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalToken, name: "ConditionalToken"))
    DeleteApplicationCloudWatchLoggingOptionRequest.type = Types::DeleteApplicationCloudWatchLoggingOptionRequest
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:cloud_watch_logging_option_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptionDescriptions, name: "CloudWatchLoggingOptionDescriptions"))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    DeleteApplicationCloudWatchLoggingOptionResponse.type = Types::DeleteApplicationCloudWatchLoggingOptionResponse
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:input_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InputId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.type = Types::DeleteApplicationInputProcessingConfigurationRequest
    DeleteApplicationInputProcessingConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    DeleteApplicationInputProcessingConfigurationResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    DeleteApplicationInputProcessingConfigurationResponse.type = Types::DeleteApplicationInputProcessingConfigurationResponse
    DeleteApplicationOutputRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:output_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "OutputId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.type = Types::DeleteApplicationOutputRequest
    DeleteApplicationOutputResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    DeleteApplicationOutputResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    DeleteApplicationOutputResponse.type = Types::DeleteApplicationOutputResponse
    DeleteApplicationReferenceDataSourceRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ReferenceId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.type = Types::DeleteApplicationReferenceDataSourceRequest
    DeleteApplicationReferenceDataSourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    DeleteApplicationReferenceDataSourceResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    DeleteApplicationReferenceDataSourceResponse.type = Types::DeleteApplicationReferenceDataSourceResponse
    DeleteApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:create_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteApplicationSnapshotRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "SnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationSnapshotRequest.add_member(:snapshot_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SnapshotCreationTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteApplicationSnapshotRequest.type = Types::DeleteApplicationSnapshotRequest
    DeleteApplicationSnapshotResponse.type = Types::DeleteApplicationSnapshotResponse
    DeleteApplicationVpcConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationVpcConfigurationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId"))
    DeleteApplicationVpcConfigurationRequest.add_member(:vpc_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "VpcConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationVpcConfigurationRequest.add_member(:conditional_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalToken, name: "ConditionalToken"))
    DeleteApplicationVpcConfigurationRequest.type = Types::DeleteApplicationVpcConfigurationRequest
    DeleteApplicationVpcConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    DeleteApplicationVpcConfigurationResponse.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId"))
    DeleteApplicationVpcConfigurationResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    DeleteApplicationVpcConfigurationResponse.type = Types::DeleteApplicationVpcConfigurationResponse
    DeployAsApplicationConfiguration.add_member(:s3_content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentBaseLocation, name: "S3ContentLocation", traits: {"smithy.api#required" => {}}))
    DeployAsApplicationConfiguration.type = Types::DeployAsApplicationConfiguration
    DeployAsApplicationConfigurationDescription.add_member(:s3_content_location_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentBaseLocationDescription, name: "S3ContentLocationDescription", traits: {"smithy.api#required" => {}}))
    DeployAsApplicationConfigurationDescription.type = Types::DeployAsApplicationConfigurationDescription
    DeployAsApplicationConfigurationUpdate.add_member(:s3_content_location_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentBaseLocationUpdate, name: "S3ContentLocationUpdate"))
    DeployAsApplicationConfigurationUpdate.type = Types::DeployAsApplicationConfigurationUpdate
    DescribeApplicationOperationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationOperationRequest.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId", traits: {"smithy.api#required" => {}}))
    DescribeApplicationOperationRequest.type = Types::DescribeApplicationOperationRequest
    DescribeApplicationOperationResponse.add_member(:application_operation_info_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationOperationInfoDetails, name: "ApplicationOperationInfoDetails"))
    DescribeApplicationOperationResponse.type = Types::DescribeApplicationOperationResponse
    DescribeApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationRequest.add_member(:include_additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "IncludeAdditionalDetails"))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDetail, name: "ApplicationDetail", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DescribeApplicationSnapshotRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "SnapshotName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationSnapshotRequest.type = Types::DescribeApplicationSnapshotRequest
    DescribeApplicationSnapshotResponse.add_member(:snapshot_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotDetails, name: "SnapshotDetails", traits: {"smithy.api#required" => {}}))
    DescribeApplicationSnapshotResponse.type = Types::DescribeApplicationSnapshotResponse
    DescribeApplicationVersionRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationVersionRequest.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId", traits: {"smithy.api#required" => {}}))
    DescribeApplicationVersionRequest.type = Types::DescribeApplicationVersionRequest
    DescribeApplicationVersionResponse.add_member(:application_version_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDetail, name: "ApplicationVersionDetail"))
    DescribeApplicationVersionResponse.type = Types::DescribeApplicationVersionResponse
    DestinationSchema.add_member(:record_format_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFormatType, name: "RecordFormatType", traits: {"smithy.api#required" => {}}))
    DestinationSchema.type = Types::DestinationSchema
    DiscoverInputSchemaRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    DiscoverInputSchemaRequest.add_member(:service_execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ServiceExecutionRole", traits: {"smithy.api#required" => {}}))
    DiscoverInputSchemaRequest.add_member(:input_starting_position_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputStartingPositionConfiguration, name: "InputStartingPositionConfiguration"))
    DiscoverInputSchemaRequest.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "S3Configuration"))
    DiscoverInputSchemaRequest.add_member(:input_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProcessingConfiguration, name: "InputProcessingConfiguration"))
    DiscoverInputSchemaRequest.type = Types::DiscoverInputSchemaRequest
    DiscoverInputSchemaResponse.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSchema, name: "InputSchema"))
    DiscoverInputSchemaResponse.add_member(:parsed_input_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedInputRecords, name: "ParsedInputRecords"))
    DiscoverInputSchemaResponse.add_member(:processed_input_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedInputRecords, name: "ProcessedInputRecords"))
    DiscoverInputSchemaResponse.add_member(:raw_input_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RawInputRecords, name: "RawInputRecords"))
    DiscoverInputSchemaResponse.type = Types::DiscoverInputSchemaResponse
    EnvironmentProperties.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroups, name: "PropertyGroups", traits: {"smithy.api#required" => {}}))
    EnvironmentProperties.type = Types::EnvironmentProperties
    EnvironmentPropertyDescriptions.add_member(:property_group_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroups, name: "PropertyGroupDescriptions"))
    EnvironmentPropertyDescriptions.type = Types::EnvironmentPropertyDescriptions
    EnvironmentPropertyUpdates.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroups, name: "PropertyGroups", traits: {"smithy.api#required" => {}}))
    EnvironmentPropertyUpdates.type = Types::EnvironmentPropertyUpdates
    ErrorInfo.add_member(:error_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorString, name: "ErrorString"))
    ErrorInfo.type = Types::ErrorInfo
    FlinkApplicationConfiguration.add_member(:checkpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointConfiguration, name: "CheckpointConfiguration"))
    FlinkApplicationConfiguration.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "MonitoringConfiguration"))
    FlinkApplicationConfiguration.add_member(:parallelism_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelismConfiguration, name: "ParallelismConfiguration"))
    FlinkApplicationConfiguration.type = Types::FlinkApplicationConfiguration
    FlinkApplicationConfigurationDescription.add_member(:checkpoint_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointConfigurationDescription, name: "CheckpointConfigurationDescription"))
    FlinkApplicationConfigurationDescription.add_member(:monitoring_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfigurationDescription, name: "MonitoringConfigurationDescription"))
    FlinkApplicationConfigurationDescription.add_member(:parallelism_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelismConfigurationDescription, name: "ParallelismConfigurationDescription"))
    FlinkApplicationConfigurationDescription.add_member(:job_plan_description, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPlanDescription, name: "JobPlanDescription"))
    FlinkApplicationConfigurationDescription.type = Types::FlinkApplicationConfigurationDescription
    FlinkApplicationConfigurationUpdate.add_member(:checkpoint_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointConfigurationUpdate, name: "CheckpointConfigurationUpdate"))
    FlinkApplicationConfigurationUpdate.add_member(:monitoring_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfigurationUpdate, name: "MonitoringConfigurationUpdate"))
    FlinkApplicationConfigurationUpdate.add_member(:parallelism_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelismConfigurationUpdate, name: "ParallelismConfigurationUpdate"))
    FlinkApplicationConfigurationUpdate.type = Types::FlinkApplicationConfigurationUpdate
    FlinkRunConfiguration.add_member(:allow_non_restored_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AllowNonRestoredState"))
    FlinkRunConfiguration.type = Types::FlinkRunConfiguration
    GlueDataCatalogConfiguration.add_member(:database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseARN, name: "DatabaseARN", traits: {"smithy.api#required" => {}}))
    GlueDataCatalogConfiguration.type = Types::GlueDataCatalogConfiguration
    GlueDataCatalogConfigurationDescription.add_member(:database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseARN, name: "DatabaseARN", traits: {"smithy.api#required" => {}}))
    GlueDataCatalogConfigurationDescription.type = Types::GlueDataCatalogConfigurationDescription
    GlueDataCatalogConfigurationUpdate.add_member(:database_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseARN, name: "DatabaseARNUpdate", traits: {"smithy.api#required" => {}}))
    GlueDataCatalogConfigurationUpdate.type = Types::GlueDataCatalogConfigurationUpdate
    InAppStreamNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "member"))
    Input.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "NamePrefix", traits: {"smithy.api#required" => {}}))
    Input.add_member(:input_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProcessingConfiguration, name: "InputProcessingConfiguration"))
    Input.add_member(:kinesis_streams_input, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamsInput, name: "KinesisStreamsInput"))
    Input.add_member(:kinesis_firehose_input, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseInput, name: "KinesisFirehoseInput"))
    Input.add_member(:input_parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: InputParallelism, name: "InputParallelism"))
    Input.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSchema, name: "InputSchema", traits: {"smithy.api#required" => {}}))
    Input.type = Types::Input
    InputDescription.add_member(:input_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InputId"))
    InputDescription.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "NamePrefix"))
    InputDescription.add_member(:in_app_stream_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamNames, name: "InAppStreamNames"))
    InputDescription.add_member(:input_processing_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProcessingConfigurationDescription, name: "InputProcessingConfigurationDescription"))
    InputDescription.add_member(:kinesis_streams_input_description, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamsInputDescription, name: "KinesisStreamsInputDescription"))
    InputDescription.add_member(:kinesis_firehose_input_description, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseInputDescription, name: "KinesisFirehoseInputDescription"))
    InputDescription.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSchema, name: "InputSchema"))
    InputDescription.add_member(:input_parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: InputParallelism, name: "InputParallelism"))
    InputDescription.add_member(:input_starting_position_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputStartingPositionConfiguration, name: "InputStartingPositionConfiguration"))
    InputDescription.type = Types::InputDescription
    InputDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDescription, name: "member"))
    InputLambdaProcessor.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    InputLambdaProcessor.type = Types::InputLambdaProcessor
    InputLambdaProcessorDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    InputLambdaProcessorDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    InputLambdaProcessorDescription.type = Types::InputLambdaProcessorDescription
    InputLambdaProcessorUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARNUpdate", traits: {"smithy.api#required" => {}}))
    InputLambdaProcessorUpdate.type = Types::InputLambdaProcessorUpdate
    InputParallelism.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: InputParallelismCount, name: "Count"))
    InputParallelism.type = Types::InputParallelism
    InputParallelismUpdate.add_member(:count_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InputParallelismCount, name: "CountUpdate", traits: {"smithy.api#required" => {}}))
    InputParallelismUpdate.type = Types::InputParallelismUpdate
    InputProcessingConfiguration.add_member(:input_lambda_processor, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLambdaProcessor, name: "InputLambdaProcessor", traits: {"smithy.api#required" => {}}))
    InputProcessingConfiguration.type = Types::InputProcessingConfiguration
    InputProcessingConfigurationDescription.add_member(:input_lambda_processor_description, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLambdaProcessorDescription, name: "InputLambdaProcessorDescription"))
    InputProcessingConfigurationDescription.type = Types::InputProcessingConfigurationDescription
    InputProcessingConfigurationUpdate.add_member(:input_lambda_processor_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLambdaProcessorUpdate, name: "InputLambdaProcessorUpdate", traits: {"smithy.api#required" => {}}))
    InputProcessingConfigurationUpdate.type = Types::InputProcessingConfigurationUpdate
    InputSchemaUpdate.add_member(:record_format_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFormat, name: "RecordFormatUpdate"))
    InputSchemaUpdate.add_member(:record_encoding_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordEncoding, name: "RecordEncodingUpdate"))
    InputSchemaUpdate.add_member(:record_column_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumns, name: "RecordColumnUpdates"))
    InputSchemaUpdate.type = Types::InputSchemaUpdate
    InputStartingPosition.add_member(:now, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOW", traits: {"smithy.api#enumValue" => "NOW"}))
    InputStartingPosition.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    InputStartingPosition.add_member(:last_stopped_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_STOPPED_POINT", traits: {"smithy.api#enumValue" => "LAST_STOPPED_POINT"}))
    InputStartingPositionConfiguration.add_member(:input_starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: InputStartingPosition, name: "InputStartingPosition"))
    InputStartingPositionConfiguration.type = Types::InputStartingPositionConfiguration
    InputUpdate.add_member(:input_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InputId", traits: {"smithy.api#required" => {}}))
    InputUpdate.add_member(:name_prefix_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "NamePrefixUpdate"))
    InputUpdate.add_member(:input_processing_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProcessingConfigurationUpdate, name: "InputProcessingConfigurationUpdate"))
    InputUpdate.add_member(:kinesis_streams_input_update, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamsInputUpdate, name: "KinesisStreamsInputUpdate"))
    InputUpdate.add_member(:kinesis_firehose_input_update, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseInputUpdate, name: "KinesisFirehoseInputUpdate"))
    InputUpdate.add_member(:input_schema_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSchemaUpdate, name: "InputSchemaUpdate"))
    InputUpdate.add_member(:input_parallelism_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InputParallelismUpdate, name: "InputParallelismUpdate"))
    InputUpdate.type = Types::InputUpdate
    InputUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputUpdate, name: "member"))
    Inputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Input, name: "member"))
    InvalidApplicationConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidApplicationConfigurationException.type = Types::InvalidApplicationConfigurationException
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    JSONMappingParameters.add_member(:record_row_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordRowPath, name: "RecordRowPath", traits: {"smithy.api#required" => {}}))
    JSONMappingParameters.type = Types::JSONMappingParameters
    KeyType.add_member(:aws_owned_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KEY"}))
    KeyType.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KEY"}))
    KinesisFirehoseInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseInput.type = Types::KinesisFirehoseInput
    KinesisFirehoseInputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseInputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    KinesisFirehoseInputDescription.type = Types::KinesisFirehoseInputDescription
    KinesisFirehoseInputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARNUpdate", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseInputUpdate.type = Types::KinesisFirehoseInputUpdate
    KinesisFirehoseOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseOutput.type = Types::KinesisFirehoseOutput
    KinesisFirehoseOutputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseOutputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    KinesisFirehoseOutputDescription.type = Types::KinesisFirehoseOutputDescription
    KinesisFirehoseOutputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARNUpdate", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseOutputUpdate.type = Types::KinesisFirehoseOutputUpdate
    KinesisStreamsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamsInput.type = Types::KinesisStreamsInput
    KinesisStreamsInputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamsInputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    KinesisStreamsInputDescription.type = Types::KinesisStreamsInputDescription
    KinesisStreamsInputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARNUpdate", traits: {"smithy.api#required" => {}}))
    KinesisStreamsInputUpdate.type = Types::KinesisStreamsInputUpdate
    KinesisStreamsOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamsOutput.type = Types::KinesisStreamsOutput
    KinesisStreamsOutputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamsOutputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    KinesisStreamsOutputDescription.type = Types::KinesisStreamsOutputDescription
    KinesisStreamsOutputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARNUpdate", traits: {"smithy.api#required" => {}}))
    KinesisStreamsOutputUpdate.type = Types::KinesisStreamsOutputUpdate
    LambdaOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    LambdaOutput.type = Types::LambdaOutput
    LambdaOutputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    LambdaOutputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    LambdaOutputDescription.type = Types::LambdaOutputDescription
    LambdaOutputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARNUpdate", traits: {"smithy.api#required" => {}}))
    LambdaOutputUpdate.type = Types::LambdaOutputUpdate
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListApplicationOperationsRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    ListApplicationOperationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationOperationsInputLimit, name: "Limit"))
    ListApplicationOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationOperationsRequest.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    ListApplicationOperationsRequest.add_member(:operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "OperationStatus"))
    ListApplicationOperationsRequest.type = Types::ListApplicationOperationsRequest
    ListApplicationOperationsResponse.add_member(:application_operation_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationOperationInfoList, name: "ApplicationOperationInfoList"))
    ListApplicationOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationOperationsResponse.type = Types::ListApplicationOperationsResponse
    ListApplicationSnapshotsRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    ListApplicationSnapshotsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSnapshotsInputLimit, name: "Limit"))
    ListApplicationSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationSnapshotsRequest.type = Types::ListApplicationSnapshotsRequest
    ListApplicationSnapshotsResponse.add_member(:snapshot_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotSummaries, name: "SnapshotSummaries"))
    ListApplicationSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationSnapshotsResponse.type = Types::ListApplicationSnapshotsResponse
    ListApplicationVersionsRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    ListApplicationVersionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationVersionsInputLimit, name: "Limit"))
    ListApplicationVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationVersionsRequest.type = Types::ListApplicationVersionsRequest
    ListApplicationVersionsResponse.add_member(:application_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionSummaries, name: "ApplicationVersionSummaries"))
    ListApplicationVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationVersionsResponse.type = Types::ListApplicationVersionsResponse
    ListApplicationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationsInputLimit, name: "Limit"))
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "NextToken"))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaries, name: "ApplicationSummaries", traits: {"smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "NextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisAnalyticsARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    MappingParameters.add_member(:json_mapping_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONMappingParameters, name: "JSONMappingParameters"))
    MappingParameters.add_member(:csv_mapping_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CSVMappingParameters, name: "CSVMappingParameters"))
    MappingParameters.type = Types::MappingParameters
    MavenReference.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MavenGroupId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    MavenReference.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MavenArtifactId, name: "ArtifactId", traits: {"smithy.api#required" => {}}))
    MavenReference.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: MavenVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    MavenReference.type = Types::MavenReference
    MetricsLevel.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    MetricsLevel.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "TASK"}))
    MetricsLevel.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATOR", traits: {"smithy.api#enumValue" => "OPERATOR"}))
    MetricsLevel.add_member(:parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARALLELISM", traits: {"smithy.api#enumValue" => "PARALLELISM"}))
    MonitoringConfiguration.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationType", traits: {"smithy.api#required" => {}}))
    MonitoringConfiguration.add_member(:metrics_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsLevel, name: "MetricsLevel"))
    MonitoringConfiguration.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel"))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    MonitoringConfigurationDescription.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationType"))
    MonitoringConfigurationDescription.add_member(:metrics_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsLevel, name: "MetricsLevel"))
    MonitoringConfigurationDescription.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel"))
    MonitoringConfigurationDescription.type = Types::MonitoringConfigurationDescription
    MonitoringConfigurationUpdate.add_member(:configuration_type_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationTypeUpdate"))
    MonitoringConfigurationUpdate.add_member(:metrics_level_update, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsLevel, name: "MetricsLevelUpdate"))
    MonitoringConfigurationUpdate.add_member(:log_level_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevelUpdate"))
    MonitoringConfigurationUpdate.type = Types::MonitoringConfigurationUpdate
    OperationFailureDetails.add_member(:rollback_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "RollbackOperationId"))
    OperationFailureDetails.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfo, name: "ErrorInfo"))
    OperationFailureDetails.type = Types::OperationFailureDetails
    OperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    OperationStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Output.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "Name", traits: {"smithy.api#required" => {}}))
    Output.add_member(:kinesis_streams_output, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamsOutput, name: "KinesisStreamsOutput"))
    Output.add_member(:kinesis_firehose_output, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseOutput, name: "KinesisFirehoseOutput"))
    Output.add_member(:lambda_output, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaOutput, name: "LambdaOutput"))
    Output.add_member(:destination_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSchema, name: "DestinationSchema", traits: {"smithy.api#required" => {}}))
    Output.type = Types::Output
    OutputDescription.add_member(:output_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "OutputId"))
    OutputDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "Name"))
    OutputDescription.add_member(:kinesis_streams_output_description, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamsOutputDescription, name: "KinesisStreamsOutputDescription"))
    OutputDescription.add_member(:kinesis_firehose_output_description, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseOutputDescription, name: "KinesisFirehoseOutputDescription"))
    OutputDescription.add_member(:lambda_output_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaOutputDescription, name: "LambdaOutputDescription"))
    OutputDescription.add_member(:destination_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSchema, name: "DestinationSchema"))
    OutputDescription.type = Types::OutputDescription
    OutputDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDescription, name: "member"))
    OutputUpdate.add_member(:output_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "OutputId", traits: {"smithy.api#required" => {}}))
    OutputUpdate.add_member(:name_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppStreamName, name: "NameUpdate"))
    OutputUpdate.add_member(:kinesis_streams_output_update, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamsOutputUpdate, name: "KinesisStreamsOutputUpdate"))
    OutputUpdate.add_member(:kinesis_firehose_output_update, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseOutputUpdate, name: "KinesisFirehoseOutputUpdate"))
    OutputUpdate.add_member(:lambda_output_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaOutputUpdate, name: "LambdaOutputUpdate"))
    OutputUpdate.add_member(:destination_schema_update, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSchema, name: "DestinationSchemaUpdate"))
    OutputUpdate.type = Types::OutputUpdate
    OutputUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUpdate, name: "member"))
    Outputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Output, name: "member"))
    ParallelismConfiguration.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationType", traits: {"smithy.api#required" => {}}))
    ParallelismConfiguration.add_member(:parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: Parallelism, name: "Parallelism"))
    ParallelismConfiguration.add_member(:parallelism_per_kpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelismPerKPU, name: "ParallelismPerKPU"))
    ParallelismConfiguration.add_member(:auto_scaling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AutoScalingEnabled"))
    ParallelismConfiguration.type = Types::ParallelismConfiguration
    ParallelismConfigurationDescription.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationType"))
    ParallelismConfigurationDescription.add_member(:parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: Parallelism, name: "Parallelism"))
    ParallelismConfigurationDescription.add_member(:parallelism_per_kpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelismPerKPU, name: "ParallelismPerKPU"))
    ParallelismConfigurationDescription.add_member(:current_parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: Parallelism, name: "CurrentParallelism"))
    ParallelismConfigurationDescription.add_member(:auto_scaling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AutoScalingEnabled"))
    ParallelismConfigurationDescription.type = Types::ParallelismConfigurationDescription
    ParallelismConfigurationUpdate.add_member(:configuration_type_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationType, name: "ConfigurationTypeUpdate"))
    ParallelismConfigurationUpdate.add_member(:parallelism_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Parallelism, name: "ParallelismUpdate"))
    ParallelismConfigurationUpdate.add_member(:parallelism_per_kpu_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelismPerKPU, name: "ParallelismPerKPUUpdate"))
    ParallelismConfigurationUpdate.add_member(:auto_scaling_enabled_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AutoScalingEnabledUpdate"))
    ParallelismConfigurationUpdate.type = Types::ParallelismConfigurationUpdate
    ParsedInputRecord.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedInputRecordField, name: "member"))
    ParsedInputRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedInputRecord, name: "member"))
    ProcessedInputRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedInputRecord, name: "member"))
    PropertyGroup.add_member(:property_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PropertyGroupId", traits: {"smithy.api#required" => {}}))
    PropertyGroup.add_member(:property_map, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyMap, name: "PropertyMap", traits: {"smithy.api#required" => {}}))
    PropertyGroup.type = Types::PropertyGroup
    PropertyGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroup, name: "member"))
    PropertyMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyKey, name: "key"))
    PropertyMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValue, name: "value"))
    RawInputRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RawInputRecord, name: "member"))
    RecordColumn.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumnName, name: "Name", traits: {"smithy.api#required" => {}}))
    RecordColumn.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumnMapping, name: "Mapping"))
    RecordColumn.add_member(:sql_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumnSqlType, name: "SqlType", traits: {"smithy.api#required" => {}}))
    RecordColumn.type = Types::RecordColumn
    RecordColumns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumn, name: "member"))
    RecordFormat.add_member(:record_format_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFormatType, name: "RecordFormatType", traits: {"smithy.api#required" => {}}))
    RecordFormat.add_member(:mapping_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingParameters, name: "MappingParameters"))
    RecordFormat.type = Types::RecordFormat
    RecordFormatType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    RecordFormatType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ReferenceDataSource.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppTableName, name: "TableName", traits: {"smithy.api#required" => {}}))
    ReferenceDataSource.add_member(:s3_reference_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReferenceDataSource, name: "S3ReferenceDataSource"))
    ReferenceDataSource.add_member(:reference_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSchema, name: "ReferenceSchema", traits: {"smithy.api#required" => {}}))
    ReferenceDataSource.type = Types::ReferenceDataSource
    ReferenceDataSourceDescription.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ReferenceId", traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppTableName, name: "TableName", traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:s3_reference_data_source_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReferenceDataSourceDescription, name: "S3ReferenceDataSourceDescription", traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:reference_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSchema, name: "ReferenceSchema"))
    ReferenceDataSourceDescription.type = Types::ReferenceDataSourceDescription
    ReferenceDataSourceDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSourceDescription, name: "member"))
    ReferenceDataSourceUpdate.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ReferenceId", traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceUpdate.add_member(:table_name_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InAppTableName, name: "TableNameUpdate"))
    ReferenceDataSourceUpdate.add_member(:s3_reference_data_source_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReferenceDataSourceUpdate, name: "S3ReferenceDataSourceUpdate"))
    ReferenceDataSourceUpdate.add_member(:reference_schema_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSchema, name: "ReferenceSchemaUpdate"))
    ReferenceDataSourceUpdate.type = Types::ReferenceDataSourceUpdate
    ReferenceDataSourceUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSourceUpdate, name: "member"))
    ReferenceDataSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSource, name: "member"))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceProvisionedThroughputExceededException.type = Types::ResourceProvisionedThroughputExceededException
    RollbackApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    RollbackApplicationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId", traits: {"smithy.api#required" => {}}))
    RollbackApplicationRequest.type = Types::RollbackApplicationRequest
    RollbackApplicationResponse.add_member(:application_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDetail, name: "ApplicationDetail", traits: {"smithy.api#required" => {}}))
    RollbackApplicationResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    RollbackApplicationResponse.type = Types::RollbackApplicationResponse
    RunConfiguration.add_member(:flink_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlinkRunConfiguration, name: "FlinkRunConfiguration"))
    RunConfiguration.add_member(:sql_run_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlRunConfigurations, name: "SqlRunConfigurations"))
    RunConfiguration.add_member(:application_restore_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationRestoreConfiguration, name: "ApplicationRestoreConfiguration"))
    RunConfiguration.type = Types::RunConfiguration
    RunConfigurationDescription.add_member(:application_restore_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationRestoreConfiguration, name: "ApplicationRestoreConfigurationDescription"))
    RunConfigurationDescription.add_member(:flink_run_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlinkRunConfiguration, name: "FlinkRunConfigurationDescription"))
    RunConfigurationDescription.type = Types::RunConfigurationDescription
    RunConfigurationUpdate.add_member(:flink_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlinkRunConfiguration, name: "FlinkRunConfiguration"))
    RunConfigurationUpdate.add_member(:application_restore_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationRestoreConfiguration, name: "ApplicationRestoreConfiguration"))
    RunConfigurationUpdate.type = Types::RunConfigurationUpdate
    RuntimeEnvironment.add_member(:sql_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL_1_0", traits: {"smithy.api#enumValue" => "SQL-1_0"}))
    RuntimeEnvironment.add_member(:flink_1_6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_6", traits: {"smithy.api#enumValue" => "FLINK-1_6"}))
    RuntimeEnvironment.add_member(:flink_1_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_8", traits: {"smithy.api#enumValue" => "FLINK-1_8"}))
    RuntimeEnvironment.add_member(:zeppelin_flink_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZEPPELIN_FLINK_1_0", traits: {"smithy.api#enumValue" => "ZEPPELIN-FLINK-1_0"}))
    RuntimeEnvironment.add_member(:flink_1_11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_11", traits: {"smithy.api#enumValue" => "FLINK-1_11"}))
    RuntimeEnvironment.add_member(:flink_1_13, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_13", traits: {"smithy.api#enumValue" => "FLINK-1_13"}))
    RuntimeEnvironment.add_member(:zeppelin_flink_2_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZEPPELIN_FLINK_2_0", traits: {"smithy.api#enumValue" => "ZEPPELIN-FLINK-2_0"}))
    RuntimeEnvironment.add_member(:flink_1_15, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_15", traits: {"smithy.api#enumValue" => "FLINK-1_15"}))
    RuntimeEnvironment.add_member(:zeppelin_flink_3_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZEPPELIN_FLINK_3_0", traits: {"smithy.api#enumValue" => "ZEPPELIN-FLINK-3_0"}))
    RuntimeEnvironment.add_member(:flink_1_18, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_18", traits: {"smithy.api#enumValue" => "FLINK-1_18"}))
    RuntimeEnvironment.add_member(:flink_1_19, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_19", traits: {"smithy.api#enumValue" => "FLINK-1_19"}))
    RuntimeEnvironment.add_member(:flink_1_20, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_1_20", traits: {"smithy.api#enumValue" => "FLINK-1_20"}))
    RuntimeEnvironment.add_member(:flink_2_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_2_2", traits: {"smithy.api#enumValue" => "FLINK-2_2"}))
    RuntimeEnvironment.add_member(:flink_2_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_2_3", traits: {"smithy.api#enumValue" => "FLINK-2_3"}))
    S3ApplicationCodeLocationDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3ApplicationCodeLocationDescription.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKey", traits: {"smithy.api#required" => {}}))
    S3ApplicationCodeLocationDescription.add_member(:object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersion, name: "ObjectVersion"))
    S3ApplicationCodeLocationDescription.type = Types::S3ApplicationCodeLocationDescription
    S3Configuration.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3Configuration.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKey", traits: {"smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    S3ContentBaseLocation.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3ContentBaseLocation.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: BasePath, name: "BasePath"))
    S3ContentBaseLocation.type = Types::S3ContentBaseLocation
    S3ContentBaseLocationDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3ContentBaseLocationDescription.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: BasePath, name: "BasePath"))
    S3ContentBaseLocationDescription.type = Types::S3ContentBaseLocationDescription
    S3ContentBaseLocationUpdate.add_member(:bucket_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARNUpdate"))
    S3ContentBaseLocationUpdate.add_member(:base_path_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BasePath, name: "BasePathUpdate"))
    S3ContentBaseLocationUpdate.type = Types::S3ContentBaseLocationUpdate
    S3ContentLocation.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3ContentLocation.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKey", traits: {"smithy.api#required" => {}}))
    S3ContentLocation.add_member(:object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersion, name: "ObjectVersion"))
    S3ContentLocation.type = Types::S3ContentLocation
    S3ContentLocationUpdate.add_member(:bucket_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARNUpdate"))
    S3ContentLocationUpdate.add_member(:file_key_update, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKeyUpdate"))
    S3ContentLocationUpdate.add_member(:object_version_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersion, name: "ObjectVersionUpdate"))
    S3ContentLocationUpdate.type = Types::S3ContentLocationUpdate
    S3ReferenceDataSource.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN"))
    S3ReferenceDataSource.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKey"))
    S3ReferenceDataSource.type = Types::S3ReferenceDataSource
    S3ReferenceDataSourceDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKey", traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:reference_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ReferenceRoleARN"))
    S3ReferenceDataSourceDescription.type = Types::S3ReferenceDataSourceDescription
    S3ReferenceDataSourceUpdate.add_member(:bucket_arn_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARNUpdate"))
    S3ReferenceDataSourceUpdate.add_member(:file_key_update, ::Smithy::Schema::Shapes::MemberShape.new(target: FileKey, name: "FileKeyUpdate"))
    S3ReferenceDataSourceUpdate.type = Types::S3ReferenceDataSourceUpdate
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SnapshotDetails.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "SnapshotName", traits: {"smithy.api#required" => {}}))
    SnapshotDetails.add_member(:snapshot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotStatus, name: "SnapshotStatus", traits: {"smithy.api#required" => {}}))
    SnapshotDetails.add_member(:application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "ApplicationVersionId", traits: {"smithy.api#required" => {}}))
    SnapshotDetails.add_member(:snapshot_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SnapshotCreationTimestamp"))
    SnapshotDetails.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment"))
    SnapshotDetails.add_member(:application_encryption_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationEncryptionConfigurationDescription, name: "ApplicationEncryptionConfigurationDescription"))
    SnapshotDetails.type = Types::SnapshotDetails
    SnapshotStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    SnapshotStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    SnapshotStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    SnapshotStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SnapshotSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotDetails, name: "member"))
    SourceSchema.add_member(:record_format, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFormat, name: "RecordFormat", traits: {"smithy.api#required" => {}}))
    SourceSchema.add_member(:record_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordEncoding, name: "RecordEncoding"))
    SourceSchema.add_member(:record_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordColumns, name: "RecordColumns", traits: {"smithy.api#required" => {}}))
    SourceSchema.type = Types::SourceSchema
    SqlApplicationConfiguration.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Inputs, name: "Inputs"))
    SqlApplicationConfiguration.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Outputs, name: "Outputs"))
    SqlApplicationConfiguration.add_member(:reference_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSources, name: "ReferenceDataSources"))
    SqlApplicationConfiguration.type = Types::SqlApplicationConfiguration
    SqlApplicationConfigurationDescription.add_member(:input_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDescriptions, name: "InputDescriptions"))
    SqlApplicationConfigurationDescription.add_member(:output_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDescriptions, name: "OutputDescriptions"))
    SqlApplicationConfigurationDescription.add_member(:reference_data_source_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSourceDescriptions, name: "ReferenceDataSourceDescriptions"))
    SqlApplicationConfigurationDescription.type = Types::SqlApplicationConfigurationDescription
    SqlApplicationConfigurationUpdate.add_member(:input_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: InputUpdates, name: "InputUpdates"))
    SqlApplicationConfigurationUpdate.add_member(:output_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUpdates, name: "OutputUpdates"))
    SqlApplicationConfigurationUpdate.add_member(:reference_data_source_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDataSourceUpdates, name: "ReferenceDataSourceUpdates"))
    SqlApplicationConfigurationUpdate.type = Types::SqlApplicationConfigurationUpdate
    SqlRunConfiguration.add_member(:input_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InputId", traits: {"smithy.api#required" => {}}))
    SqlRunConfiguration.add_member(:input_starting_position_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputStartingPositionConfiguration, name: "InputStartingPositionConfiguration", traits: {"smithy.api#required" => {}}))
    SqlRunConfiguration.type = Types::SqlRunConfiguration
    SqlRunConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlRunConfiguration, name: "member"))
    StartApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    StartApplicationRequest.add_member(:run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RunConfiguration, name: "RunConfiguration"))
    StartApplicationRequest.type = Types::StartApplicationRequest
    StartApplicationResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    StartApplicationResponse.type = Types::StartApplicationResponse
    StopApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    StopApplicationRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Force"))
    StopApplicationRequest.type = Types::StopApplicationRequest
    StopApplicationResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    StopApplicationResponse.type = Types::StopApplicationResponse
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisAnalyticsARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UnableToDetectSchemaException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnableToDetectSchemaException.add_member(:raw_input_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RawInputRecords, name: "RawInputRecords"))
    UnableToDetectSchemaException.add_member(:processed_input_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedInputRecords, name: "ProcessedInputRecords"))
    UnableToDetectSchemaException.type = Types::UnableToDetectSchemaException
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisAnalyticsARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationMaintenanceConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    UpdateApplicationMaintenanceConfigurationRequest.add_member(:application_maintenance_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMaintenanceConfigurationUpdate, name: "ApplicationMaintenanceConfigurationUpdate", traits: {"smithy.api#required" => {}}))
    UpdateApplicationMaintenanceConfigurationRequest.type = Types::UpdateApplicationMaintenanceConfigurationRequest
    UpdateApplicationMaintenanceConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ApplicationARN"))
    UpdateApplicationMaintenanceConfigurationResponse.add_member(:application_maintenance_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMaintenanceConfigurationDescription, name: "ApplicationMaintenanceConfigurationDescription"))
    UpdateApplicationMaintenanceConfigurationResponse.type = Types::UpdateApplicationMaintenanceConfigurationResponse
    UpdateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "ApplicationName", traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVersionId, name: "CurrentApplicationVersionId"))
    UpdateApplicationRequest.add_member(:application_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfigurationUpdate, name: "ApplicationConfigurationUpdate"))
    UpdateApplicationRequest.add_member(:service_execution_role_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ServiceExecutionRoleUpdate"))
    UpdateApplicationRequest.add_member(:run_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RunConfigurationUpdate, name: "RunConfigurationUpdate"))
    UpdateApplicationRequest.add_member(:cloud_watch_logging_option_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptionUpdates, name: "CloudWatchLoggingOptionUpdates"))
    UpdateApplicationRequest.add_member(:conditional_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalToken, name: "ConditionalToken"))
    UpdateApplicationRequest.add_member(:runtime_environment_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironmentUpdate"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDetail, name: "ApplicationDetail", traits: {"smithy.api#required" => {}}))
    UpdateApplicationResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UrlType.add_member(:flink_dashboard_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLINK_DASHBOARD_URL", traits: {"smithy.api#enumValue" => "FLINK_DASHBOARD_URL"}))
    UrlType.add_member(:zeppelin_ui_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZEPPELIN_UI_URL", traits: {"smithy.api#enumValue" => "ZEPPELIN_UI_URL"}))
    VpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpcConfigurationDescription.add_member(:vpc_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "VpcConfigurationId", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.type = Types::VpcConfigurationDescription
    VpcConfigurationDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationDescription, name: "member"))
    VpcConfigurationUpdate.add_member(:vpc_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "VpcConfigurationId", traits: {"smithy.api#required" => {}}))
    VpcConfigurationUpdate.add_member(:subnet_id_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIdUpdates"))
    VpcConfigurationUpdate.add_member(:security_group_id_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIdUpdates"))
    VpcConfigurationUpdate.type = Types::VpcConfigurationUpdate
    VpcConfigurationUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationUpdate, name: "member"))
    VpcConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "member"))
    ZeppelinApplicationConfiguration.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeppelinMonitoringConfiguration, name: "MonitoringConfiguration"))
    ZeppelinApplicationConfiguration.add_member(:catalog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogConfiguration, name: "CatalogConfiguration"))
    ZeppelinApplicationConfiguration.add_member(:deploy_as_application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployAsApplicationConfiguration, name: "DeployAsApplicationConfiguration"))
    ZeppelinApplicationConfiguration.add_member(:custom_artifacts_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomArtifactsConfigurationList, name: "CustomArtifactsConfiguration"))
    ZeppelinApplicationConfiguration.type = Types::ZeppelinApplicationConfiguration
    ZeppelinApplicationConfigurationDescription.add_member(:monitoring_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeppelinMonitoringConfigurationDescription, name: "MonitoringConfigurationDescription", traits: {"smithy.api#required" => {}}))
    ZeppelinApplicationConfigurationDescription.add_member(:catalog_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogConfigurationDescription, name: "CatalogConfigurationDescription"))
    ZeppelinApplicationConfigurationDescription.add_member(:deploy_as_application_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployAsApplicationConfigurationDescription, name: "DeployAsApplicationConfigurationDescription"))
    ZeppelinApplicationConfigurationDescription.add_member(:custom_artifacts_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomArtifactsConfigurationDescriptionList, name: "CustomArtifactsConfigurationDescription"))
    ZeppelinApplicationConfigurationDescription.type = Types::ZeppelinApplicationConfigurationDescription
    ZeppelinApplicationConfigurationUpdate.add_member(:monitoring_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeppelinMonitoringConfigurationUpdate, name: "MonitoringConfigurationUpdate"))
    ZeppelinApplicationConfigurationUpdate.add_member(:catalog_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogConfigurationUpdate, name: "CatalogConfigurationUpdate"))
    ZeppelinApplicationConfigurationUpdate.add_member(:deploy_as_application_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployAsApplicationConfigurationUpdate, name: "DeployAsApplicationConfigurationUpdate"))
    ZeppelinApplicationConfigurationUpdate.add_member(:custom_artifacts_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomArtifactsConfigurationList, name: "CustomArtifactsConfigurationUpdate"))
    ZeppelinApplicationConfigurationUpdate.type = Types::ZeppelinApplicationConfigurationUpdate
    ZeppelinMonitoringConfiguration.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    ZeppelinMonitoringConfiguration.type = Types::ZeppelinMonitoringConfiguration
    ZeppelinMonitoringConfigurationDescription.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel"))
    ZeppelinMonitoringConfigurationDescription.type = Types::ZeppelinMonitoringConfigurationDescription
    ZeppelinMonitoringConfigurationUpdate.add_member(:log_level_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevelUpdate", traits: {"smithy.api#required" => {}}))
    ZeppelinMonitoringConfigurationUpdate.type = Types::ZeppelinMonitoringConfigurationUpdate

    KinesisAnalytics20180523 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisanalyticsv2#KinesisAnalytics_20180523"
      service.name = "KinesisAnalytics20180523"
      service.version = "2018-05-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Analytics V2", "arnNamespace" => "kinesisanalytics", "cloudFormationName" => "KinesisAnalyticsV2", "cloudTrailEventSource" => "kinesisanalytics.amazonaws.com", "docId" => "kinesisanalyticsv2-2018-05-23", "endpointPrefix" => "kinesisanalytics"}, "aws.auth#sigv4" => {"name" => "kinesisanalytics"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Kinesis Analytics", "smithy.api#xmlNamespace" => {"uri" => "http://analytics.kinesis.amazonaws.com/doc/2018-05-23"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisanalytics-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisanalytics-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisanalytics.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisanalytics.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:add_application_cloud_watch_logging_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationCloudWatchLoggingOption"
        operation.name = "AddApplicationCloudWatchLoggingOption"
        operation.input = AddApplicationCloudWatchLoggingOptionRequest
        operation.output = AddApplicationCloudWatchLoggingOptionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_application_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationInput"
        operation.name = "AddApplicationInput"
        operation.input = AddApplicationInputRequest
        operation.output = AddApplicationInputResponse
        operation.errors << CodeValidationException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_application_input_processing_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationInputProcessingConfiguration"
        operation.name = "AddApplicationInputProcessingConfiguration"
        operation.input = AddApplicationInputProcessingConfigurationRequest
        operation.output = AddApplicationInputProcessingConfigurationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_application_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationOutput"
        operation.name = "AddApplicationOutput"
        operation.input = AddApplicationOutputRequest
        operation.output = AddApplicationOutputResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_application_reference_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationReferenceDataSource"
        operation.name = "AddApplicationReferenceDataSource"
        operation.input = AddApplicationReferenceDataSourceRequest
        operation.output = AddApplicationReferenceDataSourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_application_vpc_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationVpcConfiguration"
        operation.name = "AddApplicationVpcConfiguration"
        operation.input = AddApplicationVpcConfigurationRequest
        operation.output = AddApplicationVpcConfigurationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << CodeValidationException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << TooManyTagsException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_application_presigned_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#CreateApplicationPresignedUrl"
        operation.name = "CreateApplicationPresignedUrl"
        operation.input = CreateApplicationPresignedUrlRequest
        operation.output = CreateApplicationPresignedUrlResponse
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_application_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#CreateApplicationSnapshot"
        operation.name = "CreateApplicationSnapshot"
        operation.input = CreateApplicationSnapshotRequest
        operation.output = CreateApplicationSnapshotResponse
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_cloud_watch_logging_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationCloudWatchLoggingOption"
        operation.name = "DeleteApplicationCloudWatchLoggingOption"
        operation.input = DeleteApplicationCloudWatchLoggingOptionRequest
        operation.output = DeleteApplicationCloudWatchLoggingOptionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_input_processing_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationInputProcessingConfiguration"
        operation.name = "DeleteApplicationInputProcessingConfiguration"
        operation.input = DeleteApplicationInputProcessingConfigurationRequest
        operation.output = DeleteApplicationInputProcessingConfigurationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationOutput"
        operation.name = "DeleteApplicationOutput"
        operation.input = DeleteApplicationOutputRequest
        operation.output = DeleteApplicationOutputResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_reference_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationReferenceDataSource"
        operation.name = "DeleteApplicationReferenceDataSource"
        operation.input = DeleteApplicationReferenceDataSourceRequest
        operation.output = DeleteApplicationReferenceDataSourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationSnapshot"
        operation.name = "DeleteApplicationSnapshot"
        operation.input = DeleteApplicationSnapshotRequest
        operation.output = DeleteApplicationSnapshotResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_vpc_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationVpcConfiguration"
        operation.name = "DeleteApplicationVpcConfiguration"
        operation.input = DeleteApplicationVpcConfigurationRequest
        operation.output = DeleteApplicationVpcConfigurationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = DescribeApplicationRequest
        operation.output = DescribeApplicationResponse
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplicationOperation"
        operation.name = "DescribeApplicationOperation"
        operation.input = DescribeApplicationOperationRequest
        operation.output = DescribeApplicationOperationResponse
        operation.errors << InvalidArgumentException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplicationSnapshot"
        operation.name = "DescribeApplicationSnapshot"
        operation.input = DescribeApplicationSnapshotRequest
        operation.output = DescribeApplicationSnapshotResponse
        operation.errors << InvalidArgumentException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplicationVersion"
        operation.name = "DescribeApplicationVersion"
        operation.input = DescribeApplicationVersionRequest
        operation.output = DescribeApplicationVersionResponse
        operation.errors << InvalidArgumentException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:discover_input_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DiscoverInputSchema"
        operation.name = "DiscoverInputSchema"
        operation.input = DiscoverInputSchemaRequest
        operation.output = DiscoverInputSchemaResponse
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceProvisionedThroughputExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << UnableToDetectSchemaException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:list_application_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplicationOperations"
        operation.name = "ListApplicationOperations"
        operation.input = ListApplicationOperationsRequest
        operation.output = ListApplicationOperationsResponse
        operation.errors << InvalidArgumentException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationOperations.new
      end)
      service.add_operation(:list_application_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplicationSnapshots"
        operation.name = "ListApplicationSnapshots"
        operation.input = ListApplicationSnapshotsRequest
        operation.output = ListApplicationSnapshotsResponse
        operation.errors << InvalidArgumentException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationSnapshots.new
      end)
      service.add_operation(:list_application_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplicationVersions"
        operation.name = "ListApplicationVersions"
        operation.input = ListApplicationVersionsRequest
        operation.output = ListApplicationVersionsResponse
        operation.errors << InvalidArgumentException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationVersions.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:rollback_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#RollbackApplication"
        operation.name = "RollbackApplication"
        operation.input = RollbackApplicationRequest
        operation.output = RollbackApplicationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:start_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#StartApplication"
        operation.name = "StartApplication"
        operation.input = StartApplicationRequest
        operation.output = StartApplicationResponse
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#StopApplication"
        operation.name = "StopApplication"
        operation.input = StopApplicationRequest
        operation.output = StopApplicationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << CodeValidationException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidApplicationConfigurationException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_application_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#UpdateApplicationMaintenanceConfiguration"
        operation.name = "UpdateApplicationMaintenanceConfiguration"
        operation.input = UpdateApplicationMaintenanceConfigurationRequest
        operation.output = UpdateApplicationMaintenanceConfigurationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
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
