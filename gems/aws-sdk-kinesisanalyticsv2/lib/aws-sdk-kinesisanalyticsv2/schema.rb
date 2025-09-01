# frozen_string_literal: true

# This is generated code!

module Aws::KinesisAnalyticsV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddApplicationCloudWatchLoggingOptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationCloudWatchLoggingOptionRequest', name: 'AddApplicationCloudWatchLoggingOptionRequest')
    AddApplicationCloudWatchLoggingOptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationCloudWatchLoggingOptionResponse', name: 'AddApplicationCloudWatchLoggingOptionResponse')
    AddApplicationInputProcessingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationInputProcessingConfigurationRequest', name: 'AddApplicationInputProcessingConfigurationRequest')
    AddApplicationInputProcessingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationInputProcessingConfigurationResponse', name: 'AddApplicationInputProcessingConfigurationResponse')
    AddApplicationInputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationInputRequest', name: 'AddApplicationInputRequest')
    AddApplicationInputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationInputResponse', name: 'AddApplicationInputResponse')
    AddApplicationOutputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationOutputRequest', name: 'AddApplicationOutputRequest')
    AddApplicationOutputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationOutputResponse', name: 'AddApplicationOutputResponse')
    AddApplicationReferenceDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationReferenceDataSourceRequest', name: 'AddApplicationReferenceDataSourceRequest')
    AddApplicationReferenceDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationReferenceDataSourceResponse', name: 'AddApplicationReferenceDataSourceResponse')
    AddApplicationVpcConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationVpcConfigurationRequest', name: 'AddApplicationVpcConfigurationRequest')
    AddApplicationVpcConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AddApplicationVpcConfigurationResponse', name: 'AddApplicationVpcConfigurationResponse')
    ApplicationCodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationCodeConfiguration', name: 'ApplicationCodeConfiguration')
    ApplicationCodeConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationCodeConfigurationDescription', name: 'ApplicationCodeConfigurationDescription')
    ApplicationCodeConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationCodeConfigurationUpdate', name: 'ApplicationCodeConfigurationUpdate')
    ApplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationConfiguration', name: 'ApplicationConfiguration')
    ApplicationConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationConfigurationDescription', name: 'ApplicationConfigurationDescription')
    ApplicationConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationConfigurationUpdate', name: 'ApplicationConfigurationUpdate')
    ApplicationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationDescription', name: 'ApplicationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ApplicationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationDetail', name: 'ApplicationDetail')
    ApplicationMaintenanceConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceConfigurationDescription', name: 'ApplicationMaintenanceConfigurationDescription')
    ApplicationMaintenanceConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceConfigurationUpdate', name: 'ApplicationMaintenanceConfigurationUpdate')
    ApplicationMaintenanceWindowEndTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceWindowEndTime', name: 'ApplicationMaintenanceWindowEndTime', traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([01][0-9]|2[0-3]):[0-5][0-9]$"})
    ApplicationMaintenanceWindowStartTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationMaintenanceWindowStartTime', name: 'ApplicationMaintenanceWindowStartTime', traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([01][0-9]|2[0-3]):[0-5][0-9]$"})
    ApplicationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationMode', name: 'ApplicationMode')
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ApplicationOperationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationOperationInfo', name: 'ApplicationOperationInfo')
    ApplicationOperationInfoDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationOperationInfoDetails', name: 'ApplicationOperationInfoDetails')
    ApplicationOperationInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationOperationInfoList', name: 'ApplicationOperationInfoList')
    ApplicationRestoreConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationRestoreConfiguration', name: 'ApplicationRestoreConfiguration')
    ApplicationRestoreType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationRestoreType', name: 'ApplicationRestoreType')
    ApplicationSnapshotConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSnapshotConfiguration', name: 'ApplicationSnapshotConfiguration')
    ApplicationSnapshotConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSnapshotConfigurationDescription', name: 'ApplicationSnapshotConfigurationDescription')
    ApplicationSnapshotConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSnapshotConfigurationUpdate', name: 'ApplicationSnapshotConfigurationUpdate')
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationSystemRollbackConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSystemRollbackConfiguration', name: 'ApplicationSystemRollbackConfiguration')
    ApplicationSystemRollbackConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSystemRollbackConfigurationDescription', name: 'ApplicationSystemRollbackConfigurationDescription')
    ApplicationSystemRollbackConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationSystemRollbackConfigurationUpdate', name: 'ApplicationSystemRollbackConfigurationUpdate')
    ApplicationVersionChangeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationVersionChangeDetails', name: 'ApplicationVersionChangeDetails')
    ApplicationVersionId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationVersionId', name: 'ApplicationVersionId', traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    ApplicationVersionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationVersionSummaries', name: 'ApplicationVersionSummaries')
    ApplicationVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ApplicationVersionSummary', name: 'ApplicationVersionSummary')
    ArtifactType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ArtifactType', name: 'ArtifactType')
    AuthorizedUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#AuthorizedUrl', name: 'AuthorizedUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    BasePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#BasePath', name: 'BasePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/!-_.*'()]+$"})
    BooleanObject = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kinesisanalyticsv2#BooleanObject', name: 'BooleanObject')
    BucketARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#BucketARN', name: 'BucketARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    CSVMappingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CSVMappingParameters', name: 'CSVMappingParameters')
    CatalogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CatalogConfiguration', name: 'CatalogConfiguration')
    CatalogConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CatalogConfigurationDescription', name: 'CatalogConfigurationDescription')
    CatalogConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CatalogConfigurationUpdate', name: 'CatalogConfigurationUpdate')
    CheckpointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CheckpointConfiguration', name: 'CheckpointConfiguration')
    CheckpointConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CheckpointConfigurationDescription', name: 'CheckpointConfigurationDescription')
    CheckpointConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CheckpointConfigurationUpdate', name: 'CheckpointConfigurationUpdate')
    CheckpointInterval = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CheckpointInterval', name: 'CheckpointInterval', traits: {"smithy.api#range" => {"min" => 1}})
    CloudWatchLoggingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOption', name: 'CloudWatchLoggingOption')
    CloudWatchLoggingOptionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionDescription', name: 'CloudWatchLoggingOptionDescription')
    CloudWatchLoggingOptionDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionDescriptions', name: 'CloudWatchLoggingOptionDescriptions')
    CloudWatchLoggingOptionUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionUpdate', name: 'CloudWatchLoggingOptionUpdate')
    CloudWatchLoggingOptionUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptionUpdates', name: 'CloudWatchLoggingOptionUpdates')
    CloudWatchLoggingOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CloudWatchLoggingOptions', name: 'CloudWatchLoggingOptions')
    CodeContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeContent', name: 'CodeContent')
    CodeContentDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeContentDescription', name: 'CodeContentDescription')
    CodeContentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeContentType', name: 'CodeContentType')
    CodeContentUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeContentUpdate', name: 'CodeContentUpdate')
    CodeMD5 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeMD5', name: 'CodeMD5', traits: {"smithy.api#length" => {"min" => 128, "max" => 128}})
    CodeSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeSize', name: 'CodeSize', traits: {"smithy.api#range" => {"min" => 0, "max" => 52428800}})
    CodeValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CodeValidationException', name: 'CodeValidationException', traits: {"smithy.api#error" => "client"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConditionalToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ConditionalToken', name: 'ConditionalToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9-_+/=]+$"})
    ConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ConfigurationType', name: 'ConfigurationType')
    CreateApplicationPresignedUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CreateApplicationPresignedUrlRequest', name: 'CreateApplicationPresignedUrlRequest')
    CreateApplicationPresignedUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CreateApplicationPresignedUrlResponse', name: 'CreateApplicationPresignedUrlResponse')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateApplicationSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CreateApplicationSnapshotRequest', name: 'CreateApplicationSnapshotRequest')
    CreateApplicationSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CreateApplicationSnapshotResponse', name: 'CreateApplicationSnapshotResponse')
    CustomArtifactConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CustomArtifactConfiguration', name: 'CustomArtifactConfiguration')
    CustomArtifactConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CustomArtifactConfigurationDescription', name: 'CustomArtifactConfigurationDescription')
    CustomArtifactsConfigurationDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CustomArtifactsConfigurationDescriptionList', name: 'CustomArtifactsConfigurationDescriptionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CustomArtifactsConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#CustomArtifactsConfigurationList', name: 'CustomArtifactsConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DatabaseARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DatabaseARN', name: 'DatabaseARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    DeleteApplicationCloudWatchLoggingOptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationCloudWatchLoggingOptionRequest', name: 'DeleteApplicationCloudWatchLoggingOptionRequest')
    DeleteApplicationCloudWatchLoggingOptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationCloudWatchLoggingOptionResponse', name: 'DeleteApplicationCloudWatchLoggingOptionResponse')
    DeleteApplicationInputProcessingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationInputProcessingConfigurationRequest', name: 'DeleteApplicationInputProcessingConfigurationRequest')
    DeleteApplicationInputProcessingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationInputProcessingConfigurationResponse', name: 'DeleteApplicationInputProcessingConfigurationResponse')
    DeleteApplicationOutputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationOutputRequest', name: 'DeleteApplicationOutputRequest')
    DeleteApplicationOutputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationOutputResponse', name: 'DeleteApplicationOutputResponse')
    DeleteApplicationReferenceDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationReferenceDataSourceRequest', name: 'DeleteApplicationReferenceDataSourceRequest')
    DeleteApplicationReferenceDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationReferenceDataSourceResponse', name: 'DeleteApplicationReferenceDataSourceResponse')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteApplicationSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationSnapshotRequest', name: 'DeleteApplicationSnapshotRequest')
    DeleteApplicationSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationSnapshotResponse', name: 'DeleteApplicationSnapshotResponse')
    DeleteApplicationVpcConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationVpcConfigurationRequest', name: 'DeleteApplicationVpcConfigurationRequest')
    DeleteApplicationVpcConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeleteApplicationVpcConfigurationResponse', name: 'DeleteApplicationVpcConfigurationResponse')
    DeployAsApplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeployAsApplicationConfiguration', name: 'DeployAsApplicationConfiguration')
    DeployAsApplicationConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeployAsApplicationConfigurationDescription', name: 'DeployAsApplicationConfigurationDescription')
    DeployAsApplicationConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DeployAsApplicationConfigurationUpdate', name: 'DeployAsApplicationConfigurationUpdate')
    DescribeApplicationOperationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationOperationRequest', name: 'DescribeApplicationOperationRequest')
    DescribeApplicationOperationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationOperationResponse', name: 'DescribeApplicationOperationResponse')
    DescribeApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationRequest', name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationResponse', name: 'DescribeApplicationResponse')
    DescribeApplicationSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationSnapshotRequest', name: 'DescribeApplicationSnapshotRequest')
    DescribeApplicationSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationSnapshotResponse', name: 'DescribeApplicationSnapshotResponse')
    DescribeApplicationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationVersionRequest', name: 'DescribeApplicationVersionRequest')
    DescribeApplicationVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DescribeApplicationVersionResponse', name: 'DescribeApplicationVersionResponse')
    DestinationSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DestinationSchema', name: 'DestinationSchema')
    DiscoverInputSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DiscoverInputSchemaRequest', name: 'DiscoverInputSchemaRequest')
    DiscoverInputSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#DiscoverInputSchemaResponse', name: 'DiscoverInputSchemaResponse')
    EnvironmentProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#EnvironmentProperties', name: 'EnvironmentProperties')
    EnvironmentPropertyDescriptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#EnvironmentPropertyDescriptions', name: 'EnvironmentPropertyDescriptions')
    EnvironmentPropertyUpdates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#EnvironmentPropertyUpdates', name: 'EnvironmentPropertyUpdates')
    ErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ErrorInfo', name: 'ErrorInfo')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ErrorMessage', name: 'ErrorMessage')
    ErrorString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ErrorString', name: 'ErrorString', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    FileKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#FileKey', name: 'FileKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FlinkApplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#FlinkApplicationConfiguration', name: 'FlinkApplicationConfiguration')
    FlinkApplicationConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#FlinkApplicationConfigurationDescription', name: 'FlinkApplicationConfigurationDescription')
    FlinkApplicationConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#FlinkApplicationConfigurationUpdate', name: 'FlinkApplicationConfigurationUpdate')
    FlinkRunConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#FlinkRunConfiguration', name: 'FlinkRunConfiguration')
    GlueDataCatalogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#GlueDataCatalogConfiguration', name: 'GlueDataCatalogConfiguration')
    GlueDataCatalogConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#GlueDataCatalogConfigurationDescription', name: 'GlueDataCatalogConfigurationDescription')
    GlueDataCatalogConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#GlueDataCatalogConfigurationUpdate', name: 'GlueDataCatalogConfigurationUpdate')
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    InAppStreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InAppStreamName', name: 'InAppStreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^-\\s<>&]*$"})
    InAppStreamNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InAppStreamNames', name: 'InAppStreamNames')
    InAppTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InAppTableName', name: 'InAppTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    Input = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Input', name: 'Input')
    InputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputDescription', name: 'InputDescription')
    InputDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputDescriptions', name: 'InputDescriptions')
    InputLambdaProcessor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputLambdaProcessor', name: 'InputLambdaProcessor')
    InputLambdaProcessorDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputLambdaProcessorDescription', name: 'InputLambdaProcessorDescription')
    InputLambdaProcessorUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputLambdaProcessorUpdate', name: 'InputLambdaProcessorUpdate')
    InputParallelism = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputParallelism', name: 'InputParallelism')
    InputParallelismCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputParallelismCount', name: 'InputParallelismCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    InputParallelismUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputParallelismUpdate', name: 'InputParallelismUpdate')
    InputProcessingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputProcessingConfiguration', name: 'InputProcessingConfiguration')
    InputProcessingConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputProcessingConfigurationDescription', name: 'InputProcessingConfigurationDescription')
    InputProcessingConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputProcessingConfigurationUpdate', name: 'InputProcessingConfigurationUpdate')
    InputSchemaUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputSchemaUpdate', name: 'InputSchemaUpdate')
    InputStartingPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputStartingPosition', name: 'InputStartingPosition')
    InputStartingPositionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputStartingPositionConfiguration', name: 'InputStartingPositionConfiguration')
    InputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputUpdate', name: 'InputUpdate')
    InputUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InputUpdates', name: 'InputUpdates')
    Inputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Inputs', name: 'Inputs')
    InvalidApplicationConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InvalidApplicationConfigurationException', name: 'InvalidApplicationConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client"})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    JSONMappingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#JSONMappingParameters', name: 'JSONMappingParameters')
    JobPlanDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#JobPlanDescription', name: 'JobPlanDescription')
    KinesisAnalyticsARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisAnalyticsARN', name: 'KinesisAnalyticsARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    KinesisFirehoseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisFirehoseInput', name: 'KinesisFirehoseInput')
    KinesisFirehoseInputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisFirehoseInputDescription', name: 'KinesisFirehoseInputDescription')
    KinesisFirehoseInputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisFirehoseInputUpdate', name: 'KinesisFirehoseInputUpdate')
    KinesisFirehoseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisFirehoseOutput', name: 'KinesisFirehoseOutput')
    KinesisFirehoseOutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisFirehoseOutputDescription', name: 'KinesisFirehoseOutputDescription')
    KinesisFirehoseOutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisFirehoseOutputUpdate', name: 'KinesisFirehoseOutputUpdate')
    KinesisStreamsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisStreamsInput', name: 'KinesisStreamsInput')
    KinesisStreamsInputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisStreamsInputDescription', name: 'KinesisStreamsInputDescription')
    KinesisStreamsInputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisStreamsInputUpdate', name: 'KinesisStreamsInputUpdate')
    KinesisStreamsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisStreamsOutput', name: 'KinesisStreamsOutput')
    KinesisStreamsOutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisStreamsOutputDescription', name: 'KinesisStreamsOutputDescription')
    KinesisStreamsOutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#KinesisStreamsOutputUpdate', name: 'KinesisStreamsOutputUpdate')
    LambdaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#LambdaOutput', name: 'LambdaOutput')
    LambdaOutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#LambdaOutputDescription', name: 'LambdaOutputDescription')
    LambdaOutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#LambdaOutputUpdate', name: 'LambdaOutputUpdate')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListApplicationOperationsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationOperationsInputLimit', name: 'ListApplicationOperationsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationOperationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationOperationsRequest', name: 'ListApplicationOperationsRequest')
    ListApplicationOperationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationOperationsResponse', name: 'ListApplicationOperationsResponse')
    ListApplicationSnapshotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationSnapshotsRequest', name: 'ListApplicationSnapshotsRequest')
    ListApplicationSnapshotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationSnapshotsResponse', name: 'ListApplicationSnapshotsResponse')
    ListApplicationVersionsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationVersionsInputLimit', name: 'ListApplicationVersionsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationVersionsRequest', name: 'ListApplicationVersionsRequest')
    ListApplicationVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationVersionsResponse', name: 'ListApplicationVersionsResponse')
    ListApplicationsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationsInputLimit', name: 'ListApplicationsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListSnapshotsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListSnapshotsInputLimit', name: 'ListSnapshotsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#LogLevel', name: 'LogLevel')
    LogStreamARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#LogStreamARN', name: 'LogStreamARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    MappingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MappingParameters', name: 'MappingParameters')
    MavenArtifactId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MavenArtifactId', name: 'MavenArtifactId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    MavenGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MavenGroupId', name: 'MavenGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    MavenReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MavenReference', name: 'MavenReference')
    MavenVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MavenVersion', name: 'MavenVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    MetricsLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MetricsLevel', name: 'MetricsLevel')
    MinPauseBetweenCheckpoints = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MinPauseBetweenCheckpoints', name: 'MinPauseBetweenCheckpoints', traits: {"smithy.api#range" => {"min" => 0}})
    MonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MonitoringConfiguration', name: 'MonitoringConfiguration')
    MonitoringConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MonitoringConfigurationDescription', name: 'MonitoringConfigurationDescription')
    MonitoringConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#MonitoringConfigurationUpdate', name: 'MonitoringConfigurationUpdate')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ObjectVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ObjectVersion', name: 'ObjectVersion', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Operation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Operation', name: 'Operation', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OperationFailureDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OperationFailureDetails', name: 'OperationFailureDetails')
    OperationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OperationId', name: 'OperationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OperationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OperationStatus', name: 'OperationStatus')
    Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Output', name: 'Output')
    OutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OutputDescription', name: 'OutputDescription')
    OutputDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OutputDescriptions', name: 'OutputDescriptions')
    OutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OutputUpdate', name: 'OutputUpdate')
    OutputUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#OutputUpdates', name: 'OutputUpdates')
    Outputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Outputs', name: 'Outputs')
    Parallelism = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Parallelism', name: 'Parallelism', traits: {"smithy.api#range" => {"min" => 1}})
    ParallelismConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParallelismConfiguration', name: 'ParallelismConfiguration')
    ParallelismConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParallelismConfigurationDescription', name: 'ParallelismConfigurationDescription')
    ParallelismConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParallelismConfigurationUpdate', name: 'ParallelismConfigurationUpdate')
    ParallelismPerKPU = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParallelismPerKPU', name: 'ParallelismPerKPU', traits: {"smithy.api#range" => {"min" => 1}})
    ParsedInputRecord = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParsedInputRecord', name: 'ParsedInputRecord')
    ParsedInputRecordField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParsedInputRecordField', name: 'ParsedInputRecordField')
    ParsedInputRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ParsedInputRecords', name: 'ParsedInputRecords')
    ProcessedInputRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ProcessedInputRecord', name: 'ProcessedInputRecord')
    ProcessedInputRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ProcessedInputRecords', name: 'ProcessedInputRecords')
    PropertyGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#PropertyGroup', name: 'PropertyGroup')
    PropertyGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#PropertyGroups', name: 'PropertyGroups', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PropertyKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#PropertyKey', name: 'PropertyKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PropertyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kinesisanalyticsv2#PropertyMap', name: 'PropertyMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    PropertyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#PropertyValue', name: 'PropertyValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RawInputRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RawInputRecord', name: 'RawInputRecord')
    RawInputRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RawInputRecords', name: 'RawInputRecords')
    RecordColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordColumn', name: 'RecordColumn')
    RecordColumnDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordColumnDelimiter', name: 'RecordColumnDelimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    RecordColumnMapping = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordColumnMapping', name: 'RecordColumnMapping', traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    RecordColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordColumnName', name: 'RecordColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^-\\s<>&]*$"})
    RecordColumnSqlType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordColumnSqlType', name: 'RecordColumnSqlType', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecordColumns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordColumns', name: 'RecordColumns', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    RecordEncoding = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordEncoding', name: 'RecordEncoding', traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^UTF-8$"})
    RecordFormat = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordFormat', name: 'RecordFormat')
    RecordFormatType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordFormatType', name: 'RecordFormatType')
    RecordRowDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordRowDelimiter', name: 'RecordRowDelimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    RecordRowPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RecordRowPath', name: 'RecordRowPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^(?=^\\$)(?=^\\S+$).*$"})
    ReferenceDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ReferenceDataSource', name: 'ReferenceDataSource')
    ReferenceDataSourceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceDescription', name: 'ReferenceDataSourceDescription')
    ReferenceDataSourceDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceDescriptions', name: 'ReferenceDataSourceDescriptions')
    ReferenceDataSourceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceUpdate', name: 'ReferenceDataSourceUpdate')
    ReferenceDataSourceUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ReferenceDataSourceUpdates', name: 'ReferenceDataSourceUpdates')
    ReferenceDataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ReferenceDataSources', name: 'ReferenceDataSources')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceProvisionedThroughputExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ResourceProvisionedThroughputExceededException', name: 'ResourceProvisionedThroughputExceededException', traits: {"smithy.api#error" => "client"})
    RoleARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RoleARN', name: 'RoleARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    RollbackApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RollbackApplicationRequest', name: 'RollbackApplicationRequest')
    RollbackApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RollbackApplicationResponse', name: 'RollbackApplicationResponse')
    RunConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RunConfiguration', name: 'RunConfiguration')
    RunConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RunConfigurationDescription', name: 'RunConfigurationDescription')
    RunConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RunConfigurationUpdate', name: 'RunConfigurationUpdate')
    RuntimeEnvironment = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#RuntimeEnvironment', name: 'RuntimeEnvironment')
    S3ApplicationCodeLocationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ApplicationCodeLocationDescription', name: 'S3ApplicationCodeLocationDescription')
    S3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3Configuration', name: 'S3Configuration')
    S3ContentBaseLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ContentBaseLocation', name: 'S3ContentBaseLocation')
    S3ContentBaseLocationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ContentBaseLocationDescription', name: 'S3ContentBaseLocationDescription')
    S3ContentBaseLocationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ContentBaseLocationUpdate', name: 'S3ContentBaseLocationUpdate')
    S3ContentLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ContentLocation', name: 'S3ContentLocation')
    S3ContentLocationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ContentLocationUpdate', name: 'S3ContentLocationUpdate')
    S3ReferenceDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ReferenceDataSource', name: 'S3ReferenceDataSource')
    S3ReferenceDataSourceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ReferenceDataSourceDescription', name: 'S3ReferenceDataSourceDescription')
    S3ReferenceDataSourceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#S3ReferenceDataSourceUpdate', name: 'S3ReferenceDataSourceUpdate')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SecurityGroupId', name: 'SecurityGroupId')
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionExpirationDurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SessionExpirationDurationInSeconds', name: 'SessionExpirationDurationInSeconds', traits: {"smithy.api#range" => {"min" => 1800, "max" => 43200}})
    SnapshotDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SnapshotDetails', name: 'SnapshotDetails')
    SnapshotName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SnapshotName', name: 'SnapshotName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    SnapshotStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SnapshotStatus', name: 'SnapshotStatus')
    SnapshotSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SnapshotSummaries', name: 'SnapshotSummaries')
    SourceSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SourceSchema', name: 'SourceSchema')
    SqlApplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SqlApplicationConfiguration', name: 'SqlApplicationConfiguration')
    SqlApplicationConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SqlApplicationConfigurationDescription', name: 'SqlApplicationConfigurationDescription')
    SqlApplicationConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SqlApplicationConfigurationUpdate', name: 'SqlApplicationConfigurationUpdate')
    SqlRunConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SqlRunConfiguration', name: 'SqlRunConfiguration')
    SqlRunConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SqlRunConfigurations', name: 'SqlRunConfigurations')
    StartApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#StartApplicationRequest', name: 'StartApplicationRequest')
    StartApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#StartApplicationResponse', name: 'StartApplicationResponse')
    StopApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#StopApplicationRequest', name: 'StopApplicationRequest')
    StopApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#StopApplicationResponse', name: 'StopApplicationResponse')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SubnetId', name: 'SubnetId')
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TextContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TextContent', name: 'TextContent', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisanalyticsv2#Timestamp', name: 'Timestamp')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UnableToDetectSchemaException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UnableToDetectSchemaException', name: 'UnableToDetectSchemaException', traits: {"smithy.api#error" => "client"})
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationMaintenanceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UpdateApplicationMaintenanceConfigurationRequest', name: 'UpdateApplicationMaintenanceConfigurationRequest')
    UpdateApplicationMaintenanceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UpdateApplicationMaintenanceConfigurationResponse', name: 'UpdateApplicationMaintenanceConfigurationResponse')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UrlType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalyticsv2#UrlType', name: 'UrlType')
    VpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcConfiguration', name: 'VpcConfiguration')
    VpcConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcConfigurationDescription', name: 'VpcConfigurationDescription')
    VpcConfigurationDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcConfigurationDescriptions', name: 'VpcConfigurationDescriptions')
    VpcConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcConfigurationUpdate', name: 'VpcConfigurationUpdate')
    VpcConfigurationUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcConfigurationUpdates', name: 'VpcConfigurationUpdates')
    VpcConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcConfigurations', name: 'VpcConfigurations')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalyticsv2#VpcId', name: 'VpcId')
    ZeppelinApplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZeppelinApplicationConfiguration', name: 'ZeppelinApplicationConfiguration')
    ZeppelinApplicationConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZeppelinApplicationConfigurationDescription', name: 'ZeppelinApplicationConfigurationDescription')
    ZeppelinApplicationConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZeppelinApplicationConfigurationUpdate', name: 'ZeppelinApplicationConfigurationUpdate')
    ZeppelinMonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZeppelinMonitoringConfiguration', name: 'ZeppelinMonitoringConfiguration')
    ZeppelinMonitoringConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZeppelinMonitoringConfigurationDescription', name: 'ZeppelinMonitoringConfigurationDescription')
    ZeppelinMonitoringConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZeppelinMonitoringConfigurationUpdate', name: 'ZeppelinMonitoringConfigurationUpdate')
    ZipFileContent = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kinesisanalyticsv2#ZipFileContent', name: 'ZipFileContent', traits: {"smithy.api#length" => {"min" => 0, "max" => 52428800}})

    AddApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The Kinesis Data Analytics application name.</p>", "smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the SQL-based Kinesis Data Analytics application. You must provide the\n        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can\n      retrieve the application version ID using <a>DescribeApplication</a>. For better\n      concurrency support, use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOption, location_name: 'CloudWatchLoggingOption', traits: {"smithy.api#documentation" => "<p>Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:conditional_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalToken, location_name: 'ConditionalToken', traits: {"smithy.api#documentation" => "<p>A value you use to implement strong concurrency for application updates. You must\n      provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You\n      get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the\n        <code>ConditionalToken</code> parameter instead of\n      <code>CurrentApplicationVersionId</code>.</p>"}))
    AddApplicationCloudWatchLoggingOptionRequest.type = Types::AddApplicationCloudWatchLoggingOptionRequest
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The application's ARN.</p>"}))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The new version ID of the SQL-based Kinesis Data Analytics application. Kinesis Data Analytics\n      updates the <code>ApplicationVersionId</code> each time you change the CloudWatch logging\n      options. </p>"}))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:cloud_watch_logging_option_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: 'CloudWatchLoggingOptionDescriptions', traits: {"smithy.api#documentation" => "<p>The descriptions of the current CloudWatch logging options for the SQL-based Kinesis Data Analytics application.</p>"}))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking AddApplicationCloudWatchLoggingOption request"}))
    AddApplicationCloudWatchLoggingOptionResponse.type = Types::AddApplicationCloudWatchLoggingOptionResponse
    AddApplicationInputProcessingConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application to which you want to add the input processing\n      configuration.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version of the application to which you want to add the input processing\n      configuration. You can use the <a>DescribeApplication</a> operation to get the\n      current application version. If the version specified is not the current version, the\n        <code>ConcurrentModificationException</code> is returned.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The ID of the input configuration to add the input processing configuration to. You\n      can get a list of the input IDs for an application using the <a>DescribeApplication</a> operation.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a>InputProcessingConfiguration</a> to add to the application.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.type = Types::AddApplicationInputProcessingConfigurationRequest
    AddApplicationInputProcessingConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    AddApplicationInputProcessingConfigurationResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Provides the current application version. </p>"}))
    AddApplicationInputProcessingConfigurationResponse.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns\n      to each input configuration that you add to your\n      application.</p>"}))
    AddApplicationInputProcessingConfigurationResponse.add_member(:input_processing_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationDescription, location_name: 'InputProcessingConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>"}))
    AddApplicationInputProcessingConfigurationResponse.type = Types::AddApplicationInputProcessingConfigurationResponse
    AddApplicationInputRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of your existing application to which you want to add the streaming\n      source.</p>", "smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current version of your application. \n        You must provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>.You can use the <a>DescribeApplication</a> operation to find the current application version.</p>", "smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>The <a>Input</a> to add.</p>", "smithy.api#required" => {}}))
    AddApplicationInputRequest.type = Types::AddApplicationInputRequest
    AddApplicationInputResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    AddApplicationInputResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Provides the current application version.</p>"}))
    AddApplicationInputResponse.add_member(:input_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescriptions, location_name: 'InputDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the application input configuration. \n       \n      \n    </p>"}))
    AddApplicationInputResponse.type = Types::AddApplicationInputResponse
    AddApplicationOutputRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application to which you want to add the output configuration.</p>", "smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version of the application to which you want to add the output configuration. You can\n      use the <a>DescribeApplication</a> operation to get the current application\n      version. If the version specified is not the current version, the\n        <code>ConcurrentModificationException</code> is returned. </p>", "smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: Output, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>An array of objects, each describing one output configuration. In the output\n      configuration, you specify the name of an in-application stream, a destination (that is, a\n      Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), and\n      record the formation to use when writing to the destination.</p>", "smithy.api#required" => {}}))
    AddApplicationOutputRequest.type = Types::AddApplicationOutputRequest
    AddApplicationOutputResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The application Amazon Resource Name (ARN).</p>"}))
    AddApplicationOutputResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The updated application version ID. Kinesis Data Analytics increments this ID when the application is\n      updated.</p>"}))
    AddApplicationOutputResponse.add_member(:output_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: 'OutputDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the application output configuration.\n      For more information, \n      see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. \n      \n    </p>"}))
    AddApplicationOutputResponse.type = Types::AddApplicationOutputResponse
    AddApplicationReferenceDataSourceRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version of the application for which you are adding the reference data source. \n        You can\n      use the <a>DescribeApplication</a> operation to get the current application\n      version. If the version specified is not the current version, the\n        <code>ConcurrentModificationException</code> is returned.</p>", "smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:reference_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSource, location_name: 'ReferenceDataSource', traits: {"smithy.api#documentation" => "<p>The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data\n      into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting \n      in-application table that is \n      created. </p>", "smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.type = Types::AddApplicationReferenceDataSourceRequest
    AddApplicationReferenceDataSourceResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The application Amazon Resource Name (ARN).</p>"}))
    AddApplicationReferenceDataSourceResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The updated application version ID. Kinesis Data Analytics increments this ID when\n      the application is updated.</p>"}))
    AddApplicationReferenceDataSourceResponse.add_member(:reference_data_source_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: 'ReferenceDataSourceDescriptions', traits: {"smithy.api#documentation" => "<p>Describes reference data sources configured for the application. \n      \n      \n      \n    </p>"}))
    AddApplicationReferenceDataSourceResponse.type = Types::AddApplicationReferenceDataSourceResponse
    AddApplicationVpcConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    AddApplicationVpcConfigurationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version of the application to which you want to add the VPC configuration. You must\n      provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You\n      can use the <a>DescribeApplication</a> operation to get the current application\n      version. If the version specified is not the current version, the\n        <code>ConcurrentModificationException</code> is returned. For better concurrency support,\n      use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    AddApplicationVpcConfigurationRequest.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>Description of the VPC to add to the application.</p>", "smithy.api#required" => {}}))
    AddApplicationVpcConfigurationRequest.add_member(:conditional_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalToken, location_name: 'ConditionalToken', traits: {"smithy.api#documentation" => "<p>A value you use to implement strong concurrency for application updates. You must\n      provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>. You get\n      the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the\n        <code>ConditionalToken</code> parameter instead of\n      <code>CurrentApplicationVersionId</code>.</p>"}))
    AddApplicationVpcConfigurationRequest.type = Types::AddApplicationVpcConfigurationRequest
    AddApplicationVpcConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>"}))
    AddApplicationVpcConfigurationResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Provides the current application version. Managed Service for Apache Flink updates the ApplicationVersionId each\n      time you update the application.</p>"}))
    AddApplicationVpcConfigurationResponse.add_member(:vpc_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigurationDescription, location_name: 'VpcConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The parameters of the new VPC configuration.</p>"}))
    AddApplicationVpcConfigurationResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking AddApplicationVpcConfiguration request"}))
    AddApplicationVpcConfigurationResponse.type = Types::AddApplicationVpcConfigurationResponse
    ApplicationCodeConfiguration.add_member(:code_content, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeContent, location_name: 'CodeContent', traits: {"smithy.api#documentation" => "<p>The location and type of the application code.</p>"}))
    ApplicationCodeConfiguration.add_member(:code_content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeContentType, location_name: 'CodeContentType', traits: {"smithy.api#documentation" => "<p>Specifies whether the code content is in text or zip format.</p>", "smithy.api#required" => {}}))
    ApplicationCodeConfiguration.type = Types::ApplicationCodeConfiguration
    ApplicationCodeConfigurationDescription.add_member(:code_content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeContentType, location_name: 'CodeContentType', traits: {"smithy.api#documentation" => "<p>Specifies whether the code content is in text or zip format.</p>", "smithy.api#required" => {}}))
    ApplicationCodeConfigurationDescription.add_member(:code_content_description, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeContentDescription, location_name: 'CodeContentDescription', traits: {"smithy.api#documentation" => "<p>Describes details about the location and format of the application code.</p>"}))
    ApplicationCodeConfigurationDescription.type = Types::ApplicationCodeConfigurationDescription
    ApplicationCodeConfigurationUpdate.add_member(:code_content_type_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeContentType, location_name: 'CodeContentTypeUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the code content type.</p>"}))
    ApplicationCodeConfigurationUpdate.add_member(:code_content_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeContentUpdate, location_name: 'CodeContentUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the code content of an application.</p>"}))
    ApplicationCodeConfigurationUpdate.type = Types::ApplicationCodeConfigurationUpdate
    ApplicationConfiguration.add_member(:sql_application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlApplicationConfiguration, location_name: 'SqlApplicationConfiguration', traits: {"smithy.api#documentation" => "<p>The creation and update parameters for a SQL-based Kinesis Data Analytics application.</p>"}))
    ApplicationConfiguration.add_member(:flink_application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlinkApplicationConfiguration, location_name: 'FlinkApplicationConfiguration', traits: {"smithy.api#documentation" => "<p>The creation and update parameters for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfiguration.add_member(:environment_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentProperties, location_name: 'EnvironmentProperties', traits: {"smithy.api#documentation" => "<p>Describes execution properties for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfiguration.add_member(:application_code_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCodeConfiguration, location_name: 'ApplicationCodeConfiguration', traits: {"smithy.api#documentation" => "<p>The code location and type parameters for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfiguration.add_member(:application_snapshot_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSnapshotConfiguration, location_name: 'ApplicationSnapshotConfiguration', traits: {"smithy.api#documentation" => "<p>Describes whether snapshots are enabled for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfiguration.add_member(:application_system_rollback_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSystemRollbackConfiguration, location_name: 'ApplicationSystemRollbackConfiguration'))
    ApplicationConfiguration.add_member(:vpc_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigurations, location_name: 'VpcConfigurations', traits: {"smithy.api#documentation" => "<p>The array of descriptions of VPC configurations available to the application.</p>"}))
    ApplicationConfiguration.add_member(:zeppelin_application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeppelinApplicationConfiguration, location_name: 'ZeppelinApplicationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration parameters for a Managed Service for Apache Flink Studio notebook.</p>"}))
    ApplicationConfiguration.type = Types::ApplicationConfiguration
    ApplicationConfigurationDescription.add_member(:sql_application_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlApplicationConfigurationDescription, location_name: 'SqlApplicationConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The details about inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>"}))
    ApplicationConfigurationDescription.add_member(:application_code_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCodeConfigurationDescription, location_name: 'ApplicationCodeConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The details about the application code for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationDescription.add_member(:run_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RunConfigurationDescription, location_name: 'RunConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The details about the starting properties for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationDescription.add_member(:flink_application_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlinkApplicationConfigurationDescription, location_name: 'FlinkApplicationConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The details about a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationDescription.add_member(:environment_property_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentPropertyDescriptions, location_name: 'EnvironmentPropertyDescriptions', traits: {"smithy.api#documentation" => "<p>Describes execution properties for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationDescription.add_member(:application_snapshot_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSnapshotConfigurationDescription, location_name: 'ApplicationSnapshotConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Describes whether snapshots are enabled for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationDescription.add_member(:application_system_rollback_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSystemRollbackConfigurationDescription, location_name: 'ApplicationSystemRollbackConfigurationDescription'))
    ApplicationConfigurationDescription.add_member(:vpc_configuration_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigurationDescriptions, location_name: 'VpcConfigurationDescriptions', traits: {"smithy.api#documentation" => "<p>The array of descriptions of VPC configurations available to the application.</p>"}))
    ApplicationConfigurationDescription.add_member(:zeppelin_application_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeppelinApplicationConfigurationDescription, location_name: 'ZeppelinApplicationConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The configuration parameters for a Managed Service for Apache Flink Studio notebook.</p>"}))
    ApplicationConfigurationDescription.type = Types::ApplicationConfigurationDescription
    ApplicationConfigurationUpdate.add_member(:sql_application_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlApplicationConfigurationUpdate, location_name: 'SqlApplicationConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to a SQL-based Kinesis Data Analytics application's\n      configuration.</p>"}))
    ApplicationConfigurationUpdate.add_member(:application_code_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCodeConfigurationUpdate, location_name: 'ApplicationCodeConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to an application's code\n      configuration.</p>"}))
    ApplicationConfigurationUpdate.add_member(:flink_application_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: FlinkApplicationConfigurationUpdate, location_name: 'FlinkApplicationConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to a Managed Service for Apache Flink application's configuration.</p>"}))
    ApplicationConfigurationUpdate.add_member(:environment_property_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentPropertyUpdates, location_name: 'EnvironmentPropertyUpdates', traits: {"smithy.api#documentation" => "<p>Describes updates to the environment properties for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationUpdate.add_member(:application_snapshot_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSnapshotConfigurationUpdate, location_name: 'ApplicationSnapshotConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes whether snapshots are enabled for a Managed Service for Apache Flink application.</p>"}))
    ApplicationConfigurationUpdate.add_member(:application_system_rollback_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSystemRollbackConfigurationUpdate, location_name: 'ApplicationSystemRollbackConfigurationUpdate'))
    ApplicationConfigurationUpdate.add_member(:vpc_configuration_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigurationUpdates, location_name: 'VpcConfigurationUpdates', traits: {"smithy.api#documentation" => "<p>Updates to the array of descriptions of VPC configurations available to the application.</p>"}))
    ApplicationConfigurationUpdate.add_member(:zeppelin_application_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeppelinApplicationConfigurationUpdate, location_name: 'ZeppelinApplicationConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the configuration of a Managed Service for Apache Flink Studio notebook.</p>"}))
    ApplicationConfigurationUpdate.type = Types::ApplicationConfigurationUpdate
    ApplicationDetail.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'ApplicationDescription', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    ApplicationDetail.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:runtime_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: 'RuntimeEnvironment', traits: {"smithy.api#documentation" => "<p>The runtime environment for the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:service_execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ServiceExecutionRole', traits: {"smithy.api#documentation" => "<p>Specifies the IAM role that the application uses to access external resources.</p>"}))
    ApplicationDetail.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>The status of the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Provides the current application version. Managed Service for Apache Flink updates the\n        <code>ApplicationVersionId</code> each time you update the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:create_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"smithy.api#documentation" => "<p>The current timestamp when the application was created.</p>"}))
    ApplicationDetail.add_member(:last_update_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTimestamp', traits: {"smithy.api#documentation" => "<p>The current timestamp when the application was last updated.</p>"}))
    ApplicationDetail.add_member(:application_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfigurationDescription, location_name: 'ApplicationConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Describes details about the application code and starting parameters for a Managed Service for Apache Flink application.</p>"}))
    ApplicationDetail.add_member(:cloud_watch_logging_option_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: 'CloudWatchLoggingOptionDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the application Amazon CloudWatch logging options.</p>"}))
    ApplicationDetail.add_member(:application_maintenance_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMaintenanceConfigurationDescription, location_name: 'ApplicationMaintenanceConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The details of the maintenance configuration for the application.</p>"}))
    ApplicationDetail.add_member(:application_version_updated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionUpdatedFrom', traits: {"smithy.api#documentation" => "<p>The previous application version before the latest application update. <a>RollbackApplication</a>\n        reverts the application to this version.</p>"}))
    ApplicationDetail.add_member(:application_version_rolled_back_from, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionRolledBackFrom', traits: {"smithy.api#documentation" => "<p>If you reverted the application using <a>RollbackApplication</a>,\n        the application version when <code>RollbackApplication</code> was called.</p>"}))
    ApplicationDetail.add_member(:application_version_create_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApplicationVersionCreateTimestamp', traits: {"smithy.api#documentation" => "The current timestamp when the application version was created."}))
    ApplicationDetail.add_member(:conditional_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalToken, location_name: 'ConditionalToken', traits: {"smithy.api#documentation" => "<p>A value you use to implement strong concurrency for application updates.</p>"}))
    ApplicationDetail.add_member(:application_version_rolled_back_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionRolledBackTo', traits: {"smithy.api#documentation" => "<p>The version to which you want to roll back the application.</p>"}))
    ApplicationDetail.add_member(:application_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMode, location_name: 'ApplicationMode', traits: {"smithy.api#documentation" => "<p>To create a Managed Service for Apache Flink Studio notebook, you must set the mode to <code>INTERACTIVE</code>. However, for a Managed Service for Apache Flink application, the mode is optional.</p>"}))
    ApplicationDetail.type = Types::ApplicationDetail
    ApplicationMaintenanceConfigurationDescription.add_member(:application_maintenance_window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMaintenanceWindowStartTime, location_name: 'ApplicationMaintenanceWindowStartTime', traits: {"smithy.api#documentation" => "<p>The start time for the maintenance window.</p>", "smithy.api#required" => {}}))
    ApplicationMaintenanceConfigurationDescription.add_member(:application_maintenance_window_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMaintenanceWindowEndTime, location_name: 'ApplicationMaintenanceWindowEndTime', traits: {"smithy.api#documentation" => "<p>The end time for the maintenance window.</p>", "smithy.api#required" => {}}))
    ApplicationMaintenanceConfigurationDescription.type = Types::ApplicationMaintenanceConfigurationDescription
    ApplicationMaintenanceConfigurationUpdate.add_member(:application_maintenance_window_start_time_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMaintenanceWindowStartTime, location_name: 'ApplicationMaintenanceWindowStartTimeUpdate', traits: {"smithy.api#documentation" => "<p>The updated start time for the maintenance window.</p>", "smithy.api#required" => {}}))
    ApplicationMaintenanceConfigurationUpdate.type = Types::ApplicationMaintenanceConfigurationUpdate
    ApplicationMode.add_member(:streaming, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STREAMING', traits: {"smithy.api#enumValue" => "STREAMING"}))
    ApplicationMode.add_member(:interactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERACTIVE', traits: {"smithy.api#enumValue" => "INTERACTIVE"}))
    ApplicationOperationInfo.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation'))
    ApplicationOperationInfo.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId'))
    ApplicationOperationInfo.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "The timestamp at which the operation was created"}))
    ApplicationOperationInfo.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "The timestamp at which the operation finished for the application"}))
    ApplicationOperationInfo.add_member(:operation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatus, location_name: 'OperationStatus'))
    ApplicationOperationInfo.type = Types::ApplicationOperationInfo
    ApplicationOperationInfoDetails.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation', traits: {"smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "The timestamp at which the operation was created", "smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "The timestamp at which the operation finished for the application", "smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:operation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatus, location_name: 'OperationStatus', traits: {"smithy.api#required" => {}}))
    ApplicationOperationInfoDetails.add_member(:application_version_change_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionChangeDetails, location_name: 'ApplicationVersionChangeDetails'))
    ApplicationOperationInfoDetails.add_member(:operation_failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureDetails, location_name: 'OperationFailureDetails'))
    ApplicationOperationInfoDetails.type = Types::ApplicationOperationInfoDetails
    ApplicationOperationInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationOperationInfo)
    ApplicationRestoreConfiguration.add_member(:application_restore_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationRestoreType, location_name: 'ApplicationRestoreType', traits: {"smithy.api#documentation" => "<p>Specifies how the application should be restored.</p>", "smithy.api#required" => {}}))
    ApplicationRestoreConfiguration.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>The identifier of an existing snapshot of application state to use to restart an application.\n      The application uses this value if <code>RESTORE_FROM_CUSTOM_SNAPSHOT</code> is specified for the \n      <code>ApplicationRestoreType</code>.</p>"}))
    ApplicationRestoreConfiguration.type = Types::ApplicationRestoreConfiguration
    ApplicationRestoreType.add_member(:skip_restore_from_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP_RESTORE_FROM_SNAPSHOT', traits: {"smithy.api#enumValue" => "SKIP_RESTORE_FROM_SNAPSHOT"}))
    ApplicationRestoreType.add_member(:restore_from_latest_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_FROM_LATEST_SNAPSHOT', traits: {"smithy.api#enumValue" => "RESTORE_FROM_LATEST_SNAPSHOT"}))
    ApplicationRestoreType.add_member(:restore_from_custom_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_FROM_CUSTOM_SNAPSHOT', traits: {"smithy.api#enumValue" => "RESTORE_FROM_CUSTOM_SNAPSHOT"}))
    ApplicationSnapshotConfiguration.add_member(:snapshots_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'SnapshotsEnabled', traits: {"smithy.api#documentation" => "<p>Describes whether snapshots are enabled for a Managed Service for Apache Flink application.</p>", "smithy.api#required" => {}}))
    ApplicationSnapshotConfiguration.type = Types::ApplicationSnapshotConfiguration
    ApplicationSnapshotConfigurationDescription.add_member(:snapshots_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'SnapshotsEnabled', traits: {"smithy.api#documentation" => "<p>Describes whether snapshots are enabled for a Managed Service for Apache Flink application.</p>", "smithy.api#required" => {}}))
    ApplicationSnapshotConfigurationDescription.type = Types::ApplicationSnapshotConfigurationDescription
    ApplicationSnapshotConfigurationUpdate.add_member(:snapshots_enabled_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'SnapshotsEnabledUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to whether snapshots are enabled for an application.</p>", "smithy.api#required" => {}}))
    ApplicationSnapshotConfigurationUpdate.type = Types::ApplicationSnapshotConfigurationUpdate
    ApplicationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ApplicationStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ApplicationStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    ApplicationStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ApplicationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApplicationStatus.add_member(:autoscaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOSCALING', traits: {"smithy.api#enumValue" => "AUTOSCALING"}))
    ApplicationStatus.add_member(:force_stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORCE_STOPPING', traits: {"smithy.api#enumValue" => "FORCE_STOPPING"}))
    ApplicationStatus.add_member(:rolling_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLING_BACK', traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    ApplicationStatus.add_member(:maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAINTENANCE', traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ApplicationStatus.add_member(:rolled_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLED_BACK', traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    ApplicationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>The status of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Provides the current application version.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:runtime_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: 'RuntimeEnvironment', traits: {"smithy.api#documentation" => "<p>The runtime environment for the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMode, location_name: 'ApplicationMode', traits: {"smithy.api#documentation" => "<p>For a Managed Service for Apache Flink application, the mode is <code>STREAMING</code>. For a Managed Service for Apache Flink Studio notebook, it is <code>INTERACTIVE</code>.</p>"}))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSystemRollbackConfiguration.add_member(:rollback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'RollbackEnabled', traits: {"smithy.api#documentation" => "Describes whether system rollbacks are enabled for a Managed Service for Apache Flink application", "smithy.api#required" => {}}))
    ApplicationSystemRollbackConfiguration.type = Types::ApplicationSystemRollbackConfiguration
    ApplicationSystemRollbackConfigurationDescription.add_member(:rollback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'RollbackEnabled', traits: {"smithy.api#documentation" => "Describes whether system rollbacks are enabled for a Managed Service for Apache Flink application", "smithy.api#required" => {}}))
    ApplicationSystemRollbackConfigurationDescription.type = Types::ApplicationSystemRollbackConfigurationDescription
    ApplicationSystemRollbackConfigurationUpdate.add_member(:rollback_enabled_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'RollbackEnabledUpdate', traits: {"smithy.api#documentation" => "Describes whether system rollbacks are enabled for a Managed Service for Apache Flink application", "smithy.api#required" => {}}))
    ApplicationSystemRollbackConfigurationUpdate.type = Types::ApplicationSystemRollbackConfigurationUpdate
    ApplicationVersionChangeDetails.add_member(:application_version_updated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionUpdatedFrom', traits: {"smithy.api#documentation" => "The operation was performed on this version of the application", "smithy.api#required" => {}}))
    ApplicationVersionChangeDetails.add_member(:application_version_updated_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionUpdatedTo', traits: {"smithy.api#documentation" => "The operation execution resulted in the transition to the following version of the application", "smithy.api#required" => {}}))
    ApplicationVersionChangeDetails.type = Types::ApplicationVersionChangeDetails
    ApplicationVersionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionSummary)
    ApplicationVersionSummary.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the application version. Managed Service for Apache Flink updates the <code>ApplicationVersionId</code> each time you update the application.</p>", "smithy.api#required" => {}}))
    ApplicationVersionSummary.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>The status of the application.</p>", "smithy.api#required" => {}}))
    ApplicationVersionSummary.type = Types::ApplicationVersionSummary
    ArtifactType.add_member(:udf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDF', traits: {"smithy.api#enumValue" => "UDF"}))
    ArtifactType.add_member(:dependency_jar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_JAR', traits: {"smithy.api#enumValue" => "DEPENDENCY_JAR"}))
    CSVMappingParameters.add_member(:record_row_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordRowDelimiter, location_name: 'RecordRowDelimiter', traits: {"smithy.api#documentation" => "<p>The row delimiter. For example, in a CSV format, <i>'\\n'</i> is the typical\n      row delimiter.</p>", "smithy.api#required" => {}}))
    CSVMappingParameters.add_member(:record_column_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnDelimiter, location_name: 'RecordColumnDelimiter', traits: {"smithy.api#documentation" => "<p>The column delimiter. For example, in a CSV format, a comma (\",\") is the typical column\n      delimiter.</p>", "smithy.api#required" => {}}))
    CSVMappingParameters.type = Types::CSVMappingParameters
    CatalogConfiguration.add_member(:glue_data_catalog_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDataCatalogConfiguration, location_name: 'GlueDataCatalogConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration parameters for the default Amazon Glue database. You use this database for Apache Flink SQL queries and table API transforms that you write in a Managed Service for Apache Flink Studio notebook.</p>", "smithy.api#required" => {}}))
    CatalogConfiguration.type = Types::CatalogConfiguration
    CatalogConfigurationDescription.add_member(:glue_data_catalog_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDataCatalogConfigurationDescription, location_name: 'GlueDataCatalogConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Managed Service for Apache Flink Studio notebook.</p>", "smithy.api#required" => {}}))
    CatalogConfigurationDescription.type = Types::CatalogConfigurationDescription
    CatalogConfigurationUpdate.add_member(:glue_data_catalog_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDataCatalogConfigurationUpdate, location_name: 'GlueDataCatalogConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Managed Service for Apache Flink Studio notebook.</p>", "smithy.api#required" => {}}))
    CatalogConfigurationUpdate.type = Types::CatalogConfigurationUpdate
    CheckpointConfiguration.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationType', traits: {"smithy.api#documentation" => "<p>Describes whether the application uses Managed Service for Apache Flink' default checkpointing behavior. \n    You must set this property to <code>CUSTOM</code> in order to set the\n      <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.</p>\n         <note>\n            <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are set to other values using APIs or\n    application code:</p>\n            <ul>\n               <li>\n                  <p>\n                     <b>CheckpointingEnabled:</b> true</p>\n               </li>\n               <li>\n                  <p>\n                     <b>CheckpointInterval:</b> 60000</p>\n               </li>\n               <li>\n                  <p>\n                     <b>MinPauseBetweenCheckpoints:</b> 5000</p>\n               </li>\n            </ul>\n         </note>", "smithy.api#required" => {}}))
    CheckpointConfiguration.add_member(:checkpointing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'CheckpointingEnabled', traits: {"smithy.api#documentation" => "<p>Describes whether checkpointing is enabled for a Managed Service for Apache Flink application.</p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value \n      is set to another value using this API or in application code.</p>\n         </note>"}))
    CheckpointConfiguration.add_member(:checkpoint_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckpointInterval, location_name: 'CheckpointInterval', traits: {"smithy.api#documentation" => "<p>Describes the interval in milliseconds between checkpoint operations. </p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set \n      to another value using this API or in application code.</p>\n         </note>"}))
    CheckpointConfiguration.add_member(:min_pause_between_checkpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: MinPauseBetweenCheckpoints, location_name: 'MinPauseBetweenCheckpoints', traits: {"smithy.api#documentation" => "<p>Describes the minimum time in milliseconds after a checkpoint operation completes that a\n      new checkpoint operation can start. If a checkpoint operation takes longer than the\n        <code>CheckpointInterval</code>, the application otherwise performs continual checkpoint\n      operations. For more information, see <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/docs/ops/state/large_state_tuning/#tuning-checkpointing\"> Tuning Checkpointing</a> in the <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/\">Apache Flink\n        Documentation</a>.</p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this \n      API or in application code.</p>\n         </note>"}))
    CheckpointConfiguration.type = Types::CheckpointConfiguration
    CheckpointConfigurationDescription.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationType', traits: {"smithy.api#documentation" => "<p>Describes whether the application uses the default checkpointing behavior in Managed Service for Apache Flink. </p>\n         <note>\n            <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, \n      even if they are set to other values using APIs or\n    application code:</p>\n            <ul>\n               <li>\n                  <p>\n                     <b>CheckpointingEnabled:</b> true</p>\n               </li>\n               <li>\n                  <p>\n                     <b>CheckpointInterval:</b> 60000</p>\n               </li>\n               <li>\n                  <p>\n                     <b>MinPauseBetweenCheckpoints:</b> 5000</p>\n               </li>\n            </ul>\n         </note>"}))
    CheckpointConfigurationDescription.add_member(:checkpointing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'CheckpointingEnabled', traits: {"smithy.api#documentation" => "<p>Describes whether checkpointing is enabled for a Managed Service for Apache Flink application.</p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to \n      another value using this API or in application code.</p>\n         </note>"}))
    CheckpointConfigurationDescription.add_member(:checkpoint_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckpointInterval, location_name: 'CheckpointInterval', traits: {"smithy.api#documentation" => "<p>Describes the interval in milliseconds between checkpoint operations. </p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set to another value \n      using this API or in application code.</p>\n         </note>"}))
    CheckpointConfigurationDescription.add_member(:min_pause_between_checkpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: MinPauseBetweenCheckpoints, location_name: 'MinPauseBetweenCheckpoints', traits: {"smithy.api#documentation" => "<p>Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation\n      can start. </p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this \n      API or in application code.</p>\n         </note>"}))
    CheckpointConfigurationDescription.type = Types::CheckpointConfigurationDescription
    CheckpointConfigurationUpdate.add_member(:configuration_type_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationTypeUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to whether the application uses the default checkpointing behavior of\n      Managed Service for Apache Flink. You must set this property to <code>CUSTOM</code> in order to set the\n      <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.\n      </p>\n         <note>\n            <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are \n      set to other values using APIs or\n    application code:</p>\n            <ul>\n               <li>\n                  <p>\n                     <b>CheckpointingEnabled:</b> true</p>\n               </li>\n               <li>\n                  <p>\n                     <b>CheckpointInterval:</b> 60000</p>\n               </li>\n               <li>\n                  <p>\n                     <b>MinPauseBetweenCheckpoints:</b> 5000</p>\n               </li>\n            </ul>\n         </note>"}))
    CheckpointConfigurationUpdate.add_member(:checkpointing_enabled_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'CheckpointingEnabledUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to whether checkpointing is enabled for an application.</p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to \n      another value using this API or in application code.</p>\n         </note>"}))
    CheckpointConfigurationUpdate.add_member(:checkpoint_interval_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckpointInterval, location_name: 'CheckpointIntervalUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the interval in milliseconds between checkpoint operations.</p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set to another value \n      using this API or in application code.</p>\n         </note>"}))
    CheckpointConfigurationUpdate.add_member(:min_pause_between_checkpoints_update, Smithy::Schema::Shapes::ShapeRef.new(shape: MinPauseBetweenCheckpoints, location_name: 'MinPauseBetweenCheckpointsUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation\n      can start.</p>\n         <note>\n            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,\n    the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this API or \n      in application code.</p>\n         </note>"}))
    CheckpointConfigurationUpdate.type = Types::CheckpointConfigurationUpdate
    CloudWatchLoggingOption.add_member(:log_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARN', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch log to receive application messages.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOption.type = Types::CloudWatchLoggingOption
    CloudWatchLoggingOptionDescription.add_member(:cloud_watch_logging_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#documentation" => "<p>The ID of the CloudWatch logging option description.</p>"}))
    CloudWatchLoggingOptionDescription.add_member(:log_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application\n      messages.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOptionDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The IAM ARN of the role to use to send application messages. </p>\n         <note>\n            <p>Provided for backward compatibility. Applications created with the current API version have an\n        application-level service execution role rather than a resource-level role.</p>\n         </note>"}))
    CloudWatchLoggingOptionDescription.type = Types::CloudWatchLoggingOptionDescription
    CloudWatchLoggingOptionDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescription)
    CloudWatchLoggingOptionUpdate.add_member(:cloud_watch_logging_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#documentation" => "<p>The ID of the CloudWatch logging option to update</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOptionUpdate.add_member(:log_stream_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application\n      messages.</p>"}))
    CloudWatchLoggingOptionUpdate.type = Types::CloudWatchLoggingOptionUpdate
    CloudWatchLoggingOptionUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdate)
    CloudWatchLoggingOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOption)
    CodeContent.add_member(:text_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TextContent, location_name: 'TextContent', traits: {"smithy.api#documentation" => "<p>The text-format code for a Managed Service for Apache Flink application.</p>"}))
    CodeContent.add_member(:zip_file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ZipFileContent, location_name: 'ZipFileContent', traits: {"smithy.api#documentation" => "<p>The zip-format code for a Managed Service for Apache Flink application.</p>"}))
    CodeContent.add_member(:s3_content_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentLocation, location_name: 'S3ContentLocation', traits: {"smithy.api#documentation" => "<p>Information about the Amazon S3 bucket that contains the application code.</p>"}))
    CodeContent.type = Types::CodeContent
    CodeContentDescription.add_member(:text_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TextContent, location_name: 'TextContent', traits: {"smithy.api#documentation" => "<p>The text-format code</p>"}))
    CodeContentDescription.add_member(:code_md5, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMD5, location_name: 'CodeMD5', traits: {"smithy.api#documentation" => "<p>The checksum that can be used to validate zip-format code.</p>"}))
    CodeContentDescription.add_member(:code_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSize, location_name: 'CodeSize', traits: {"smithy.api#documentation" => "<p>The size in bytes of the application code. Can be used to validate zip-format code.</p>"}))
    CodeContentDescription.add_member(:s3_application_code_location_description, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ApplicationCodeLocationDescription, location_name: 'S3ApplicationCodeLocationDescription', traits: {"smithy.api#documentation" => "<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the application\n      code stored in Amazon S3.</p>"}))
    CodeContentDescription.type = Types::CodeContentDescription
    CodeContentType.add_member(:plaintext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAINTEXT', traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    CodeContentType.add_member(:zipfile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZIPFILE', traits: {"smithy.api#enumValue" => "ZIPFILE"}))
    CodeContentUpdate.add_member(:text_content_update, Smithy::Schema::Shapes::ShapeRef.new(shape: TextContent, location_name: 'TextContentUpdate', traits: {"smithy.api#documentation" => "<p>Describes an update to the text code for an application.</p>"}))
    CodeContentUpdate.add_member(:zip_file_content_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ZipFileContent, location_name: 'ZipFileContentUpdate', traits: {"smithy.api#documentation" => "<p>Describes an update to the zipped code for an application.</p>"}))
    CodeContentUpdate.add_member(:s3_content_location_update, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentLocationUpdate, location_name: 'S3ContentLocationUpdate', traits: {"smithy.api#documentation" => "<p>Describes an update to the location of code for an application.</p>"}))
    CodeContentUpdate.type = Types::CodeContentUpdate
    CodeValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CodeValidationException.type = Types::CodeValidationException
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ConfigurationType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    CreateApplicationPresignedUrlRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationPresignedUrlRequest.add_member(:url_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlType, location_name: 'UrlType', traits: {"smithy.api#documentation" => "<p>The type of the extension for which to create and return a URL. Currently, the only valid\n            extension URL type is <code>FLINK_DASHBOARD_URL</code>. </p>", "smithy.api#required" => {}}))
    CreateApplicationPresignedUrlRequest.add_member(:session_expiration_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionExpirationDurationInSeconds, location_name: 'SessionExpirationDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The duration in seconds for which the returned URL will be valid.</p>"}))
    CreateApplicationPresignedUrlRequest.type = Types::CreateApplicationPresignedUrlRequest
    CreateApplicationPresignedUrlResponse.add_member(:authorized_url, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedUrl, location_name: 'AuthorizedUrl', traits: {"smithy.api#documentation" => "<p>The URL of the extension.</p>"}))
    CreateApplicationPresignedUrlResponse.type = Types::CreateApplicationPresignedUrlResponse
    CreateApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of your application (for example, <code>sample-app</code>).</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'ApplicationDescription', traits: {"smithy.api#documentation" => "<p>A summary description of the application.</p>"}))
    CreateApplicationRequest.add_member(:runtime_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: 'RuntimeEnvironment', traits: {"smithy.api#documentation" => "<p>The runtime environment for the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:service_execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ServiceExecutionRole', traits: {"smithy.api#documentation" => "<p>The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose\n      delivery streams, Amazon S3 objects, and other external resources.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfiguration, location_name: 'ApplicationConfiguration', traits: {"smithy.api#documentation" => "<p>Use this parameter to configure the application.</p>"}))
    CreateApplicationRequest.add_member(:cloud_watch_logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: 'CloudWatchLoggingOptions', traits: {"smithy.api#documentation" => "<p>Use this parameter to configure an Amazon CloudWatch log stream to monitor application\n      configuration errors.\n      </p>"}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an \n        application. Note that the maximum number of application tags includes system tags. The maximum number of \n        user-defined application tags is 50.\n        For more information, see \n        <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>"}))
    CreateApplicationRequest.add_member(:application_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMode, location_name: 'ApplicationMode', traits: {"smithy.api#documentation" => "<p>Use the <code>STREAMING</code> mode to create a Managed Service for Apache Flink application. To create a Managed Service for Apache Flink Studio notebook, use the \n    <code>INTERACTIVE</code> mode.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationDetail', traits: {"smithy.api#documentation" => "<p>In response to your <code>CreateApplication</code> request, Managed Service for Apache Flink returns a \n      response with details of the application it created.</p>", "smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateApplicationSnapshotRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application</p>", "smithy.api#required" => {}}))
    CreateApplicationSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>An identifier for the application snapshot.</p>", "smithy.api#required" => {}}))
    CreateApplicationSnapshotRequest.type = Types::CreateApplicationSnapshotRequest
    CreateApplicationSnapshotResponse.type = Types::CreateApplicationSnapshotResponse
    CustomArtifactConfiguration.add_member(:artifact_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactType, location_name: 'ArtifactType', traits: {"smithy.api#documentation" => "<p>\n            <code>UDF</code> stands for user-defined functions. This type of artifact must be in an S3 bucket. A <code>DEPENDENCY_JAR</code> can be in either Maven or an S3 bucket.</p>", "smithy.api#required" => {}}))
    CustomArtifactConfiguration.add_member(:s3_content_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentLocation, location_name: 'S3ContentLocation'))
    CustomArtifactConfiguration.add_member(:maven_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: MavenReference, location_name: 'MavenReference', traits: {"smithy.api#documentation" => "<p>The parameters required to fully specify a Maven reference.</p>"}))
    CustomArtifactConfiguration.type = Types::CustomArtifactConfiguration
    CustomArtifactConfigurationDescription.add_member(:artifact_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactType, location_name: 'ArtifactType', traits: {"smithy.api#documentation" => "<p>\n            <code>UDF</code> stands for user-defined functions. This type of artifact must be in an S3 bucket. A <code>DEPENDENCY_JAR</code> can be in either Maven or an S3 bucket.</p>"}))
    CustomArtifactConfigurationDescription.add_member(:s3_content_location_description, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentLocation, location_name: 'S3ContentLocationDescription'))
    CustomArtifactConfigurationDescription.add_member(:maven_reference_description, Smithy::Schema::Shapes::ShapeRef.new(shape: MavenReference, location_name: 'MavenReferenceDescription', traits: {"smithy.api#documentation" => "<p>The parameters that are required to specify a Maven dependency.</p>"}))
    CustomArtifactConfigurationDescription.type = Types::CustomArtifactConfigurationDescription
    CustomArtifactsConfigurationDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomArtifactConfigurationDescription)
    CustomArtifactsConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomArtifactConfiguration)
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The application name.</p>", "smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the application. You must provide the\n        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can\n      retrieve the application version ID using <a>DescribeApplication</a>. For better\n      concurrency support, use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#documentation" => "<p>The <code>CloudWatchLoggingOptionId</code> of the Amazon CloudWatch logging option to\n         delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a>DescribeApplication</a> operation. </p>", "smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:conditional_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalToken, location_name: 'ConditionalToken', traits: {"smithy.api#documentation" => "<p>A value you use to implement strong concurrency for application updates. You must provide\n      the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the\n      application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    DeleteApplicationCloudWatchLoggingOptionRequest.type = Types::DeleteApplicationCloudWatchLoggingOptionRequest
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The application's Amazon Resource Name (ARN).</p>"}))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the application. Kinesis Data Analytics updates the\n        <code>ApplicationVersionId</code> each time you change the CloudWatch logging\n      options.</p>"}))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:cloud_watch_logging_option_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: 'CloudWatchLoggingOptionDescriptions', traits: {"smithy.api#documentation" => "<p>The descriptions of the remaining CloudWatch logging options for the application.</p>"}))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking DeleteApplicationCloudWatchLoggingOption request"}))
    DeleteApplicationCloudWatchLoggingOptionResponse.type = Types::DeleteApplicationCloudWatchLoggingOptionResponse
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The application version. \n      You can use the <a>DescribeApplication</a> operation to get the current application version.\n      If the version specified is not the current version, the \n      <code>ConcurrentModificationException</code> is returned.\n    </p>", "smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The ID of the input configuration from which to delete the input processing\n      configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.type = Types::DeleteApplicationInputProcessingConfigurationRequest
    DeleteApplicationInputProcessingConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    DeleteApplicationInputProcessingConfigurationResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID.</p>"}))
    DeleteApplicationInputProcessingConfigurationResponse.type = Types::DeleteApplicationInputProcessingConfigurationResponse
    DeleteApplicationOutputRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The application name.</p>", "smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The application version. \n      You can use the <a>DescribeApplication</a> operation to get the current application version.\n      If the version specified is not the current version, the \n      <code>ConcurrentModificationException</code> is returned.\n    </p>", "smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:output_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration to delete. Each output configuration that is added to the\n      application (either when the application is created or later) using the <a>AddApplicationOutput</a> operation has a unique ID. You need to provide the ID to\n      uniquely identify the output configuration that you want to delete from the application\n      configuration. You can use the <a>DescribeApplication</a> operation to get the\n      specific <code>OutputId</code>. </p>", "smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.type = Types::DeleteApplicationOutputRequest
    DeleteApplicationOutputResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The application Amazon Resource Name (ARN).</p>"}))
    DeleteApplicationOutputResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID.</p>"}))
    DeleteApplicationOutputResponse.type = Types::DeleteApplicationOutputResponse
    DeleteApplicationReferenceDataSourceRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version.  \n      You can use the <a>DescribeApplication</a> operation to get the current application version.\n      If the version specified \n      is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>", "smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>The ID of the reference data source. When you add a reference data source to your\n      application using the <a>AddApplicationReferenceDataSource</a>, Kinesis Data Analytics assigns an ID.\n      You can use the <a>DescribeApplication</a> operation to\n      get the reference ID. </p>", "smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.type = Types::DeleteApplicationReferenceDataSourceRequest
    DeleteApplicationReferenceDataSourceResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The application Amazon Resource Name (ARN).</p>"}))
    DeleteApplicationReferenceDataSourceResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The updated version ID of the application.</p>"}))
    DeleteApplicationReferenceDataSourceResponse.type = Types::DeleteApplicationReferenceDataSourceResponse
    DeleteApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application to delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:create_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"smithy.api#documentation" => "<p>Use the <code>DescribeApplication</code> operation to get this value.</p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteApplicationSnapshotRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>The identifier for the snapshot delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationSnapshotRequest.add_member(:snapshot_creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SnapshotCreationTimestamp', traits: {"smithy.api#documentation" => "<p>The creation timestamp of the application snapshot to delete. You can retrieve this value \n      using \n      or .</p>", "smithy.api#required" => {}}))
    DeleteApplicationSnapshotRequest.type = Types::DeleteApplicationSnapshotRequest
    DeleteApplicationSnapshotResponse.type = Types::DeleteApplicationSnapshotResponse
    DeleteApplicationVpcConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationVpcConfigurationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID. You must provide the\n        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can\n      retrieve the application version ID using <a>DescribeApplication</a>. For better\n      concurrency support, use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    DeleteApplicationVpcConfigurationRequest.add_member(:vpc_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'VpcConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC configuration to delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationVpcConfigurationRequest.add_member(:conditional_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalToken, location_name: 'ConditionalToken', traits: {"smithy.api#documentation" => "<p>A value you use to implement strong concurrency for application updates. You must provide\n      the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the\n      application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    DeleteApplicationVpcConfigurationRequest.type = Types::DeleteApplicationVpcConfigurationRequest
    DeleteApplicationVpcConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Managed Service for Apache Flink application.</p>"}))
    DeleteApplicationVpcConfigurationResponse.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The updated version ID of the application.</p>"}))
    DeleteApplicationVpcConfigurationResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking DeleteApplicationVpcConfiguration request"}))
    DeleteApplicationVpcConfigurationResponse.type = Types::DeleteApplicationVpcConfigurationResponse
    DeployAsApplicationConfiguration.add_member(:s3_content_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentBaseLocation, location_name: 'S3ContentLocation', traits: {"smithy.api#documentation" => "<p>The description of an Amazon S3 object that contains the Amazon Data Analytics application, including the Amazon Resource Name (ARN) of the S3 bucket, the name of the Amazon S3 object that contains the data, and the version number of the Amazon S3 object that contains the data.    \n    </p>", "smithy.api#required" => {}}))
    DeployAsApplicationConfiguration.type = Types::DeployAsApplicationConfiguration
    DeployAsApplicationConfigurationDescription.add_member(:s3_content_location_description, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentBaseLocationDescription, location_name: 'S3ContentLocationDescription', traits: {"smithy.api#documentation" => "<p>The location that holds the data required to specify an Amazon Data Analytics application.</p>", "smithy.api#required" => {}}))
    DeployAsApplicationConfigurationDescription.type = Types::DeployAsApplicationConfigurationDescription
    DeployAsApplicationConfigurationUpdate.add_member(:s3_content_location_update, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentBaseLocationUpdate, location_name: 'S3ContentLocationUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the location that holds the data required to specify an Amazon Data Analytics application.</p>"}))
    DeployAsApplicationConfigurationUpdate.type = Types::DeployAsApplicationConfigurationUpdate
    DescribeApplicationOperationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DescribeApplicationOperationRequest.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#required" => {}}))
    DescribeApplicationOperationRequest.type = Types::DescribeApplicationOperationRequest
    DescribeApplicationOperationResponse.add_member(:application_operation_info_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationOperationInfoDetails, location_name: 'ApplicationOperationInfoDetails'))
    DescribeApplicationOperationResponse.type = Types::DescribeApplicationOperationResponse
    DescribeApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    DescribeApplicationRequest.add_member(:include_additional_details, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'IncludeAdditionalDetails', traits: {"smithy.api#documentation" => "<p>Displays verbose information about a Managed Service for Apache Flink application, including the application's job plan.</p>"}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationDetail', traits: {"smithy.api#documentation" => "<p>Provides a description of the application, such as the application's Amazon Resource Name\n      (ARN), status, and latest version.</p>", "smithy.api#required" => {}}))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DescribeApplicationSnapshotRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    DescribeApplicationSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>The identifier of an application snapshot. You can retrieve this value using \n      .</p>", "smithy.api#required" => {}}))
    DescribeApplicationSnapshotRequest.type = Types::DescribeApplicationSnapshotRequest
    DescribeApplicationSnapshotResponse.add_member(:snapshot_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotDetails, location_name: 'SnapshotDetails', traits: {"smithy.api#documentation" => "<p>An object containing information about the application snapshot.</p>", "smithy.api#required" => {}}))
    DescribeApplicationSnapshotResponse.type = Types::DescribeApplicationSnapshotResponse
    DescribeApplicationVersionRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application for which you want to get the version description.</p>", "smithy.api#required" => {}}))
    DescribeApplicationVersionRequest.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the application version for which you want to get the description.</p>", "smithy.api#required" => {}}))
    DescribeApplicationVersionRequest.type = Types::DescribeApplicationVersionRequest
    DescribeApplicationVersionResponse.add_member(:application_version_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationVersionDetail'))
    DescribeApplicationVersionResponse.type = Types::DescribeApplicationVersionResponse
    DestinationSchema.add_member(:record_format_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormatType, location_name: 'RecordFormatType', traits: {"smithy.api#documentation" => "<p>Specifies the format of the records on the output stream.</p>", "smithy.api#required" => {}}))
    DestinationSchema.type = Types::DestinationSchema
    DiscoverInputSchemaRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the streaming source.</p>"}))
    DiscoverInputSchemaRequest.add_member(:service_execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ServiceExecutionRole', traits: {"smithy.api#documentation" => "<p>The ARN of the role that is used to access the streaming source.</p>", "smithy.api#required" => {}}))
    DiscoverInputSchemaRequest.add_member(:input_starting_position_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#documentation" => "<p>The point at which you want Kinesis Data Analytics to start reading records from the\n      specified streaming source for discovery purposes.</p>"}))
    DiscoverInputSchemaRequest.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 'S3Configuration', traits: {"smithy.api#documentation" => "<p>Specify this parameter to discover a schema from data in an Amazon S3\n      object.</p>"}))
    DiscoverInputSchemaRequest.add_member(:input_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a>InputProcessingConfiguration</a> to use to preprocess the records \n      before discovering the schema of the records.</p>"}))
    DiscoverInputSchemaRequest.type = Types::DiscoverInputSchemaRequest
    DiscoverInputSchemaResponse.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>The schema inferred from the streaming source. It identifies the format of the data in the\n      streaming source and how each data element maps to corresponding columns in the in-application\n      stream that you can create.</p>"}))
    DiscoverInputSchemaResponse.add_member(:parsed_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecords, location_name: 'ParsedInputRecords', traits: {"smithy.api#documentation" => "<p>An array of elements, where each element corresponds to a row in a stream record \n      (a stream record can have more than one row).</p>"}))
    DiscoverInputSchemaResponse.add_member(:processed_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: 'ProcessedInputRecords', traits: {"smithy.api#documentation" => "<p>The stream data that was modified by the processor specified in the\n        <code>InputProcessingConfiguration</code> parameter.</p>"}))
    DiscoverInputSchemaResponse.add_member(:raw_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecords, location_name: 'RawInputRecords', traits: {"smithy.api#documentation" => "<p>The raw stream data that was sampled to infer the schema.</p>"}))
    DiscoverInputSchemaResponse.type = Types::DiscoverInputSchemaResponse
    EnvironmentProperties.add_member(:property_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroups, location_name: 'PropertyGroups', traits: {"smithy.api#documentation" => "<p>Describes the execution property groups.</p>", "smithy.api#required" => {}}))
    EnvironmentProperties.type = Types::EnvironmentProperties
    EnvironmentPropertyDescriptions.add_member(:property_group_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroups, location_name: 'PropertyGroupDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the execution property groups.</p>"}))
    EnvironmentPropertyDescriptions.type = Types::EnvironmentPropertyDescriptions
    EnvironmentPropertyUpdates.add_member(:property_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroups, location_name: 'PropertyGroups', traits: {"smithy.api#documentation" => "<p>Describes updates to the execution property groups.</p>", "smithy.api#required" => {}}))
    EnvironmentPropertyUpdates.type = Types::EnvironmentPropertyUpdates
    ErrorInfo.add_member(:error_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorString, location_name: 'ErrorString'))
    ErrorInfo.type = Types::ErrorInfo
    FlinkApplicationConfiguration.add_member(:checkpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckpointConfiguration, location_name: 'CheckpointConfiguration', traits: {"smithy.api#documentation" => "<p>Describes an application's checkpointing configuration. Checkpointing is the \n      process of persisting application state for fault tolerance.\n      For more information, see \n      <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/docs/dev/datastream/fault-tolerance/checkpointing/#enabling-and-configuring-checkpointing\">\n        Checkpoints for Fault Tolerance</a> in the \n      <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/\">Apache Flink Documentation</a>. </p>"}))
    FlinkApplicationConfiguration.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: 'MonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>Describes configuration parameters for Amazon CloudWatch logging for an\n      application.</p>"}))
    FlinkApplicationConfiguration.add_member(:parallelism_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: 'ParallelismConfiguration', traits: {"smithy.api#documentation" => "<p>Describes parameters for how an application executes multiple tasks simultaneously.</p>"}))
    FlinkApplicationConfiguration.type = Types::FlinkApplicationConfiguration
    FlinkApplicationConfigurationDescription.add_member(:checkpoint_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckpointConfigurationDescription, location_name: 'CheckpointConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state \n      for fault tolerance.</p>"}))
    FlinkApplicationConfigurationDescription.add_member(:monitoring_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfigurationDescription, location_name: 'MonitoringConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Describes configuration parameters for Amazon CloudWatch logging for an\n      application.</p>"}))
    FlinkApplicationConfigurationDescription.add_member(:parallelism_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelismConfigurationDescription, location_name: 'ParallelismConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Describes parameters for how an application executes multiple tasks simultaneously.</p>"}))
    FlinkApplicationConfigurationDescription.add_member(:job_plan_description, Smithy::Schema::Shapes::ShapeRef.new(shape: JobPlanDescription, location_name: 'JobPlanDescription', traits: {"smithy.api#documentation" => "<p>The job plan for an application. For more information about the job plan, see <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/internals/job_scheduling.html\">Jobs and Scheduling</a> in the <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/\">Apache Flink\n        Documentation</a>. To retrieve the job plan for the application, use the <a>DescribeApplicationRequest$IncludeAdditionalDetails</a> parameter of the <a>DescribeApplication</a> operation.</p>"}))
    FlinkApplicationConfigurationDescription.type = Types::FlinkApplicationConfigurationDescription
    FlinkApplicationConfigurationUpdate.add_member(:checkpoint_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckpointConfigurationUpdate, location_name: 'CheckpointConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to an application's checkpointing configuration. Checkpointing is the process of persisting \n      application state for fault tolerance.</p>"}))
    FlinkApplicationConfigurationUpdate.add_member(:monitoring_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfigurationUpdate, location_name: 'MonitoringConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the configuration parameters for Amazon CloudWatch logging for an\n      application.</p>"}))
    FlinkApplicationConfigurationUpdate.add_member(:parallelism_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelismConfigurationUpdate, location_name: 'ParallelismConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the parameters for how an application executes multiple tasks simultaneously.</p>"}))
    FlinkApplicationConfigurationUpdate.type = Types::FlinkApplicationConfigurationUpdate
    FlinkRunConfiguration.add_member(:allow_non_restored_state, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AllowNonRestoredState', traits: {"smithy.api#documentation" => "<p>When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot \n       be mapped to the new program.\n     This will happen if the program is updated between snapshots to remove stateful parameters, and \n     state data in the snapshot no longer \n     corresponds to valid application data. For more information, see \n     <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/docs/ops/state/savepoints/#allowing-non-restored-state\">\n       Allowing Non-Restored State</a> in the <a href=\"https://nightlies.apache.org/flink/flink-docs-release-1.19/\">Apache Flink\n         documentation</a>.</p>\n         <note>\n            <p>This value defaults to <code>false</code>. If you update your application without\n     specifying this parameter, <code>AllowNonRestoredState</code> will be set to <code>false</code>,\n     even if it was previously set to <code>true</code>.</p>\n         </note>"}))
    FlinkRunConfiguration.type = Types::FlinkRunConfiguration
    GlueDataCatalogConfiguration.add_member(:database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseARN, location_name: 'DatabaseARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database.</p>", "smithy.api#required" => {}}))
    GlueDataCatalogConfiguration.type = Types::GlueDataCatalogConfiguration
    GlueDataCatalogConfigurationDescription.add_member(:database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseARN, location_name: 'DatabaseARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database.</p>", "smithy.api#required" => {}}))
    GlueDataCatalogConfigurationDescription.type = Types::GlueDataCatalogConfigurationDescription
    GlueDataCatalogConfigurationUpdate.add_member(:database_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseARN, location_name: 'DatabaseARNUpdate', traits: {"smithy.api#documentation" => "<p>The updated Amazon Resource Name (ARN) of the database.</p>", "smithy.api#required" => {}}))
    GlueDataCatalogConfigurationUpdate.type = Types::GlueDataCatalogConfigurationUpdate
    InAppStreamNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName)
    Input.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>The name prefix to use when creating an in-application stream. Suppose that you specify a\n      prefix \"<code>MyInApplicationStream</code>.\" Kinesis Data Analytics then creates one or more\n      (as per the <code>InputParallelism</code> count you specified) in-application streams with the\n      names \"<code>MyInApplicationStream_001</code>,\" \"<code>MyInApplicationStream_002</code>,\" and\n      so on. </p>", "smithy.api#required" => {}}))
    Input.add_member(:input_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a>InputProcessingConfiguration</a> for the input. An input processor transforms records as they are received \n      from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is \n      <a>InputLambdaProcessor</a>. </p>"}))
    Input.add_member(:kinesis_streams_input, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInput, location_name: 'KinesisStreamsInput', traits: {"smithy.api#documentation" => "<p>If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name (ARN). </p>"}))
    Input.add_member(:kinesis_firehose_input, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInput, location_name: 'KinesisFirehoseInput', traits: {"smithy.api#documentation" => "<p>If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.</p>"}))
    Input.add_member(:input_parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelism, location_name: 'InputParallelism', traits: {"smithy.api#documentation" => "<p>Describes the number of in-application streams to create. </p>"}))
    Input.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps\n      to corresponding columns in the in-application stream that is being created.</p>\n         <p>Also used to describe the format of the reference data source.</p>", "smithy.api#required" => {}}))
    Input.type = Types::Input
    InputDescription.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns to each input\n      configuration that you add to your application. </p>"}))
    InputDescription.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>The in-application name prefix.</p>"}))
    InputDescription.add_member(:in_app_stream_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamNames, location_name: 'InAppStreamNames', traits: {"smithy.api#documentation" => "<p>Returns the in-application stream names that are mapped to the stream source. </p>"}))
    InputDescription.add_member(:input_processing_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationDescription, location_name: 'InputProcessingConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The description of the preprocessor that executes on records in this input before the application's code is run. </p>"}))
    InputDescription.add_member(:kinesis_streams_input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInputDescription, location_name: 'KinesisStreamsInputDescription', traits: {"smithy.api#documentation" => "<p>If a Kinesis data stream is configured as a streaming source, provides the Kinesis data\n      stream's Amazon Resource Name (ARN). </p>"}))
    InputDescription.add_member(:kinesis_firehose_input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInputDescription, location_name: 'KinesisFirehoseInputDescription', traits: {"smithy.api#documentation" => "<p>If a Kinesis Data Firehose delivery stream is configured as a streaming source, provides the delivery stream's ARN. </p>"}))
    InputDescription.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns \n      in the in-application stream that is being created. </p>"}))
    InputDescription.add_member(:input_parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelism, location_name: 'InputParallelism', traits: {"smithy.api#documentation" => "<p>Describes the configured parallelism (number of in-application streams mapped to the streaming source). </p>"}))
    InputDescription.add_member(:input_starting_position_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#documentation" => "<p>The point at which the application is configured to read from the input stream.</p>"}))
    InputDescription.type = Types::InputDescription
    InputDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription)
    InputLambdaProcessor.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Lambda function that operates on records in the stream.</p>\n         <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    InputLambdaProcessor.type = Types::InputLambdaProcessor
    InputLambdaProcessorDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Lambda function that is used to preprocess the records in the\n      stream.</p>\n         <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    InputLambdaProcessorDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that is used to access the Amazon Lambda function.</p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    InputLambdaProcessorDescription.type = Types::InputLambdaProcessorDescription
    InputLambdaProcessorUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new Amazon Lambda function that is used to preprocess\n      the records in the stream.</p>\n         <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    InputLambdaProcessorUpdate.type = Types::InputLambdaProcessorUpdate
    InputParallelism.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>The number of in-application streams to create.</p>"}))
    InputParallelism.type = Types::InputParallelism
    InputParallelismUpdate.add_member(:count_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: 'CountUpdate', traits: {"smithy.api#documentation" => "<p>The number of in-application streams to create for the specified streaming source.</p>", "smithy.api#required" => {}}))
    InputParallelismUpdate.type = Types::InputParallelismUpdate
    InputProcessingConfiguration.add_member(:input_lambda_processor, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessor, location_name: 'InputLambdaProcessor', traits: {"smithy.api#documentation" => "<p>The <a>InputLambdaProcessor</a> that is used to preprocess the records\n      in the stream before being processed by your application code.</p>", "smithy.api#required" => {}}))
    InputProcessingConfiguration.type = Types::InputProcessingConfiguration
    InputProcessingConfigurationDescription.add_member(:input_lambda_processor_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessorDescription, location_name: 'InputLambdaProcessorDescription', traits: {"smithy.api#documentation" => "<p>Provides configuration information about the associated <a>InputLambdaProcessorDescription</a>\n         </p>"}))
    InputProcessingConfigurationDescription.type = Types::InputProcessingConfigurationDescription
    InputProcessingConfigurationUpdate.add_member(:input_lambda_processor_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessorUpdate, location_name: 'InputLambdaProcessorUpdate', traits: {"smithy.api#documentation" => "<p>Provides update information for an <a>InputLambdaProcessor</a>.</p>", "smithy.api#required" => {}}))
    InputProcessingConfigurationUpdate.type = Types::InputProcessingConfigurationUpdate
    InputSchemaUpdate.add_member(:record_format_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormat, location_name: 'RecordFormatUpdate', traits: {"smithy.api#documentation" => "<p>Specifies the format of the records on the streaming source.</p>"}))
    InputSchemaUpdate.add_member(:record_encoding_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordEncoding, location_name: 'RecordEncodingUpdate', traits: {"smithy.api#documentation" => "<p>Specifies the encoding of the records in the streaming source; for example, UTF-8.</p>"}))
    InputSchemaUpdate.add_member(:record_column_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumns, location_name: 'RecordColumnUpdates', traits: {"smithy.api#documentation" => "<p>A list of <code>RecordColumn</code> objects. Each object describes the mapping \n      of the streaming source element to the corresponding column in the in-application stream.</p>"}))
    InputSchemaUpdate.type = Types::InputSchemaUpdate
    InputStartingPosition.add_member(:now, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOW', traits: {"smithy.api#enumValue" => "NOW"}))
    InputStartingPosition.add_member(:trim_horizon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIM_HORIZON', traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    InputStartingPosition.add_member(:last_stopped_point, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_STOPPED_POINT', traits: {"smithy.api#enumValue" => "LAST_STOPPED_POINT"}))
    InputStartingPositionConfiguration.add_member(:input_starting_position, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPosition, location_name: 'InputStartingPosition', traits: {"smithy.api#documentation" => "<p>The starting position on the stream.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NOW</code> - Start reading just after the most recent record in the stream, and\n          start at the request timestamp that the customer issued.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, \n          which is the oldest record available in the stream. This option is not available \n          for an Amazon Kinesis Data Firehose delivery stream.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p>\n            </li>\n         </ul>"}))
    InputStartingPositionConfiguration.type = Types::InputStartingPositionConfiguration
    InputUpdate.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The input ID of the application input to be updated.</p>", "smithy.api#required" => {}}))
    InputUpdate.add_member(:name_prefix_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefixUpdate', traits: {"smithy.api#documentation" => "<p>The name prefix for in-application streams that Kinesis Data Analytics creates for the\n      specific streaming source.</p>"}))
    InputUpdate.add_member(:input_processing_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationUpdate, location_name: 'InputProcessingConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to an <a>InputProcessingConfiguration</a>.</p>"}))
    InputUpdate.add_member(:kinesis_streams_input_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInputUpdate, location_name: 'KinesisStreamsInputUpdate', traits: {"smithy.api#documentation" => "<p>If a Kinesis data stream is the streaming source to be updated, provides an\n      updated stream Amazon Resource Name (ARN).</p>"}))
    InputUpdate.add_member(:kinesis_firehose_input_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInputUpdate, location_name: 'KinesisFirehoseInputUpdate', traits: {"smithy.api#documentation" => "<p>If a Kinesis Data Firehose delivery stream is the streaming source to be\n      updated, provides an updated stream ARN.</p>"}))
    InputUpdate.add_member(:input_schema_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputSchemaUpdate, location_name: 'InputSchemaUpdate', traits: {"smithy.api#documentation" => "<p>Describes the data format on the streaming source, and \n      how record elements on the streaming source map to columns of the in-application stream that is created.</p>"}))
    InputUpdate.add_member(:input_parallelism_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismUpdate, location_name: 'InputParallelismUpdate', traits: {"smithy.api#documentation" => "<p>Describes the parallelism updates (the number of in-application streams Kinesis Data Analytics creates for the specific streaming source).</p>"}))
    InputUpdate.type = Types::InputUpdate
    InputUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputUpdate)
    Inputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Input)
    InvalidApplicationConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidApplicationConfigurationException.type = Types::InvalidApplicationConfigurationException
    InvalidArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    JSONMappingParameters.add_member(:record_row_path, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordRowPath, location_name: 'RecordRowPath', traits: {"smithy.api#documentation" => "<p>The path to the top-level parent that contains the records.</p>", "smithy.api#required" => {}}))
    JSONMappingParameters.type = Types::JSONMappingParameters
    KinesisFirehoseInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseInput.type = Types::KinesisFirehoseInput
    KinesisFirehoseInputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseInputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that Kinesis Data Analytics assumes to access the stream.</p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    KinesisFirehoseInputDescription.type = Types::KinesisFirehoseInputDescription
    KinesisFirehoseInputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the input delivery stream to read.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseInputUpdate.type = Types::KinesisFirehoseInputUpdate
    KinesisFirehoseOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the destination delivery stream to write to.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseOutput.type = Types::KinesisFirehoseOutput
    KinesisFirehoseOutputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseOutputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the\n      stream.</p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    KinesisFirehoseOutputDescription.type = Types::KinesisFirehoseOutputDescription
    KinesisFirehoseOutputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the delivery stream to write to. </p>", "smithy.api#required" => {}}))
    KinesisFirehoseOutputUpdate.type = Types::KinesisFirehoseOutputUpdate
    KinesisStreamsInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the input Kinesis data stream to read.</p>", "smithy.api#required" => {}}))
    KinesisStreamsInput.type = Types::KinesisStreamsInput
    KinesisStreamsInputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>", "smithy.api#required" => {}}))
    KinesisStreamsInputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the\n      stream.</p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    KinesisStreamsInputDescription.type = Types::KinesisStreamsInputDescription
    KinesisStreamsInputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the input Kinesis data stream to read.</p>", "smithy.api#required" => {}}))
    KinesisStreamsInputUpdate.type = Types::KinesisStreamsInputUpdate
    KinesisStreamsOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the destination Kinesis data stream to write to.</p>", "smithy.api#required" => {}}))
    KinesisStreamsOutput.type = Types::KinesisStreamsOutput
    KinesisStreamsOutputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>", "smithy.api#required" => {}}))
    KinesisStreamsOutputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the\n      stream.</p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    KinesisStreamsOutputDescription.type = Types::KinesisStreamsOutputDescription
    KinesisStreamsOutputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis data stream where you want to write the\n      output.</p>", "smithy.api#required" => {}}))
    KinesisStreamsOutputUpdate.type = Types::KinesisStreamsOutputUpdate
    LambdaOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination Lambda function to write to.</p>\n         <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    LambdaOutput.type = Types::LambdaOutput
    LambdaOutputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination Lambda function.</p>", "smithy.api#required" => {}}))
    LambdaOutputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to write to the destination\n      function.</p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    LambdaOutputDescription.type = Types::LambdaOutputDescription
    LambdaOutputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination Amazon Lambda function.</p>\n         <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    LambdaOutputUpdate.type = Types::LambdaOutputUpdate
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListApplicationOperationsRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    ListApplicationOperationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationOperationsInputLimit, location_name: 'Limit'))
    ListApplicationOperationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListApplicationOperationsRequest.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation'))
    ListApplicationOperationsRequest.add_member(:operation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatus, location_name: 'OperationStatus'))
    ListApplicationOperationsRequest.type = Types::ListApplicationOperationsRequest
    ListApplicationOperationsResponse.add_member(:application_operation_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationOperationInfoList, location_name: 'ApplicationOperationInfoList'))
    ListApplicationOperationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListApplicationOperationsResponse.type = Types::ListApplicationOperationsResponse
    ListApplicationSnapshotsRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of an existing application.</p>", "smithy.api#required" => {}}))
    ListApplicationSnapshotsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotsInputLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of application snapshots to list.</p>"}))
    ListApplicationSnapshotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more \n      output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should \n      continue from. </p>"}))
    ListApplicationSnapshotsRequest.type = Types::ListApplicationSnapshotsRequest
    ListApplicationSnapshotsResponse.add_member(:snapshot_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSummaries, location_name: 'SnapshotSummaries', traits: {"smithy.api#documentation" => "<p>A collection of objects containing information about the application snapshots.</p>"}))
    ListApplicationSnapshotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> if there are no additional results.</p>"}))
    ListApplicationSnapshotsResponse.type = Types::ListApplicationSnapshotsResponse
    ListApplicationVersionsRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application for which you want to list all versions.</p>", "smithy.api#required" => {}}))
    ListApplicationVersionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationVersionsInputLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of versions to list in this invocation of the operation.</p>"}))
    ListApplicationVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a previous invocation of this operation returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see \n      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>"}))
    ListApplicationVersionsRequest.type = Types::ListApplicationVersionsRequest
    ListApplicationVersionsResponse.add_member(:application_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionSummaries, location_name: 'ApplicationVersionSummaries', traits: {"smithy.api#documentation" => "<p>A list of the application versions and the associated configuration summaries. The list includes application versions that were rolled back.</p>\n         <p>To get the complete description of a specific application version, invoke the <a>DescribeApplicationVersion</a> operation.</p>"}))
    ListApplicationVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the next set of results, or <code>null</code> if there are no additional results. \n      To retrieve the next set of items, pass this token into a subsequent invocation of this operation. For more information about pagination, see \n      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>"}))
    ListApplicationVersionsResponse.type = Types::ListApplicationVersionsResponse
    ListApplicationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInputLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of applications to list.</p>"}))
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a previous command returned a pagination token, \n      pass it into this value to retrieve the next set of results.\n      For more information about pagination, see \n      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'ApplicationSummaries', traits: {"smithy.api#documentation" => "<p>A list of <code>ApplicationSummary</code> objects.</p>", "smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the next set of results, or <code>null</code> if there are no additional results.\n      Pass this token into a subsequent command to retrieve the next set of items\n      For more information about pagination, see \n      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>"}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the application for which to retrieve tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value tags assigned to the application.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LogLevel.add_member(:warn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    LogLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    MappingParameters.add_member(:json_mapping_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JSONMappingParameters, location_name: 'JSONMappingParameters', traits: {"smithy.api#documentation" => "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"}))
    MappingParameters.add_member(:csv_mapping_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CSVMappingParameters, location_name: 'CSVMappingParameters', traits: {"smithy.api#documentation" => "<p>Provides additional mapping information when the record format uses delimiters \n      (for example, CSV).</p>"}))
    MappingParameters.type = Types::MappingParameters
    MavenReference.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MavenGroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The group ID of the Maven reference.</p>", "smithy.api#required" => {}}))
    MavenReference.add_member(:artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MavenArtifactId, location_name: 'ArtifactId', traits: {"smithy.api#documentation" => "<p>The artifact ID of the Maven reference.</p>", "smithy.api#required" => {}}))
    MavenReference.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: MavenVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the Maven reference.</p>", "smithy.api#required" => {}}))
    MavenReference.type = Types::MavenReference
    MetricsLevel.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    MetricsLevel.add_member(:task, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TASK', traits: {"smithy.api#enumValue" => "TASK"}))
    MetricsLevel.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATOR', traits: {"smithy.api#enumValue" => "OPERATOR"}))
    MetricsLevel.add_member(:parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARALLELISM', traits: {"smithy.api#enumValue" => "PARALLELISM"}))
    MonitoringConfiguration.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationType', traits: {"smithy.api#documentation" => "<p>Describes whether to use the default CloudWatch logging configuration for an application. \n    You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or\n    <code>MetricsLevel</code> parameters.</p>", "smithy.api#required" => {}}))
    MonitoringConfiguration.add_member(:metrics_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsLevel, location_name: 'MetricsLevel', traits: {"smithy.api#documentation" => "<p>Describes the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>\n    level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>"}))
    MonitoringConfiguration.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevel', traits: {"smithy.api#documentation" => "<p>Describes the verbosity of the CloudWatch Logs for an application.</p>"}))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    MonitoringConfigurationDescription.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationType', traits: {"smithy.api#documentation" => "<p>Describes whether to use the default CloudWatch logging configuration for an application.</p>"}))
    MonitoringConfigurationDescription.add_member(:metrics_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsLevel, location_name: 'MetricsLevel', traits: {"smithy.api#documentation" => "<p>Describes the granularity of the CloudWatch Logs for an application.</p>"}))
    MonitoringConfigurationDescription.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevel', traits: {"smithy.api#documentation" => "<p>Describes the verbosity of the CloudWatch Logs for an application.</p>"}))
    MonitoringConfigurationDescription.type = Types::MonitoringConfigurationDescription
    MonitoringConfigurationUpdate.add_member(:configuration_type_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationTypeUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to whether to use the default CloudWatch logging configuration for \n      an application. You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or\n    <code>MetricsLevel</code> parameters.</p>"}))
    MonitoringConfigurationUpdate.add_member(:metrics_level_update, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsLevel, location_name: 'MetricsLevelUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>\n      level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>"}))
    MonitoringConfigurationUpdate.add_member(:log_level_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevelUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the verbosity of the CloudWatch Logs for an application.</p>"}))
    MonitoringConfigurationUpdate.type = Types::MonitoringConfigurationUpdate
    OperationFailureDetails.add_member(:rollback_operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'RollbackOperationId', traits: {"smithy.api#documentation" => "Provides the operation ID of a system-rollback operation executed due to failure in the current operation"}))
    OperationFailureDetails.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfo, location_name: 'ErrorInfo'))
    OperationFailureDetails.type = Types::OperationFailureDetails
    OperationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    OperationStatus.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    OperationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Output.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the in-application stream.</p>", "smithy.api#required" => {}}))
    Output.add_member(:kinesis_streams_output, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutput, location_name: 'KinesisStreamsOutput', traits: {"smithy.api#documentation" => "<p>Identifies a Kinesis data stream \n      as the destination.</p>"}))
    Output.add_member(:kinesis_firehose_output, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutput, location_name: 'KinesisFirehoseOutput', traits: {"smithy.api#documentation" => "<p>Identifies a Kinesis Data Firehose delivery stream as the destination.</p>"}))
    Output.add_member(:lambda_output, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutput, location_name: 'LambdaOutput', traits: {"smithy.api#documentation" => "<p>Identifies an Amazon Lambda function as the destination.</p>"}))
    Output.add_member(:destination_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchema', traits: {"smithy.api#documentation" => "<p>Describes the data format when records are written to the destination. \n      </p>", "smithy.api#required" => {}}))
    Output.type = Types::Output
    OutputDescription.add_member(:output_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the output configuration.</p>"}))
    OutputDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the in-application stream that is configured as output.</p>"}))
    OutputDescription.add_member(:kinesis_streams_output_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutputDescription, location_name: 'KinesisStreamsOutputDescription', traits: {"smithy.api#documentation" => "<p>Describes the Kinesis data stream that is configured as the destination where output is\n      written.</p>"}))
    OutputDescription.add_member(:kinesis_firehose_output_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutputDescription, location_name: 'KinesisFirehoseOutputDescription', traits: {"smithy.api#documentation" => "<p>Describes the Kinesis Data Firehose delivery stream that is configured as the destination\n      where output is written.</p>"}))
    OutputDescription.add_member(:lambda_output_description, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutputDescription, location_name: 'LambdaOutputDescription', traits: {"smithy.api#documentation" => "<p>Describes the Lambda function that is configured as the destination where output is\n      written.</p>"}))
    OutputDescription.add_member(:destination_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchema', traits: {"smithy.api#documentation" => "<p>The data format used for writing data to the destination.</p>"}))
    OutputDescription.type = Types::OutputDescription
    OutputDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescription)
    OutputUpdate.add_member(:output_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#documentation" => "<p>Identifies the specific output configuration that you want to update.</p>", "smithy.api#required" => {}}))
    OutputUpdate.add_member(:name_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NameUpdate', traits: {"smithy.api#documentation" => "<p>If you want to specify a different in-application stream \n      for this output configuration, use this field to \n      specify the new in-application stream name.</p>"}))
    OutputUpdate.add_member(:kinesis_streams_output_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutputUpdate, location_name: 'KinesisStreamsOutputUpdate', traits: {"smithy.api#documentation" => "<p>Describes a Kinesis data stream as the destination for the output.</p>"}))
    OutputUpdate.add_member(:kinesis_firehose_output_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutputUpdate, location_name: 'KinesisFirehoseOutputUpdate', traits: {"smithy.api#documentation" => "<p>Describes a Kinesis Data Firehose delivery stream as the destination for the\n      output.</p>"}))
    OutputUpdate.add_member(:lambda_output_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutputUpdate, location_name: 'LambdaOutputUpdate', traits: {"smithy.api#documentation" => "<p>Describes an Amazon Lambda function as the destination for the output.</p>"}))
    OutputUpdate.add_member(:destination_schema_update, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchemaUpdate', traits: {"smithy.api#documentation" => "<p>Describes the data format when records are written to the destination. \n      </p>"}))
    OutputUpdate.type = Types::OutputUpdate
    OutputUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUpdate)
    Outputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Output)
    ParallelismConfiguration.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationType', traits: {"smithy.api#documentation" => "<p>Describes whether the application uses the default parallelism for the Managed Service for Apache Flink service. You must set this property to <code>CUSTOM</code>\n    in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>", "smithy.api#required" => {}}))
    ParallelismConfiguration.add_member(:parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: Parallelism, location_name: 'Parallelism', traits: {"smithy.api#documentation" => "<p>Describes the initial number of parallel tasks that a Managed Service for Apache Flink application can perform. If <code>AutoScalingEnabled</code> \n      is set to True, Managed Service for Apache Flink increases the <code>CurrentParallelism</code> value in response to application\n    load. The service can increase the <code>CurrentParallelism</code> value up to the maximum parallelism, which is \n      <code>ParalellismPerKPU</code> times the maximum KPUs for the application. \n    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If \n    application load is reduced, the service can\n    reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>"}))
    ParallelismConfiguration.add_member(:parallelism_per_kpu, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelismPerKPU, location_name: 'ParallelismPerKPU', traits: {"smithy.api#documentation" => "<p>Describes the number of parallel tasks that a Managed Service for Apache Flink application can perform per Kinesis Processing Unit \n      (KPU) used by the application. For more\n      information about KPUs, see <a href=\"http://aws.amazon.com/kinesis/data-analytics/pricing/\">Amazon Managed Service for Apache Flink Pricing</a>.</p>"}))
    ParallelismConfiguration.add_member(:auto_scaling_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AutoScalingEnabled', traits: {"smithy.api#documentation" => "<p>Describes whether the Managed Service for Apache Flink service can increase the parallelism of the application in response to increased throughput.</p>"}))
    ParallelismConfiguration.type = Types::ParallelismConfiguration
    ParallelismConfigurationDescription.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationType', traits: {"smithy.api#documentation" => "<p>Describes whether the application uses the default parallelism for the Managed Service for Apache Flink service. </p>"}))
    ParallelismConfigurationDescription.add_member(:parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: Parallelism, location_name: 'Parallelism', traits: {"smithy.api#documentation" => "<p>Describes the initial number of parallel tasks that a Managed Service for Apache Flink application can perform. \n      If <code>AutoScalingEnabled</code> is set to True, then Managed Service for Apache Flink can increase the <code>CurrentParallelism</code> value in response to application\n    load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. \n    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can\n    reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>"}))
    ParallelismConfigurationDescription.add_member(:parallelism_per_kpu, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelismPerKPU, location_name: 'ParallelismPerKPU', traits: {"smithy.api#documentation" => "<p>Describes the number of parallel tasks that a Managed Service for Apache Flink application can perform per \n      Kinesis Processing Unit (KPU) used by the application.</p>"}))
    ParallelismConfigurationDescription.add_member(:current_parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: Parallelism, location_name: 'CurrentParallelism', traits: {"smithy.api#documentation" => "<p>Describes the current number of parallel tasks that a Managed Service for Apache Flink application can perform. \n      If <code>AutoScalingEnabled</code> is set to True, Managed Service for Apache Flink can increase this value in response to application\n    load. The service can increase this value up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. \n    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can reduce\n    the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>"}))
    ParallelismConfigurationDescription.add_member(:auto_scaling_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AutoScalingEnabled', traits: {"smithy.api#documentation" => "<p>Describes whether the Managed Service for Apache Flink service can increase the parallelism of the application in response to increased throughput.</p>"}))
    ParallelismConfigurationDescription.type = Types::ParallelismConfigurationDescription
    ParallelismConfigurationUpdate.add_member(:configuration_type_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationType, location_name: 'ConfigurationTypeUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to whether the application uses the default parallelism for the Managed Service for Apache Flink service, or if a custom parallelism is used.\n    You must set this property to <code>CUSTOM</code>\n    in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>"}))
    ParallelismConfigurationUpdate.add_member(:parallelism_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Parallelism, location_name: 'ParallelismUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the initial number of parallel tasks an application can perform. If <code>AutoScalingEnabled</code> is set to True, then \n      Managed Service for Apache Flink can increase the <code>CurrentParallelism</code> value in response to application\n    load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. \n    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service will\n    reduce <code>CurrentParallelism</code> down to the <code>Parallelism</code> setting.</p>"}))
    ParallelismConfigurationUpdate.add_member(:parallelism_per_kpu_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelismPerKPU, location_name: 'ParallelismPerKPUUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the number of parallel tasks an application can perform per Kinesis Processing Unit (KPU) used by the application.</p>"}))
    ParallelismConfigurationUpdate.add_member(:auto_scaling_enabled_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AutoScalingEnabledUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to whether the Managed Service for Apache Flink service can increase the parallelism of a Managed Service for Apache Flink application in response to increased throughput.</p>"}))
    ParallelismConfigurationUpdate.type = Types::ParallelismConfigurationUpdate
    ParsedInputRecord.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecordField)
    ParsedInputRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecord)
    ProcessedInputRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecord)
    PropertyGroup.add_member(:property_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'PropertyGroupId', traits: {"smithy.api#documentation" => "<p>Describes the key of an application execution property key-value pair.</p>", "smithy.api#required" => {}}))
    PropertyGroup.add_member(:property_map, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMap, location_name: 'PropertyMap', traits: {"smithy.api#documentation" => "<p>Describes the value of an application execution property key-value pair.</p>", "smithy.api#required" => {}}))
    PropertyGroup.type = Types::PropertyGroup
    PropertyGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroup)
    PropertyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyKey)
    PropertyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValue)
    RawInputRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecord)
    RecordColumn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the column that is created in the in-application input stream or reference\n      table.</p>", "smithy.api#required" => {}}))
    RecordColumn.add_member(:mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnMapping, location_name: 'Mapping', traits: {"smithy.api#documentation" => "<p>A reference to the data element in the streaming input or the reference data\n      source.</p>"}))
    RecordColumn.add_member(:sql_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnSqlType, location_name: 'SqlType', traits: {"smithy.api#documentation" => "<p>The type of column created in the in-application input stream or reference table.</p>", "smithy.api#required" => {}}))
    RecordColumn.type = Types::RecordColumn
    RecordColumns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumn)
    RecordFormat.add_member(:record_format_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormatType, location_name: 'RecordFormatType', traits: {"smithy.api#documentation" => "<p>The type of record format.</p>", "smithy.api#required" => {}}))
    RecordFormat.add_member(:mapping_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingParameters, location_name: 'MappingParameters', traits: {"smithy.api#documentation" => "<p>When you configure application input at the time of creating or updating an application,\n      provides additional mapping information specific to the record format (such as JSON, CSV, or\n      record fields delimited by some delimiter) on the streaming source.</p>"}))
    RecordFormat.type = Types::RecordFormat
    RecordFormatType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    RecordFormatType.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ReferenceDataSource.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the in-application table to create.</p>", "smithy.api#required" => {}}))
    ReferenceDataSource.add_member(:s3_reference_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSource, location_name: 'S3ReferenceDataSource', traits: {"smithy.api#documentation" => "<p>Identifies the S3 bucket and object that contains the reference data.\n      \n      A SQL-based Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application. </p>"}))
    ReferenceDataSource.add_member(:reference_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>", "smithy.api#required" => {}}))
    ReferenceDataSource.type = Types::ReferenceDataSource
    ReferenceDataSourceDescription.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>The ID of the reference data source. This is the ID that Kinesis Data Analytics assigns\n      when you add the reference data source to your application using the <a>CreateApplication</a> or <a>UpdateApplication</a> operation.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The in-application table name created by the specific reference data source configuration.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:s3_reference_data_source_description, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSourceDescription, location_name: 'S3ReferenceDataSourceDescription', traits: {"smithy.api#documentation" => "<p>Provides the Amazon S3 bucket name, the object key name that contains the reference data. </p>", "smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:reference_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"}))
    ReferenceDataSourceDescription.type = Types::ReferenceDataSourceDescription
    ReferenceDataSourceDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescription)
    ReferenceDataSourceUpdate.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>The ID of the reference data source that is being updated. You can use the <a>DescribeApplication</a> operation to get this value.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceUpdate.add_member(:table_name_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableNameUpdate', traits: {"smithy.api#documentation" => "<p>The in-application table name that is created by this update.</p>"}))
    ReferenceDataSourceUpdate.add_member(:s3_reference_data_source_update, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSourceUpdate, location_name: 'S3ReferenceDataSourceUpdate', traits: {"smithy.api#documentation" => "<p>Describes the S3 bucket name, object key name, and IAM role that Kinesis Data Analytics can assume to read the\n      Amazon S3 object on your behalf and populate the in-application reference table.</p>"}))
    ReferenceDataSourceUpdate.add_member(:reference_schema_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchemaUpdate', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to \n      corresponding columns created in the in-application stream. </p>"}))
    ReferenceDataSourceUpdate.type = Types::ReferenceDataSourceUpdate
    ReferenceDataSourceUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdate)
    ReferenceDataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSource)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProvisionedThroughputExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceProvisionedThroughputExceededException.type = Types::ResourceProvisionedThroughputExceededException
    RollbackApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    RollbackApplicationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID. You can retrieve the application version ID using \n            <a>DescribeApplication</a>.</p>", "smithy.api#required" => {}}))
    RollbackApplicationRequest.type = Types::RollbackApplicationRequest
    RollbackApplicationResponse.add_member(:application_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationDetail', traits: {"smithy.api#required" => {}}))
    RollbackApplicationResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking RollbackApplication request"}))
    RollbackApplicationResponse.type = Types::RollbackApplicationResponse
    RunConfiguration.add_member(:flink_run_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlinkRunConfiguration, location_name: 'FlinkRunConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the starting parameters for a Managed Service for Apache Flink application.</p>"}))
    RunConfiguration.add_member(:sql_run_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlRunConfigurations, location_name: 'SqlRunConfigurations', traits: {"smithy.api#documentation" => "<p>Describes the starting parameters for a SQL-based Kinesis Data Analytics application\n      application.</p>"}))
    RunConfiguration.add_member(:application_restore_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationRestoreConfiguration, location_name: 'ApplicationRestoreConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the restore behavior of a restarting application.</p>"}))
    RunConfiguration.type = Types::RunConfiguration
    RunConfigurationDescription.add_member(:application_restore_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationRestoreConfiguration, location_name: 'ApplicationRestoreConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Describes the restore behavior of a restarting application.</p>"}))
    RunConfigurationDescription.add_member(:flink_run_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlinkRunConfiguration, location_name: 'FlinkRunConfigurationDescription'))
    RunConfigurationDescription.type = Types::RunConfigurationDescription
    RunConfigurationUpdate.add_member(:flink_run_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlinkRunConfiguration, location_name: 'FlinkRunConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the starting parameters for a Managed Service for Apache Flink application.</p>"}))
    RunConfigurationUpdate.add_member(:application_restore_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationRestoreConfiguration, location_name: 'ApplicationRestoreConfiguration', traits: {"smithy.api#documentation" => "<p>Describes updates to the restore behavior of a restarting application.</p>"}))
    RunConfigurationUpdate.type = Types::RunConfigurationUpdate
    RuntimeEnvironment.add_member(:sql_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_1_0', traits: {"smithy.api#enumValue" => "SQL-1_0"}))
    RuntimeEnvironment.add_member(:flink_1_6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_6', traits: {"smithy.api#enumValue" => "FLINK-1_6"}))
    RuntimeEnvironment.add_member(:flink_1_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_8', traits: {"smithy.api#enumValue" => "FLINK-1_8"}))
    RuntimeEnvironment.add_member(:zeppelin_flink_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZEPPELIN_FLINK_1_0', traits: {"smithy.api#enumValue" => "ZEPPELIN-FLINK-1_0"}))
    RuntimeEnvironment.add_member(:flink_1_11, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_11', traits: {"smithy.api#enumValue" => "FLINK-1_11"}))
    RuntimeEnvironment.add_member(:flink_1_13, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_13', traits: {"smithy.api#enumValue" => "FLINK-1_13"}))
    RuntimeEnvironment.add_member(:zeppelin_flink_2_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZEPPELIN_FLINK_2_0', traits: {"smithy.api#enumValue" => "ZEPPELIN-FLINK-2_0"}))
    RuntimeEnvironment.add_member(:flink_1_15, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_15', traits: {"smithy.api#enumValue" => "FLINK-1_15"}))
    RuntimeEnvironment.add_member(:zeppelin_flink_3_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZEPPELIN_FLINK_3_0', traits: {"smithy.api#enumValue" => "ZEPPELIN-FLINK-3_0"}))
    RuntimeEnvironment.add_member(:flink_1_18, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_18', traits: {"smithy.api#enumValue" => "FLINK-1_18"}))
    RuntimeEnvironment.add_member(:flink_1_19, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_19', traits: {"smithy.api#enumValue" => "FLINK-1_19"}))
    RuntimeEnvironment.add_member(:flink_1_20, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_1_20', traits: {"smithy.api#enumValue" => "FLINK-1_20"}))
    S3ApplicationCodeLocationDescription.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>", "smithy.api#required" => {}}))
    S3ApplicationCodeLocationDescription.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>The file key for the object containing the application code.</p>", "smithy.api#required" => {}}))
    S3ApplicationCodeLocationDescription.add_member(:object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectVersion, location_name: 'ObjectVersion', traits: {"smithy.api#documentation" => "<p>The version of the object containing the application code.</p>"}))
    S3ApplicationCodeLocationDescription.type = Types::S3ApplicationCodeLocationDescription
    S3Configuration.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The ARN of the S3 bucket that contains the data.</p>", "smithy.api#required" => {}}))
    S3Configuration.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>The name of the object that contains the data.</p>", "smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    S3ContentBaseLocation.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3ContentBaseLocation.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: BasePath, location_name: 'BasePath', traits: {"smithy.api#documentation" => "<p>The base path for the S3 bucket.</p>"}))
    S3ContentBaseLocation.type = Types::S3ContentBaseLocation
    S3ContentBaseLocationDescription.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3ContentBaseLocationDescription.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: BasePath, location_name: 'BasePath', traits: {"smithy.api#documentation" => "<p>The base path for the S3 bucket.</p>"}))
    S3ContentBaseLocationDescription.type = Types::S3ContentBaseLocationDescription
    S3ContentBaseLocationUpdate.add_member(:bucket_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARNUpdate', traits: {"smithy.api#documentation" => "<p>The updated Amazon Resource Name (ARN) of the S3 bucket.</p>"}))
    S3ContentBaseLocationUpdate.add_member(:base_path_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BasePath, location_name: 'BasePathUpdate', traits: {"smithy.api#documentation" => "<p>The updated S3 bucket path.</p>"}))
    S3ContentBaseLocationUpdate.type = Types::S3ContentBaseLocationUpdate
    S3ContentLocation.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>", "smithy.api#required" => {}}))
    S3ContentLocation.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>The file key for the object containing the application code.</p>", "smithy.api#required" => {}}))
    S3ContentLocation.add_member(:object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectVersion, location_name: 'ObjectVersion', traits: {"smithy.api#documentation" => "<p>The version of the object containing the application code.</p>"}))
    S3ContentLocation.type = Types::S3ContentLocation
    S3ContentLocationUpdate.add_member(:bucket_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARNUpdate', traits: {"smithy.api#documentation" => "<p>The new Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"}))
    S3ContentLocationUpdate.add_member(:file_key_update, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKeyUpdate', traits: {"smithy.api#documentation" => "<p>The new file key for the object containing the application code.</p>"}))
    S3ContentLocationUpdate.add_member(:object_version_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectVersion, location_name: 'ObjectVersionUpdate', traits: {"smithy.api#documentation" => "<p>The new version of the object containing the application code.</p>"}))
    S3ContentLocationUpdate.type = Types::S3ContentLocationUpdate
    S3ReferenceDataSource.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>"}))
    S3ReferenceDataSource.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>The object key name containing the reference data.</p>"}))
    S3ReferenceDataSource.type = Types::S3ReferenceDataSource
    S3ReferenceDataSourceDescription.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>Amazon S3 object key name.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:reference_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to read the Amazon S3\n      object on your behalf to populate the in-application reference table. </p>\n         <note>\n            <p>Provided for backward compatibility. Applications that are created with the current API\n        version have an application-level service execution role rather than a resource-level\n        role.</p>\n         </note>"}))
    S3ReferenceDataSourceDescription.type = Types::S3ReferenceDataSourceDescription
    S3ReferenceDataSourceUpdate.add_member(:bucket_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>"}))
    S3ReferenceDataSourceUpdate.add_member(:file_key_update, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKeyUpdate', traits: {"smithy.api#documentation" => "<p>The object key name.</p>"}))
    S3ReferenceDataSourceUpdate.type = Types::S3ReferenceDataSourceUpdate
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SnapshotDetails.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>The identifier for the application snapshot.</p>", "smithy.api#required" => {}}))
    SnapshotDetails.add_member(:snapshot_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'SnapshotStatus', traits: {"smithy.api#documentation" => "<p>The status of the application snapshot.</p>", "smithy.api#required" => {}}))
    SnapshotDetails.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID when the snapshot was created.</p>", "smithy.api#required" => {}}))
    SnapshotDetails.add_member(:snapshot_creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SnapshotCreationTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the application snapshot.</p>"}))
    SnapshotDetails.add_member(:runtime_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: 'RuntimeEnvironment', traits: {"smithy.api#documentation" => "<p>The Flink Runtime for the application snapshot.</p>"}))
    SnapshotDetails.type = Types::SnapshotDetails
    SnapshotStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SnapshotStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    SnapshotStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    SnapshotStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SnapshotSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotDetails)
    SourceSchema.add_member(:record_format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormat, location_name: 'RecordFormat', traits: {"smithy.api#documentation" => "<p>Specifies the format of the records on the streaming source.</p>", "smithy.api#required" => {}}))
    SourceSchema.add_member(:record_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordEncoding, location_name: 'RecordEncoding', traits: {"smithy.api#documentation" => "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"}))
    SourceSchema.add_member(:record_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumns, location_name: 'RecordColumns', traits: {"smithy.api#documentation" => "<p>A list of <code>RecordColumn</code> objects. </p>", "smithy.api#required" => {}}))
    SourceSchema.type = Types::SourceSchema
    SqlApplicationConfiguration.add_member(:inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: Inputs, location_name: 'Inputs', traits: {"smithy.api#documentation" => "<p>The array of <a>Input</a> objects describing the input streams used by the\n      application.</p>"}))
    SqlApplicationConfiguration.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: Outputs, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>The array of <a>Output</a> objects describing the destination streams used by\n      the application.</p>"}))
    SqlApplicationConfiguration.add_member(:reference_data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSources, location_name: 'ReferenceDataSources', traits: {"smithy.api#documentation" => "<p>The array of <a>ReferenceDataSource</a> objects describing the reference data\n      sources used by the application.</p>"}))
    SqlApplicationConfiguration.type = Types::SqlApplicationConfiguration
    SqlApplicationConfigurationDescription.add_member(:input_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescriptions, location_name: 'InputDescriptions', traits: {"smithy.api#documentation" => "<p>The array of <a>InputDescription</a> objects describing the input streams used\n      by the application.</p>"}))
    SqlApplicationConfigurationDescription.add_member(:output_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: 'OutputDescriptions', traits: {"smithy.api#documentation" => "<p>The array of <a>OutputDescription</a> objects describing the destination\n      streams used by the application.</p>"}))
    SqlApplicationConfigurationDescription.add_member(:reference_data_source_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: 'ReferenceDataSourceDescriptions', traits: {"smithy.api#documentation" => "<p>The array of <a>ReferenceDataSourceDescription</a> objects describing the\n      reference data sources used by the application.</p>"}))
    SqlApplicationConfigurationDescription.type = Types::SqlApplicationConfigurationDescription
    SqlApplicationConfigurationUpdate.add_member(:input_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: InputUpdates, location_name: 'InputUpdates', traits: {"smithy.api#documentation" => "<p>The array of <a>InputUpdate</a> objects describing the new input streams used\n      by the application.</p>"}))
    SqlApplicationConfigurationUpdate.add_member(:output_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUpdates, location_name: 'OutputUpdates', traits: {"smithy.api#documentation" => "<p>The array of <a>OutputUpdate</a> objects describing the new destination streams\n      used by the application.</p>"}))
    SqlApplicationConfigurationUpdate.add_member(:reference_data_source_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdates, location_name: 'ReferenceDataSourceUpdates', traits: {"smithy.api#documentation" => "<p>The array of <a>ReferenceDataSourceUpdate</a> objects describing the new\n      reference data sources used by the application.</p>"}))
    SqlApplicationConfigurationUpdate.type = Types::SqlApplicationConfigurationUpdate
    SqlRunConfiguration.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The input source ID. You can get this ID by calling the <a>DescribeApplication</a> operation. </p>", "smithy.api#required" => {}}))
    SqlRunConfiguration.add_member(:input_starting_position_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#documentation" => "<p>The point at which you want the application to start processing records from the streaming\n      source. </p>", "smithy.api#required" => {}}))
    SqlRunConfiguration.type = Types::SqlRunConfiguration
    SqlRunConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SqlRunConfiguration)
    StartApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    StartApplicationRequest.add_member(:run_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RunConfiguration, location_name: 'RunConfiguration', traits: {"smithy.api#documentation" => "<p>Identifies the run configuration (start parameters) of a Managed Service for Apache Flink application.</p>"}))
    StartApplicationRequest.type = Types::StartApplicationRequest
    StartApplicationResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking StartApplication request"}))
    StartApplicationResponse.type = Types::StartApplicationResponse
    StopApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the running application to stop.</p>", "smithy.api#required" => {}}))
    StopApplicationRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'Force', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to force the application to stop. If you set <code>Force</code>\n          to <code>true</code>, Managed Service for Apache Flink stops the application without taking a snapshot. \n      </p>\n         <note>\n            <p>Force-stopping your application may lead to data loss or duplication.\n              To prevent data loss or duplicate processing of data during application restarts, \n              we recommend you to take frequent snapshots of your application.</p>\n         </note>\n         <p>You can only force stop a Managed Service for Apache Flink application. You can't force stop a SQL-based Kinesis Data Analytics application.</p>\n         <p>The application must be in the\n          <code>STARTING</code>, <code>UPDATING</code>, <code>STOPPING</code>, <code>AUTOSCALING</code>, or\n          <code>RUNNING</code> status. </p>"}))
    StopApplicationRequest.type = Types::StopApplicationRequest
    StopApplicationResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking StopApplication request"}))
    StopApplicationResponse.type = Types::StopApplicationResponse
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the key-value tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the key-value tag. The value is optional.</p>"}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the application to assign the tags.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value tags to assign to the application.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UnableToDetectSchemaException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnableToDetectSchemaException.add_member(:raw_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecords, location_name: 'RawInputRecords', traits: {"smithy.api#documentation" => "<p>Raw stream data that was sampled to infer the schema.</p>"}))
    UnableToDetectSchemaException.add_member(:processed_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: 'ProcessedInputRecords', traits: {"smithy.api#documentation" => "<p>Stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter. </p>"}))
    UnableToDetectSchemaException.type = Types::UnableToDetectSchemaException
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Managed Service for Apache Flink application from which to remove the tags.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of keys of tags to remove from the specified application.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationMaintenanceConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application for which you want to update the maintenance configuration.</p>", "smithy.api#required" => {}}))
    UpdateApplicationMaintenanceConfigurationRequest.add_member(:application_maintenance_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMaintenanceConfigurationUpdate, location_name: 'ApplicationMaintenanceConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes the application maintenance configuration update.</p>", "smithy.api#required" => {}}))
    UpdateApplicationMaintenanceConfigurationRequest.type = Types::UpdateApplicationMaintenanceConfigurationRequest
    UpdateApplicationMaintenanceConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    UpdateApplicationMaintenanceConfigurationResponse.add_member(:application_maintenance_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMaintenanceConfigurationDescription, location_name: 'ApplicationMaintenanceConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The application maintenance configuration description after the update.</p>"}))
    UpdateApplicationMaintenanceConfigurationResponse.type = Types::UpdateApplicationMaintenanceConfigurationResponse
    UpdateApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the application to update.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID. You must provide the\n        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can\n      retrieve the application version ID using <a>DescribeApplication</a>. For better\n      concurrency support, use the <code>ConditionalToken</code> parameter instead of\n        <code>CurrentApplicationVersionId</code>.</p>"}))
    UpdateApplicationRequest.add_member(:application_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfigurationUpdate, location_name: 'ApplicationConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes application configuration updates.</p>"}))
    UpdateApplicationRequest.add_member(:service_execution_role_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ServiceExecutionRoleUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the service execution role.</p>"}))
    UpdateApplicationRequest.add_member(:run_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RunConfigurationUpdate, location_name: 'RunConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates to the application's starting parameters.</p>"}))
    UpdateApplicationRequest.add_member(:cloud_watch_logging_option_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdates, location_name: 'CloudWatchLoggingOptionUpdates', traits: {"smithy.api#documentation" => "<p>Describes application Amazon CloudWatch logging option updates. You can only update\n      existing CloudWatch logging options with this action. To add a new CloudWatch logging option,\n      use <a>AddApplicationCloudWatchLoggingOption</a>.</p>"}))
    UpdateApplicationRequest.add_member(:conditional_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalToken, location_name: 'ConditionalToken', traits: {"smithy.api#documentation" => "<p>A value you use to implement strong concurrency for application updates. You must\n      provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You\n      get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the\n        <code>ConditionalToken</code> parameter instead of\n      <code>CurrentApplicationVersionId</code>.</p>"}))
    UpdateApplicationRequest.add_member(:runtime_environment_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: 'RuntimeEnvironmentUpdate', traits: {"smithy.api#documentation" => "<p>Updates the Managed Service for Apache Flink runtime environment used to run your code. To avoid issues you must:</p>\n         <ul>\n            <li>\n               <p>Ensure your new jar and dependencies are compatible with the new runtime selected.</p>\n            </li>\n            <li>\n               <p>Ensure your new code's state is compatible with the snapshot from which your application will start</p>\n            </li>\n         </ul>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationDetail', traits: {"smithy.api#documentation" => "<p>Describes application updates.</p>", "smithy.api#required" => {}}))
    UpdateApplicationResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "Operation ID for tracking UpdateApplication request"}))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UrlType.add_member(:flink_dashboard_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLINK_DASHBOARD_URL', traits: {"smithy.api#enumValue" => "FLINK_DASHBOARD_URL"}))
    UrlType.add_member(:zeppelin_ui_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZEPPELIN_UI_URL', traits: {"smithy.api#enumValue" => "ZEPPELIN_UI_URL"}))
    VpcConfiguration.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> IDs \n        used by the VPC configuration.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> \n        IDs used by the VPC configuration.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpcConfigurationDescription.add_member(:vpc_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'VpcConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC configuration.</p>", "smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the associated VPC.</p>", "smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> \n        IDs used by the VPC configuration.</p>", "smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> \n        IDs used by the VPC configuration.</p>", "smithy.api#required" => {}}))
    VpcConfigurationDescription.type = Types::VpcConfigurationDescription
    VpcConfigurationDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigurationDescription)
    VpcConfigurationUpdate.add_member(:vpc_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'VpcConfigurationId', traits: {"smithy.api#documentation" => "<p>Describes an update to the ID of the VPC configuration.</p>", "smithy.api#required" => {}}))
    VpcConfigurationUpdate.add_member(:subnet_id_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIdUpdates', traits: {"smithy.api#documentation" => "<p>Describes updates to the array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> \n        IDs \n        used by the VPC configuration.</p>"}))
    VpcConfigurationUpdate.add_member(:security_group_id_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIdUpdates', traits: {"smithy.api#documentation" => "<p>Describes updates to the array of \n        <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> IDs used by the VPC configuration.</p>"}))
    VpcConfigurationUpdate.type = Types::VpcConfigurationUpdate
    VpcConfigurationUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigurationUpdate)
    VpcConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration)
    ZeppelinApplicationConfiguration.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeppelinMonitoringConfiguration, location_name: 'MonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The monitoring configuration of a Managed Service for Apache Flink Studio notebook.</p>"}))
    ZeppelinApplicationConfiguration.add_member(:catalog_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogConfiguration, location_name: 'CatalogConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon Glue Data Catalog that you use in queries in a Managed Service for Apache Flink Studio notebook.</p>"}))
    ZeppelinApplicationConfiguration.add_member(:deploy_as_application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployAsApplicationConfiguration, location_name: 'DeployAsApplicationConfiguration', traits: {"smithy.api#documentation" => "<p>The information required to deploy a Managed Service for Apache Flink Studio notebook as an application with durable state.</p>"}))
    ZeppelinApplicationConfiguration.add_member(:custom_artifacts_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomArtifactsConfigurationList, location_name: 'CustomArtifactsConfiguration', traits: {"smithy.api#documentation" => "<p>Custom artifacts are dependency JARs and user-defined functions (UDF).</p>"}))
    ZeppelinApplicationConfiguration.type = Types::ZeppelinApplicationConfiguration
    ZeppelinApplicationConfigurationDescription.add_member(:monitoring_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeppelinMonitoringConfigurationDescription, location_name: 'MonitoringConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The monitoring configuration of a Managed Service for Apache Flink Studio notebook.</p>", "smithy.api#required" => {}}))
    ZeppelinApplicationConfigurationDescription.add_member(:catalog_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogConfigurationDescription, location_name: 'CatalogConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The Amazon Glue Data Catalog that is associated with the Managed Service for Apache Flink Studio notebook.</p>"}))
    ZeppelinApplicationConfigurationDescription.add_member(:deploy_as_application_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployAsApplicationConfigurationDescription, location_name: 'DeployAsApplicationConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The parameters required to deploy a Managed Service for Apache Flink Studio notebook as an application with durable state.</p>"}))
    ZeppelinApplicationConfigurationDescription.add_member(:custom_artifacts_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomArtifactsConfigurationDescriptionList, location_name: 'CustomArtifactsConfigurationDescription', traits: {"smithy.api#documentation" => "<p>Custom artifacts are dependency JARs and user-defined functions (UDF).</p>"}))
    ZeppelinApplicationConfigurationDescription.type = Types::ZeppelinApplicationConfigurationDescription
    ZeppelinApplicationConfigurationUpdate.add_member(:monitoring_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeppelinMonitoringConfigurationUpdate, location_name: 'MonitoringConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the monitoring configuration of a Managed Service for Apache Flink Studio notebook.</p>"}))
    ZeppelinApplicationConfigurationUpdate.add_member(:catalog_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogConfigurationUpdate, location_name: 'CatalogConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the configuration of the Amazon Glue Data Catalog that is associated with the Managed Service for Apache Flink Studio notebook.</p>"}))
    ZeppelinApplicationConfigurationUpdate.add_member(:deploy_as_application_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployAsApplicationConfigurationUpdate, location_name: 'DeployAsApplicationConfigurationUpdate'))
    ZeppelinApplicationConfigurationUpdate.add_member(:custom_artifacts_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomArtifactsConfigurationList, location_name: 'CustomArtifactsConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the customer artifacts. Custom artifacts are dependency JAR files and user-defined functions (UDF).</p>"}))
    ZeppelinApplicationConfigurationUpdate.type = Types::ZeppelinApplicationConfigurationUpdate
    ZeppelinMonitoringConfiguration.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevel', traits: {"smithy.api#documentation" => "<p>The verbosity of the CloudWatch Logs for an application.</p>", "smithy.api#required" => {}}))
    ZeppelinMonitoringConfiguration.type = Types::ZeppelinMonitoringConfiguration
    ZeppelinMonitoringConfigurationDescription.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevel', traits: {"smithy.api#documentation" => "<p>Describes the verbosity of the CloudWatch Logs for an application.</p>"}))
    ZeppelinMonitoringConfigurationDescription.type = Types::ZeppelinMonitoringConfigurationDescription
    ZeppelinMonitoringConfigurationUpdate.add_member(:log_level_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevelUpdate', traits: {"smithy.api#documentation" => "<p>Updates to the logging level for Apache Zeppelin within a Managed Service for Apache Flink Studio notebook.</p>", "smithy.api#required" => {}}))
    ZeppelinMonitoringConfigurationUpdate.type = Types::ZeppelinMonitoringConfigurationUpdate

    KinesisAnalytics20180523 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisanalyticsv2#KinesisAnalytics_20180523"
      service.name = "KinesisAnalytics20180523"
      service.version = "2018-05-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Analytics V2", "arnNamespace" => "kinesisanalytics", "cloudFormationName" => "KinesisAnalyticsV2", "cloudTrailEventSource" => "kinesisanalytics.amazonaws.com", "docId" => "kinesisanalyticsv2-2018-05-23", "endpointPrefix" => "kinesisanalytics"}, "aws.auth#sigv4" => {"name" => "kinesisanalytics"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Kinesis Analytics", "smithy.api#xmlNamespace" => {"uri" => "http://analytics.kinesis.amazonaws.com/doc/2018-05-23"}}
      service.add_operation(:add_application_cloud_watch_logging_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationCloudWatchLoggingOption"
        operation.name = "AddApplicationCloudWatchLoggingOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_input, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationInput"
        operation.name = "AddApplicationInput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_input_processing_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationInputProcessingConfiguration"
        operation.name = "AddApplicationInputProcessingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationOutput"
        operation.name = "AddApplicationOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationOutputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationOutputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_reference_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationReferenceDataSource"
        operation.name = "AddApplicationReferenceDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_vpc_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#AddApplicationVpcConfiguration"
        operation.name = "AddApplicationVpcConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationVpcConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationVpcConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application_presigned_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#CreateApplicationPresignedUrl"
        operation.name = "CreateApplicationPresignedUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationPresignedUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationPresignedUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_application_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#CreateApplicationSnapshot"
        operation.name = "CreateApplicationSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_cloud_watch_logging_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationCloudWatchLoggingOption"
        operation.name = "DeleteApplicationCloudWatchLoggingOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_input_processing_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationInputProcessingConfiguration"
        operation.name = "DeleteApplicationInputProcessingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationOutput"
        operation.name = "DeleteApplicationOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_reference_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationReferenceDataSource"
        operation.name = "DeleteApplicationReferenceDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationSnapshot"
        operation.name = "DeleteApplicationSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_vpc_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DeleteApplicationVpcConfiguration"
        operation.name = "DeleteApplicationVpcConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationVpcConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationVpcConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_operation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplicationOperation"
        operation.name = "DescribeApplicationOperation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationOperationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationOperationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplicationSnapshot"
        operation.name = "DescribeApplicationSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DescribeApplicationVersion"
        operation.name = "DescribeApplicationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:discover_input_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#DiscoverInputSchema"
        operation.name = "DiscoverInputSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoverInputSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoverInputSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDetectSchemaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_application_operations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplicationOperations"
        operation.name = "ListApplicationOperations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationOperationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationOperationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationOperations.new
      end)
      service.add_operation(:list_application_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplicationSnapshots"
        operation.name = "ListApplicationSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationSnapshotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationSnapshotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationSnapshots.new
      end)
      service.add_operation(:list_application_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplicationVersions"
        operation.name = "ListApplicationVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationVersions.new
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:rollback_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#RollbackApplication"
        operation.name = "RollbackApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#StartApplication"
        operation.name = "StartApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#StopApplication"
        operation.name = "StopApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_application_maintenance_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalyticsv2#UpdateApplicationMaintenanceConfiguration"
        operation.name = "UpdateApplicationMaintenanceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationMaintenanceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationMaintenanceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
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
