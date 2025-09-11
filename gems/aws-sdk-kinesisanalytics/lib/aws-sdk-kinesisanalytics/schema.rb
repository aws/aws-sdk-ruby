# frozen_string_literal: true

# This is generated code!

module Aws::KinesisAnalytics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddApplicationCloudWatchLoggingOptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationCloudWatchLoggingOptionRequest', name: 'AddApplicationCloudWatchLoggingOptionRequest')
    AddApplicationCloudWatchLoggingOptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationCloudWatchLoggingOptionResponse', name: 'AddApplicationCloudWatchLoggingOptionResponse')
    AddApplicationInputProcessingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputProcessingConfigurationRequest', name: 'AddApplicationInputProcessingConfigurationRequest')
    AddApplicationInputProcessingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputProcessingConfigurationResponse', name: 'AddApplicationInputProcessingConfigurationResponse')
    AddApplicationInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputRequest', name: 'AddApplicationInputRequest')
    AddApplicationInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationInputResponse', name: 'AddApplicationInputResponse')
    AddApplicationOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationOutputRequest', name: 'AddApplicationOutputRequest')
    AddApplicationOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationOutputResponse', name: 'AddApplicationOutputResponse')
    AddApplicationReferenceDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationReferenceDataSourceRequest', name: 'AddApplicationReferenceDataSourceRequest')
    AddApplicationReferenceDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#AddApplicationReferenceDataSourceResponse', name: 'AddApplicationReferenceDataSourceResponse')
    ApplicationCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationCode', name: 'ApplicationCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}})
    ApplicationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationDescription', name: 'ApplicationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ApplicationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationDetail', name: 'ApplicationDetail')
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationUpdate', name: 'ApplicationUpdate')
    ApplicationVersionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalytics#ApplicationVersionId', name: 'ApplicationVersionId', traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kinesisanalytics#BooleanObject', name: 'BooleanObject')
    BucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#BucketARN', name: 'BucketARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    CSVMappingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CSVMappingParameters', name: 'CSVMappingParameters')
    CloudWatchLoggingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOption', name: 'CloudWatchLoggingOption')
    CloudWatchLoggingOptionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionDescription', name: 'CloudWatchLoggingOptionDescription')
    CloudWatchLoggingOptionDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionDescriptions', name: 'CloudWatchLoggingOptionDescriptions')
    CloudWatchLoggingOptionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionUpdate', name: 'CloudWatchLoggingOptionUpdate')
    CloudWatchLoggingOptionUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptionUpdates', name: 'CloudWatchLoggingOptionUpdates')
    CloudWatchLoggingOptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#CloudWatchLoggingOptions', name: 'CloudWatchLoggingOptions')
    CodeValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CodeValidationException', name: 'CodeValidationException', traits: {"smithy.api#error" => "client"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#CreateApplicationResponse', name: 'CreateApplicationResponse')
    DeleteApplicationCloudWatchLoggingOptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationCloudWatchLoggingOptionRequest', name: 'DeleteApplicationCloudWatchLoggingOptionRequest')
    DeleteApplicationCloudWatchLoggingOptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationCloudWatchLoggingOptionResponse', name: 'DeleteApplicationCloudWatchLoggingOptionResponse')
    DeleteApplicationInputProcessingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationInputProcessingConfigurationRequest', name: 'DeleteApplicationInputProcessingConfigurationRequest')
    DeleteApplicationInputProcessingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationInputProcessingConfigurationResponse', name: 'DeleteApplicationInputProcessingConfigurationResponse')
    DeleteApplicationOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationOutputRequest', name: 'DeleteApplicationOutputRequest')
    DeleteApplicationOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationOutputResponse', name: 'DeleteApplicationOutputResponse')
    DeleteApplicationReferenceDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationReferenceDataSourceRequest', name: 'DeleteApplicationReferenceDataSourceRequest')
    DeleteApplicationReferenceDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationReferenceDataSourceResponse', name: 'DeleteApplicationReferenceDataSourceResponse')
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DescribeApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DescribeApplicationRequest', name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DescribeApplicationResponse', name: 'DescribeApplicationResponse')
    DestinationSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DestinationSchema', name: 'DestinationSchema')
    DiscoverInputSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DiscoverInputSchemaRequest', name: 'DiscoverInputSchemaRequest')
    DiscoverInputSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#DiscoverInputSchemaResponse', name: 'DiscoverInputSchemaResponse')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ErrorMessage', name: 'ErrorMessage')
    FileKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#FileKey', name: 'FileKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    InAppStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#InAppStreamName', name: 'InAppStreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    InAppStreamNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InAppStreamNames', name: 'InAppStreamNames')
    InAppTableName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#InAppTableName', name: 'InAppTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    Input = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#Input', name: 'Input')
    InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputConfiguration', name: 'InputConfiguration')
    InputConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InputConfigurations', name: 'InputConfigurations')
    InputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputDescription', name: 'InputDescription')
    InputDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InputDescriptions', name: 'InputDescriptions')
    InputLambdaProcessor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputLambdaProcessor', name: 'InputLambdaProcessor')
    InputLambdaProcessorDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputLambdaProcessorDescription', name: 'InputLambdaProcessorDescription')
    InputLambdaProcessorUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputLambdaProcessorUpdate', name: 'InputLambdaProcessorUpdate')
    InputParallelism = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputParallelism', name: 'InputParallelism')
    InputParallelismCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalytics#InputParallelismCount', name: 'InputParallelismCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    InputParallelismUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputParallelismUpdate', name: 'InputParallelismUpdate')
    InputProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputProcessingConfiguration', name: 'InputProcessingConfiguration')
    InputProcessingConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputProcessingConfigurationDescription', name: 'InputProcessingConfigurationDescription')
    InputProcessingConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputProcessingConfigurationUpdate', name: 'InputProcessingConfigurationUpdate')
    InputSchemaUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputSchemaUpdate', name: 'InputSchemaUpdate')
    InputStartingPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalytics#InputStartingPosition', name: 'InputStartingPosition')
    InputStartingPositionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputStartingPositionConfiguration', name: 'InputStartingPositionConfiguration')
    InputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InputUpdate', name: 'InputUpdate')
    InputUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#InputUpdates', name: 'InputUpdates')
    Inputs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#Inputs', name: 'Inputs')
    InvalidApplicationConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InvalidApplicationConfigurationException', name: 'InvalidApplicationConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client"})
    JSONMappingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#JSONMappingParameters', name: 'JSONMappingParameters')
    KinesisAnalyticsARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisAnalyticsARN', name: 'KinesisAnalyticsARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kinesisanalytics:[a-z]{2}-[a-z]+-\\d{1}+:\\d{12}+:application/[a-zA-Z0-9_.-]{1,128}$"})
    KinesisFirehoseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseInput', name: 'KinesisFirehoseInput')
    KinesisFirehoseInputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseInputDescription', name: 'KinesisFirehoseInputDescription')
    KinesisFirehoseInputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseInputUpdate', name: 'KinesisFirehoseInputUpdate')
    KinesisFirehoseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseOutput', name: 'KinesisFirehoseOutput')
    KinesisFirehoseOutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseOutputDescription', name: 'KinesisFirehoseOutputDescription')
    KinesisFirehoseOutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisFirehoseOutputUpdate', name: 'KinesisFirehoseOutputUpdate')
    KinesisStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsInput', name: 'KinesisStreamsInput')
    KinesisStreamsInputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsInputDescription', name: 'KinesisStreamsInputDescription')
    KinesisStreamsInputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsInputUpdate', name: 'KinesisStreamsInputUpdate')
    KinesisStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsOutput', name: 'KinesisStreamsOutput')
    KinesisStreamsOutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsOutputDescription', name: 'KinesisStreamsOutputDescription')
    KinesisStreamsOutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#KinesisStreamsOutputUpdate', name: 'KinesisStreamsOutputUpdate')
    LambdaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LambdaOutput', name: 'LambdaOutput')
    LambdaOutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LambdaOutputDescription', name: 'LambdaOutputDescription')
    LambdaOutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LambdaOutputUpdate', name: 'LambdaOutputUpdate')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListApplicationsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisanalytics#ListApplicationsInputLimit', name: 'ListApplicationsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogStreamARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#LogStreamARN', name: 'LogStreamARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    MappingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#MappingParameters', name: 'MappingParameters')
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#Output', name: 'Output')
    OutputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#OutputDescription', name: 'OutputDescription')
    OutputDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#OutputDescriptions', name: 'OutputDescriptions')
    OutputUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#OutputUpdate', name: 'OutputUpdate')
    OutputUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#OutputUpdates', name: 'OutputUpdates')
    Outputs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#Outputs', name: 'Outputs')
    ParsedInputRecord = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ParsedInputRecord', name: 'ParsedInputRecord')
    ParsedInputRecordField = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ParsedInputRecordField', name: 'ParsedInputRecordField')
    ParsedInputRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ParsedInputRecords', name: 'ParsedInputRecords')
    ProcessedInputRecord = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ProcessedInputRecord', name: 'ProcessedInputRecord')
    ProcessedInputRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ProcessedInputRecords', name: 'ProcessedInputRecords')
    RawInputRecord = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RawInputRecord', name: 'RawInputRecord')
    RawInputRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#RawInputRecords', name: 'RawInputRecords')
    RecordColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumn', name: 'RecordColumn')
    RecordColumnDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnDelimiter', name: 'RecordColumnDelimiter', traits: {"smithy.api#length" => {"min" => 1}})
    RecordColumnMapping = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnMapping', name: 'RecordColumnMapping')
    RecordColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnName', name: 'RecordColumnName')
    RecordColumnSqlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumnSqlType', name: 'RecordColumnSqlType', traits: {"smithy.api#length" => {"min" => 1}})
    RecordColumns = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#RecordColumns', name: 'RecordColumns', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    RecordEncoding = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordEncoding', name: 'RecordEncoding', traits: {"smithy.api#pattern" => "^UTF-8$"})
    RecordFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#RecordFormat', name: 'RecordFormat')
    RecordFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisanalytics#RecordFormatType', name: 'RecordFormatType')
    RecordRowDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordRowDelimiter', name: 'RecordRowDelimiter', traits: {"smithy.api#length" => {"min" => 1}})
    RecordRowPath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RecordRowPath', name: 'RecordRowPath', traits: {"smithy.api#length" => {"min" => 1}})
    ReferenceDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSource', name: 'ReferenceDataSource')
    ReferenceDataSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceDescription', name: 'ReferenceDataSourceDescription')
    ReferenceDataSourceDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceDescriptions', name: 'ReferenceDataSourceDescriptions')
    ReferenceDataSourceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceUpdate', name: 'ReferenceDataSourceUpdate')
    ReferenceDataSourceUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#ReferenceDataSourceUpdates', name: 'ReferenceDataSourceUpdates')
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceProvisionedThroughputExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ResourceProvisionedThroughputExceededException', name: 'ResourceProvisionedThroughputExceededException', traits: {"smithy.api#error" => "client"})
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#RoleARN', name: 'RoleARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3Configuration', name: 'S3Configuration')
    S3ReferenceDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3ReferenceDataSource', name: 'S3ReferenceDataSource')
    S3ReferenceDataSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3ReferenceDataSourceDescription', name: 'S3ReferenceDataSourceDescription')
    S3ReferenceDataSourceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#S3ReferenceDataSourceUpdate', name: 'S3ReferenceDataSourceUpdate')
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SourceSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#SourceSchema', name: 'SourceSchema')
    StartApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StartApplicationRequest', name: 'StartApplicationRequest')
    StartApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StartApplicationResponse', name: 'StartApplicationResponse')
    StopApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StopApplicationRequest', name: 'StopApplicationRequest')
    StopApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#StopApplicationResponse', name: 'StopApplicationResponse')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisanalytics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisanalytics#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisanalytics#Timestamp', name: 'Timestamp')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UnableToDetectSchemaException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UnableToDetectSchemaException', name: 'UnableToDetectSchemaException', traits: {"smithy.api#error" => "client"})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisanalytics#UpdateApplicationResponse', name: 'UpdateApplicationResponse')

    AddApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOption, location_name: 'CloudWatchLoggingOption', traits: {"smithy.api#required" => {}}))
    AddApplicationCloudWatchLoggingOptionRequest.type = Types::AddApplicationCloudWatchLoggingOptionRequest
    AddApplicationCloudWatchLoggingOptionResponse.type = Types::AddApplicationCloudWatchLoggingOptionResponse
    AddApplicationInputProcessingConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_processing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration', traits: {"smithy.api#required" => {}}))
    AddApplicationInputProcessingConfigurationRequest.type = Types::AddApplicationInputProcessingConfigurationRequest
    AddApplicationInputProcessingConfigurationResponse.type = Types::AddApplicationInputProcessingConfigurationResponse
    AddApplicationInputRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    AddApplicationInputRequest.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#required" => {}}))
    AddApplicationInputRequest.type = Types::AddApplicationInputRequest
    AddApplicationInputResponse.type = Types::AddApplicationInputResponse
    AddApplicationOutputRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    AddApplicationOutputRequest.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Output, location_name: 'Output', traits: {"smithy.api#required" => {}}))
    AddApplicationOutputRequest.type = Types::AddApplicationOutputRequest
    AddApplicationOutputResponse.type = Types::AddApplicationOutputResponse
    AddApplicationReferenceDataSourceRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.add_member(:reference_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSource, location_name: 'ReferenceDataSource', traits: {"smithy.api#required" => {}}))
    AddApplicationReferenceDataSourceRequest.type = Types::AddApplicationReferenceDataSourceRequest
    AddApplicationReferenceDataSourceResponse.type = Types::AddApplicationReferenceDataSourceResponse
    ApplicationDetail.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'ApplicationDescription'))
    ApplicationDetail.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:application_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#required" => {}}))
    ApplicationDetail.add_member(:create_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp'))
    ApplicationDetail.add_member(:last_update_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTimestamp'))
    ApplicationDetail.add_member(:input_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescriptions, location_name: 'InputDescriptions'))
    ApplicationDetail.add_member(:output_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: 'OutputDescriptions'))
    ApplicationDetail.add_member(:reference_data_source_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: 'ReferenceDataSourceDescriptions'))
    ApplicationDetail.add_member(:cloud_watch_logging_option_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: 'CloudWatchLoggingOptionDescriptions'))
    ApplicationDetail.add_member(:application_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCode, location_name: 'ApplicationCode'))
    ApplicationDetail.add_member(:application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'ApplicationVersionId', traits: {"smithy.api#required" => {}}))
    ApplicationDetail.type = Types::ApplicationDetail
    ApplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ApplicationStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ApplicationStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    ApplicationStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ApplicationStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApplicationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ApplicationARN', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationUpdate.add_member(:input_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputUpdates, location_name: 'InputUpdates'))
    ApplicationUpdate.add_member(:application_code_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCode, location_name: 'ApplicationCodeUpdate'))
    ApplicationUpdate.add_member(:output_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUpdates, location_name: 'OutputUpdates'))
    ApplicationUpdate.add_member(:reference_data_source_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdates, location_name: 'ReferenceDataSourceUpdates'))
    ApplicationUpdate.add_member(:cloud_watch_logging_option_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdates, location_name: 'CloudWatchLoggingOptionUpdates'))
    ApplicationUpdate.type = Types::ApplicationUpdate
    CSVMappingParameters.add_member(:record_row_delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordRowDelimiter, location_name: 'RecordRowDelimiter', traits: {"smithy.api#required" => {}}))
    CSVMappingParameters.add_member(:record_column_delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnDelimiter, location_name: 'RecordColumnDelimiter', traits: {"smithy.api#required" => {}}))
    CSVMappingParameters.type = Types::CSVMappingParameters
    CloudWatchLoggingOption.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARN', traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOption.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOption.type = Types::CloudWatchLoggingOption
    CloudWatchLoggingOptionDescription.add_member(:cloud_watch_logging_option_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId'))
    CloudWatchLoggingOptionDescription.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARN', traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOptionDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOptionDescription.type = Types::CloudWatchLoggingOptionDescription
    CloudWatchLoggingOptionDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescription)
    CloudWatchLoggingOptionUpdate.add_member(:cloud_watch_logging_option_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingOptionUpdate.add_member(:log_stream_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'LogStreamARNUpdate'))
    CloudWatchLoggingOptionUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    CloudWatchLoggingOptionUpdate.type = Types::CloudWatchLoggingOptionUpdate
    CloudWatchLoggingOptionUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdate)
    CloudWatchLoggingOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOption)
    CodeValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CodeValidationException.type = Types::CodeValidationException
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CreateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'ApplicationDescription'))
    CreateApplicationRequest.add_member(:inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Inputs, location_name: 'Inputs'))
    CreateApplicationRequest.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outputs, location_name: 'Outputs'))
    CreateApplicationRequest.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: 'CloudWatchLoggingOptions'))
    CreateApplicationRequest.add_member(:application_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCode, location_name: 'ApplicationCode'))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary, location_name: 'ApplicationSummary', traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'CloudWatchLoggingOptionId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationCloudWatchLoggingOptionRequest.type = Types::DeleteApplicationCloudWatchLoggingOptionRequest
    DeleteApplicationCloudWatchLoggingOptionResponse.type = Types::DeleteApplicationCloudWatchLoggingOptionResponse
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:input_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationInputProcessingConfigurationRequest.type = Types::DeleteApplicationInputProcessingConfigurationRequest
    DeleteApplicationInputProcessingConfigurationResponse.type = Types::DeleteApplicationInputProcessingConfigurationResponse
    DeleteApplicationOutputRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.add_member(:output_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationOutputRequest.type = Types::DeleteApplicationOutputRequest
    DeleteApplicationOutputResponse.type = Types::DeleteApplicationOutputResponse
    DeleteApplicationReferenceDataSourceRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#required" => {}}))
    DeleteApplicationReferenceDataSourceRequest.type = Types::DeleteApplicationReferenceDataSourceRequest
    DeleteApplicationReferenceDataSourceResponse.type = Types::DeleteApplicationReferenceDataSourceResponse
    DeleteApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:create_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DescribeApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDetail, location_name: 'ApplicationDetail', traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DestinationSchema.add_member(:record_format_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormatType, location_name: 'RecordFormatType', traits: {"smithy.api#required" => {}}))
    DestinationSchema.type = Types::DestinationSchema
    DiscoverInputSchemaRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    DiscoverInputSchemaRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    DiscoverInputSchemaRequest.add_member(:input_starting_position_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration'))
    DiscoverInputSchemaRequest.add_member(:s3_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 'S3Configuration'))
    DiscoverInputSchemaRequest.add_member(:input_processing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration'))
    DiscoverInputSchemaRequest.type = Types::DiscoverInputSchemaRequest
    DiscoverInputSchemaResponse.add_member(:input_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema'))
    DiscoverInputSchemaResponse.add_member(:parsed_input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecords, location_name: 'ParsedInputRecords'))
    DiscoverInputSchemaResponse.add_member(:processed_input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: 'ProcessedInputRecords'))
    DiscoverInputSchemaResponse.add_member(:raw_input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecords, location_name: 'RawInputRecords'))
    DiscoverInputSchemaResponse.type = Types::DiscoverInputSchemaResponse
    InAppStreamNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName)
    Input.add_member(:name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefix', traits: {"smithy.api#required" => {}}))
    Input.add_member(:input_processing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: 'InputProcessingConfiguration'))
    Input.add_member(:kinesis_streams_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInput, location_name: 'KinesisStreamsInput'))
    Input.add_member(:kinesis_firehose_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInput, location_name: 'KinesisFirehoseInput'))
    Input.add_member(:input_parallelism, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelism, location_name: 'InputParallelism'))
    Input.add_member(:input_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema', traits: {"smithy.api#required" => {}}))
    Input.type = Types::Input
    InputConfiguration.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    InputConfiguration.add_member(:input_starting_position_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration', traits: {"smithy.api#required" => {}}))
    InputConfiguration.type = Types::InputConfiguration
    InputConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration)
    InputDescription.add_member(:input_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId'))
    InputDescription.add_member(:name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefix'))
    InputDescription.add_member(:in_app_stream_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamNames, location_name: 'InAppStreamNames'))
    InputDescription.add_member(:input_processing_configuration_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationDescription, location_name: 'InputProcessingConfigurationDescription'))
    InputDescription.add_member(:kinesis_streams_input_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInputDescription, location_name: 'KinesisStreamsInputDescription'))
    InputDescription.add_member(:kinesis_firehose_input_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInputDescription, location_name: 'KinesisFirehoseInputDescription'))
    InputDescription.add_member(:input_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'InputSchema'))
    InputDescription.add_member(:input_parallelism, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelism, location_name: 'InputParallelism'))
    InputDescription.add_member(:input_starting_position_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: 'InputStartingPositionConfiguration'))
    InputDescription.type = Types::InputDescription
    InputDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription)
    InputLambdaProcessor.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    InputLambdaProcessor.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    InputLambdaProcessor.type = Types::InputLambdaProcessor
    InputLambdaProcessorDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    InputLambdaProcessorDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    InputLambdaProcessorDescription.type = Types::InputLambdaProcessorDescription
    InputLambdaProcessorUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate'))
    InputLambdaProcessorUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    InputLambdaProcessorUpdate.type = Types::InputLambdaProcessorUpdate
    InputParallelism.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: 'Count'))
    InputParallelism.type = Types::InputParallelism
    InputParallelismUpdate.add_member(:count_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: 'CountUpdate'))
    InputParallelismUpdate.type = Types::InputParallelismUpdate
    InputProcessingConfiguration.add_member(:input_lambda_processor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessor, location_name: 'InputLambdaProcessor', traits: {"smithy.api#required" => {}}))
    InputProcessingConfiguration.type = Types::InputProcessingConfiguration
    InputProcessingConfigurationDescription.add_member(:input_lambda_processor_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessorDescription, location_name: 'InputLambdaProcessorDescription'))
    InputProcessingConfigurationDescription.type = Types::InputProcessingConfigurationDescription
    InputProcessingConfigurationUpdate.add_member(:input_lambda_processor_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputLambdaProcessorUpdate, location_name: 'InputLambdaProcessorUpdate', traits: {"smithy.api#required" => {}}))
    InputProcessingConfigurationUpdate.type = Types::InputProcessingConfigurationUpdate
    InputSchemaUpdate.add_member(:record_format_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormat, location_name: 'RecordFormatUpdate'))
    InputSchemaUpdate.add_member(:record_encoding_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordEncoding, location_name: 'RecordEncodingUpdate'))
    InputSchemaUpdate.add_member(:record_column_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumns, location_name: 'RecordColumnUpdates'))
    InputSchemaUpdate.type = Types::InputSchemaUpdate
    InputStartingPosition.add_member(:now, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOW', traits: {"smithy.api#enumValue" => "NOW"}))
    InputStartingPosition.add_member(:trim_horizon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIM_HORIZON', traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    InputStartingPosition.add_member(:last_stopped_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_STOPPED_POINT', traits: {"smithy.api#enumValue" => "LAST_STOPPED_POINT"}))
    InputStartingPositionConfiguration.add_member(:input_starting_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputStartingPosition, location_name: 'InputStartingPosition'))
    InputStartingPositionConfiguration.type = Types::InputStartingPositionConfiguration
    InputUpdate.add_member(:input_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InputId', traits: {"smithy.api#required" => {}}))
    InputUpdate.add_member(:name_prefix_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NamePrefixUpdate'))
    InputUpdate.add_member(:input_processing_configuration_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputProcessingConfigurationUpdate, location_name: 'InputProcessingConfigurationUpdate'))
    InputUpdate.add_member(:kinesis_streams_input_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsInputUpdate, location_name: 'KinesisStreamsInputUpdate'))
    InputUpdate.add_member(:kinesis_firehose_input_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseInputUpdate, location_name: 'KinesisFirehoseInputUpdate'))
    InputUpdate.add_member(:input_schema_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSchemaUpdate, location_name: 'InputSchemaUpdate'))
    InputUpdate.add_member(:input_parallelism_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputParallelismUpdate, location_name: 'InputParallelismUpdate'))
    InputUpdate.type = Types::InputUpdate
    InputUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputUpdate)
    Inputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Input)
    InvalidApplicationConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidApplicationConfigurationException.type = Types::InvalidApplicationConfigurationException
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    JSONMappingParameters.add_member(:record_row_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordRowPath, location_name: 'RecordRowPath', traits: {"smithy.api#required" => {}}))
    JSONMappingParameters.type = Types::JSONMappingParameters
    KinesisFirehoseInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    KinesisFirehoseInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    KinesisFirehoseInput.type = Types::KinesisFirehoseInput
    KinesisFirehoseInputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    KinesisFirehoseInputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    KinesisFirehoseInputDescription.type = Types::KinesisFirehoseInputDescription
    KinesisFirehoseInputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate'))
    KinesisFirehoseInputUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    KinesisFirehoseInputUpdate.type = Types::KinesisFirehoseInputUpdate
    KinesisFirehoseOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    KinesisFirehoseOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    KinesisFirehoseOutput.type = Types::KinesisFirehoseOutput
    KinesisFirehoseOutputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    KinesisFirehoseOutputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    KinesisFirehoseOutputDescription.type = Types::KinesisFirehoseOutputDescription
    KinesisFirehoseOutputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate'))
    KinesisFirehoseOutputUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    KinesisFirehoseOutputUpdate.type = Types::KinesisFirehoseOutputUpdate
    KinesisStreamsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    KinesisStreamsInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    KinesisStreamsInput.type = Types::KinesisStreamsInput
    KinesisStreamsInputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    KinesisStreamsInputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    KinesisStreamsInputDescription.type = Types::KinesisStreamsInputDescription
    KinesisStreamsInputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate'))
    KinesisStreamsInputUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    KinesisStreamsInputUpdate.type = Types::KinesisStreamsInputUpdate
    KinesisStreamsOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    KinesisStreamsOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    KinesisStreamsOutput.type = Types::KinesisStreamsOutput
    KinesisStreamsOutputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    KinesisStreamsOutputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    KinesisStreamsOutputDescription.type = Types::KinesisStreamsOutputDescription
    KinesisStreamsOutputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate'))
    KinesisStreamsOutputUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    KinesisStreamsOutputUpdate.type = Types::KinesisStreamsOutputUpdate
    LambdaOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    LambdaOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    LambdaOutput.type = Types::LambdaOutput
    LambdaOutputDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN'))
    LambdaOutputDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN'))
    LambdaOutputDescription.type = Types::LambdaOutputDescription
    LambdaOutputUpdate.add_member(:resource_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARNUpdate'))
    LambdaOutputUpdate.add_member(:role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARNUpdate'))
    LambdaOutputUpdate.type = Types::LambdaOutputUpdate
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListApplicationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInputLimit, location_name: 'Limit'))
    ListApplicationsRequest.add_member(:exclusive_start_application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ExclusiveStartApplicationName'))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'ApplicationSummaries', traits: {"smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:has_more_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'HasMoreApplications', traits: {"smithy.api#required" => {}}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MappingParameters.add_member(:json_mapping_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JSONMappingParameters, location_name: 'JSONMappingParameters'))
    MappingParameters.add_member(:csv_mapping_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CSVMappingParameters, location_name: 'CSVMappingParameters'))
    MappingParameters.type = Types::MappingParameters
    Output.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Output.add_member(:kinesis_streams_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutput, location_name: 'KinesisStreamsOutput'))
    Output.add_member(:kinesis_firehose_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutput, location_name: 'KinesisFirehoseOutput'))
    Output.add_member(:lambda_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutput, location_name: 'LambdaOutput'))
    Output.add_member(:destination_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchema', traits: {"smithy.api#required" => {}}))
    Output.type = Types::Output
    OutputDescription.add_member(:output_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId'))
    OutputDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'Name'))
    OutputDescription.add_member(:kinesis_streams_output_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutputDescription, location_name: 'KinesisStreamsOutputDescription'))
    OutputDescription.add_member(:kinesis_firehose_output_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutputDescription, location_name: 'KinesisFirehoseOutputDescription'))
    OutputDescription.add_member(:lambda_output_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutputDescription, location_name: 'LambdaOutputDescription'))
    OutputDescription.add_member(:destination_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchema'))
    OutputDescription.type = Types::OutputDescription
    OutputDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDescription)
    OutputUpdate.add_member(:output_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'OutputId', traits: {"smithy.api#required" => {}}))
    OutputUpdate.add_member(:name_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppStreamName, location_name: 'NameUpdate'))
    OutputUpdate.add_member(:kinesis_streams_output_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamsOutputUpdate, location_name: 'KinesisStreamsOutputUpdate'))
    OutputUpdate.add_member(:kinesis_firehose_output_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseOutputUpdate, location_name: 'KinesisFirehoseOutputUpdate'))
    OutputUpdate.add_member(:lambda_output_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaOutputUpdate, location_name: 'LambdaOutputUpdate'))
    OutputUpdate.add_member(:destination_schema_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSchema, location_name: 'DestinationSchemaUpdate'))
    OutputUpdate.type = Types::OutputUpdate
    OutputUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUpdate)
    Outputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Output)
    ParsedInputRecord.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecordField)
    ParsedInputRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsedInputRecord)
    ProcessedInputRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecord)
    RawInputRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecord)
    RecordColumn.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    RecordColumn.add_member(:mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnMapping, location_name: 'Mapping'))
    RecordColumn.add_member(:sql_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumnSqlType, location_name: 'SqlType', traits: {"smithy.api#required" => {}}))
    RecordColumn.type = Types::RecordColumn
    RecordColumns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumn)
    RecordFormat.add_member(:record_format_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormatType, location_name: 'RecordFormatType', traits: {"smithy.api#required" => {}}))
    RecordFormat.add_member(:mapping_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingParameters, location_name: 'MappingParameters'))
    RecordFormat.type = Types::RecordFormat
    RecordFormatType.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    RecordFormatType.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ReferenceDataSource.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableName', traits: {"smithy.api#required" => {}}))
    ReferenceDataSource.add_member(:s3_reference_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSource, location_name: 'S3ReferenceDataSource'))
    ReferenceDataSource.add_member(:reference_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchema', traits: {"smithy.api#required" => {}}))
    ReferenceDataSource.type = Types::ReferenceDataSource
    ReferenceDataSourceDescription.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableName', traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:s3_reference_data_source_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSourceDescription, location_name: 'S3ReferenceDataSourceDescription', traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceDescription.add_member(:reference_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchema'))
    ReferenceDataSourceDescription.type = Types::ReferenceDataSourceDescription
    ReferenceDataSourceDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceDescription)
    ReferenceDataSourceUpdate.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ReferenceId', traits: {"smithy.api#required" => {}}))
    ReferenceDataSourceUpdate.add_member(:table_name_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTableName, location_name: 'TableNameUpdate'))
    ReferenceDataSourceUpdate.add_member(:s3_reference_data_source_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReferenceDataSourceUpdate, location_name: 'S3ReferenceDataSourceUpdate'))
    ReferenceDataSourceUpdate.add_member(:reference_schema_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSchema, location_name: 'ReferenceSchemaUpdate'))
    ReferenceDataSourceUpdate.type = Types::ReferenceDataSourceUpdate
    ReferenceDataSourceUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdate)
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceProvisionedThroughputExceededException.type = Types::ResourceProvisionedThroughputExceededException
    S3Configuration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    S3Configuration.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#required" => {}}))
    S3Configuration.add_member(:file_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    S3ReferenceDataSource.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSource.add_member(:file_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSource.add_member(:reference_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARN', traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSource.type = Types::S3ReferenceDataSource
    S3ReferenceDataSourceDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARN', traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:file_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKey', traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.add_member(:reference_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARN', traits: {"smithy.api#required" => {}}))
    S3ReferenceDataSourceDescription.type = Types::S3ReferenceDataSourceDescription
    S3ReferenceDataSourceUpdate.add_member(:bucket_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketARN, location_name: 'BucketARNUpdate'))
    S3ReferenceDataSourceUpdate.add_member(:file_key_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileKey, location_name: 'FileKeyUpdate'))
    S3ReferenceDataSourceUpdate.add_member(:reference_role_arn_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'ReferenceRoleARNUpdate'))
    S3ReferenceDataSourceUpdate.type = Types::S3ReferenceDataSourceUpdate
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SourceSchema.add_member(:record_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFormat, location_name: 'RecordFormat', traits: {"smithy.api#required" => {}}))
    SourceSchema.add_member(:record_encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordEncoding, location_name: 'RecordEncoding'))
    SourceSchema.add_member(:record_columns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordColumns, location_name: 'RecordColumns', traits: {"smithy.api#required" => {}}))
    SourceSchema.type = Types::SourceSchema
    StartApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    StartApplicationRequest.add_member(:input_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfigurations, location_name: 'InputConfigurations', traits: {"smithy.api#required" => {}}))
    StartApplicationRequest.type = Types::StartApplicationRequest
    StartApplicationResponse.type = Types::StartApplicationResponse
    StopApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    StopApplicationRequest.type = Types::StopApplicationRequest
    StopApplicationResponse.type = Types::StopApplicationResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UnableToDetectSchemaException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnableToDetectSchemaException.add_member(:raw_input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RawInputRecords, location_name: 'RawInputRecords'))
    UnableToDetectSchemaException.add_member(:processed_input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: 'ProcessedInputRecords'))
    UnableToDetectSchemaException.type = Types::UnableToDetectSchemaException
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:current_application_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: 'CurrentApplicationVersionId', traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:application_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationUpdate, location_name: 'ApplicationUpdate', traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse

    KinesisAnalytics20150814 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisanalytics#KinesisAnalytics_20150814"
      service.name = "KinesisAnalytics20150814"
      service.version = "2015-08-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Analytics", "arnNamespace" => "kinesisanalytics", "cloudFormationName" => "KinesisAnalytics", "cloudTrailEventSource" => "kinesisanalytics.amazonaws.com", "docId" => "kinesisanalytics-2015-08-14", "endpointPrefix" => "kinesisanalytics"}, "aws.auth#sigv4" => {"name" => "kinesisanalytics"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Kinesis Analytics", "smithy.api#xmlNamespace" => {"uri" => "http://analytics.kinesis.amazonaws.com/doc/2015-08-14"}}
      service.add_operation(:add_application_cloud_watch_logging_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationCloudWatchLoggingOption"
        operation.name = "AddApplicationCloudWatchLoggingOption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationInput"
        operation.name = "AddApplicationInput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_input_processing_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationInputProcessingConfiguration"
        operation.name = "AddApplicationInputProcessingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationOutput"
        operation.name = "AddApplicationOutput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationOutputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationOutputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_application_reference_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#AddApplicationReferenceDataSource"
        operation.name = "AddApplicationReferenceDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_cloud_watch_logging_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationCloudWatchLoggingOption"
        operation.name = "DeleteApplicationCloudWatchLoggingOption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_input_processing_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationInputProcessingConfiguration"
        operation.name = "DeleteApplicationInputProcessingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationOutput"
        operation.name = "DeleteApplicationOutput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_reference_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DeleteApplicationReferenceDataSource"
        operation.name = "DeleteApplicationReferenceDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:discover_input_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#DiscoverInputSchema"
        operation.name = "DiscoverInputSchema"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoverInputSchemaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoverInputSchemaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDetectSchemaException)
        operation.traits = {}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#ListApplications"
        operation.name = "ListApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#StartApplication"
        operation.name = "StartApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#StopApplication"
        operation.name = "StopApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisanalytics#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
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
