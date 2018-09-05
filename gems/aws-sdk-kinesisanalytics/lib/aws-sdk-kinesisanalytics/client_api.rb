# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisAnalytics
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
    ApplicationCode = Shapes::StringShape.new(name: 'ApplicationCode')
    ApplicationDescription = Shapes::StringShape.new(name: 'ApplicationDescription')
    ApplicationDetail = Shapes::StructureShape.new(name: 'ApplicationDetail')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationSummaries = Shapes::ListShape.new(name: 'ApplicationSummaries')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationUpdate = Shapes::StructureShape.new(name: 'ApplicationUpdate')
    ApplicationVersionId = Shapes::IntegerShape.new(name: 'ApplicationVersionId')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BucketARN = Shapes::StringShape.new(name: 'BucketARN')
    CSVMappingParameters = Shapes::StructureShape.new(name: 'CSVMappingParameters')
    CloudWatchLoggingOption = Shapes::StructureShape.new(name: 'CloudWatchLoggingOption')
    CloudWatchLoggingOptionDescription = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptionDescription')
    CloudWatchLoggingOptionDescriptions = Shapes::ListShape.new(name: 'CloudWatchLoggingOptionDescriptions')
    CloudWatchLoggingOptionUpdate = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptionUpdate')
    CloudWatchLoggingOptionUpdates = Shapes::ListShape.new(name: 'CloudWatchLoggingOptionUpdates')
    CloudWatchLoggingOptions = Shapes::ListShape.new(name: 'CloudWatchLoggingOptions')
    CodeValidationException = Shapes::StructureShape.new(name: 'CodeValidationException')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
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
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    DestinationSchema = Shapes::StructureShape.new(name: 'DestinationSchema')
    DiscoverInputSchemaRequest = Shapes::StructureShape.new(name: 'DiscoverInputSchemaRequest')
    DiscoverInputSchemaResponse = Shapes::StructureShape.new(name: 'DiscoverInputSchemaResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileKey = Shapes::StringShape.new(name: 'FileKey')
    Id = Shapes::StringShape.new(name: 'Id')
    InAppStreamName = Shapes::StringShape.new(name: 'InAppStreamName')
    InAppStreamNames = Shapes::ListShape.new(name: 'InAppStreamNames')
    InAppTableName = Shapes::StringShape.new(name: 'InAppTableName')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    InputConfigurations = Shapes::ListShape.new(name: 'InputConfigurations')
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
    JSONMappingParameters = Shapes::StructureShape.new(name: 'JSONMappingParameters')
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
    ListApplicationsInputLimit = Shapes::IntegerShape.new(name: 'ListApplicationsInputLimit')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    LogStreamARN = Shapes::StringShape.new(name: 'LogStreamARN')
    MappingParameters = Shapes::StructureShape.new(name: 'MappingParameters')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputDescription = Shapes::StructureShape.new(name: 'OutputDescription')
    OutputDescriptions = Shapes::ListShape.new(name: 'OutputDescriptions')
    OutputUpdate = Shapes::StructureShape.new(name: 'OutputUpdate')
    OutputUpdates = Shapes::ListShape.new(name: 'OutputUpdates')
    Outputs = Shapes::ListShape.new(name: 'Outputs')
    ParsedInputRecord = Shapes::ListShape.new(name: 'ParsedInputRecord')
    ParsedInputRecordField = Shapes::StringShape.new(name: 'ParsedInputRecordField')
    ParsedInputRecords = Shapes::ListShape.new(name: 'ParsedInputRecords')
    ProcessedInputRecord = Shapes::StringShape.new(name: 'ProcessedInputRecord')
    ProcessedInputRecords = Shapes::ListShape.new(name: 'ProcessedInputRecords')
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
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ResourceProvisionedThroughputExceededException')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3ReferenceDataSource = Shapes::StructureShape.new(name: 'S3ReferenceDataSource')
    S3ReferenceDataSourceDescription = Shapes::StructureShape.new(name: 'S3ReferenceDataSourceDescription')
    S3ReferenceDataSourceUpdate = Shapes::StructureShape.new(name: 'S3ReferenceDataSourceUpdate')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SourceSchema = Shapes::StructureShape.new(name: 'SourceSchema')
    StartApplicationRequest = Shapes::StructureShape.new(name: 'StartApplicationRequest')
    StartApplicationResponse = Shapes::StructureShape.new(name: 'StartApplicationResponse')
    StopApplicationRequest = Shapes::StructureShape.new(name: 'StopApplicationRequest')
    StopApplicationResponse = Shapes::StructureShape.new(name: 'StopApplicationResponse')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnableToDetectSchemaException = Shapes::StructureShape.new(name: 'UnableToDetectSchemaException')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')

    AddApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option, Shapes::ShapeRef.new(shape: CloudWatchLoggingOption, required: true, location_name: "CloudWatchLoggingOption"))
    AddApplicationCloudWatchLoggingOptionRequest.struct_class = Types::AddApplicationCloudWatchLoggingOptionRequest

    AddApplicationCloudWatchLoggingOptionResponse.struct_class = Types::AddApplicationCloudWatchLoggingOptionResponse

    AddApplicationInputProcessingConfigurationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "InputId"))
    AddApplicationInputProcessingConfigurationRequest.add_member(:input_processing_configuration, Shapes::ShapeRef.new(shape: InputProcessingConfiguration, required: true, location_name: "InputProcessingConfiguration"))
    AddApplicationInputProcessingConfigurationRequest.struct_class = Types::AddApplicationInputProcessingConfigurationRequest

    AddApplicationInputProcessingConfigurationResponse.struct_class = Types::AddApplicationInputProcessingConfigurationResponse

    AddApplicationInputRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationInputRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationInputRequest.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "Input"))
    AddApplicationInputRequest.struct_class = Types::AddApplicationInputRequest

    AddApplicationInputResponse.struct_class = Types::AddApplicationInputResponse

    AddApplicationOutputRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationOutputRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationOutputRequest.add_member(:output, Shapes::ShapeRef.new(shape: Output, required: true, location_name: "Output"))
    AddApplicationOutputRequest.struct_class = Types::AddApplicationOutputRequest

    AddApplicationOutputResponse.struct_class = Types::AddApplicationOutputResponse

    AddApplicationReferenceDataSourceRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    AddApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    AddApplicationReferenceDataSourceRequest.add_member(:reference_data_source, Shapes::ShapeRef.new(shape: ReferenceDataSource, required: true, location_name: "ReferenceDataSource"))
    AddApplicationReferenceDataSourceRequest.struct_class = Types::AddApplicationReferenceDataSourceRequest

    AddApplicationReferenceDataSourceResponse.struct_class = Types::AddApplicationReferenceDataSourceResponse

    ApplicationDetail.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    ApplicationDetail.add_member(:application_description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "ApplicationDescription"))
    ApplicationDetail.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ApplicationARN"))
    ApplicationDetail.add_member(:application_status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "ApplicationStatus"))
    ApplicationDetail.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    ApplicationDetail.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
    ApplicationDetail.add_member(:input_descriptions, Shapes::ShapeRef.new(shape: InputDescriptions, location_name: "InputDescriptions"))
    ApplicationDetail.add_member(:output_descriptions, Shapes::ShapeRef.new(shape: OutputDescriptions, location_name: "OutputDescriptions"))
    ApplicationDetail.add_member(:reference_data_source_descriptions, Shapes::ShapeRef.new(shape: ReferenceDataSourceDescriptions, location_name: "ReferenceDataSourceDescriptions"))
    ApplicationDetail.add_member(:cloud_watch_logging_option_descriptions, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescriptions, location_name: "CloudWatchLoggingOptionDescriptions"))
    ApplicationDetail.add_member(:application_code, Shapes::ShapeRef.new(shape: ApplicationCode, location_name: "ApplicationCode"))
    ApplicationDetail.add_member(:application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "ApplicationVersionId"))
    ApplicationDetail.struct_class = Types::ApplicationDetail

    ApplicationSummaries.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    ApplicationSummary.add_member(:application_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ApplicationARN"))
    ApplicationSummary.add_member(:application_status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "ApplicationStatus"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationUpdate.add_member(:input_updates, Shapes::ShapeRef.new(shape: InputUpdates, location_name: "InputUpdates"))
    ApplicationUpdate.add_member(:application_code_update, Shapes::ShapeRef.new(shape: ApplicationCode, location_name: "ApplicationCodeUpdate"))
    ApplicationUpdate.add_member(:output_updates, Shapes::ShapeRef.new(shape: OutputUpdates, location_name: "OutputUpdates"))
    ApplicationUpdate.add_member(:reference_data_source_updates, Shapes::ShapeRef.new(shape: ReferenceDataSourceUpdates, location_name: "ReferenceDataSourceUpdates"))
    ApplicationUpdate.add_member(:cloud_watch_logging_option_updates, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdates, location_name: "CloudWatchLoggingOptionUpdates"))
    ApplicationUpdate.struct_class = Types::ApplicationUpdate

    CSVMappingParameters.add_member(:record_row_delimiter, Shapes::ShapeRef.new(shape: RecordRowDelimiter, required: true, location_name: "RecordRowDelimiter"))
    CSVMappingParameters.add_member(:record_column_delimiter, Shapes::ShapeRef.new(shape: RecordColumnDelimiter, required: true, location_name: "RecordColumnDelimiter"))
    CSVMappingParameters.struct_class = Types::CSVMappingParameters

    CloudWatchLoggingOption.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: LogStreamARN, required: true, location_name: "LogStreamARN"))
    CloudWatchLoggingOption.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    CloudWatchLoggingOption.struct_class = Types::CloudWatchLoggingOption

    CloudWatchLoggingOptionDescription.add_member(:cloud_watch_logging_option_id, Shapes::ShapeRef.new(shape: Id, location_name: "CloudWatchLoggingOptionId"))
    CloudWatchLoggingOptionDescription.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: LogStreamARN, required: true, location_name: "LogStreamARN"))
    CloudWatchLoggingOptionDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    CloudWatchLoggingOptionDescription.struct_class = Types::CloudWatchLoggingOptionDescription

    CloudWatchLoggingOptionDescriptions.member = Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionDescription)

    CloudWatchLoggingOptionUpdate.add_member(:cloud_watch_logging_option_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "CloudWatchLoggingOptionId"))
    CloudWatchLoggingOptionUpdate.add_member(:log_stream_arn_update, Shapes::ShapeRef.new(shape: LogStreamARN, location_name: "LogStreamARNUpdate"))
    CloudWatchLoggingOptionUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    CloudWatchLoggingOptionUpdate.struct_class = Types::CloudWatchLoggingOptionUpdate

    CloudWatchLoggingOptionUpdates.member = Shapes::ShapeRef.new(shape: CloudWatchLoggingOptionUpdate)

    CloudWatchLoggingOptions.member = Shapes::ShapeRef.new(shape: CloudWatchLoggingOption)

    CreateApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateApplicationRequest.add_member(:application_description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "ApplicationDescription"))
    CreateApplicationRequest.add_member(:inputs, Shapes::ShapeRef.new(shape: Inputs, location_name: "Inputs"))
    CreateApplicationRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: Outputs, location_name: "Outputs"))
    CreateApplicationRequest.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    CreateApplicationRequest.add_member(:application_code, Shapes::ShapeRef.new(shape: ApplicationCode, location_name: "ApplicationCode"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_summary, Shapes::ShapeRef.new(shape: ApplicationSummary, required: true, location_name: "ApplicationSummary"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationCloudWatchLoggingOptionRequest.add_member(:cloud_watch_logging_option_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "CloudWatchLoggingOptionId"))
    DeleteApplicationCloudWatchLoggingOptionRequest.struct_class = Types::DeleteApplicationCloudWatchLoggingOptionRequest

    DeleteApplicationCloudWatchLoggingOptionResponse.struct_class = Types::DeleteApplicationCloudWatchLoggingOptionResponse

    DeleteApplicationInputProcessingConfigurationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationInputProcessingConfigurationRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "InputId"))
    DeleteApplicationInputProcessingConfigurationRequest.struct_class = Types::DeleteApplicationInputProcessingConfigurationRequest

    DeleteApplicationInputProcessingConfigurationResponse.struct_class = Types::DeleteApplicationInputProcessingConfigurationResponse

    DeleteApplicationOutputRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationOutputRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationOutputRequest.add_member(:output_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "OutputId"))
    DeleteApplicationOutputRequest.struct_class = Types::DeleteApplicationOutputRequest

    DeleteApplicationOutputResponse.struct_class = Types::DeleteApplicationOutputResponse

    DeleteApplicationReferenceDataSourceRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationReferenceDataSourceRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    DeleteApplicationReferenceDataSourceRequest.add_member(:reference_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ReferenceId"))
    DeleteApplicationReferenceDataSourceRequest.struct_class = Types::DeleteApplicationReferenceDataSourceRequest

    DeleteApplicationReferenceDataSourceResponse.struct_class = Types::DeleteApplicationReferenceDataSourceResponse

    DeleteApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationRequest.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTimestamp"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DescribeApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:application_detail, Shapes::ShapeRef.new(shape: ApplicationDetail, required: true, location_name: "ApplicationDetail"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    DestinationSchema.add_member(:record_format_type, Shapes::ShapeRef.new(shape: RecordFormatType, location_name: "RecordFormatType"))
    DestinationSchema.struct_class = Types::DestinationSchema

    DiscoverInputSchemaRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    DiscoverInputSchemaRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    DiscoverInputSchemaRequest.add_member(:input_starting_position_configuration, Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, location_name: "InputStartingPositionConfiguration"))
    DiscoverInputSchemaRequest.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "S3Configuration"))
    DiscoverInputSchemaRequest.add_member(:input_processing_configuration, Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: "InputProcessingConfiguration"))
    DiscoverInputSchemaRequest.struct_class = Types::DiscoverInputSchemaRequest

    DiscoverInputSchemaResponse.add_member(:input_schema, Shapes::ShapeRef.new(shape: SourceSchema, location_name: "InputSchema"))
    DiscoverInputSchemaResponse.add_member(:parsed_input_records, Shapes::ShapeRef.new(shape: ParsedInputRecords, location_name: "ParsedInputRecords"))
    DiscoverInputSchemaResponse.add_member(:processed_input_records, Shapes::ShapeRef.new(shape: ProcessedInputRecords, location_name: "ProcessedInputRecords"))
    DiscoverInputSchemaResponse.add_member(:raw_input_records, Shapes::ShapeRef.new(shape: RawInputRecords, location_name: "RawInputRecords"))
    DiscoverInputSchemaResponse.struct_class = Types::DiscoverInputSchemaResponse

    InAppStreamNames.member = Shapes::ShapeRef.new(shape: InAppStreamName)

    Input.add_member(:name_prefix, Shapes::ShapeRef.new(shape: InAppStreamName, required: true, location_name: "NamePrefix"))
    Input.add_member(:input_processing_configuration, Shapes::ShapeRef.new(shape: InputProcessingConfiguration, location_name: "InputProcessingConfiguration"))
    Input.add_member(:kinesis_streams_input, Shapes::ShapeRef.new(shape: KinesisStreamsInput, location_name: "KinesisStreamsInput"))
    Input.add_member(:kinesis_firehose_input, Shapes::ShapeRef.new(shape: KinesisFirehoseInput, location_name: "KinesisFirehoseInput"))
    Input.add_member(:input_parallelism, Shapes::ShapeRef.new(shape: InputParallelism, location_name: "InputParallelism"))
    Input.add_member(:input_schema, Shapes::ShapeRef.new(shape: SourceSchema, required: true, location_name: "InputSchema"))
    Input.struct_class = Types::Input

    InputConfiguration.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    InputConfiguration.add_member(:input_starting_position_configuration, Shapes::ShapeRef.new(shape: InputStartingPositionConfiguration, required: true, location_name: "InputStartingPositionConfiguration"))
    InputConfiguration.struct_class = Types::InputConfiguration

    InputConfigurations.member = Shapes::ShapeRef.new(shape: InputConfiguration)

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
    InputLambdaProcessor.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    InputLambdaProcessor.struct_class = Types::InputLambdaProcessor

    InputLambdaProcessorDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    InputLambdaProcessorDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    InputLambdaProcessorDescription.struct_class = Types::InputLambdaProcessorDescription

    InputLambdaProcessorUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARNUpdate"))
    InputLambdaProcessorUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    InputLambdaProcessorUpdate.struct_class = Types::InputLambdaProcessorUpdate

    InputParallelism.add_member(:count, Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: "Count"))
    InputParallelism.struct_class = Types::InputParallelism

    InputParallelismUpdate.add_member(:count_update, Shapes::ShapeRef.new(shape: InputParallelismCount, location_name: "CountUpdate"))
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

    JSONMappingParameters.add_member(:record_row_path, Shapes::ShapeRef.new(shape: RecordRowPath, required: true, location_name: "RecordRowPath"))
    JSONMappingParameters.struct_class = Types::JSONMappingParameters

    KinesisFirehoseInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisFirehoseInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    KinesisFirehoseInput.struct_class = Types::KinesisFirehoseInput

    KinesisFirehoseInputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    KinesisFirehoseInputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisFirehoseInputDescription.struct_class = Types::KinesisFirehoseInputDescription

    KinesisFirehoseInputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARNUpdate"))
    KinesisFirehoseInputUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    KinesisFirehoseInputUpdate.struct_class = Types::KinesisFirehoseInputUpdate

    KinesisFirehoseOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisFirehoseOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    KinesisFirehoseOutput.struct_class = Types::KinesisFirehoseOutput

    KinesisFirehoseOutputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    KinesisFirehoseOutputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisFirehoseOutputDescription.struct_class = Types::KinesisFirehoseOutputDescription

    KinesisFirehoseOutputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARNUpdate"))
    KinesisFirehoseOutputUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    KinesisFirehoseOutputUpdate.struct_class = Types::KinesisFirehoseOutputUpdate

    KinesisStreamsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisStreamsInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    KinesisStreamsInput.struct_class = Types::KinesisStreamsInput

    KinesisStreamsInputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    KinesisStreamsInputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisStreamsInputDescription.struct_class = Types::KinesisStreamsInputDescription

    KinesisStreamsInputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARNUpdate"))
    KinesisStreamsInputUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    KinesisStreamsInputUpdate.struct_class = Types::KinesisStreamsInputUpdate

    KinesisStreamsOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    KinesisStreamsOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    KinesisStreamsOutput.struct_class = Types::KinesisStreamsOutput

    KinesisStreamsOutputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    KinesisStreamsOutputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisStreamsOutputDescription.struct_class = Types::KinesisStreamsOutputDescription

    KinesisStreamsOutputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARNUpdate"))
    KinesisStreamsOutputUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    KinesisStreamsOutputUpdate.struct_class = Types::KinesisStreamsOutputUpdate

    LambdaOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    LambdaOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    LambdaOutput.struct_class = Types::LambdaOutput

    LambdaOutputDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    LambdaOutputDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    LambdaOutputDescription.struct_class = Types::LambdaOutputDescription

    LambdaOutputUpdate.add_member(:resource_arn_update, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARNUpdate"))
    LambdaOutputUpdate.add_member(:role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARNUpdate"))
    LambdaOutputUpdate.struct_class = Types::LambdaOutputUpdate

    ListApplicationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListApplicationsInputLimit, location_name: "Limit"))
    ListApplicationsRequest.add_member(:exclusive_start_application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ExclusiveStartApplicationName"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_summaries, Shapes::ShapeRef.new(shape: ApplicationSummaries, required: true, location_name: "ApplicationSummaries"))
    ListApplicationsResponse.add_member(:has_more_applications, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreApplications"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    MappingParameters.add_member(:json_mapping_parameters, Shapes::ShapeRef.new(shape: JSONMappingParameters, location_name: "JSONMappingParameters"))
    MappingParameters.add_member(:csv_mapping_parameters, Shapes::ShapeRef.new(shape: CSVMappingParameters, location_name: "CSVMappingParameters"))
    MappingParameters.struct_class = Types::MappingParameters

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

    ParsedInputRecord.member = Shapes::ShapeRef.new(shape: ParsedInputRecordField)

    ParsedInputRecords.member = Shapes::ShapeRef.new(shape: ParsedInputRecord)

    ProcessedInputRecords.member = Shapes::ShapeRef.new(shape: ProcessedInputRecord)

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

    S3Configuration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    S3Configuration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3Configuration.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3Configuration.struct_class = Types::S3Configuration

    S3ReferenceDataSource.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3ReferenceDataSource.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3ReferenceDataSource.add_member(:reference_role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "ReferenceRoleARN"))
    S3ReferenceDataSource.struct_class = Types::S3ReferenceDataSource

    S3ReferenceDataSourceDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3ReferenceDataSourceDescription.add_member(:file_key, Shapes::ShapeRef.new(shape: FileKey, required: true, location_name: "FileKey"))
    S3ReferenceDataSourceDescription.add_member(:reference_role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "ReferenceRoleARN"))
    S3ReferenceDataSourceDescription.struct_class = Types::S3ReferenceDataSourceDescription

    S3ReferenceDataSourceUpdate.add_member(:bucket_arn_update, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARNUpdate"))
    S3ReferenceDataSourceUpdate.add_member(:file_key_update, Shapes::ShapeRef.new(shape: FileKey, location_name: "FileKeyUpdate"))
    S3ReferenceDataSourceUpdate.add_member(:reference_role_arn_update, Shapes::ShapeRef.new(shape: RoleARN, location_name: "ReferenceRoleARNUpdate"))
    S3ReferenceDataSourceUpdate.struct_class = Types::S3ReferenceDataSourceUpdate

    SourceSchema.add_member(:record_format, Shapes::ShapeRef.new(shape: RecordFormat, required: true, location_name: "RecordFormat"))
    SourceSchema.add_member(:record_encoding, Shapes::ShapeRef.new(shape: RecordEncoding, location_name: "RecordEncoding"))
    SourceSchema.add_member(:record_columns, Shapes::ShapeRef.new(shape: RecordColumns, required: true, location_name: "RecordColumns"))
    SourceSchema.struct_class = Types::SourceSchema

    StartApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    StartApplicationRequest.add_member(:input_configurations, Shapes::ShapeRef.new(shape: InputConfigurations, required: true, location_name: "InputConfigurations"))
    StartApplicationRequest.struct_class = Types::StartApplicationRequest

    StartApplicationResponse.struct_class = Types::StartApplicationResponse

    StopApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    StopApplicationRequest.struct_class = Types::StopApplicationRequest

    StopApplicationResponse.struct_class = Types::StopApplicationResponse

    UpdateApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    UpdateApplicationRequest.add_member(:current_application_version_id, Shapes::ShapeRef.new(shape: ApplicationVersionId, required: true, location_name: "CurrentApplicationVersionId"))
    UpdateApplicationRequest.add_member(:application_update, Shapes::ShapeRef.new(shape: ApplicationUpdate, required: true, location_name: "ApplicationUpdate"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-08-14"

      api.metadata = {
        "apiVersion" => "2015-08-14",
        "endpointPrefix" => "kinesisanalytics",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Kinesis Analytics",
        "serviceFullName" => "Amazon Kinesis Analytics",
        "serviceId" => "Kinesis Analytics",
        "signatureVersion" => "v4",
        "targetPrefix" => "KinesisAnalytics_20150814",
        "timestampFormat" => "unixTimestamp",
        "uid" => "kinesisanalytics-2015-08-14",
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
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
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
      end)

      api.add_operation(:stop_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
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
      end)
    end

  end
end
