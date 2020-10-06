# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisAnalyticsV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AddApplicationCloudWatchLoggingOptionRequest = Shapes::StructureShape.new(name: 'AddApplicationCloudWatchLoggingOptionRequest')
    AddApplicationCloudWatchLoggingOptionResponse = Shapes::StructureShape.new(name: 'AddApplicationCloudWatchLoggingOptionResponse')
    AddApplicationInputProcessingConfigurationRequest = Shapes::StructureShape.new(name: 'AddApplicationInputProcessingConfigurationRequest')
    AddApplicationInputProcessingConfigurationResponse = Shapes::StructureShape.new(name: 'AddApplicationInputProcessingConfigurationResponse')
    AddApplicationInputRequest = Shapes::StructureShape.new(name: 'AddApplicationInputRequest')
    AddApplicationInputResponse = Shapes::StructureShape.new(name: 'AddApplicationInputResponse')
    AddApplicationOutputRequest = Shapes::StructureShape.new(name: 'AddApplicationOutputRequest')
    AddApplicationOutputResponse = Shapes::StructureShape.new(name: 'AddApplicationOutputResponse')
    AddApplicationReferenceDataSourceRequest = Shapes::StructureShape.new(name: 'AddApplicationReferenceDataSourceRequest')
    AddApplicationReferenceDataSourceResponse = Shapes::StructureShape.new(name: 'AddApplicationReferenceDataSourceResponse')
    AddApplicationVpcConfigurationRequest = Shapes::StructureShape.new(name: 'AddApplicationVpcConfigurationRequest')
    AddApplicationVpcConfigurationResponse = Shapes::StructureShape.new(name: 'AddApplicationVpcConfigurationResponse')
    ApplicationCodeConfiguration = Shapes::StructureShape.new(name: 'ApplicationCodeConfiguration')
    ApplicationCodeConfigurationDescription = Shapes::StructureShape.new(name: 'ApplicationCodeConfigurationDescription')
    ApplicationCodeConfigurationUpdate = Shapes::StructureShape.new(name: 'ApplicationCodeConfigurationUpdate')
    ApplicationConfiguration = Shapes::StructureShape.new(name: 'ApplicationConfiguration')
    ApplicationConfigurationDescription = Shapes::StructureShape.new(name: 'ApplicationConfigurationDescription')
    ApplicationConfigurationUpdate = Shapes::StructureShape.new(name: 'ApplicationConfigurationUpdate')
    ApplicationDescription = Shapes::StringShape.new(name: 'ApplicationDescription')
    ApplicationDetail = Shapes::StructureShape.new(name: 'ApplicationDetail')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationRestoreConfiguration = Shapes::StructureShape.new(name: 'ApplicationRestoreConfiguration')
    ApplicationRestoreType = Shapes::StringShape.new(name: 'ApplicationRestoreType')
    ApplicationSnapshotConfiguration = Shapes::StructureShape.new(name: 'ApplicationSnapshotConfiguration')
    ApplicationSnapshotConfigurationDescription = Shapes::StructureShape.new(name: 'ApplicationSnapshotConfigurationDescription')
    ApplicationSnapshotConfigurationUpdate = Shapes::StructureShape.new(name: 'ApplicationSnapshotConfigurationUpdate')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationSummaries = Shapes::ListShape.new(name: 'ApplicationSummaries')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationVersionId = Shapes::IntegerShape.new(name: 'ApplicationVersionId')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BucketARN = Shapes::StringShape.new(name: 'BucketARN')
    CSVMappingParameters = Shapes::StructureShape.new(name: 'CSVMappingParameters')
    CheckpointConfiguration = Shapes::StructureShape.new(name: 'CheckpointConfiguration')
    CheckpointConfigurationDescription = Shapes::StructureShape.new(name: 'CheckpointConfigurationDescription')
    CheckpointConfigurationUpdate = Shapes::StructureShape.new(name: 'CheckpointConfigurationUpdate')
    CheckpointInterval = Shapes::IntegerShape.new(name: 'CheckpointInterval')
    CloudWatchLoggingOption = Shapes::StructureShape.new(name: 'CloudWatchLoggingOption')
    CloudWatchLoggingOptionDescription = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptionDescription')
    CloudWatchLoggingOptionDescriptions = Shapes::ListShape.new(name: 'CloudWatchLoggingOptionDescriptions')
    CloudWatchLoggingOptionUpdate = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptionUpdate')
    CloudWatchLoggingOptionUpdates = Shapes::ListShape.new(name: 'CloudWatchLoggingOptionUpdates')
    CloudWatchLoggingOptions = Shapes::ListShape.new(name: 'CloudWatchLoggingOptions')
    CodeContent = Shapes::StructureShape.new(name: 'CodeContent')
    CodeContentDescription = Shapes::StructureShape.new(name: 'CodeContentDescription')
    CodeContentType = Shapes::StringShape.new(name: 'CodeContentType')
    CodeContentUpdate = Shapes::StructureShape.new(name: 'CodeContentUpdate')
    CodeMD5 = Shapes::StringShape.new(name: 'CodeMD5')
    CodeSize = Shapes::IntegerShape.new(name: 'CodeSize')
    CodeValidationException = Shapes::StructureShape.new(name: 'CodeValidationException')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConfigurationType = Shapes::StringShape.new(name: 'ConfigurationType')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateApplicationSnapshotRequest = Shapes::StructureShape.new(name: 'CreateApplicationSnapshotRequest')
    CreateApplicationSnapshotResponse = Shapes::StructureShape.new(name: 'CreateApplicationSnapshotResponse')
    DeleteApplicationCloudWatchLoggingOptionRequest = Shapes::StructureShape.new(name: 'DeleteApplicationCloudWatchLoggingOptionRequest')
    DeleteApplicationCloudWatchLoggingOptionResponse = Shapes::StructureShape.new(name: 'DeleteApplicationCloudWatchLoggingOptionResponse')
    DeleteApplicationInputProcessingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationInputProcessingConfigurationRequest')
    DeleteApplicationInputProcessingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationInputProcessingConfigurationResponse')
    DeleteApplicationOutputRequest = Shapes::StructureShape.new(name: 'DeleteApplicationOutputRequest')
    DeleteApplicationOutputResponse = Shapes::StructureShape.new(name: 'DeleteApplicationOutputResponse')
    DeleteApplicationReferenceDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteApplicationReferenceDataSourceRequest')
    DeleteApplicationReferenceDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteApplicationReferenceDataSourceResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteApplicationSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteApplicationSnapshotRequest')
    DeleteApplicationSnapshotResponse = Shapes::StructureShape.new(name: 'DeleteApplicationSnapshotResponse')
    DeleteApplicationVpcConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationVpcConfigurationRequest')
    DeleteApplicationVpcConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationVpcConfigurationResponse')
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    DescribeApplicationSnapshotRequest = Shapes::StructureShape.new(name: 'DescribeApplicationSnapshotRequest')
    DescribeApplicationSnapshotResponse = Shapes::StructureShape.new(name: 'DescribeApplicationSnapshotResponse')
    DestinationSchema = Shapes::StructureShape.new(name: 'DestinationSchema')
    DiscoverInputSchemaRequest = Shapes::StructureShape.new(name: 'DiscoverInputSchemaRequest')
    DiscoverInputSchemaResponse = Shapes::StructureShape.new(name: 'DiscoverInputSchemaResponse')
    EnvironmentProperties = Shapes::StructureShape.new(name: 'EnvironmentProperties')
    EnvironmentPropertyDescriptions = Shapes::StructureShape.new(name: 'EnvironmentPropertyDescriptions')
    EnvironmentPropertyUpdates = Shapes::StructureShape.new(name: 'EnvironmentPropertyUpdates')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileKey = Shapes::StringShape.new(name: 'FileKey')
    FlinkApplicationConfiguration = Shapes::StructureShape.new(name: 'FlinkApplicationConfiguration')
    FlinkApplicationConfigurationDescription = Shapes::StructureShape.new(name: 'FlinkApplicationConfigurationDescription')
    FlinkApplicationConfigurationUpdate = Shapes::StructureShape.new(name: 'FlinkApplicationConfigurationUpdate')
    FlinkRunConfiguration = Shapes::StructureShape.new(name: 'FlinkRunConfiguration')
    Id = Shapes::StringShape.new(name: 'Id')
    InAppStreamName = Shapes::StringShape.new(name: 'InAppStreamName')
    InAppStreamNames = Shapes::ListShape.new(name: 'InAppStreamNames')
    InAppTableName = Shapes::StringShape.new(name: 'InAppTableName')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputDescription = Shapes::StructureShape.new(name: 'InputDescription')
    InputDescriptions = Shapes::ListShape.new(name: 'InputDescriptions')
    InputLambdaProcessor = Shapes::StructureShape.new(name: 'InputLambdaProcessor')
    InputLambdaProcessorDescription = Shapes::StructureShape.new(name: 'InputLambdaProcessorDescription')
    InputLambdaProcessorUpdate = Shapes::StructureShape.new(name: 'InputLambdaProcessorUpdate')
    InputParallelism = Shapes::StructureShape.new(name: 'InputParallelism')
    InputParallelismCount = Shapes::IntegerShape.new(name: 'InputParallelismCount')
    InputParallelismUpdate = Shapes::StructureShape.new(name: 'InputParallelismUpdate')
    InputProcessingConfiguration = Shapes::StructureShape.new(name: 'InputProcessingConfiguration')
    InputProcessingConfigurationDescription = Shapes::StructureShape.new(name: 'InputProcessingConfigurationDescription')
    InputProcessingConfigurationUpdate = Shapes::StructureShape.new(name: 'InputProcessingConfigurationUpdate')
    InputSchemaUpdate = Shapes::StructureShape.new(name: 'InputSchemaUpdate')
    InputStartingPosition = Shapes::StringShape.new(name: 'InputStartingPosition')
    InputStartingPositionConfiguration = Shapes::StructureShape.new(name: 'InputStartingPositionConfiguration')
    InputUpdate = Shapes::StructureShape.new(name: 'InputUpdate')
    InputUpdates = Shapes::ListShape.new(name: 'InputUpdates')
    Inputs = Shapes::ListShape.new(name: 'Inputs')
    InvalidApplicationConfigurationException = Shapes::StructureShape.new(name: 'InvalidApplicationConfigurationException')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    JSONMappingParameters = Shapes::StructureShape.new(name: 'JSONMappingParameters')
    JobPlanDescription = Shapes::StringShape.new(name: 'JobPlanDescription')
    KinesisAnalyticsARN = Shapes::StringShape.new(name: 'KinesisAnalyticsARN')
    KinesisFirehoseInput = Shapes::StructureShape.new(name: 'KinesisFirehoseInput')
    KinesisFirehoseInputDescription = Shapes::StructureShape.new(name: 'KinesisFirehoseInputDescription')
    KinesisFirehoseInputUpdate = Shapes::StructureShape.new(name: 'KinesisFirehoseInputUpdate')
    KinesisFirehoseOutput = Shapes::StructureShape.new(name: 'KinesisFirehoseOutput')
    KinesisFirehoseOutputDescription = Shapes::StructureShape.new(name: 'KinesisFirehoseOutputDescription')
    KinesisFirehoseOutputUpdate = Shapes::StructureShape.new(name: 'KinesisFirehoseOutputUpdate')
    KinesisStreamsInput = Shapes::StructureShape.new(name: 'KinesisStreamsInput')
    KinesisStreamsInputDescription = Shapes::StructureShape.new(name: 'KinesisStreamsInputDescription')
    KinesisStreamsInputUpdate = Shapes::StructureShape.new(name: 'KinesisStreamsInputUpdate')
    KinesisStreamsOutput = Shapes::StructureShape.new(name: 'KinesisStreamsOutput')
    KinesisStreamsOutputDescription = Shapes::StructureShape.new(name: 'KinesisStreamsOutputDescription')
    KinesisStreamsOutputUpdate = Shapes::StructureShape.new(name: 'KinesisStreamsOutputUpdate')
    LambdaOutput = Shapes::StructureShape.new(name: 'LambdaOutput')
    LambdaOutputDescription = Shapes::StructureShape.new(name: 'LambdaOutputDescription')
    LambdaOutputUpdate = Shapes::StructureShape.new(name: 'LambdaOutputUpdate')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListApplicationSnapshotsRequest = Shapes::StructureShape.new(name: 'ListApplicationSnapshotsRequest')
    ListApplicationSnapshotsResponse = Shapes::StructureShape.new(name: 'ListApplicationSnapshotsResponse')
    ListApplicationsInputLimit = Shapes::IntegerShape.new(name: 'ListApplicationsInputLimit')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListSnapshotsInputLimit = Shapes::IntegerShape.new(name: 'ListSnapshotsInputLimit')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LogStreamARN = Shapes::StringShape.new(name: 'LogStreamARN')
    MappingParameters = Shapes::StructureShape.new(name: 'MappingParameters')
    MetricsLevel = Shapes::StringShape.new(name: 'MetricsLevel')
    MinPauseBetweenCheckpoints = Shapes::IntegerShape.new(name: 'MinPauseBetweenCheckpoints')
    MonitoringConfiguration = Shapes::StructureShape.new(name: 'MonitoringConfiguration')
    MonitoringConfigurationDescription = Shapes::StructureShape.new(name: 'MonitoringConfigurationDescription')
    MonitoringConfigurationUpdate = Shapes::StructureShape.new(name: 'MonitoringConfigurationUpdate')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectVersion = Shapes::StringShape.new(name: 'ObjectVersion')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputDescription = Shapes::StructureShape.new(name: 'OutputDescription')
    OutputDescriptions = Shapes::ListShape.new(name: 'OutputDescriptions')
    OutputUpdate = Shapes::StructureShape.new(name: 'OutputUpdate')
    OutputUpdates = Shapes::ListShape.new(name: 'OutputUpdates')
    Outputs = Shapes::ListShape.new(name: 'Outputs')
    Parallelism = Shapes::IntegerShape.new(name: 'Parallelism')
    ParallelismConfiguration = Shapes::StructureShape.new(name: 'ParallelismConfiguration')
    ParallelismConfigurationDescription = Shapes::StructureShape.new(name: 'ParallelismConfigurationDescription')
    ParallelismConfigurationUpdate = Shapes::StructureShape.new(name: 'ParallelismConfigurationUpdate')
    ParallelismPerKPU = Shapes::IntegerShape.new(name: 'ParallelismPerKPU')
    ParsedInputRecord = Shapes::ListShape.new(name: 'ParsedInputRecord')
    ParsedInputRecordField = Shapes::StringShape.new(name: 'ParsedInputRecordField')
    ParsedInputRecords = Shapes::ListShape.new(name: 'ParsedInputRecords')
    ProcessedInputRecord = Shapes::StringShape.new(name: 'ProcessedInputRecord')
    ProcessedInputRecords = Shapes::ListShape.new(name: 'ProcessedInputRecords')
    PropertyGroup = Shapes::StructureShape.new(name: 'PropertyGroup')
    PropertyGroups = Shapes::ListShape.new(name: 'PropertyGroups')
    PropertyKey = Shapes::StringShape.new(name: 'PropertyKey')
    PropertyMap = Shapes::MapShape.new(name: 'PropertyMap')
    PropertyValue = Shapes::StringShape.new(name: 'PropertyValue')
    RawInputRecord = Shapes::StringShape.new(name: 'RawInputRecord')
    RawInputRecords = Shapes::ListShape.new(name: 'RawInputRecords')
    RecordColumn = Shapes::StructureShape.new(name: 'RecordColumn')
    RecordColumnDelimiter = Shapes::StringShape.new(name: 'RecordColumnDelimiter')
    RecordColumnMapping = Shapes::StringShape.new(name: 'RecordColumnMapping')
    RecordColumnName = Shapes::StringShape.new(name: 'RecordColumnName')
    RecordColumnSqlType = Shapes::StringShape.new(name: 'RecordColumnSqlType')
    RecordColumns = Shapes::ListShape.new(name: 'RecordColumns')
    RecordEncoding = Shapes::StringShape.new(name: 'RecordEncoding')
    RecordFormat = Shapes::StructureShape.new(name: 'RecordFormat')
    RecordFormatType = Shapes::StringShape.new(name: 'RecordFormatType')
    RecordRowDelimiter = Shapes::StringShape.new(name: 'RecordRowDelimiter')
    RecordRowPath = Shapes::StringShape.new(name: 'RecordRowPath')
    ReferenceDataSource = Shapes::StructureShape.new(name: 'ReferenceDataSource')
    ReferenceDataSourceDescription = Shapes::StructureShape.new(name: 'ReferenceDataSourceDescription')
    ReferenceDataSourceDescriptions = Shapes::ListShape.new(name: 'ReferenceDataSourceDescriptions')
    ReferenceDataSourceUpdate = Shapes::StructureShape.new(name: 'ReferenceDataSourceUpdate')
    ReferenceDataSourceUpdates = Shapes::ListShape.new(name: 'ReferenceDataSourceUpdates')
    ReferenceDataSources = Shapes::ListShape.new(name: 'ReferenceDataSources')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ResourceProvisionedThroughputExceededException')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    RunConfiguration = Shapes::StructureShape.new(name: 'RunConfiguration')
    RunConfigurationDescription = Shapes::StructureShape.new(name: 'RunConfigurationDescription')
    RunConfigurationUpdate = Shapes::StructureShape.new(name: 'RunConfigurationUpdate')
    RuntimeEnvironment = Shapes::StringShape.new(name: 'RuntimeEnvironment')
    S3ApplicationCodeLocationDescription = Shapes::StructureShape.new(name: 'S3ApplicationCodeLocationDescription')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3ContentLocation = Shapes::StructureShape.new(name: 'S3ContentLocation')
    S3ContentLocationUpdate = Shapes::StructureShape.new(name: 'S3ContentLocationUpdate')
    S3ReferenceDataSource = Shapes::StructureShape.new(name: 'S3ReferenceDataSource')
    S3ReferenceDataSourceDescription = Shapes::StructureShape.new(name: 'S3ReferenceDataSourceDescription')
    S3ReferenceDataSourceUpdate = Shapes::StructureShape.new(name: 'S3ReferenceDataSourceUpdate')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SnapshotDetails = Shapes::StructureShape.new(name: 'SnapshotDetails')
    SnapshotName = Shapes::StringShape.new(name: 'SnapshotName')
    SnapshotStatus = Shapes::StringShape.new(name: 'SnapshotStatus')
    SnapshotSummaries = Shapes::ListShape.new(name: 'SnapshotSummaries')
    SourceSchema = Shapes::StructureShape.new(name: 'SourceSchema')
    SqlApplicationConfiguration = Shapes::StructureShape.new(name: 'SqlApplicationConfiguration')
    SqlApplicationConfigurationDescription = Shapes::StructureShape.new(name: 'SqlApplicationConfigurationDescription')
    SqlApplicationConfigurationUpdate = Shapes::StructureShape.new(name: 'SqlApplicationConfigurationUpdate')
    SqlRunConfiguration = Shapes::StructureShape.new(name: 'SqlRunConfiguration')
    SqlRunConfigurations = Shapes::ListShape.new(name: 'SqlRunConfigurations')
    StartApplicationRequest = Shapes::StructureShape.new(name: 'StartApplicationRequest')
    StartApplicationResponse = Shapes::StructureShape.new(name: 'StartApplicationResponse')
    StopApplicationRequest = Shapes::StructureShape.new(name: 'StopApplicationRequest')
    StopApplicationResponse = Shapes::StructureShape.new(name: 'StopApplicationResponse')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TextContent = Shapes::StringShape.new(name: 'TextContent')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnableToDetectSchemaException = Shapes::StructureShape.new(name: 'UnableToDetectSchemaException')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcConfigurationDescription = Shapes::StructureShape.new(name: 'VpcConfigurationDescription')
    VpcConfigurationDescriptions = Shapes::ListShape.new(name: 'VpcConfigurationDescriptions')
    VpcConfigurationUpdate = Shapes::StructureShape.new(name: 'VpcConfigurationUpdate')
    VpcConfigurationUpdates = Shapes::ListShape.new(name: 'VpcConfigurationUpdates')
    VpcConfigurations = Shapes::ListShape.new(name: 'VpcConfigurations')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    ZipFileContent = Shapes::BlobShape.new(name: 'ZipFileContent')

    AddApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option, Shapes::ShapeRef.new(shape: CloudWatchLoggingOption, required: true, location_name: "CloudWatchLoggingOption"))
    AddApplicationCloudWatchLoggingOptionRequest.struct_class = Types::AddApplicationCloudWatchLoggingOptionRequest

    AddApplicationCloudWatchLoggingOptionResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    AddApplicationCloudWatchLoggingOptionResponse.add_member(:cloud_watch_logging_option_descriptions, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: "CloudWatchLoggingOptionDescriptions"))
    AddApplicationCloudWatchLoggingOptionResponse.struct_class = Types::AddApplicationCloudWatchLoggingOptionResponse

    AddApplicationInputProcessingConfigurationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "InputId"))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_processing_configuration, Shapes::ShapeRef.new(shape: InputProcessingConfiguration, required: true, location_name: "InputProcessingConfiguration"))
    AddApplicationInputProcessingConfigurationRequest.struct_class = Types::AddApplicationInputProcessingConfigurationRequest

    AddApplicationInputProcessingConfigurationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    AddApplicationInputProcessingConfigurationResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    AddApplicationInputProcessingConfigurationResponse.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, location_name: "InputId"))
    AddApplicationInputProcessingConfigurationResponse.add_member(:input_processing_configuration_description, Shapes::ShapeRef.new(shape: InputProcessingConfigurationDescription, location_name: "InputProcessingConfigurationDescription"))
    AddApplicationInputProcessingConfigurationResponse.struct_class = Types::AddApplicationInputProcessingConfigurationResponse

    AddApplicationInputRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationInputRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationInputRequest.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "Input"))
    AddApplicationInputRequest.struct_class = Types::AddApplicationInputRequest

    AddApplicationInputResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    AddApplicationInputResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    AddApplicationInputResponse.add_member(:input_descriptions, Shapes::ShapeRef.new(shape: InputDescriptions, location_name: "InputDescriptions"))
    AddApplicationInputResponse.struct_class = Types::AddApplicationInputResponse

    AddApplicationOutputRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationOutputRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationOutputRequest.add_member(:output, Shapes::ShapeRef.new(shape: Output, required: true, location_name: "Output"))
    AddApplicationOutputRequest.struct_class = Types::AddApplicationOutputRequest

    AddApplicationOutputResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    AddApplicationOutputResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    AddApplicationOutputResponse.add_member(:output_descriptions, Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: "OutputDescriptions"))
    AddApplicationOutputResponse.struct_class = Types::AddApplicationOutputResponse

    AddApplicationReferenceDataSourceRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationReferenceDataSourceRequest.add_member(:reference_data_source, Shapes::ShapeRef.new(shape: ReferenceDataSource, required: true, location_name: "ReferenceDataSource"))
    AddApplicationReferenceDataSourceRequest.struct_class = Types::AddApplicationReferenceDataSourceRequest

    AddApplicationReferenceDataSourceResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    AddApplicationReferenceDataSourceResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    AddApplicationReferenceDataSourceResponse.add_member(:reference_data_source_descriptions, Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: "ReferenceDataSourceDescriptions"))
    AddApplicationReferenceDataSourceResponse.struct_class = Types::AddApplicationReferenceDataSourceResponse

    AddApplicationVpcConfigurationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationVpcConfigurationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationVpcConfigurationRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, required: true, location_name: "VpcConfiguration"))
    AddApplicationVpcConfigurationRequest.struct_class = Types::AddApplicationVpcConfigurationRequest

    AddApplicationVpcConfigurationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    AddApplicationVpcConfigurationResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    AddApplicationVpcConfigurationResponse.add_member(:vpc_configuration_description, Shapes::ShapeRef.new(shape: VpcConfigurationDescription, location_name: "VpcConfigurationDescription"))
    AddApplicationVpcConfigurationResponse.struct_class = Types::AddApplicationVpcConfigurationResponse

    ApplicationCodeConfiguration.add_member(:code_content, Shapes::ShapeRef.new(shape: CodeContent, location_name: "CodeContent"))
    ApplicationCodeConfiguration.add_member(:code_content_type, Shapes::ShapeRef.new(shape: CodeContentType, required: true, location_name: "CodeContentType"))
    ApplicationCodeConfiguration.struct_class = Types::ApplicationCodeConfiguration

    ApplicationCodeConfigurationDescription.add_member(:code_content_type, Shapes::ShapeRef.new(shape: CodeContentType, required: true, location_name: "CodeContentType"))
    ApplicationCodeConfigurationDescription.add_member(:code_content_description, Shapes::ShapeRef.new(shape: CodeContentDescription, location_name: "CodeContentDescription"))
    ApplicationCodeConfigurationDescription.struct_class = Types::ApplicationCodeConfigurationDescription

    ApplicationCodeConfigurationUpdate.add_member(:code_content_type_update, Shapes::ShapeRef.new(shape: CodeContentType, location_name: "CodeContentTypeUpdate"))
    ApplicationCodeConfigurationUpdate.add_member(:code_content_update, Shapes::ShapeRef.new(shape: CodeContentUpdate, location_name: "CodeContentUpdate"))
    ApplicationCodeConfigurationUpdate.struct_class = Types::ApplicationCodeConfigurationUpdate

    ApplicationConfiguration.add_member(:sql_application_configuration, Shapes::ShapeRef.new(shape: SqlApplicationConfiguration, location_name: "SqlApplicationConfiguration"))
    ApplicationConfiguration.add_member(:flink_application_configuration, Shapes::ShapeRef.new(shape: FlinkApplicationConfiguration, location_name: "FlinkApplicationConfiguration"))
    ApplicationConfiguration.add_member(:environment_properties, Shapes::ShapeRef.new(shape: EnvironmentProperties, location_name: "EnvironmentProperties"))
    ApplicationConfiguration.add_member(:application_code_configuration, Shapes::ShapeRef.new(shape: ApplicationCodeConfiguration, required: true, location_name: "ApplicationCodeConfiguration"))
    ApplicationConfiguration.add_member(:application_snapshot_configuration, Shapes::ShapeRef.new(shape: ApplicationSnapshotConfiguration, location_name: "ApplicationSnapshotConfiguration"))
    ApplicationConfiguration.add_member(:vpc_configurations, Shapes::ShapeRef.new(shape: VpcConfigurations, location_name: "VpcConfigurations"))
    ApplicationConfiguration.struct_class = Types::ApplicationConfiguration

    ApplicationConfigurationDescription.add_member(:sql_application_configuration_description, Shapes::ShapeRef.new(shape: SqlApplicationConfigurationDescription, location_name: "SqlApplicationConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:application_code_configuration_description, Shapes::ShapeRef.new(shape: ApplicationCodeConfigurationDescription, location_name: "ApplicationCodeConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:run_configuration_description, Shapes::ShapeRef.new(shape: RunConfigurationDescription, location_name: "RunConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:flink_application_configuration_description, Shapes::ShapeRef.new(shape: FlinkApplicationConfigurationDescription, location_name: "FlinkApplicationConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:environment_property_descriptions, Shapes::ShapeRef.new(shape: EnvironmentPropertyDescriptions, location_name: "EnvironmentPropertyDescriptions"))
    ApplicationConfigurationDescription.add_member(:application_snapshot_configuration_description, Shapes::ShapeRef.new(shape: ApplicationSnapshotConfigurationDescription, location_name: "ApplicationSnapshotConfigurationDescription"))
    ApplicationConfigurationDescription.add_member(:vpc_configuration_descriptions, Shapes::ShapeRef.new(shape: VpcConfigurationDescriptions, location_name: "VpcConfigurationDescriptions"))
    ApplicationConfigurationDescription.struct_class = Types::ApplicationConfigurationDescription

    ApplicationConfigurationUpdate.add_member(:sql_application_configuration_update, Shapes::ShapeRef.new(shape: SqlApplicationConfigurationUpdate, location_name: "SqlApplicationConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:application_code_configuration_update, Shapes::ShapeRef.new(shape: ApplicationCodeConfigurationUpdate, location_name: "ApplicationCodeConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:flink_application_configuration_update, Shapes::ShapeRef.new(shape: FlinkApplicationConfigurationUpdate, location_name: "FlinkApplicationConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:environment_property_updates, Shapes::ShapeRef.new(shape: EnvironmentPropertyUpdates, location_name: "EnvironmentPropertyUpdates"))
    ApplicationConfigurationUpdate.add_member(:application_snapshot_configuration_update, Shapes::ShapeRef.new(shape: ApplicationSnapshotConfigurationUpdate, location_name: "ApplicationSnapshotConfigurationUpdate"))
    ApplicationConfigurationUpdate.add_member(:vpc_configuration_updates, Shapes::ShapeRef.new(shape: VpcConfigurationUpdates, location_name: "VpcConfigurationUpdates"))
    ApplicationConfigurationUpdate.struct_class = Types::ApplicationConfigurationUpdate

    ApplicationDetail.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ApplicationARN"))
    ApplicationDetail.add_member(:application_description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "ApplicationDescription"))
    ApplicationDetail.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    ApplicationDetail.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, required: true, location_name: "RuntimeEnvironment"))
    ApplicationDetail.add_member(:service_execution_role, Shapes::ShapeRef.new(shape: RoleARN, location_name: "ServiceExecutionRole"))
    ApplicationDetail.add_member(:application_status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "ApplicationStatus"))
    ApplicationDetail.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "ApplicationVersionId"))
    ApplicationDetail.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    ApplicationDetail.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
    ApplicationDetail.add_member(:application_configuration_description, Shapes::ShapeRef.new(shape: ApplicationConfigurationDescription, location_name: "ApplicationConfigurationDescription"))
    ApplicationDetail.add_member(:cloud_watch_logging_option_descriptions, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: "CloudWatchLoggingOptionDescriptions"))
    ApplicationDetail.struct_class = Types::ApplicationDetail

    ApplicationRestoreConfiguration.add_member(:application_restore_type, Shapes::ShapeRef.new(shape: ApplicationRestoreType, required: true, location_name: "ApplicationRestoreType"))
    ApplicationRestoreConfiguration.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: SnapshotName, location_name: "SnapshotName"))
    ApplicationRestoreConfiguration.struct_class = Types::ApplicationRestoreConfiguration

    ApplicationSnapshotConfiguration.add_member(:snapshots_enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "SnapshotsEnabled"))
    ApplicationSnapshotConfiguration.struct_class = Types::ApplicationSnapshotConfiguration

    ApplicationSnapshotConfigurationDescription.add_member(:snapshots_enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "SnapshotsEnabled"))
    ApplicationSnapshotConfigurationDescription.struct_class = Types::ApplicationSnapshotConfigurationDescription

    ApplicationSnapshotConfigurationUpdate.add_member(:snapshots_enabled_update, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "SnapshotsEnabledUpdate"))
    ApplicationSnapshotConfigurationUpdate.struct_class = Types::ApplicationSnapshotConfigurationUpdate

    ApplicationSummaries.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    ApplicationSummary.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ApplicationARN"))
    ApplicationSummary.add_member(:application_status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "ApplicationStatus"))
    ApplicationSummary.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "ApplicationVersionId"))
    ApplicationSummary.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, required: true, location_name: "RuntimeEnvironment"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    CSVMappingParameters.add_member(:record_row_delimiter, Shapes::ShapeRef.new(shape: RecordRowDelimiter, required: true, location_name: "RecordRowDelimiter"))
    CSVMappingParameters.add_member(:record_column_delimiter, Shapes::ShapeRef.new(shape: RecordColumnDelimiter, required: true, location_name: "RecordColumnDelimiter"))
    CSVMappingParameters.struct_class = Types::CSVMappingParameters

    CheckpointConfiguration.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationType, required: true, location_name: "ConfigurationType"))
    CheckpointConfiguration.add_member(:checkpointing_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "CheckpointingEnabled"))
    CheckpointConfiguration.add_member(:checkpoint_interval, Shapes::ShapeRef.new(shape: CheckpointInterval, location_name: "CheckpointInterval"))
    CheckpointConfiguration.add_member(:min_pause_between_checkpoints, Shapes::ShapeRef.new(shape: MinPauseBetweenCheckpoints, location_name: "MinPauseBetweenCheckpoints"))
    CheckpointConfiguration.struct_class = Types::CheckpointConfiguration

    CheckpointConfigurationDescription.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationType, location_name: "ConfigurationType"))
    CheckpointConfigurationDescription.add_member(:checkpointing_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "CheckpointingEnabled"))
    CheckpointConfigurationDescription.add_member(:checkpoint_interval, Shapes::ShapeRef.new(shape: CheckpointInterval, location_name: "CheckpointInterval"))
    CheckpointConfigurationDescription.add_member(:min_pause_between_checkpoints, Shapes::ShapeRef.new(shape: MinPauseBetweenCheckpoints, location_name: "MinPauseBetweenCheckpoints"))
    CheckpointConfigurationDescription.struct_class = Types::CheckpointConfigurationDescription

    CheckpointConfigurationUpdate.add_member(:configuration_type_update, Shapes::ShapeRef.new(shape: ConfigurationType, location_name: "ConfigurationTypeUpdate"))
    CheckpointConfigurationUpdate.add_member(:checkpointing_enabled_update, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "CheckpointingEnabledUpdate"))
    CheckpointConfigurationUpdate.add_member(:checkpoint_interval_update, Shapes::ShapeRef.new(shape: CheckpointInterval, location_name: "CheckpointIntervalUpdate"))
    CheckpointConfigurationUpdate.add_member(:min_pause_between_checkpoints_update, Shapes::ShapeRef.new(shape: MinPauseBetweenCheckpoints, location_name: "MinPauseBetweenCheckpointsUpdate"))
    CheckpointConfigurationUpdate.struct_class = Types::CheckpointConfigurationUpdate

    CloudWatchLoggingOption.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: LogStreamARN, required: true, location_name: "LogStreamARN"))
    CloudWatchLoggingOption.struct_class = Types::CloudWatchLoggingOption

    CloudWatchLoggingOptionDescription.add_member(:cloud_watch_logging_option_id, Shapes::ShapeRef.new(shape: Id, location_name: "CloudWatchLoggingOptionId"))
    CloudWatchLoggingOptionDescription.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: LogStreamARN, required: true, location_name: "LogStreamARN"))
    CloudWatchLoggingOptionDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    CloudWatchLoggingOptionDescription.struct_class = Types::CloudWatchLoggingOptionDescription

    CloudWatchLoggingOptionDescriptions.member = Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescription)

    CloudWatchLoggingOptionUpdate.add_member(:cloud_watch_logging_option_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "CloudWatchLoggingOptionId"))
    CloudWatchLoggingOptionUpdate.add_member(:log_stream_arn_update, Shapes::ShapeRef.new(shape: LogStreamARN, location_name: "LogStreamARNUpdate"))
    CloudWatchLoggingOptionUpdate.struct_class = Types::CloudWatchLoggingOptionUpdate

    CloudWatchLoggingOptionUpdates.member = Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdate)

    CloudWatchLoggingOptions.member = Shapes::ShapeRef.new(shape: CloudWatchLoggingOption)

    CodeContent.add_member(:text_content, Shapes::ShapeRef.new(shape: TextContent, location_name: "TextContent"))
    CodeContent.add_member(:zip_file_content, Shapes::ShapeRef.new(shape: ZipFileContent, location_name: "ZipFileContent"))
    CodeContent.add_member(:s3_content_location, Shapes::ShapeRef.new(shape: S3ContentLocation, location_name: "S3ContentLocation"))
    CodeContent.struct_class = Types::CodeContent

    CodeContentDescription.add_member(:text_content, Shapes::ShapeRef.new(shape: TextContent, location_name: "TextContent"))
    CodeContentDescription.add_member(:code_md5, Shapes::ShapeRef.new(shape: CodeMD5, location_name: "CodeMD5"))
    CodeContentDescription.add_member(:code_size, Shapes::ShapeRef.new(shape: CodeSize, location_name: "CodeSize"))
    CodeContentDescription.add_member(:s3_application_code_location_description, Shapes::ShapeRef.new(shape: S3ApplicationCodeLocationDescription, location_name: "S3ApplicationCodeLocationDescription"))
    CodeContentDescription.struct_class = Types::CodeContentDescription

    CodeContentUpdate.add_member(:text_content_update, Shapes::ShapeRef.new(shape: TextContent, location_name: "TextContentUpdate"))
    CodeContentUpdate.add_member(:zip_file_content_update, Shapes::ShapeRef.new(shape: ZipFileContent, location_name: "ZipFileContentUpdate"))
    CodeContentUpdate.add_member(:s3_content_location_update, Shapes::ShapeRef.new(shape: S3ContentLocationUpdate, location_name: "S3ContentLocationUpdate"))
    CodeContentUpdate.struct_class = Types::CodeContentUpdate

    CodeValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CodeValidationException.struct_class = Types::CodeValidationException

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CreateApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateApplicationRequest.add_member(:application_description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "ApplicationDescription"))
    CreateApplicationRequest.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, required: true, location_name: "RuntimeEnvironment"))
    CreateApplicationRequest.add_member(:service_execution_role, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "ServiceExecutionRole"))
    CreateApplicationRequest.add_member(:application_configuration, Shapes::ShapeRef.new(shape: ApplicationConfiguration, location_name: "ApplicationConfiguration"))
    CreateApplicationRequest.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_detail, Shapes::ShapeRef.new(shape: ApplicationDetail, required: true, location_name: "ApplicationDetail"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateApplicationSnapshotRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateApplicationSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "SnapshotName"))
    CreateApplicationSnapshotRequest.struct_class = Types::CreateApplicationSnapshotRequest

    CreateApplicationSnapshotResponse.struct_class = Types::CreateApplicationSnapshotResponse

    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "CloudWatchLoggingOptionId"))
    DeleteApplicationCloudWatchLoggingOptionRequest.struct_class = Types::DeleteApplicationCloudWatchLoggingOptionRequest

    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    DeleteApplicationCloudWatchLoggingOptionResponse.add_member(:cloud_watch_logging_option_descriptions, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: "CloudWatchLoggingOptionDescriptions"))
    DeleteApplicationCloudWatchLoggingOptionResponse.struct_class = Types::DeleteApplicationCloudWatchLoggingOptionResponse

    DeleteApplicationInputProcessingConfigurationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "InputId"))
    DeleteApplicationInputProcessingConfigurationRequest.struct_class = Types::DeleteApplicationInputProcessingConfigurationRequest

    DeleteApplicationInputProcessingConfigurationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    DeleteApplicationInputProcessingConfigurationResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    DeleteApplicationInputProcessingConfigurationResponse.struct_class = Types::DeleteApplicationInputProcessingConfigurationResponse

    DeleteApplicationOutputRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationOutputRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationOutputRequest.add_member(:output_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "OutputId"))
    DeleteApplicationOutputRequest.struct_class = Types::DeleteApplicationOutputRequest

    DeleteApplicationOutputResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    DeleteApplicationOutputResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    DeleteApplicationOutputResponse.struct_class = Types::DeleteApplicationOutputResponse

    DeleteApplicationReferenceDataSourceRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationReferenceDataSourceRequest.add_member(:reference_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ReferenceId"))
    DeleteApplicationReferenceDataSourceRequest.struct_class = Types::DeleteApplicationReferenceDataSourceRequest

    DeleteApplicationReferenceDataSourceResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    DeleteApplicationReferenceDataSourceResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    DeleteApplicationReferenceDataSourceResponse.struct_class = Types::DeleteApplicationReferenceDataSourceResponse

    DeleteApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationRequest.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTimestamp"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteApplicationSnapshotRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "SnapshotName"))
    DeleteApplicationSnapshotRequest.add_member(:snapshot_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SnapshotCreationTimestamp"))
    DeleteApplicationSnapshotRequest.struct_class = Types::DeleteApplicationSnapshotRequest

    DeleteApplicationSnapshotResponse.struct_class = Types::DeleteApplicationSnapshotResponse

    DeleteApplicationVpcConfigurationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationVpcConfigurationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationVpcConfigurationRequest.add_member(:vpc_configuration_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "VpcConfigurationId"))
    DeleteApplicationVpcConfigurationRequest.struct_class = Types::DeleteApplicationVpcConfigurationRequest

    DeleteApplicationVpcConfigurationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ApplicationARN"))
    DeleteApplicationVpcConfigurationResponse.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, location_name: "ApplicationVersionId"))
    DeleteApplicationVpcConfigurationResponse.struct_class = Types::DeleteApplicationVpcConfigurationResponse

    DescribeApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DescribeApplicationRequest.add_member(:include_additional_details, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "IncludeAdditionalDetails"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:application_detail, Shapes::ShapeRef.new(shape: ApplicationDetail, required: true, location_name: "ApplicationDetail"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    DescribeApplicationSnapshotRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DescribeApplicationSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "SnapshotName"))
    DescribeApplicationSnapshotRequest.struct_class = Types::DescribeApplicationSnapshotRequest

    DescribeApplicationSnapshotResponse.add_member(:snapshot_details, Shapes::ShapeRef.new(shape: SnapshotDetails, required: true, location_name: "SnapshotDetails"))
    DescribeApplicationSnapshotResponse.struct_class = Types::DescribeApplicationSnapshotResponse

    DestinationSchema.add_member(:record_format_type, Shapes::ShapeRef.new(shape: RecordFormatType, required: true, location_name: "RecordFormatType"))
    DestinationSchema.struct_class = Types::DestinationSchema

    DiscoverInputSchemaRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    DiscoverInputSchemaRequest.add_member(:service_execution_role, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "ServiceExecutionRole"))
    DiscoverInputSchemaRequest.add_member(:input_starting_position_configuration, Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: "InputStartingPositionConfiguration"))
    DiscoverInputSchemaRequest.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "S3Configuration"))
    DiscoverInputSchemaRequest.add_member(:input_processing_configuration, Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: "InputProcessingConfiguration"))
    DiscoverInputSchemaRequest.struct_class = Types::DiscoverInputSchemaRequest

    DiscoverInputSchemaResponse.add_member(:input_schema, Shapes::ShapeRef.new(shape: SourceSchema, location_name: "InputSchema"))
    DiscoverInputSchemaResponse.add_member(:parsed_input_records, Shapes::ShapeRef.new(shape: ParsedInputRecords, location_name: "ParsedInputRecords"))
    DiscoverInputSchemaResponse.add_member(:processed_input_records, Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: "ProcessedInputRecords"))
    DiscoverInputSchemaResponse.add_member(:raw_input_records, Shapes::ShapeRef.new(shape: RawInputRecords, location_name: "RawInputRecords"))
    DiscoverInputSchemaResponse.struct_class = Types::DiscoverInputSchemaResponse

    EnvironmentProperties.add_member(:property_groups, Shapes::ShapeRef.new(shape: PropertyGroups, required: true, location_name: "PropertyGroups"))
    EnvironmentProperties.struct_class = Types::EnvironmentProperties

    EnvironmentPropertyDescriptions.add_member(:property_group_descriptions, Shapes::ShapeRef.new(shape: PropertyGroups, location_name: "PropertyGroupDescriptions"))
    EnvironmentPropertyDescriptions.struct_class = Types::EnvironmentPropertyDescriptions

    EnvironmentPropertyUpdates.add_member(:property_groups, Shapes::ShapeRef.new(shape: PropertyGroups, required: true, location_name: "PropertyGroups"))
    EnvironmentPropertyUpdates.struct_class = Types::EnvironmentPropertyUpdates

    FlinkApplicationConfiguration.add_member(:checkpoint_configuration, Shapes::ShapeRef.new(shape: CheckpointConfiguration, location_name: "CheckpointConfiguration"))
    FlinkApplicationConfiguration.add_member(:monitoring_configuration, Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: "MonitoringConfiguration"))
    FlinkApplicationConfiguration.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    FlinkApplicationConfiguration.struct_class = Types::FlinkApplicationConfiguration

    FlinkApplicationConfigurationDescription.add_member(:checkpoint_configuration_description, Shapes::ShapeRef.new(shape: CheckpointConfigurationDescription, location_name: "CheckpointConfigurationDescription"))
    FlinkApplicationConfigurationDescription.add_member(:monitoring_configuration_description, Shapes::ShapeRef.new(shape: MonitoringConfigurationDescription, location_name: "MonitoringConfigurationDescription"))
    FlinkApplicationConfigurationDescription.add_member(:parallelism_configuration_description, Shapes::ShapeRef.new(shape: ParallelismConfigurationDescription, location_name: "ParallelismConfigurationDescription"))
    FlinkApplicationConfigurationDescription.add_member(:job_plan_description, Shapes::ShapeRef.new(shape: JobPlanDescription, location_name: "JobPlanDescription"))
    FlinkApplicationConfigurationDescription.struct_class = Types::FlinkApplicationConfigurationDescription

    FlinkApplicationConfigurationUpdate.add_member(:checkpoint_configuration_update, Shapes::ShapeRef.new(shape: CheckpointConfigurationUpdate, location_name: "CheckpointConfigurationUpdate"))
    FlinkApplicationConfigurationUpdate.add_member(:monitoring_configuration_update, Shapes::ShapeRef.new(shape: MonitoringConfigurationUpdate, location_name: "MonitoringConfigurationUpdate"))
    FlinkApplicationConfigurationUpdate.add_member(:parallelism_configuration_update, Shapes::ShapeRef.new(shape: ParallelismConfigurationUpdate, location_name: "ParallelismConfigurationUpdate"))
    FlinkApplicationConfigurationUpdate.struct_class = Types::FlinkApplicationConfigurationUpdate

    FlinkRunConfiguration.add_member(:allow_non_restored_state, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AllowNonRestoredState"))
    FlinkRunConfiguration.struct_class = Types::FlinkRunConfiguration

    InAppStreamNames.member = Shapes::ShapeRef.new(shape: InAppStreamName)

    Input.add_member(:name_prefix, Shapes::ShapeRef.new(shape: InAppStreamName, required: true, location_name: "NamePrefix"))
    Input.add_member(:input_processing_configuration, Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: "InputProcessingConfiguration"))
    Input.add_member(:kinesis_streams_input, Shapes::ShapeRef.new(shape: KinesisStreamsInput, location_name: "KinesisStreamsInput"))
    Input.add_member(:kinesis_firehose_input, Shapes::ShapeRef.new(shape: KinesisFirehoseInput, location_name: "KinesisFirehoseInput"))
    Input.add_member(:input_parallelism, Shapes::ShapeRef.new(shape: InputParallelism, location_name: "InputParallelism"))
    Input.add_member(:input_schema, Shapes::ShapeRef.new(shape: SourceSchema, required: true, location_name: "InputSchema"))
    Input.struct_class = Types::Input

    InputDescription.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, location_name: "InputId"))
    InputDescription.add_member(:name_prefix, Shapes::ShapeRef.new(shape: InAppStreamName, location_name: "NamePrefix"))
    InputDescription.add_member(:in_app_stream_names, Shapes::ShapeRef.new(shape: InAppStreamNames, location_name: "InAppStreamNames"))
    InputDescription.add_member(:input_processing_configuration_description, Shapes::ShapeRef.new(shape: InputProcessingConfigurationDescription, location_name: "InputProcessingConfigurationDescription"))
    InputDescription.add_member(:kinesis_streams_input_description, Shapes::ShapeRef.new(shape: KinesisStreamsInputDescription, location_name: "KinesisStreamsInputDescription"))
    InputDescription.add_member(:kinesis_firehose_input_description, Shapes::ShapeRef.new(shape: KinesisFirehoseInputDescription, location_name: "KinesisFirehoseInputDescription"))
    InputDescription.add_member(:input_schema, Shapes::ShapeRef.new(shape: SourceSchema, location_name: "InputSchema"))
    InputDescription.add_member(:input_parallelism, Shapes::ShapeRef.new(shape: InputParallelism, location_name: "InputParallelism"))
    InputDescription.add_member(:input_starting_position_configuration, Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: "InputStartingPositionConfiguration"))
    InputDescription.struct_class = Types::InputDescription

    InputDescriptions.member = Shapes::ShapeRef.new(shape: InputDescription)

    InputLambdaProcessor.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    InputLambdaProcessor.struct_class = Types::InputLambdaProcessor

    InputLambdaProcessorDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    InputLambdaProcessorDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    InputLambdaProcessorDescription.struct_class = Types::InputLambdaProcessorDescription

    InputLambdaProcessorUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARNUpdate"))
    InputLambdaProcessorUpdate.struct_class = Types::InputLambdaProcessorUpdate

    InputParallelism.add_member(:count, Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: "Count"))
    InputParallelism.struct_class = Types::InputParallelism

    InputParallelismUpdate.add_member(:count_update, Shapes::ShapeRef.new(shape: InputParallelismCount, required: true, location_name: "CountUpdate"))
    InputParallelismUpdate.struct_class = Types::InputParallelismUpdate

    InputProcessingConfiguration.add_member(:input_lambda_processor, Shapes::ShapeRef.new(shape: InputLambdaProcessor, required: true, location_name: "InputLambdaProcessor"))
    InputProcessingConfiguration.struct_class = Types::InputProcessingConfiguration

    InputProcessingConfigurationDescription.add_member(:input_lambda_processor_description, Shapes::ShapeRef.new(shape: InputLambdaProcessorDescription, location_name: "InputLambdaProcessorDescription"))
    InputProcessingConfigurationDescription.struct_class = Types::InputProcessingConfigurationDescription

    InputProcessingConfigurationUpdate.add_member(:input_lambda_processor_update, Shapes::ShapeRef.new(shape: InputLambdaProcessorUpdate, required: true, location_name: "InputLambdaProcessorUpdate"))
    InputProcessingConfigurationUpdate.struct_class = Types::InputProcessingConfigurationUpdate

    InputSchemaUpdate.add_member(:record_format_update, Shapes::ShapeRef.new(shape: RecordFormat, location_name: "RecordFormatUpdate"))
    InputSchemaUpdate.add_member(:record_encoding_update, Shapes::ShapeRef.new(shape: RecordEncoding, location_name: "RecordEncodingUpdate"))
    InputSchemaUpdate.add_member(:record_column_updates, Shapes::ShapeRef.new(shape: RecordColumns, location_name: "RecordColumnUpdates"))
    InputSchemaUpdate.struct_class = Types::InputSchemaUpdate

    InputStartingPositionConfiguration.add_member(:input_starting_position, Shapes::ShapeRef.new(shape: InputStartingPosition, location_name: "InputStartingPosition"))
    InputStartingPositionConfiguration.struct_class = Types::InputStartingPositionConfiguration

    InputUpdate.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "InputId"))
    InputUpdate.add_member(:name_prefix_update, Shapes::ShapeRef.new(shape: InAppStreamName, location_name: "NamePrefixUpdate"))
    InputUpdate.add_member(:input_processing_configuration_update, Shapes::ShapeRef.new(shape: InputProcessingConfigurationUpdate, location_name: "InputProcessingConfigurationUpdate"))
    InputUpdate.add_member(:kinesis_streams_input_update, Shapes::ShapeRef.new(shape: KinesisStreamsInputUpdate, location_name: "KinesisStreamsInputUpdate"))
    InputUpdate.add_member(:kinesis_firehose_input_update, Shapes::ShapeRef.new(shape: KinesisFirehoseInputUpdate, location_name: "KinesisFirehoseInputUpdate"))
    InputUpdate.add_member(:input_schema_update, Shapes::ShapeRef.new(shape: InputSchemaUpdate, location_name: "InputSchemaUpdate"))
    InputUpdate.add_member(:input_parallelism_update, Shapes::ShapeRef.new(shape: InputParallelismUpdate, location_name: "InputParallelismUpdate"))
    InputUpdate.struct_class = Types::InputUpdate

    InputUpdates.member = Shapes::ShapeRef.new(shape: InputUpdate)

    Inputs.member = Shapes::ShapeRef.new(shape: Input)

    InvalidApplicationConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidApplicationConfigurationException.struct_class = Types::InvalidApplicationConfigurationException

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    JSONMappingParameters.add_member(:record_row_path, Shapes::ShapeRef.new(shape: RecordRowPath, required: true, location_name: "RecordRowPath"))
    JSONMappingParameters.struct_class = Types::JSONMappingParameters

    KinesisFirehoseInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisFirehoseInput.struct_class = Types::KinesisFirehoseInput

    KinesisFirehoseInputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisFirehoseInputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisFirehoseInputDescription.struct_class = Types::KinesisFirehoseInputDescription

    KinesisFirehoseInputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARNUpdate"))
    KinesisFirehoseInputUpdate.struct_class = Types::KinesisFirehoseInputUpdate

    KinesisFirehoseOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisFirehoseOutput.struct_class = Types::KinesisFirehoseOutput

    KinesisFirehoseOutputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisFirehoseOutputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisFirehoseOutputDescription.struct_class = Types::KinesisFirehoseOutputDescription

    KinesisFirehoseOutputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARNUpdate"))
    KinesisFirehoseOutputUpdate.struct_class = Types::KinesisFirehoseOutputUpdate

    KinesisStreamsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisStreamsInput.struct_class = Types::KinesisStreamsInput

    KinesisStreamsInputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisStreamsInputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisStreamsInputDescription.struct_class = Types::KinesisStreamsInputDescription

    KinesisStreamsInputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARNUpdate"))
    KinesisStreamsInputUpdate.struct_class = Types::KinesisStreamsInputUpdate

    KinesisStreamsOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisStreamsOutput.struct_class = Types::KinesisStreamsOutput

    KinesisStreamsOutputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisStreamsOutputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisStreamsOutputDescription.struct_class = Types::KinesisStreamsOutputDescription

    KinesisStreamsOutputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARNUpdate"))
    KinesisStreamsOutputUpdate.struct_class = Types::KinesisStreamsOutputUpdate

    LambdaOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    LambdaOutput.struct_class = Types::LambdaOutput

    LambdaOutputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    LambdaOutputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    LambdaOutputDescription.struct_class = Types::LambdaOutputDescription

    LambdaOutputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARNUpdate"))
    LambdaOutputUpdate.struct_class = Types::LambdaOutputUpdate

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListApplicationSnapshotsRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    ListApplicationSnapshotsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListSnapshotsInputLimit, location_name: "Limit"))
    ListApplicationSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationSnapshotsRequest.struct_class = Types::ListApplicationSnapshotsRequest

    ListApplicationSnapshotsResponse.add_member(:snapshot_summaries, Shapes::ShapeRef.new(shape: SnapshotSummaries, location_name: "SnapshotSummaries"))
    ListApplicationSnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationSnapshotsResponse.struct_class = Types::ListApplicationSnapshotsResponse

    ListApplicationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListApplicationsInputLimit, location_name: "Limit"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "NextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_summaries, Shapes::ShapeRef.new(shape: ApplicationSummaries, required: true, location_name: "ApplicationSummaries"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "NextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MappingParameters.add_member(:json_mapping_parameters, Shapes::ShapeRef.new(shape: JSONMappingParameters, location_name: "JSONMappingParameters"))
    MappingParameters.add_member(:csv_mapping_parameters, Shapes::ShapeRef.new(shape: CSVMappingParameters, location_name: "CSVMappingParameters"))
    MappingParameters.struct_class = Types::MappingParameters

    MonitoringConfiguration.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationType, required: true, location_name: "ConfigurationType"))
    MonitoringConfiguration.add_member(:metrics_level, Shapes::ShapeRef.new(shape: MetricsLevel, location_name: "MetricsLevel"))
    MonitoringConfiguration.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    MonitoringConfiguration.struct_class = Types::MonitoringConfiguration

    MonitoringConfigurationDescription.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationType, location_name: "ConfigurationType"))
    MonitoringConfigurationDescription.add_member(:metrics_level, Shapes::ShapeRef.new(shape: MetricsLevel, location_name: "MetricsLevel"))
    MonitoringConfigurationDescription.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    MonitoringConfigurationDescription.struct_class = Types::MonitoringConfigurationDescription

    MonitoringConfigurationUpdate.add_member(:configuration_type_update, Shapes::ShapeRef.new(shape: ConfigurationType, location_name: "ConfigurationTypeUpdate"))
    MonitoringConfigurationUpdate.add_member(:metrics_level_update, Shapes::ShapeRef.new(shape: MetricsLevel, location_name: "MetricsLevelUpdate"))
    MonitoringConfigurationUpdate.add_member(:log_level_update, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevelUpdate"))
    MonitoringConfigurationUpdate.struct_class = Types::MonitoringConfigurationUpdate

    Output.add_member(:name, Shapes::ShapeRef.new(shape: InAppStreamName, required: true, location_name: "Name"))
    Output.add_member(:kinesis_streams_output, Shapes::ShapeRef.new(shape: KinesisStreamsOutput, location_name: "KinesisStreamsOutput"))
    Output.add_member(:kinesis_firehose_output, Shapes::ShapeRef.new(shape: KinesisFirehoseOutput, location_name: "KinesisFirehoseOutput"))
    Output.add_member(:lambda_output, Shapes::ShapeRef.new(shape: LambdaOutput, location_name: "LambdaOutput"))
    Output.add_member(:destination_schema, Shapes::ShapeRef.new(shape: DestinationSchema, required: true, location_name: "DestinationSchema"))
    Output.struct_class = Types::Output

    OutputDescription.add_member(:output_id, Shapes::ShapeRef.new(shape: Id, location_name: "OutputId"))
    OutputDescription.add_member(:name, Shapes::ShapeRef.new(shape: InAppStreamName, location_name: "Name"))
    OutputDescription.add_member(:kinesis_streams_output_description, Shapes::ShapeRef.new(shape: KinesisStreamsOutputDescription, location_name: "KinesisStreamsOutputDescription"))
    OutputDescription.add_member(:kinesis_firehose_output_description, Shapes::ShapeRef.new(shape: KinesisFirehoseOutputDescription, location_name: "KinesisFirehoseOutputDescription"))
    OutputDescription.add_member(:lambda_output_description, Shapes::ShapeRef.new(shape: LambdaOutputDescription, location_name: "LambdaOutputDescription"))
    OutputDescription.add_member(:destination_schema, Shapes::ShapeRef.new(shape: DestinationSchema, location_name: "DestinationSchema"))
    OutputDescription.struct_class = Types::OutputDescription

    OutputDescriptions.member = Shapes::ShapeRef.new(shape: OutputDescription)

    OutputUpdate.add_member(:output_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "OutputId"))
    OutputUpdate.add_member(:name_update, Shapes::ShapeRef.new(shape: InAppStreamName, location_name: "NameUpdate"))
    OutputUpdate.add_member(:kinesis_streams_output_update, Shapes::ShapeRef.new(shape: KinesisStreamsOutputUpdate, location_name: "KinesisStreamsOutputUpdate"))
    OutputUpdate.add_member(:kinesis_firehose_output_update, Shapes::ShapeRef.new(shape: KinesisFirehoseOutputUpdate, location_name: "KinesisFirehoseOutputUpdate"))
    OutputUpdate.add_member(:lambda_output_update, Shapes::ShapeRef.new(shape: LambdaOutputUpdate, location_name: "LambdaOutputUpdate"))
    OutputUpdate.add_member(:destination_schema_update, Shapes::ShapeRef.new(shape: DestinationSchema, location_name: "DestinationSchemaUpdate"))
    OutputUpdate.struct_class = Types::OutputUpdate

    OutputUpdates.member = Shapes::ShapeRef.new(shape: OutputUpdate)

    Outputs.member = Shapes::ShapeRef.new(shape: Output)

    ParallelismConfiguration.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationType, required: true, location_name: "ConfigurationType"))
    ParallelismConfiguration.add_member(:parallelism, Shapes::ShapeRef.new(shape: Parallelism, location_name: "Parallelism"))
    ParallelismConfiguration.add_member(:parallelism_per_kpu, Shapes::ShapeRef.new(shape: ParallelismPerKPU, location_name: "ParallelismPerKPU"))
    ParallelismConfiguration.add_member(:auto_scaling_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingEnabled"))
    ParallelismConfiguration.struct_class = Types::ParallelismConfiguration

    ParallelismConfigurationDescription.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationType, location_name: "ConfigurationType"))
    ParallelismConfigurationDescription.add_member(:parallelism, Shapes::ShapeRef.new(shape: Parallelism, location_name: "Parallelism"))
    ParallelismConfigurationDescription.add_member(:parallelism_per_kpu, Shapes::ShapeRef.new(shape: ParallelismPerKPU, location_name: "ParallelismPerKPU"))
    ParallelismConfigurationDescription.add_member(:current_parallelism, Shapes::ShapeRef.new(shape: Parallelism, location_name: "CurrentParallelism"))
    ParallelismConfigurationDescription.add_member(:auto_scaling_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingEnabled"))
    ParallelismConfigurationDescription.struct_class = Types::ParallelismConfigurationDescription

    ParallelismConfigurationUpdate.add_member(:configuration_type_update, Shapes::ShapeRef.new(shape: ConfigurationType, location_name: "ConfigurationTypeUpdate"))
    ParallelismConfigurationUpdate.add_member(:parallelism_update, Shapes::ShapeRef.new(shape: Parallelism, location_name: "ParallelismUpdate"))
    ParallelismConfigurationUpdate.add_member(:parallelism_per_kpu_update, Shapes::ShapeRef.new(shape: ParallelismPerKPU, location_name: "ParallelismPerKPUUpdate"))
    ParallelismConfigurationUpdate.add_member(:auto_scaling_enabled_update, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingEnabledUpdate"))
    ParallelismConfigurationUpdate.struct_class = Types::ParallelismConfigurationUpdate

    ParsedInputRecord.member = Shapes::ShapeRef.new(shape: ParsedInputRecordField)

    ParsedInputRecords.member = Shapes::ShapeRef.new(shape: ParsedInputRecord)

    ProcessedInputRecords.member = Shapes::ShapeRef.new(shape: ProcessedInputRecord)

    PropertyGroup.add_member(:property_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PropertyGroupId"))
    PropertyGroup.add_member(:property_map, Shapes::ShapeRef.new(shape: PropertyMap, required: true, location_name: "PropertyMap"))
    PropertyGroup.struct_class = Types::PropertyGroup

    PropertyGroups.member = Shapes::ShapeRef.new(shape: PropertyGroup)

    PropertyMap.key = Shapes::ShapeRef.new(shape: PropertyKey)
    PropertyMap.value = Shapes::ShapeRef.new(shape: PropertyValue)

    RawInputRecords.member = Shapes::ShapeRef.new(shape: RawInputRecord)

    RecordColumn.add_member(:name, Shapes::ShapeRef.new(shape: RecordColumnName, required: true, location_name: "Name"))
    RecordColumn.add_member(:mapping, Shapes::ShapeRef.new(shape: RecordColumnMapping, location_name: "Mapping"))
    RecordColumn.add_member(:sql_type, Shapes::ShapeRef.new(shape: RecordColumnSqlType, required: true, location_name: "SqlType"))
    RecordColumn.struct_class = Types::RecordColumn

    RecordColumns.member = Shapes::ShapeRef.new(shape: RecordColumn)

    RecordFormat.add_member(:record_format_type, Shapes::ShapeRef.new(shape: RecordFormatType, required: true, location_name: "RecordFormatType"))
    RecordFormat.add_member(:mapping_parameters, Shapes::ShapeRef.new(shape: MappingParameters, location_name: "MappingParameters"))
    RecordFormat.struct_class = Types::RecordFormat

    ReferenceDataSource.add_member(:table_name, Shapes::ShapeRef.new(shape: InAppTableName, required: true, location_name: "TableName"))
    ReferenceDataSource.add_member(:s3_reference_data_source, Shapes::ShapeRef.new(shape: S3ReferenceDataSource, location_name: "S3ReferenceDataSource"))
    ReferenceDataSource.add_member(:reference_schema, Shapes::ShapeRef.new(shape: SourceSchema, required: true, location_name: "ReferenceSchema"))
    ReferenceDataSource.struct_class = Types::ReferenceDataSource

    ReferenceDataSourceDescription.add_member(:reference_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ReferenceId"))
    ReferenceDataSourceDescription.add_member(:table_name, Shapes::ShapeRef.new(shape: InAppTableName, required: true, location_name: "TableName"))
    ReferenceDataSourceDescription.add_member(:s3_reference_data_source_description, Shapes::ShapeRef.new(shape: S3ReferenceDataSourceDescription, required: true, location_name: "S3ReferenceDataSourceDescription"))
    ReferenceDataSourceDescription.add_member(:reference_schema, Shapes::ShapeRef.new(shape: SourceSchema, location_name: "ReferenceSchema"))
    ReferenceDataSourceDescription.struct_class = Types::ReferenceDataSourceDescription

    ReferenceDataSourceDescriptions.member = Shapes::ShapeRef.new(shape: ReferenceDataSourceDescription)

    ReferenceDataSourceUpdate.add_member(:reference_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ReferenceId"))
    ReferenceDataSourceUpdate.add_member(:table_name_update, Shapes::ShapeRef.new(shape: InAppTableName, location_name: "TableNameUpdate"))
    ReferenceDataSourceUpdate.add_member(:s3_reference_data_source_update, Shapes::ShapeRef.new(shape: S3ReferenceDataSourceUpdate, location_name: "S3ReferenceDataSourceUpdate"))
    ReferenceDataSourceUpdate.add_member(:reference_schema_update, Shapes::ShapeRef.new(shape: SourceSchema, location_name: "ReferenceSchemaUpdate"))
    ReferenceDataSourceUpdate.struct_class = Types::ReferenceDataSourceUpdate

    ReferenceDataSourceUpdates.member = Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdate)

    ReferenceDataSources.member = Shapes::ShapeRef.new(shape: ReferenceDataSource)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceProvisionedThroughputExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceProvisionedThroughputExceededException.struct_class = Types::ResourceProvisionedThroughputExceededException

    RunConfiguration.add_member(:flink_run_configuration, Shapes::ShapeRef.new(shape: FlinkRunConfiguration, location_name: "FlinkRunConfiguration"))
    RunConfiguration.add_member(:sql_run_configurations, Shapes::ShapeRef.new(shape: SqlRunConfigurations, location_name: "SqlRunConfigurations"))
    RunConfiguration.add_member(:application_restore_configuration, Shapes::ShapeRef.new(shape: ApplicationRestoreConfiguration, location_name: "ApplicationRestoreConfiguration"))
    RunConfiguration.struct_class = Types::RunConfiguration

    RunConfigurationDescription.add_member(:application_restore_configuration_description, Shapes::ShapeRef.new(shape: ApplicationRestoreConfiguration, location_name: "ApplicationRestoreConfigurationDescription"))
    RunConfigurationDescription.add_member(:flink_run_configuration_description, Shapes::ShapeRef.new(shape: FlinkRunConfiguration, location_name: "FlinkRunConfigurationDescription"))
    RunConfigurationDescription.struct_class = Types::RunConfigurationDescription

    RunConfigurationUpdate.add_member(:flink_run_configuration, Shapes::ShapeRef.new(shape: FlinkRunConfiguration, location_name: "FlinkRunConfiguration"))
    RunConfigurationUpdate.add_member(:application_restore_configuration, Shapes::ShapeRef.new(shape: ApplicationRestoreConfiguration, location_name: "ApplicationRestoreConfiguration"))
    RunConfigurationUpdate.struct_class = Types::RunConfigurationUpdate

    S3ApplicationCodeLocationDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3ApplicationCodeLocationDescription.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3ApplicationCodeLocationDescription.add_member(:object_version, Shapes::ShapeRef.new(shape: ObjectVersion, location_name: "ObjectVersion"))
    S3ApplicationCodeLocationDescription.struct_class = Types::S3ApplicationCodeLocationDescription

    S3Configuration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3Configuration.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3Configuration.struct_class = Types::S3Configuration

    S3ContentLocation.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3ContentLocation.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3ContentLocation.add_member(:object_version, Shapes::ShapeRef.new(shape: ObjectVersion, location_name: "ObjectVersion"))
    S3ContentLocation.struct_class = Types::S3ContentLocation

    S3ContentLocationUpdate.add_member(:bucket_arn_update, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARNUpdate"))
    S3ContentLocationUpdate.add_member(:file_key_update, Shapes::ShapeRef.new(shape: FileKey, location_name: "FileKeyUpdate"))
    S3ContentLocationUpdate.add_member(:object_version_update, Shapes::ShapeRef.new(shape: ObjectVersion, location_name: "ObjectVersionUpdate"))
    S3ContentLocationUpdate.struct_class = Types::S3ContentLocationUpdate

    S3ReferenceDataSource.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARN"))
    S3ReferenceDataSource.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, location_name: "FileKey"))
    S3ReferenceDataSource.struct_class = Types::S3ReferenceDataSource

    S3ReferenceDataSourceDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3ReferenceDataSourceDescription.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3ReferenceDataSourceDescription.add_member(:reference_role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "ReferenceRoleARN"))
    S3ReferenceDataSourceDescription.struct_class = Types::S3ReferenceDataSourceDescription

    S3ReferenceDataSourceUpdate.add_member(:bucket_arn_update, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARNUpdate"))
    S3ReferenceDataSourceUpdate.add_member(:file_key_update, Shapes::ShapeRef.new(shape: FileKey, location_name: "FileKeyUpdate"))
    S3ReferenceDataSourceUpdate.struct_class = Types::S3ReferenceDataSourceUpdate

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SnapshotDetails.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "SnapshotName"))
    SnapshotDetails.add_member(:snapshot_status, Shapes::ShapeRef.new(shape: SnapshotStatus, required: true, location_name: "SnapshotStatus"))
    SnapshotDetails.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "ApplicationVersionId"))
    SnapshotDetails.add_member(:snapshot_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SnapshotCreationTimestamp"))
    SnapshotDetails.struct_class = Types::SnapshotDetails

    SnapshotSummaries.member = Shapes::ShapeRef.new(shape: SnapshotDetails)

    SourceSchema.add_member(:record_format, Shapes::ShapeRef.new(shape: RecordFormat, required: true, location_name: "RecordFormat"))
    SourceSchema.add_member(:record_encoding, Shapes::ShapeRef.new(shape: RecordEncoding, location_name: "RecordEncoding"))
    SourceSchema.add_member(:record_columns, Shapes::ShapeRef.new(shape: RecordColumns, required: true, location_name: "RecordColumns"))
    SourceSchema.struct_class = Types::SourceSchema

    SqlApplicationConfiguration.add_member(:inputs, Shapes::ShapeRef.new(shape: Inputs, location_name: "Inputs"))
    SqlApplicationConfiguration.add_member(:outputs, Shapes::ShapeRef.new(shape: Outputs, location_name: "Outputs"))
    SqlApplicationConfiguration.add_member(:reference_data_sources, Shapes::ShapeRef.new(shape: ReferenceDataSources, location_name: "ReferenceDataSources"))
    SqlApplicationConfiguration.struct_class = Types::SqlApplicationConfiguration

    SqlApplicationConfigurationDescription.add_member(:input_descriptions, Shapes::ShapeRef.new(shape: InputDescriptions, location_name: "InputDescriptions"))
    SqlApplicationConfigurationDescription.add_member(:output_descriptions, Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: "OutputDescriptions"))
    SqlApplicationConfigurationDescription.add_member(:reference_data_source_descriptions, Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: "ReferenceDataSourceDescriptions"))
    SqlApplicationConfigurationDescription.struct_class = Types::SqlApplicationConfigurationDescription

    SqlApplicationConfigurationUpdate.add_member(:input_updates, Shapes::ShapeRef.new(shape: InputUpdates, location_name: "InputUpdates"))
    SqlApplicationConfigurationUpdate.add_member(:output_updates, Shapes::ShapeRef.new(shape: OutputUpdates, location_name: "OutputUpdates"))
    SqlApplicationConfigurationUpdate.add_member(:reference_data_source_updates, Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdates, location_name: "ReferenceDataSourceUpdates"))
    SqlApplicationConfigurationUpdate.struct_class = Types::SqlApplicationConfigurationUpdate

    SqlRunConfiguration.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "InputId"))
    SqlRunConfiguration.add_member(:input_starting_position_configuration, Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, required: true, location_name: "InputStartingPositionConfiguration"))
    SqlRunConfiguration.struct_class = Types::SqlRunConfiguration

    SqlRunConfigurations.member = Shapes::ShapeRef.new(shape: SqlRunConfiguration)

    StartApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    StartApplicationRequest.add_member(:run_configuration, Shapes::ShapeRef.new(shape: RunConfiguration, required: true, location_name: "RunConfiguration"))
    StartApplicationRequest.struct_class = Types::StartApplicationRequest

    StartApplicationResponse.struct_class = Types::StartApplicationResponse

    StopApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    StopApplicationRequest.add_member(:force, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Force"))
    StopApplicationRequest.struct_class = Types::StopApplicationRequest

    StopApplicationResponse.struct_class = Types::StopApplicationResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UnableToDetectSchemaException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnableToDetectSchemaException.add_member(:raw_input_records, Shapes::ShapeRef.new(shape: RawInputRecords, location_name: "RawInputRecords"))
    UnableToDetectSchemaException.add_member(:processed_input_records, Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: "ProcessedInputRecords"))
    UnableToDetectSchemaException.struct_class = Types::UnableToDetectSchemaException

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: KinesisAnalyticsARN, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    UpdateApplicationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    UpdateApplicationRequest.add_member(:application_configuration_update, Shapes::ShapeRef.new(shape: ApplicationConfigurationUpdate, location_name: "ApplicationConfigurationUpdate"))
    UpdateApplicationRequest.add_member(:service_execution_role_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "ServiceExecutionRoleUpdate"))
    UpdateApplicationRequest.add_member(:run_configuration_update, Shapes::ShapeRef.new(shape: RunConfigurationUpdate, location_name: "RunConfigurationUpdate"))
    UpdateApplicationRequest.add_member(:cloud_watch_logging_option_updates, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdates, location_name: "CloudWatchLoggingOptionUpdates"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application_detail, Shapes::ShapeRef.new(shape: ApplicationDetail, required: true, location_name: "ApplicationDetail"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    VpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    VpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfiguration.struct_class = Types::VpcConfiguration

    VpcConfigurationDescription.add_member(:vpc_configuration_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "VpcConfigurationId"))
    VpcConfigurationDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    VpcConfigurationDescription.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    VpcConfigurationDescription.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfigurationDescription.struct_class = Types::VpcConfigurationDescription

    VpcConfigurationDescriptions.member = Shapes::ShapeRef.new(shape: VpcConfigurationDescription)

    VpcConfigurationUpdate.add_member(:vpc_configuration_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "VpcConfigurationId"))
    VpcConfigurationUpdate.add_member(:subnet_id_updates, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIdUpdates"))
    VpcConfigurationUpdate.add_member(:security_group_id_updates, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIdUpdates"))
    VpcConfigurationUpdate.struct_class = Types::VpcConfigurationUpdate

    VpcConfigurationUpdates.member = Shapes::ShapeRef.new(shape: VpcConfigurationUpdate)

    VpcConfigurations.member = Shapes::ShapeRef.new(shape: VpcConfiguration)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-23"

      api.metadata = {
        "apiVersion" => "2018-05-23",
        "endpointPrefix" => "kinesisanalytics",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Kinesis Analytics V2",
        "serviceFullName" => "Amazon Kinesis Analytics",
        "serviceId" => "Kinesis Analytics V2",
        "signatureVersion" => "v4",
        "signingName" => "kinesisanalytics",
        "targetPrefix" => "KinesisAnalytics_20180523",
        "uid" => "kinesisanalyticsv2-2018-05-23",
      }

      api.add_operation(:add_application_cloud_watch_logging_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddApplicationCloudWatchLoggingOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionRequest)
        o.output = Shapes::ShapeRef.new(shape: AddApplicationCloudWatchLoggingOptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)

      api.add_operation(:add_application_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddApplicationInput"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddApplicationInputRequest)
        o.output = Shapes::ShapeRef.new(shape: AddApplicationInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: CodeValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:add_application_input_processing_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddApplicationInputProcessingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: AddApplicationInputProcessingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:add_application_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddApplicationOutput"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddApplicationOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: AddApplicationOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:add_application_reference_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddApplicationReferenceDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddApplicationReferenceDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:add_application_vpc_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddApplicationVpcConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddApplicationVpcConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: AddApplicationVpcConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: CodeValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_application_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplicationSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)

      api.add_operation(:delete_application_cloud_watch_logging_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationCloudWatchLoggingOption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationCloudWatchLoggingOptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)

      api.add_operation(:delete_application_input_processing_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationInputProcessingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationInputProcessingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_application_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationOutput"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_application_reference_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationReferenceDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationReferenceDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_application_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_application_vpc_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationVpcConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationVpcConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationVpcConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_application_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:discover_input_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DiscoverInputSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DiscoverInputSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: DiscoverInputSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: UnableToDetectSchemaException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_application_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationSnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:start_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:stop_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: CodeValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationConfigurationException)
      end)
    end

  end
end
