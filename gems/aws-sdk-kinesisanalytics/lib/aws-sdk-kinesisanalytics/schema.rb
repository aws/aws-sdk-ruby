# frozen_string_literal: true

# This is generated code!

module Aws::KinesisAnalytics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddApplicationCloudWatchLoggingOptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationCloudWatchLoggingOptionRequest', name: 'AddApplicationCloudWatchLoggingOptionRequest')
    AddApplicationCloudWatchLoggingOptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationCloudWatchLoggingOptionResponse', name: 'AddApplicationCloudWatchLoggingOptionResponse')
    AddApplicationInputProcessingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputProcessingConfigurationRequest', name: 'AddApplicationInputProcessingConfigurationRequest')
    AddApplicationInputProcessingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputProcessingConfigurationResponse', name: 'AddApplicationInputProcessingConfigurationResponse')
    AddApplicationInputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputRequest', name: 'AddApplicationInputRequest')
    AddApplicationInputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputResponse', name: 'AddApplicationInputResponse')
    AddApplicationOutputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationOutputRequest', name: 'AddApplicationOutputRequest')
    AddApplicationOutputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationOutputResponse', name: 'AddApplicationOutputResponse')
    AddApplicationReferenceDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationReferenceDataSourceRequest', name: 'AddApplicationReferenceDataSourceRequest')
    AddApplicationReferenceDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationReferenceDataSourceResponse', name: 'AddApplicationReferenceDataSourceResponse')
    ApplicationCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationCode', name: 'ApplicationCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}})
    ApplicationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationDescription', name: 'ApplicationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ApplicationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationDetail', name: 'ApplicationDetail')
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationUpdate', name: 'ApplicationUpdate')
    ApplicationVersionId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationVersionId', name: 'ApplicationVersionId', traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    BooleanObject = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kinesisanalytics#BooleanObject', name: 'BooleanObject')
    BucketARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#BucketARN', name: 'BucketARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    CSVMappingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CSVMappingParameters', name: 'CSVMappingParameters')
    CloudWatchLoggingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOption', name: 'CloudWatchLoggingOption')
    CloudWatchLoggingOptionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionDescription', name: 'CloudWatchLoggingOptionDescription')
    CloudWatchLoggingOptionDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionDescriptions', name: 'CloudWatchLoggingOptionDescriptions')
    CloudWatchLoggingOptionUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionUpdate', name: 'CloudWatchLoggingOptionUpdate')
    CloudWatchLoggingOptionUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionUpdates', name: 'CloudWatchLoggingOptionUpdates')
    CloudWatchLoggingOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptions', name: 'CloudWatchLoggingOptions')
    CodeValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CodeValidationException', name: 'CodeValidationException', traits: {"smithy.api#error" => "client"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CreateApplicationResponse', name: 'CreateApplicationResponse')
    DeleteApplicationCloudWatchLoggingOptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationCloudWatchLoggingOptionRequest', name: 'DeleteApplicationCloudWatchLoggingOptionRequest')
    DeleteApplicationCloudWatchLoggingOptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationCloudWatchLoggingOptionResponse', name: 'DeleteApplicationCloudWatchLoggingOptionResponse')
    DeleteApplicationInputProcessingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationInputProcessingConfigurationRequest', name: 'DeleteApplicationInputProcessingConfigurationRequest')
    DeleteApplicationInputProcessingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationInputProcessingConfigurationResponse', name: 'DeleteApplicationInputProcessingConfigurationResponse')
    DeleteApplicationOutputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationOutputRequest', name: 'DeleteApplicationOutputRequest')
    DeleteApplicationOutputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationOutputResponse', name: 'DeleteApplicationOutputResponse')
    DeleteApplicationReferenceDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationReferenceDataSourceRequest', name: 'DeleteApplicationReferenceDataSourceRequest')
    DeleteApplicationReferenceDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationReferenceDataSourceResponse', name: 'DeleteApplicationReferenceDataSourceResponse')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DescribeApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DescribeApplicationRequest', name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DescribeApplicationResponse', name: 'DescribeApplicationResponse')
    DestinationSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DestinationSchema', name: 'DestinationSchema')
    DiscoverInputSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DiscoverInputSchemaRequest', name: 'DiscoverInputSchemaRequest')
    DiscoverInputSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DiscoverInputSchemaResponse', name: 'DiscoverInputSchemaResponse')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ErrorMessage', name: 'ErrorMessage')
    FileKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#FileKey', name: 'FileKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    InAppStreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#InAppStreamName', name: 'InAppStreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    InAppStreamNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InAppStreamNames', name: 'InAppStreamNames')
    InAppTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#InAppTableName', name: 'InAppTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    Input = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#Input', name: 'Input')
    InputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputConfiguration', name: 'InputConfiguration')
    InputConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InputConfigurations', name: 'InputConfigurations')
    InputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputDescription', name: 'InputDescription')
    InputDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InputDescriptions', name: 'InputDescriptions')
    InputLambdaProcessor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputLambdaProcessor', name: 'InputLambdaProcessor')
    InputLambdaProcessorDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputLambdaProcessorDescription', name: 'InputLambdaProcessorDescription')
    InputLambdaProcessorUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputLambdaProcessorUpdate', name: 'InputLambdaProcessorUpdate')
    InputParallelism = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputParallelism', name: 'InputParallelism')
    InputParallelismCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalytics#InputParallelismCount', name: 'InputParallelismCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    InputParallelismUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputParallelismUpdate', name: 'InputParallelismUpdate')
    InputProcessingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputProcessingConfiguration', name: 'InputProcessingConfiguration')
    InputProcessingConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputProcessingConfigurationDescription', name: 'InputProcessingConfigurationDescription')
    InputProcessingConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputProcessingConfigurationUpdate', name: 'InputProcessingConfigurationUpdate')
    InputSchemaUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputSchemaUpdate', name: 'InputSchemaUpdate')
    InputStartingPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalytics#InputStartingPosition', name: 'InputStartingPosition')
    InputStartingPositionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputStartingPositionConfiguration', name: 'InputStartingPositionConfiguration')
    InputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputUpdate', name: 'InputUpdate')
    InputUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InputUpdates', name: 'InputUpdates')
    Inputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#Inputs', name: 'Inputs')
    InvalidApplicationConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InvalidApplicationConfigurationException', name: 'InvalidApplicationConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client"})
    JSONMappingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#JSONMappingParameters', name: 'JSONMappingParameters')
    KinesisAnalyticsARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisAnalyticsARN', name: 'KinesisAnalyticsARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kinesisanalytics:[a-z]{2}-[a-z]+-\\d{1}+:\\d{12}+:application/[a-zA-Z0-9_.-]{1,128}$"})
    KinesisFirehoseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseInput', name: 'KinesisFirehoseInput')
    KinesisFirehoseInputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseInputDescription', name: 'KinesisFirehoseInputDescription')
    KinesisFirehoseInputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseInputUpdate', name: 'KinesisFirehoseInputUpdate')
    KinesisFirehoseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseOutput', name: 'KinesisFirehoseOutput')
    KinesisFirehoseOutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseOutputDescription', name: 'KinesisFirehoseOutputDescription')
    KinesisFirehoseOutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseOutputUpdate', name: 'KinesisFirehoseOutputUpdate')
    KinesisStreamsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsInput', name: 'KinesisStreamsInput')
    KinesisStreamsInputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsInputDescription', name: 'KinesisStreamsInputDescription')
    KinesisStreamsInputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsInputUpdate', name: 'KinesisStreamsInputUpdate')
    KinesisStreamsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsOutput', name: 'KinesisStreamsOutput')
    KinesisStreamsOutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsOutputDescription', name: 'KinesisStreamsOutputDescription')
    KinesisStreamsOutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsOutputUpdate', name: 'KinesisStreamsOutputUpdate')
    LambdaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LambdaOutput', name: 'LambdaOutput')
    LambdaOutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LambdaOutputDescription', name: 'LambdaOutputDescription')
    LambdaOutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LambdaOutputUpdate', name: 'LambdaOutputUpdate')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListApplicationsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalytics#ListApplicationsInputLimit', name: 'ListApplicationsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogStreamARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#LogStreamARN', name: 'LogStreamARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    MappingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#MappingParameters', name: 'MappingParameters')
    Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#Output', name: 'Output')
    OutputDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#OutputDescription', name: 'OutputDescription')
    OutputDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#OutputDescriptions', name: 'OutputDescriptions')
    OutputUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#OutputUpdate', name: 'OutputUpdate')
    OutputUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#OutputUpdates', name: 'OutputUpdates')
    Outputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#Outputs', name: 'Outputs')
    ParsedInputRecord = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ParsedInputRecord', name: 'ParsedInputRecord')
    ParsedInputRecordField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ParsedInputRecordField', name: 'ParsedInputRecordField')
    ParsedInputRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ParsedInputRecords', name: 'ParsedInputRecords')
    ProcessedInputRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ProcessedInputRecord', name: 'ProcessedInputRecord')
    ProcessedInputRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ProcessedInputRecords', name: 'ProcessedInputRecords')
    RawInputRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RawInputRecord', name: 'RawInputRecord')
    RawInputRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#RawInputRecords', name: 'RawInputRecords')
    RecordColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumn', name: 'RecordColumn')
    RecordColumnDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnDelimiter', name: 'RecordColumnDelimiter', traits: {"smithy.api#length" => {"min" => 1}})
    RecordColumnMapping = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnMapping', name: 'RecordColumnMapping')
    RecordColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnName', name: 'RecordColumnName')
    RecordColumnSqlType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnSqlType', name: 'RecordColumnSqlType', traits: {"smithy.api#length" => {"min" => 1}})
    RecordColumns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumns', name: 'RecordColumns', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    RecordEncoding = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordEncoding', name: 'RecordEncoding', traits: {"smithy.api#pattern" => "^UTF-8$"})
    RecordFormat = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#RecordFormat', name: 'RecordFormat')
    RecordFormatType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalytics#RecordFormatType', name: 'RecordFormatType')
    RecordRowDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordRowDelimiter', name: 'RecordRowDelimiter', traits: {"smithy.api#length" => {"min" => 1}})
    RecordRowPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordRowPath', name: 'RecordRowPath', traits: {"smithy.api#length" => {"min" => 1}})
    ReferenceDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSource', name: 'ReferenceDataSource')
    ReferenceDataSourceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceDescription', name: 'ReferenceDataSourceDescription')
    ReferenceDataSourceDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceDescriptions', name: 'ReferenceDataSourceDescriptions')
    ReferenceDataSourceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceUpdate', name: 'ReferenceDataSourceUpdate')
    ReferenceDataSourceUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceUpdates', name: 'ReferenceDataSourceUpdates')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceProvisionedThroughputExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceProvisionedThroughputExceededException', name: 'ResourceProvisionedThroughputExceededException', traits: {"smithy.api#error" => "client"})
    RoleARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RoleARN', name: 'RoleARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3Configuration', name: 'S3Configuration')
    S3ReferenceDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3ReferenceDataSource', name: 'S3ReferenceDataSource')
    S3ReferenceDataSourceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3ReferenceDataSourceDescription', name: 'S3ReferenceDataSourceDescription')
    S3ReferenceDataSourceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3ReferenceDataSourceUpdate', name: 'S3ReferenceDataSourceUpdate')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SourceSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#SourceSchema', name: 'SourceSchema')
    StartApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StartApplicationRequest', name: 'StartApplicationRequest')
    StartApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StartApplicationResponse', name: 'StartApplicationResponse')
    StopApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StopApplicationRequest', name: 'StopApplicationRequest')
    StopApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StopApplicationResponse', name: 'StopApplicationResponse')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisanalytics#Timestamp', name: 'Timestamp')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UnableToDetectSchemaException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UnableToDetectSchemaException', name: 'UnableToDetectSchemaException', traits: {"smithy.api#error" => "client"})
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UpdateApplicationResponse', name: 'UpdateApplicationResponse')

    AddApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The Kinesis Analytics application name.</p>", "smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the Kinesis Analytics application.</p>", "smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOption, location_name: 'CloudWatchLoggingOption', traits: {"smithy.api#documentation" => "<p>Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN.\n            Note: To write application messages to CloudWatch, the IAM role that is used must have\n            the <code>PutLogEvents</code> policy action enabled.</p>", "smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.type = Types::AddApplicationCloudWatchLoggingOptionRequest
    AddApplicationCloudWatchLoggingOptionResponse.type = Types::AddApplicationCloudWatchLoggingOptionResponse
    AddApplicationInputProcessingConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application to which you want to add the input processing configuration.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Version of the application to which you want to add the input processing configuration. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> \n            operation to get the current application version.  If the version specified is not the current version, the \n            <code>ConcurrentModificationException</code> is returned.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The ID of the input configuration to add the input processing configuration to. You\n            can get a list of the input IDs for an application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to add to the application.</p>", "smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.type = Types::AddApplicationInputProcessingConfigurationRequest
    AddApplicationInputProcessingConfigurationResponse.type = Types::AddApplicationInputProcessingConfigurationResponse
    AddApplicationInputRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>", "smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Current version of your Amazon Kinesis Analytics application. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation \n            to find the current application version.</p>", "smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html\">Input</a> to add.</p>", "smithy.api#required" => {}}))
    AddApplicationInputRequest.type = Types::AddApplicationInputRequest
    AddApplicationInputResponse.type = Types::AddApplicationInputResponse
    AddApplicationOutputRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application to which you want to add the output configuration.</p>", "smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Version of the application to which you want to add the output configuration. You\n            can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current\n            application version. If the version specified is not the current version, the\n                <code>ConcurrentModificationException</code> is returned. </p>", "smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: Output, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>An array of objects, each describing one output configuration. In the output\n            configuration, you specify the name of an in-application stream, a destination (that is,\n            an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda\n            function), and record the formation to use when writing to the destination.</p>", "smithy.api#required" => {}}))
    AddApplicationOutputRequest.type = Types::AddApplicationOutputRequest
    AddApplicationOutputResponse.type = Types::AddApplicationOutputResponse
    AddApplicationReferenceDataSourceRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of an existing application.</p>", "smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Version of the application for which you are adding the reference data source. \n            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version.\n            If the version specified is not the current version, the \n            <code>ConcurrentModificationException</code> is returned.</p>", "smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:reference_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSource, location_name: 'ReferenceDataSource', traits: {"smithy.api#documentation" => "<p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>", "smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.type = Types::AddApplicationReferenceDataSourceRequest
    AddApplicationReferenceDataSourceResponse.type = Types::AddApplicationReferenceDataSourceResponse
    ApplicationDetail.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'ApplicationDescription', traits: {"smithy.api#documentation" => "<p>Description of the application.</p>"}))
    ApplicationDetail.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>ARN of the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>Status of the application.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.add_member(:create_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"smithy.api#documentation" => "<p>Time stamp when the application version was created.</p>"}))
    ApplicationDetail.add_member(:last_update_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTimestamp', traits: {"smithy.api#documentation" => "<p>Time stamp when the application was last updated.</p>"}))
    ApplicationDetail.add_member(:input_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescriptions, location_name: 'InputDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the application input configuration. \n            For more information, \n            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. \n            \n        </p>"}))
    ApplicationDetail.add_member(:output_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: 'OutputDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the application output configuration.\n            For more information, \n            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. \n            \n        </p>"}))
    ApplicationDetail.add_member(:reference_data_source_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: 'ReferenceDataSourceDescriptions', traits: {"smithy.api#documentation" => "<p>Describes reference data sources configured for the application. \n            \n            For more information, \n            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. \n            \n        </p>"}))
    ApplicationDetail.add_member(:cloud_watch_logging_option_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: 'CloudWatchLoggingOptionDescriptions', traits: {"smithy.api#documentation" => "<p>Describes the CloudWatch log streams that are configured to receive application\n            messages. For more information about using CloudWatch log streams with Amazon Kinesis\n            Analytics applications, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon\n                CloudWatch Logs</a>. </p>"}))
    ApplicationDetail.add_member(:application_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCode, location_name: 'ApplicationCode', traits: {"smithy.api#documentation" => "<p>Returns the application code that you provided to perform data analysis on any of the in-application streams in your application.</p>"}))
    ApplicationDetail.add_member(:application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Provides the current application version.</p>", "smithy.api#required" => {}}))
    ApplicationDetail.type = Types::ApplicationDetail
    ApplicationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ApplicationStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ApplicationStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    ApplicationStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ApplicationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApplicationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#documentation" => "<p>ARN of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>Status of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationUpdate.add_member(:input_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: InputUpdates, location_name: 'InputUpdates', traits: {"smithy.api#documentation" => "<p>Describes application input configuration updates.</p>"}))
    ApplicationUpdate.add_member(:application_code_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCode, location_name: 'ApplicationCodeUpdate', traits: {"smithy.api#documentation" => "<p>Describes application code updates.</p>"}))
    ApplicationUpdate.add_member(:output_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUpdates, location_name: 'OutputUpdates', traits: {"smithy.api#documentation" => "<p>Describes application output configuration updates.</p>"}))
    ApplicationUpdate.add_member(:reference_data_source_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdates, location_name: 'ReferenceDataSourceUpdates', traits: {"smithy.api#documentation" => "<p>Describes application reference data source updates.</p>"}))
    ApplicationUpdate.add_member(:cloud_watch_logging_option_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdates, location_name: 'CloudWatchLoggingOptionUpdates', traits: {"smithy.api#documentation" => "<p>Describes application CloudWatch logging option updates.</p>"}))
    ApplicationUpdate.type = Types::ApplicationUpdate
    CSVMappingParameters.add_member(:record_row_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordRowDelimiter, location_name: 'RecordRowDelimiter', traits: {"smithy.api#documentation" => "<p>Row delimiter. For example, in a CSV format, <i>'\\n'</i> is the typical row delimiter.</p>", "smithy.api#required" => {}}))
    CSVMappingParameters.add_member(:record_column_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnDelimiter, location_name: 'RecordColumnDelimiter', traits: {"smithy.api#documentation" => "<p>Column delimiter. For example, in a CSV format, a comma (\",\") is the typical column delimiter.</p>", "smithy.api#required" => {}}))
    CSVMappingParameters.type = Types::CSVMappingParameters
    CloudWatchLoggingOption.add_member(:log_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARN', traits: {"smithy.api#documentation" => "<p>ARN of the CloudWatch log to receive application messages.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOption.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>IAM ARN of the role to use to send application messages. Note: To write application\n            messages to CloudWatch, the IAM role that is used must have the\n            <code>PutLogEvents</code> policy action enabled.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOption.type = Types::CloudWatchLoggingOption
    CloudWatchLoggingOptionDescription.add_member(:cloud_watch_logging_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#documentation" => "<p>ID of the CloudWatch logging option description.</p>"}))
    CloudWatchLoggingOptionDescription.add_member(:log_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARN', traits: {"smithy.api#documentation" => "<p>ARN of the CloudWatch log to receive application messages.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOptionDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOptionDescription.type = Types::CloudWatchLoggingOptionDescription
    CloudWatchLoggingOptionDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescription)
    CloudWatchLoggingOptionUpdate.add_member(:cloud_watch_logging_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#documentation" => "<p>ID of the CloudWatch logging option to update</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingOptionUpdate.add_member(:log_stream_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the CloudWatch log to receive application messages.</p>"}))
    CloudWatchLoggingOptionUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>"}))
    CloudWatchLoggingOptionUpdate.type = Types::CloudWatchLoggingOptionUpdate
    CloudWatchLoggingOptionUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdate)
    CloudWatchLoggingOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOption)
    CodeValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Test</p>"}))
    CodeValidationException.type = Types::CodeValidationException
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p></p>"}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CreateApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'ApplicationDescription', traits: {"smithy.api#documentation" => "<p>Summary description of the application.</p>"}))
    CreateApplicationRequest.add_member(:inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: Inputs, location_name: 'Inputs', traits: {"smithy.api#documentation" => "<p>Use this parameter to configure the application input.</p>\n        <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p>\n        <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of\n            data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role\n            that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p>\n        <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>"}))
    CreateApplicationRequest.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: Outputs, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>You can configure application output to write data from any of the in-application streams to up to three destinations.</p>\n        <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery\n            streams, AWS Lambda destinations, or any combination of the three.</p>\n        <p>In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the \n            destination stream or Lambda function on your behalf.</p>\n        <p>In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format\n            of data in the stream (for example, JSON, CSV). You also must provide an IAM role that\n            Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.</p>"}))
    CreateApplicationRequest.add_member(:cloud_watch_logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: 'CloudWatchLoggingOptions', traits: {"smithy.api#documentation" => "<p>Use this parameter to configure a CloudWatch log stream to monitor application\n            configuration errors. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon\n                CloudWatch Logs</a>.</p>"}))
    CreateApplicationRequest.add_member(:application_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCode, location_name: 'ApplicationCode', traits: {"smithy.api#documentation" => "<p>One or more SQL statements that read input data, transform it, and generate output.\n            For example, you can write a SQL statement that reads data from one in-application\n            stream, generates a running average of the number of advertisement clicks by vendor, and\n            insert resulting rows in another in-application stream using pumps. For more information\n            about the typical pattern, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html\">Application\n                Code</a>. </p>\n        \n        <p>You can provide such series of SQL statements, \n            where output of one statement can be\n            used as the input for the next statement. You store \n            intermediate results by creating in-application streams and pumps.</p>\n        \n        <p>Note that the application code must create the streams with names \n            specified in the <code>Outputs</code>. For example, \n            if your <code>Outputs</code> defines output streams named \n            <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>,\n            then your application code must create these streams. </p>"}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.\n        For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary, location_name: 'ApplicationSummary', traits: {"smithy.api#documentation" => "<p>In response to your <code>CreateApplication</code> request, Amazon Kinesis Analytics returns a \n            response with a summary of the application it created, including the application Amazon Resource Name (ARN), \n            name, and status.</p>", "smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The Kinesis Analytics application name.</p>", "smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the Kinesis Analytics application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#documentation" => "<p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to\n            delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation. </p>", "smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.type = Types::DeleteApplicationCloudWatchLoggingOptionRequest
    DeleteApplicationCloudWatchLoggingOptionResponse.type = Types::DeleteApplicationCloudWatchLoggingOptionResponse
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>The Kinesis Analytics application name.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the Kinesis Analytics application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>The ID of the input configuration from which to delete the input processing\n            configuration. You can get a list of the input IDs for an application by using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.type = Types::DeleteApplicationInputProcessingConfigurationRequest
    DeleteApplicationInputProcessingConfigurationResponse.type = Types::DeleteApplicationInputProcessingConfigurationResponse
    DeleteApplicationOutputRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Amazon Kinesis Analytics application name.</p>", "smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Amazon Kinesis Analytics application version. \n            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version.\n            If the version specified is not the current version, the \n            <code>ConcurrentModificationException</code> is returned.\n        </p>", "smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:output_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration to delete. \n            Each output configuration that is added to the application, either when the application is \n            created or later using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationOutput.html\">AddApplicationOutput</a> operation, has a unique ID. \n            You need to provide the ID to uniquely identify the output configuration that you want to \n            delete from the application configuration. \n            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the specific\n            <code>OutputId</code>. \n        </p>", "smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.type = Types::DeleteApplicationOutputRequest
    DeleteApplicationOutputResponse.type = Types::DeleteApplicationOutputResponse
    DeleteApplicationReferenceDataSourceRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of an existing application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>Version of the application.  \n            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version.\n            If the version specified \n            is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>", "smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>ID of the reference data source. When you add a reference data source to your \n            application using the \n            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID. \n            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the reference ID.\n        </p>", "smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.type = Types::DeleteApplicationReferenceDataSourceRequest
    DeleteApplicationReferenceDataSourceResponse.type = Types::DeleteApplicationReferenceDataSourceResponse
    DeleteApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the Amazon Kinesis Analytics application to delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:create_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"smithy.api#documentation" => "<p>\n            You can use the <code>DescribeApplication</code> operation to get this value.\n        </p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DescribeApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application.</p>", "smithy.api#required" => {}}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationDetail', traits: {"smithy.api#documentation" => "<p>Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.</p>", "smithy.api#required" => {}}))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DestinationSchema.add_member(:record_format_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormatType, location_name: 'RecordFormatType', traits: {"smithy.api#documentation" => "<p>Specifies the format of the records on the output stream.</p>", "smithy.api#required" => {}}))
    DestinationSchema.type = Types::DestinationSchema
    DiscoverInputSchemaRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the streaming source.</p>"}))
    DiscoverInputSchemaRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>"}))
    DiscoverInputSchemaRequest.add_member(:input_starting_position_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#documentation" => "<p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>"}))
    DiscoverInputSchemaRequest.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 'S3Configuration', traits: {"smithy.api#documentation" => "<p>Specify this parameter to discover a schema from data in an Amazon S3\n            object.</p>"}))
    DiscoverInputSchemaRequest.add_member(:input_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>"}))
    DiscoverInputSchemaRequest.type = Types::DiscoverInputSchemaRequest
    DiscoverInputSchemaResponse.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.</p>"}))
    DiscoverInputSchemaResponse.add_member(:parsed_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecords, location_name: 'ParsedInputRecords', traits: {"smithy.api#documentation" => "<p>An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).</p>"}))
    DiscoverInputSchemaResponse.add_member(:processed_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: 'ProcessedInputRecords', traits: {"smithy.api#documentation" => "<p>Stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter.</p>"}))
    DiscoverInputSchemaResponse.add_member(:raw_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecords, location_name: 'RawInputRecords', traits: {"smithy.api#documentation" => "<p>Raw stream data that was sampled to infer the schema.</p>"}))
    DiscoverInputSchemaResponse.type = Types::DiscoverInputSchemaResponse
    InAppStreamNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName)
    Input.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>Name prefix to use when creating an in-application stream. Suppose that you specify\n            a prefix \"MyInApplicationStream.\" Amazon Kinesis Analytics then creates one or more (as\n            per the <code>InputParallelism</code> count you specified) in-application streams with\n            names \"MyInApplicationStream_001,\" \"MyInApplicationStream_002,\" and so on. </p>", "smithy.api#required" => {}}))
    Input.add_member(:input_processing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> for the input. An input\n            processor transforms records as they are received from the stream, before the\n            application's SQL code executes. Currently, the only input processing configuration\n            available is <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a>.</p>"}))
    Input.add_member(:kinesis_streams_input, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInput, location_name: 'KinesisStreamsInput', traits: {"smithy.api#documentation" => "<p>If the streaming source is an Amazon Kinesis stream, \n            identifies the stream's Amazon Resource Name (ARN) and an IAM role \n            that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>\n        <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>"}))
    Input.add_member(:kinesis_firehose_input, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInput, location_name: 'KinesisFirehoseInput', traits: {"smithy.api#documentation" => "<p>If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies\n            the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to\n            access the stream on your behalf.</p>\n        <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>"}))
    Input.add_member(:input_parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelism, location_name: 'InputParallelism', traits: {"smithy.api#documentation" => "<p>Describes the number of in-application streams to create. </p>\n         <p>Data from your source is routed to these in-application input streams.</p>\n        <p>    (see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>.</p>"}))
    Input.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.</p>\n        <p>Also used to describe the format of the reference data source.</p>", "smithy.api#required" => {}}))
    Input.type = Types::Input
    InputConfiguration.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Input source ID. You can get this ID by calling \n            the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:input_starting_position_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#documentation" => "<p>Point at which you want the application to start processing \n            records from the streaming source.</p>", "smithy.api#required" => {}}))
    InputConfiguration.type = Types::InputConfiguration
    InputConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration)
    InputDescription.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>Input ID associated with the application input. \n            This is the ID that Amazon Kinesis Analytics assigns to each \n            input configuration you add to your application. </p>"}))
    InputDescription.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>In-application name prefix.</p>"}))
    InputDescription.add_member(:in_app_stream_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamNames, location_name: 'InAppStreamNames', traits: {"smithy.api#documentation" => "<p>Returns the in-application stream names that are mapped to the \n            stream source.</p>"}))
    InputDescription.add_member(:input_processing_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationDescription, location_name: 'InputProcessingConfigurationDescription', traits: {"smithy.api#documentation" => "<p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>"}))
    InputDescription.add_member(:kinesis_streams_input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInputDescription, location_name: 'KinesisStreamsInputDescription', traits: {"smithy.api#documentation" => "<p>If an Amazon Kinesis stream is configured as streaming source, provides Amazon\n            Kinesis stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis\n            Analytics to access the stream on your behalf.</p>"}))
    InputDescription.add_member(:kinesis_firehose_input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInputDescription, location_name: 'KinesisFirehoseInputDescription', traits: {"smithy.api#documentation" => "<p>If an Amazon Kinesis Firehose delivery stream is configured as a streaming source,\n            provides the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics\n            to access the stream on your behalf.</p>"}))
    InputDescription.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding \n            columns in the in-application stream that is being created. </p>"}))
    InputDescription.add_member(:input_parallelism, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelism, location_name: 'InputParallelism', traits: {"smithy.api#documentation" => "<p>Describes the configured parallelism (number of in-application streams \n            mapped to the streaming source).</p>"}))
    InputDescription.add_member(:input_starting_position_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#documentation" => "<p>Point at which the application is configured to read from the input stream.</p>"}))
    InputDescription.type = Types::InputDescription
    InputDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription)
    InputLambdaProcessor.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that operates\n            on records in the stream.</p>\n            <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    InputLambdaProcessor.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>", "smithy.api#required" => {}}))
    InputLambdaProcessor.type = Types::InputLambdaProcessor
    InputLambdaProcessorDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that is used to preprocess the records in the stream.</p>"}))
    InputLambdaProcessorDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>"}))
    InputLambdaProcessorDescription.type = Types::InputLambdaProcessorDescription
    InputLambdaProcessorUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that\n            is used to preprocess the records in the stream.</p>\n        <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>\n            </p>\n         </note>"}))
    InputLambdaProcessorUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>The ARN of the new IAM role that is used to access the AWS Lambda\n            function.</p>"}))
    InputLambdaProcessorUpdate.type = Types::InputLambdaProcessorUpdate
    InputParallelism.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>Number of in-application streams to create. \n            For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>.\n        </p>"}))
    InputParallelism.type = Types::InputParallelism
    InputParallelismUpdate.add_member(:count_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: 'CountUpdate', traits: {"smithy.api#documentation" => "<p>Number of in-application streams to create for the specified \n            streaming source.</p>"}))
    InputParallelismUpdate.type = Types::InputParallelismUpdate
    InputProcessingConfiguration.add_member(:input_lambda_processor, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessor, location_name: 'InputLambdaProcessor', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a> that is used to preprocess the records\n            in the stream before being processed by your application code.</p>", "smithy.api#required" => {}}))
    InputProcessingConfiguration.type = Types::InputProcessingConfiguration
    InputProcessingConfigurationDescription.add_member(:input_lambda_processor_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessorDescription, location_name: 'InputLambdaProcessorDescription', traits: {"smithy.api#documentation" => "<p>Provides configuration information about the associated <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessorDescription.html\">InputLambdaProcessorDescription</a>.</p>"}))
    InputProcessingConfigurationDescription.type = Types::InputProcessingConfigurationDescription
    InputProcessingConfigurationUpdate.add_member(:input_lambda_processor_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessorUpdate, location_name: 'InputLambdaProcessorUpdate', traits: {"smithy.api#documentation" => "<p>Provides update information for an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a>.</p>", "smithy.api#required" => {}}))
    InputProcessingConfigurationUpdate.type = Types::InputProcessingConfigurationUpdate
    InputSchemaUpdate.add_member(:record_format_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormat, location_name: 'RecordFormatUpdate', traits: {"smithy.api#documentation" => "<p>Specifies the format of the records on the streaming source.</p>"}))
    InputSchemaUpdate.add_member(:record_encoding_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordEncoding, location_name: 'RecordEncodingUpdate', traits: {"smithy.api#documentation" => "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"}))
    InputSchemaUpdate.add_member(:record_column_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumns, location_name: 'RecordColumnUpdates', traits: {"smithy.api#documentation" => "<p>A list of <code>RecordColumn</code> objects. Each object describes the mapping \n            of the streaming source element to the corresponding column in the in-application stream. </p>"}))
    InputSchemaUpdate.type = Types::InputSchemaUpdate
    InputStartingPosition.add_member(:now, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOW', traits: {"smithy.api#enumValue" => "NOW"}))
    InputStartingPosition.add_member(:trim_horizon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIM_HORIZON', traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    InputStartingPosition.add_member(:last_stopped_point, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_STOPPED_POINT', traits: {"smithy.api#enumValue" => "LAST_STOPPED_POINT"}))
    InputStartingPositionConfiguration.add_member(:input_starting_position, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPosition, location_name: 'InputStartingPosition', traits: {"smithy.api#documentation" => "<p>The starting position on the stream.</p>\n        <ul>\n            <li>\n                <p>\n                  <code>NOW</code> - Start reading just after the most recent record in the\n                    stream, start at the request time stamp that the customer issued.</p>\n                \n                \n            </li>\n            <li>\n                <p>\n                  <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, \n                    which is the oldest record available in the stream. This option is not available \n                    for an Amazon Kinesis Firehose delivery stream.</p>\n            </li>\n            <li>\n                <p>\n                  <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p>\n            </li>\n         </ul>"}))
    InputStartingPositionConfiguration.type = Types::InputStartingPositionConfiguration
    InputUpdate.add_member(:input_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#documentation" => "<p>Input ID of the application input to be updated.</p>", "smithy.api#required" => {}}))
    InputUpdate.add_member(:name_prefix_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefixUpdate', traits: {"smithy.api#documentation" => "<p>Name prefix for in-application streams that Amazon Kinesis Analytics creates \n            for the specific streaming source.</p>"}))
    InputUpdate.add_member(:input_processing_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationUpdate, location_name: 'InputProcessingConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>Describes updates for an input processing configuration.</p>"}))
    InputUpdate.add_member(:kinesis_streams_input_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInputUpdate, location_name: 'KinesisStreamsInputUpdate', traits: {"smithy.api#documentation" => "<p>If an Amazon Kinesis stream is the streaming source to be updated, provides an\n            updated stream Amazon Resource Name (ARN) and IAM role ARN.</p>"}))
    InputUpdate.add_member(:kinesis_firehose_input_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInputUpdate, location_name: 'KinesisFirehoseInputUpdate', traits: {"smithy.api#documentation" => "<p>If an Amazon Kinesis Firehose delivery stream is the streaming source to be\n            updated, provides an updated stream ARN and IAM role ARN.</p>"}))
    InputUpdate.add_member(:input_schema_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputSchemaUpdate, location_name: 'InputSchemaUpdate', traits: {"smithy.api#documentation" => "<p>Describes the data format on the streaming source, and \n            how record elements on the streaming source map to columns of the in-application stream that is created.</p>"}))
    InputUpdate.add_member(:input_parallelism_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismUpdate, location_name: 'InputParallelismUpdate', traits: {"smithy.api#documentation" => "<p>Describes the parallelism updates (the number in-application \n            streams Amazon Kinesis Analytics creates for the specific streaming source).</p>"}))
    InputUpdate.type = Types::InputUpdate
    InputUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputUpdate)
    Inputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Input)
    InvalidApplicationConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>test</p>"}))
    InvalidApplicationConfigurationException.type = Types::InvalidApplicationConfigurationException
    InvalidArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p></p>"}))
    InvalidArgumentException.type = Types::InvalidArgumentException
    JSONMappingParameters.add_member(:record_row_path, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordRowPath, location_name: 'RecordRowPath', traits: {"smithy.api#documentation" => "<p>Path to the top-level parent that contains the records.</p>", "smithy.api#required" => {}}))
    JSONMappingParameters.type = Types::JSONMappingParameters
    KinesisFirehoseInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>ARN of the input delivery stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream\n            on your behalf. You need to make sure that the role has the necessary permissions to\n            access the stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseInput.type = Types::KinesisFirehoseInput
    KinesisFirehoseInputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>"}))
    KinesisFirehoseInputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics assumes to access the stream.</p>"}))
    KinesisFirehoseInputDescription.type = Types::KinesisFirehoseInputDescription
    KinesisFirehoseInputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the input Amazon Kinesis Firehose delivery stream to\n            read.</p>"}))
    KinesisFirehoseInputUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream\n            on your behalf. You need to grant the necessary permissions to this role.</p>"}))
    KinesisFirehoseInputUpdate.type = Types::KinesisFirehoseInputUpdate
    KinesisFirehoseOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>ARN of the destination Amazon Kinesis Firehose delivery stream to write to.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseOutput.type = Types::KinesisFirehoseOutput
    KinesisFirehoseOutputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>"}))
    KinesisFirehoseOutputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"}))
    KinesisFirehoseOutputDescription.type = Types::KinesisFirehoseOutputDescription
    KinesisFirehoseOutputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream to write to.</p>"}))
    KinesisFirehoseOutputUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream\n            on your behalf. You need to grant the necessary permissions to this role.</p>"}))
    KinesisFirehoseOutputUpdate.type = Types::KinesisFirehoseOutputUpdate
    KinesisStreamsInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>ARN of the input Amazon Kinesis stream to read.</p>", "smithy.api#required" => {}}))
    KinesisStreamsInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>", "smithy.api#required" => {}}))
    KinesisStreamsInput.type = Types::KinesisStreamsInput
    KinesisStreamsInputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>"}))
    KinesisStreamsInputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"}))
    KinesisStreamsInputDescription.type = Types::KinesisStreamsInputDescription
    KinesisStreamsInputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.</p>"}))
    KinesisStreamsInputUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"}))
    KinesisStreamsInputUpdate.type = Types::KinesisStreamsInputUpdate
    KinesisStreamsOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>ARN of the destination Amazon Kinesis stream to write to.</p>", "smithy.api#required" => {}}))
    KinesisStreamsOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>", "smithy.api#required" => {}}))
    KinesisStreamsOutput.type = Types::KinesisStreamsOutput
    KinesisStreamsOutputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>"}))
    KinesisStreamsOutputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"}))
    KinesisStreamsOutputDescription.type = Types::KinesisStreamsOutputDescription
    KinesisStreamsOutputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.</p>"}))
    KinesisStreamsOutputUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"}))
    KinesisStreamsOutputUpdate.type = Types::KinesisStreamsOutputUpdate
    LambdaOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the destination Lambda function to write\n            to.</p>\n        <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    LambdaOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>", "smithy.api#required" => {}}))
    LambdaOutput.type = Types::LambdaOutput
    LambdaOutputDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the destination Lambda function.</p>"}))
    LambdaOutputDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function.</p>"}))
    LambdaOutputDescription.type = Types::LambdaOutputDescription
    LambdaOutputUpdate.add_member(:resource_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the destination Lambda function.</p>\n        <note>\n            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>\n            </p>\n         </note>"}))
    LambdaOutputUpdate.add_member(:role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>"}))
    LambdaOutputUpdate.type = Types::LambdaOutputUpdate
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p></p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListApplicationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInputLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Maximum number of applications to list.</p>"}))
    ListApplicationsRequest.add_member(:exclusive_start_application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ExclusiveStartApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'ApplicationSummaries', traits: {"smithy.api#documentation" => "<p>List of <code>ApplicationSummary</code> objects. </p>", "smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:has_more_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'HasMoreApplications', traits: {"smithy.api#documentation" => "<p>Returns true if there are more applications to retrieve.</p>", "smithy.api#required" => {}}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the application for which to retrieve tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value tags assigned to the application.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MappingParameters.add_member(:json_mapping_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JSONMappingParameters, location_name: 'JSONMappingParameters', traits: {"smithy.api#documentation" => "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"}))
    MappingParameters.add_member(:csv_mapping_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CSVMappingParameters, location_name: 'CSVMappingParameters', traits: {"smithy.api#documentation" => "<p>Provides additional mapping information when the record format uses delimiters \n            (for example, CSV).</p>"}))
    MappingParameters.type = Types::MappingParameters
    Output.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the in-application stream.</p>", "smithy.api#required" => {}}))
    Output.add_member(:kinesis_streams_output, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutput, location_name: 'KinesisStreamsOutput', traits: {"smithy.api#documentation" => "<p>Identifies an Amazon Kinesis stream \n            as the destination.</p>"}))
    Output.add_member(:kinesis_firehose_output, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutput, location_name: 'KinesisFirehoseOutput', traits: {"smithy.api#documentation" => "<p>Identifies an Amazon Kinesis Firehose delivery stream as the destination.</p>"}))
    Output.add_member(:lambda_output, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutput, location_name: 'LambdaOutput', traits: {"smithy.api#documentation" => "<p>Identifies an AWS Lambda function as the destination.</p>"}))
    Output.add_member(:destination_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchema', traits: {"smithy.api#documentation" => "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>.</p>", "smithy.api#required" => {}}))
    Output.type = Types::Output
    OutputDescription.add_member(:output_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the output configuration.</p>"}))
    OutputDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the in-application stream configured as output.</p>"}))
    OutputDescription.add_member(:kinesis_streams_output_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutputDescription, location_name: 'KinesisStreamsOutputDescription', traits: {"smithy.api#documentation" => "<p>Describes Amazon Kinesis stream configured as the \n            destination where output is written.</p>"}))
    OutputDescription.add_member(:kinesis_firehose_output_description, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutputDescription, location_name: 'KinesisFirehoseOutputDescription', traits: {"smithy.api#documentation" => "<p>Describes the Amazon Kinesis Firehose delivery stream configured as the \n            destination where output is written.</p>"}))
    OutputDescription.add_member(:lambda_output_description, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutputDescription, location_name: 'LambdaOutputDescription', traits: {"smithy.api#documentation" => "<p>Describes the AWS Lambda function configured as the destination where output is\n            written.</p>"}))
    OutputDescription.add_member(:destination_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchema', traits: {"smithy.api#documentation" => "<p>Data format used for writing data to the destination.</p>"}))
    OutputDescription.type = Types::OutputDescription
    OutputDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescription)
    OutputUpdate.add_member(:output_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#documentation" => "<p>Identifies the specific output configuration that you want to update.</p>", "smithy.api#required" => {}}))
    OutputUpdate.add_member(:name_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NameUpdate', traits: {"smithy.api#documentation" => "<p>If you want to specify a different in-application stream \n            for this output configuration, use this field to \n            specify the new in-application stream name.</p>"}))
    OutputUpdate.add_member(:kinesis_streams_output_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutputUpdate, location_name: 'KinesisStreamsOutputUpdate', traits: {"smithy.api#documentation" => "<p>Describes an Amazon Kinesis stream as the destination for the output.</p>"}))
    OutputUpdate.add_member(:kinesis_firehose_output_update, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutputUpdate, location_name: 'KinesisFirehoseOutputUpdate', traits: {"smithy.api#documentation" => "<p>Describes an Amazon Kinesis Firehose delivery stream as the destination for the\n            output.</p>"}))
    OutputUpdate.add_member(:lambda_output_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutputUpdate, location_name: 'LambdaOutputUpdate', traits: {"smithy.api#documentation" => "<p>Describes an AWS Lambda function as the destination for the output.</p>"}))
    OutputUpdate.add_member(:destination_schema_update, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchemaUpdate', traits: {"smithy.api#documentation" => "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>.</p>"}))
    OutputUpdate.type = Types::OutputUpdate
    OutputUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUpdate)
    Outputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Output)
    ParsedInputRecord.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecordField)
    ParsedInputRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecord)
    ProcessedInputRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecord)
    RawInputRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecord)
    RecordColumn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the column created in the in-application input stream or reference table.</p>", "smithy.api#required" => {}}))
    RecordColumn.add_member(:mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnMapping, location_name: 'Mapping', traits: {"smithy.api#documentation" => "<p>Reference to the data element in the streaming input or the reference data source. This element\n            is required if the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_RecordFormat.html#analytics-Type-RecordFormat-RecordFormatTypel\">RecordFormatType</a> is <code>JSON</code>.</p>"}))
    RecordColumn.add_member(:sql_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnSqlType, location_name: 'SqlType', traits: {"smithy.api#documentation" => "<p>Type of column created in the in-application input stream or reference table.</p>", "smithy.api#required" => {}}))
    RecordColumn.type = Types::RecordColumn
    RecordColumns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumn)
    RecordFormat.add_member(:record_format_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormatType, location_name: 'RecordFormatType', traits: {"smithy.api#documentation" => "<p>The type of record format.</p>", "smithy.api#required" => {}}))
    RecordFormat.add_member(:mapping_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingParameters, location_name: 'MappingParameters', traits: {"smithy.api#documentation" => "<p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>"}))
    RecordFormat.type = Types::RecordFormat
    RecordFormatType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    RecordFormatType.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ReferenceDataSource.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Name of the in-application table to create.</p>", "smithy.api#required" => {}}))
    ReferenceDataSource.add_member(:s3_reference_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSource, location_name: 'S3ReferenceDataSource', traits: {"smithy.api#documentation" => "<p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.\n            \n            An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <code>UpdateApplication</code> operation to trigger reloading of data into your application. </p>"}))
    ReferenceDataSource.add_member(:reference_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>", "smithy.api#required" => {}}))
    ReferenceDataSource.type = Types::ReferenceDataSource
    ReferenceDataSourceDescription.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>ID of the reference data source. This is the ID \n            that Amazon Kinesis Analytics assigns when you add the reference data source \n            to your application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a> operation.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The in-application table name created by the specific reference data source configuration.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:s3_reference_data_source_description, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSourceDescription, location_name: 'S3ReferenceDataSourceDescription', traits: {"smithy.api#documentation" => "<p>Provides the S3 bucket name, the object key name that contains the reference data. It also provides the Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application reference table.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:reference_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchema', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"}))
    ReferenceDataSourceDescription.type = Types::ReferenceDataSourceDescription
    ReferenceDataSourceDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescription)
    ReferenceDataSourceUpdate.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#documentation" => "<p>ID of the reference data source being updated. You can use the \n            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get this value.</p>", "smithy.api#required" => {}}))
    ReferenceDataSourceUpdate.add_member(:table_name_update, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableNameUpdate', traits: {"smithy.api#documentation" => "<p>In-application table name that is created by this update.</p>"}))
    ReferenceDataSourceUpdate.add_member(:s3_reference_data_source_update, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSourceUpdate, location_name: 'S3ReferenceDataSourceUpdate', traits: {"smithy.api#documentation" => "<p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>"}))
    ReferenceDataSourceUpdate.add_member(:reference_schema_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchemaUpdate', traits: {"smithy.api#documentation" => "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream. </p>"}))
    ReferenceDataSourceUpdate.type = Types::ReferenceDataSourceUpdate
    ReferenceDataSourceUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdate)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p></p>"}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p></p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProvisionedThroughputExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceProvisionedThroughputExceededException.type = Types::ResourceProvisionedThroughputExceededException
    S3Configuration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>IAM ARN of the role used to access the data.</p>", "smithy.api#required" => {}}))
    S3Configuration.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>ARN of the S3 bucket that contains the data.</p>", "smithy.api#required" => {}}))
    S3Configuration.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>The name of the object that contains the data.</p>", "smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    S3ReferenceDataSource.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSource.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>Object key name containing reference data.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSource.add_member(:reference_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that the service can assume to read data on your behalf. This role must have permission for the <code>s3:GetObject</code> action on the object and trust policy that allows Amazon Kinesis Analytics service principal to assume this role.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSource.type = Types::S3ReferenceDataSource
    S3ReferenceDataSourceDescription.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#documentation" => "<p>Amazon S3 object key name.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:reference_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARN', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table.</p>", "smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.type = Types::S3ReferenceDataSourceDescription
    S3ReferenceDataSourceUpdate.add_member(:bucket_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARNUpdate', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the S3 bucket.</p>"}))
    S3ReferenceDataSourceUpdate.add_member(:file_key_update, Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKeyUpdate', traits: {"smithy.api#documentation" => "<p>Object key name.</p>"}))
    S3ReferenceDataSourceUpdate.add_member(:reference_role_arn_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARNUpdate', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.</p>"}))
    S3ReferenceDataSourceUpdate.type = Types::S3ReferenceDataSourceUpdate
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SourceSchema.add_member(:record_format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormat, location_name: 'RecordFormat', traits: {"smithy.api#documentation" => "<p>Specifies the format of the records on the streaming source.</p>", "smithy.api#required" => {}}))
    SourceSchema.add_member(:record_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordEncoding, location_name: 'RecordEncoding', traits: {"smithy.api#documentation" => "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"}))
    SourceSchema.add_member(:record_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumns, location_name: 'RecordColumns', traits: {"smithy.api#documentation" => "<p>A list of <code>RecordColumn</code> objects.</p>", "smithy.api#required" => {}}))
    SourceSchema.type = Types::SourceSchema
    StartApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the application.</p>", "smithy.api#required" => {}}))
    StartApplicationRequest.add_member(:input_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfigurations, location_name: 'InputConfigurations', traits: {"smithy.api#documentation" => "<p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>", "smithy.api#required" => {}}))
    StartApplicationRequest.type = Types::StartApplicationRequest
    StartApplicationResponse.type = Types::StartApplicationResponse
    StopApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the running application to stop.</p>", "smithy.api#required" => {}}))
    StopApplicationRequest.type = Types::StopApplicationRequest
    StopApplicationResponse.type = Types::StopApplicationResponse
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
    UnableToDetectSchemaException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnableToDetectSchemaException.add_member(:raw_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecords, location_name: 'RawInputRecords'))
    UnableToDetectSchemaException.add_member(:processed_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: 'ProcessedInputRecords'))
    UnableToDetectSchemaException.type = Types::UnableToDetectSchemaException
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of keys of tags to remove from the specified application.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#documentation" => "<p>Name of the Amazon Kinesis Analytics application to update.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:current_application_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#documentation" => "<p>The current application version ID. You can use the \n            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get this value.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:application_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationUpdate, location_name: 'ApplicationUpdate', traits: {"smithy.api#documentation" => "<p>Describes application updates.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse

    KinesisAnalytics20150814 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisanalytics#KinesisAnalytics_20150814"
      service.name = "KinesisAnalytics20150814"
      service.version = "2015-08-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Analytics", "arnNamespace" => "kinesisanalytics", "cloudFormationName" => "KinesisAnalytics", "cloudTrailEventSource" => "kinesisanalytics.amazonaws.com", "docId" => "kinesisanalytics-2015-08-14", "endpointPrefix" => "kinesisanalytics"}, "aws.auth#sigv4" => {"name" => "kinesisanalytics"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Kinesis Analytics", "smithy.api#xmlNamespace" => {"uri" => "http://analytics.kinesis.amazonaws.com/doc/2015-08-14"}}
      service.add_operation(:add_application_cloud_watch_logging_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationCloudWatchLoggingOption"
        operation.name = "AddApplicationCloudWatchLoggingOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_input, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationInput"
        operation.name = "AddApplicationInput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_input_processing_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationInputProcessingConfiguration"
        operation.name = "AddApplicationInputProcessingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationOutput"
        operation.name = "AddApplicationOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationOutputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationOutputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_reference_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationReferenceDataSource"
        operation.name = "AddApplicationReferenceDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_cloud_watch_logging_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationCloudWatchLoggingOption"
        operation.name = "DeleteApplicationCloudWatchLoggingOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_input_processing_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationInputProcessingConfiguration"
        operation.name = "DeleteApplicationInputProcessingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationOutput"
        operation.name = "DeleteApplicationOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_reference_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationReferenceDataSource"
        operation.name = "DeleteApplicationReferenceDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:discover_input_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DiscoverInputSchema"
        operation.name = "DiscoverInputSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoverInputSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoverInputSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDetectSchemaException)
        operation.traits = {}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#StartApplication"
        operation.name = "StartApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#StopApplication"
        operation.name = "StopApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#TagResource"
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
        operation.id = "com.amazonaws.kinesisanalytics#UntagResource"
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
        operation.id = "com.amazonaws.kinesisanalytics#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
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
