# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamWrite
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    BatchLoadDataFormat = Shapes::StringShape.new(name: 'BatchLoadDataFormat')
    BatchLoadProgressReport = Shapes::StructureShape.new(name: 'BatchLoadProgressReport')
    BatchLoadStatus = Shapes::StringShape.new(name: 'BatchLoadStatus')
    BatchLoadTask = Shapes::StructureShape.new(name: 'BatchLoadTask')
    BatchLoadTaskDescription = Shapes::StructureShape.new(name: 'BatchLoadTaskDescription')
    BatchLoadTaskId = Shapes::StringShape.new(name: 'BatchLoadTaskId')
    BatchLoadTaskList = Shapes::ListShape.new(name: 'BatchLoadTaskList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBatchLoadTaskRequest = Shapes::StructureShape.new(name: 'CreateBatchLoadTaskRequest')
    CreateBatchLoadTaskResponse = Shapes::StructureShape.new(name: 'CreateBatchLoadTaskResponse')
    CreateDatabaseRequest = Shapes::StructureShape.new(name: 'CreateDatabaseRequest')
    CreateDatabaseResponse = Shapes::StructureShape.new(name: 'CreateDatabaseResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    CsvConfiguration = Shapes::StructureShape.new(name: 'CsvConfiguration')
    DataModel = Shapes::StructureShape.new(name: 'DataModel')
    DataModelConfiguration = Shapes::StructureShape.new(name: 'DataModelConfiguration')
    DataModelS3Configuration = Shapes::StructureShape.new(name: 'DataModelS3Configuration')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceS3Configuration = Shapes::StructureShape.new(name: 'DataSourceS3Configuration')
    Database = Shapes::StructureShape.new(name: 'Database')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteDatabaseRequest = Shapes::StructureShape.new(name: 'DeleteDatabaseRequest')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    DescribeBatchLoadTaskRequest = Shapes::StructureShape.new(name: 'DescribeBatchLoadTaskRequest')
    DescribeBatchLoadTaskResponse = Shapes::StructureShape.new(name: 'DescribeBatchLoadTaskResponse')
    DescribeDatabaseRequest = Shapes::StructureShape.new(name: 'DescribeDatabaseRequest')
    DescribeDatabaseResponse = Shapes::StructureShape.new(name: 'DescribeDatabaseResponse')
    DescribeEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DescribeTableRequest = Shapes::StructureShape.new(name: 'DescribeTableRequest')
    DescribeTableResponse = Shapes::StructureShape.new(name: 'DescribeTableResponse')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionMapping = Shapes::StructureShape.new(name: 'DimensionMapping')
    DimensionMappings = Shapes::ListShape.new(name: 'DimensionMappings')
    DimensionValueType = Shapes::StringShape.new(name: 'DimensionValueType')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidEndpointException = Shapes::StructureShape.new(name: 'InvalidEndpointException')
    ListBatchLoadTasksRequest = Shapes::StructureShape.new(name: 'ListBatchLoadTasksRequest')
    ListBatchLoadTasksResponse = Shapes::StructureShape.new(name: 'ListBatchLoadTasksResponse')
    ListDatabasesRequest = Shapes::StructureShape.new(name: 'ListDatabasesRequest')
    ListDatabasesResponse = Shapes::StructureShape.new(name: 'ListDatabasesResponse')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MagneticStoreRejectedDataLocation = Shapes::StructureShape.new(name: 'MagneticStoreRejectedDataLocation')
    MagneticStoreRetentionPeriodInDays = Shapes::IntegerShape.new(name: 'MagneticStoreRetentionPeriodInDays')
    MagneticStoreWriteProperties = Shapes::StructureShape.new(name: 'MagneticStoreWriteProperties')
    MeasureValue = Shapes::StructureShape.new(name: 'MeasureValue')
    MeasureValueType = Shapes::StringShape.new(name: 'MeasureValueType')
    MeasureValues = Shapes::ListShape.new(name: 'MeasureValues')
    MemoryStoreRetentionPeriodInHours = Shapes::IntegerShape.new(name: 'MemoryStoreRetentionPeriodInHours')
    MixedMeasureMapping = Shapes::StructureShape.new(name: 'MixedMeasureMapping')
    MixedMeasureMappingList = Shapes::ListShape.new(name: 'MixedMeasureMappingList')
    MultiMeasureAttributeMapping = Shapes::StructureShape.new(name: 'MultiMeasureAttributeMapping')
    MultiMeasureAttributeMappingList = Shapes::ListShape.new(name: 'MultiMeasureAttributeMappingList')
    MultiMeasureMappings = Shapes::StructureShape.new(name: 'MultiMeasureMappings')
    PageLimit = Shapes::IntegerShape.new(name: 'PageLimit')
    PaginationLimit = Shapes::IntegerShape.new(name: 'PaginationLimit')
    PartitionKey = Shapes::StructureShape.new(name: 'PartitionKey')
    PartitionKeyEnforcementLevel = Shapes::StringShape.new(name: 'PartitionKeyEnforcementLevel')
    PartitionKeyList = Shapes::ListShape.new(name: 'PartitionKeyList')
    PartitionKeyType = Shapes::StringShape.new(name: 'PartitionKeyType')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordIndex = Shapes::IntegerShape.new(name: 'RecordIndex')
    RecordVersion = Shapes::IntegerShape.new(name: 'RecordVersion')
    Records = Shapes::ListShape.new(name: 'Records')
    RecordsIngested = Shapes::StructureShape.new(name: 'RecordsIngested')
    RejectedRecord = Shapes::StructureShape.new(name: 'RejectedRecord')
    RejectedRecords = Shapes::ListShape.new(name: 'RejectedRecords')
    RejectedRecordsException = Shapes::StructureShape.new(name: 'RejectedRecordsException')
    ReportConfiguration = Shapes::StructureShape.new(name: 'ReportConfiguration')
    ReportS3Configuration = Shapes::StructureShape.new(name: 'ReportS3Configuration')
    ResourceCreateAPIName = Shapes::StringShape.new(name: 'ResourceCreateAPIName')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResumeBatchLoadTaskRequest = Shapes::StructureShape.new(name: 'ResumeBatchLoadTaskRequest')
    ResumeBatchLoadTaskResponse = Shapes::StructureShape.new(name: 'ResumeBatchLoadTaskResponse')
    RetentionProperties = Shapes::StructureShape.new(name: 'RetentionProperties')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3EncryptionOption = Shapes::StringShape.new(name: 'S3EncryptionOption')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3ObjectKeyPrefix = Shapes::StringShape.new(name: 'S3ObjectKeyPrefix')
    ScalarMeasureValueType = Shapes::StringShape.new(name: 'ScalarMeasureValueType')
    Schema = Shapes::StructureShape.new(name: 'Schema')
    SchemaName = Shapes::StringShape.new(name: 'SchemaName')
    SchemaValue = Shapes::StringShape.new(name: 'SchemaValue')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    StringValue1 = Shapes::StringShape.new(name: 'StringValue1')
    StringValue2048 = Shapes::StringShape.new(name: 'StringValue2048')
    StringValue256 = Shapes::StringShape.new(name: 'StringValue256')
    Table = Shapes::StructureShape.new(name: 'Table')
    TableList = Shapes::ListShape.new(name: 'TableList')
    TableStatus = Shapes::StringShape.new(name: 'TableStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeUnit = Shapes::StringShape.new(name: 'TimeUnit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDatabaseRequest = Shapes::StructureShape.new(name: 'UpdateDatabaseRequest')
    UpdateDatabaseResponse = Shapes::StructureShape.new(name: 'UpdateDatabaseResponse')
    UpdateTableRequest = Shapes::StructureShape.new(name: 'UpdateTableRequest')
    UpdateTableResponse = Shapes::StructureShape.new(name: 'UpdateTableResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WriteRecordsRequest = Shapes::StructureShape.new(name: 'WriteRecordsRequest')
    WriteRecordsResponse = Shapes::StructureShape.new(name: 'WriteRecordsResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BatchLoadProgressReport.add_member(:records_processed, Shapes::ShapeRef.new(shape: Long, location_name: "RecordsProcessed"))
    BatchLoadProgressReport.add_member(:records_ingested, Shapes::ShapeRef.new(shape: Long, location_name: "RecordsIngested"))
    BatchLoadProgressReport.add_member(:parse_failures, Shapes::ShapeRef.new(shape: Long, location_name: "ParseFailures"))
    BatchLoadProgressReport.add_member(:record_ingestion_failures, Shapes::ShapeRef.new(shape: Long, location_name: "RecordIngestionFailures"))
    BatchLoadProgressReport.add_member(:file_failures, Shapes::ShapeRef.new(shape: Long, location_name: "FileFailures"))
    BatchLoadProgressReport.add_member(:bytes_metered, Shapes::ShapeRef.new(shape: Long, location_name: "BytesMetered"))
    BatchLoadProgressReport.struct_class = Types::BatchLoadProgressReport

    BatchLoadTask.add_member(:task_id, Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: "TaskId"))
    BatchLoadTask.add_member(:task_status, Shapes::ShapeRef.new(shape: BatchLoadStatus, location_name: "TaskStatus"))
    BatchLoadTask.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    BatchLoadTask.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    BatchLoadTask.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    BatchLoadTask.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    BatchLoadTask.add_member(:resumable_until, Shapes::ShapeRef.new(shape: Date, location_name: "ResumableUntil"))
    BatchLoadTask.struct_class = Types::BatchLoadTask

    BatchLoadTaskDescription.add_member(:task_id, Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: "TaskId"))
    BatchLoadTaskDescription.add_member(:error_message, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "ErrorMessage"))
    BatchLoadTaskDescription.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "DataSourceConfiguration"))
    BatchLoadTaskDescription.add_member(:progress_report, Shapes::ShapeRef.new(shape: BatchLoadProgressReport, location_name: "ProgressReport"))
    BatchLoadTaskDescription.add_member(:report_configuration, Shapes::ShapeRef.new(shape: ReportConfiguration, location_name: "ReportConfiguration"))
    BatchLoadTaskDescription.add_member(:data_model_configuration, Shapes::ShapeRef.new(shape: DataModelConfiguration, location_name: "DataModelConfiguration"))
    BatchLoadTaskDescription.add_member(:target_database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TargetDatabaseName"))
    BatchLoadTaskDescription.add_member(:target_table_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TargetTableName"))
    BatchLoadTaskDescription.add_member(:task_status, Shapes::ShapeRef.new(shape: BatchLoadStatus, location_name: "TaskStatus"))
    BatchLoadTaskDescription.add_member(:record_version, Shapes::ShapeRef.new(shape: RecordVersion, location_name: "RecordVersion"))
    BatchLoadTaskDescription.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    BatchLoadTaskDescription.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    BatchLoadTaskDescription.add_member(:resumable_until, Shapes::ShapeRef.new(shape: Date, location_name: "ResumableUntil"))
    BatchLoadTaskDescription.struct_class = Types::BatchLoadTaskDescription

    BatchLoadTaskList.member = Shapes::ShapeRef.new(shape: BatchLoadTask)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateBatchLoadTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateBatchLoadTaskRequest.add_member(:data_model_configuration, Shapes::ShapeRef.new(shape: DataModelConfiguration, location_name: "DataModelConfiguration"))
    CreateBatchLoadTaskRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "DataSourceConfiguration"))
    CreateBatchLoadTaskRequest.add_member(:report_configuration, Shapes::ShapeRef.new(shape: ReportConfiguration, required: true, location_name: "ReportConfiguration"))
    CreateBatchLoadTaskRequest.add_member(:target_database_name, Shapes::ShapeRef.new(shape: ResourceCreateAPIName, required: true, location_name: "TargetDatabaseName"))
    CreateBatchLoadTaskRequest.add_member(:target_table_name, Shapes::ShapeRef.new(shape: ResourceCreateAPIName, required: true, location_name: "TargetTableName"))
    CreateBatchLoadTaskRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RecordVersion, location_name: "RecordVersion", metadata: {"box"=>true}))
    CreateBatchLoadTaskRequest.struct_class = Types::CreateBatchLoadTaskRequest

    CreateBatchLoadTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: BatchLoadTaskId, required: true, location_name: "TaskId"))
    CreateBatchLoadTaskResponse.struct_class = Types::CreateBatchLoadTaskResponse

    CreateDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceCreateAPIName, required: true, location_name: "DatabaseName"))
    CreateDatabaseRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    CreateDatabaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDatabaseRequest.struct_class = Types::CreateDatabaseRequest

    CreateDatabaseResponse.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    CreateDatabaseResponse.struct_class = Types::CreateDatabaseResponse

    CreateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceCreateAPIName, required: true, location_name: "DatabaseName"))
    CreateTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceCreateAPIName, required: true, location_name: "TableName"))
    CreateTableRequest.add_member(:retention_properties, Shapes::ShapeRef.new(shape: RetentionProperties, location_name: "RetentionProperties"))
    CreateTableRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTableRequest.add_member(:magnetic_store_write_properties, Shapes::ShapeRef.new(shape: MagneticStoreWriteProperties, location_name: "MagneticStoreWriteProperties"))
    CreateTableRequest.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, location_name: "Schema"))
    CreateTableRequest.struct_class = Types::CreateTableRequest

    CreateTableResponse.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    CreateTableResponse.struct_class = Types::CreateTableResponse

    CsvConfiguration.add_member(:column_separator, Shapes::ShapeRef.new(shape: StringValue1, location_name: "ColumnSeparator"))
    CsvConfiguration.add_member(:escape_char, Shapes::ShapeRef.new(shape: StringValue1, location_name: "EscapeChar"))
    CsvConfiguration.add_member(:quote_char, Shapes::ShapeRef.new(shape: StringValue1, location_name: "QuoteChar"))
    CsvConfiguration.add_member(:null_value, Shapes::ShapeRef.new(shape: StringValue256, location_name: "NullValue"))
    CsvConfiguration.add_member(:trim_white_space, Shapes::ShapeRef.new(shape: Boolean, location_name: "TrimWhiteSpace"))
    CsvConfiguration.struct_class = Types::CsvConfiguration

    DataModel.add_member(:time_column, Shapes::ShapeRef.new(shape: StringValue256, location_name: "TimeColumn"))
    DataModel.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, location_name: "TimeUnit"))
    DataModel.add_member(:dimension_mappings, Shapes::ShapeRef.new(shape: DimensionMappings, required: true, location_name: "DimensionMappings"))
    DataModel.add_member(:multi_measure_mappings, Shapes::ShapeRef.new(shape: MultiMeasureMappings, location_name: "MultiMeasureMappings"))
    DataModel.add_member(:mixed_measure_mappings, Shapes::ShapeRef.new(shape: MixedMeasureMappingList, location_name: "MixedMeasureMappings"))
    DataModel.add_member(:measure_name_column, Shapes::ShapeRef.new(shape: StringValue256, location_name: "MeasureNameColumn"))
    DataModel.struct_class = Types::DataModel

    DataModelConfiguration.add_member(:data_model, Shapes::ShapeRef.new(shape: DataModel, location_name: "DataModel"))
    DataModelConfiguration.add_member(:data_model_s3_configuration, Shapes::ShapeRef.new(shape: DataModelS3Configuration, location_name: "DataModelS3Configuration"))
    DataModelConfiguration.struct_class = Types::DataModelConfiguration

    DataModelS3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "BucketName"))
    DataModelS3Configuration.add_member(:object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "ObjectKey"))
    DataModelS3Configuration.struct_class = Types::DataModelS3Configuration

    DataSourceConfiguration.add_member(:data_source_s3_configuration, Shapes::ShapeRef.new(shape: DataSourceS3Configuration, required: true, location_name: "DataSourceS3Configuration"))
    DataSourceConfiguration.add_member(:csv_configuration, Shapes::ShapeRef.new(shape: CsvConfiguration, location_name: "CsvConfiguration"))
    DataSourceConfiguration.add_member(:data_format, Shapes::ShapeRef.new(shape: BatchLoadDataFormat, required: true, location_name: "DataFormat"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DataSourceS3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "BucketName"))
    DataSourceS3Configuration.add_member(:object_key_prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "ObjectKeyPrefix"))
    DataSourceS3Configuration.struct_class = Types::DataSourceS3Configuration

    Database.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Database.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    Database.add_member(:table_count, Shapes::ShapeRef.new(shape: Long, location_name: "TableCount"))
    Database.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    Database.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    Database.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    Database.struct_class = Types::Database

    DatabaseList.member = Shapes::ShapeRef.new(shape: Database)

    DeleteDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    DeleteDatabaseRequest.struct_class = Types::DeleteDatabaseRequest

    DeleteTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    DeleteTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TableName"))
    DeleteTableRequest.struct_class = Types::DeleteTableRequest

    DescribeBatchLoadTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: BatchLoadTaskId, required: true, location_name: "TaskId"))
    DescribeBatchLoadTaskRequest.struct_class = Types::DescribeBatchLoadTaskRequest

    DescribeBatchLoadTaskResponse.add_member(:batch_load_task_description, Shapes::ShapeRef.new(shape: BatchLoadTaskDescription, required: true, location_name: "BatchLoadTaskDescription"))
    DescribeBatchLoadTaskResponse.struct_class = Types::DescribeBatchLoadTaskResponse

    DescribeDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    DescribeDatabaseRequest.struct_class = Types::DescribeDatabaseRequest

    DescribeDatabaseResponse.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    DescribeDatabaseResponse.struct_class = Types::DescribeDatabaseResponse

    DescribeEndpointsRequest.struct_class = Types::DescribeEndpointsRequest

    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, required: true, location_name: "Endpoints"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    DescribeTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    DescribeTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TableName"))
    DescribeTableRequest.struct_class = Types::DescribeTableRequest

    DescribeTableResponse.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    DescribeTableResponse.struct_class = Types::DescribeTableResponse

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "Name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: SchemaValue, required: true, location_name: "Value"))
    Dimension.add_member(:dimension_value_type, Shapes::ShapeRef.new(shape: DimensionValueType, location_name: "DimensionValueType"))
    Dimension.struct_class = Types::Dimension

    DimensionMapping.add_member(:source_column, Shapes::ShapeRef.new(shape: SchemaName, location_name: "SourceColumn"))
    DimensionMapping.add_member(:destination_column, Shapes::ShapeRef.new(shape: SchemaName, location_name: "DestinationColumn"))
    DimensionMapping.struct_class = Types::DimensionMapping

    DimensionMappings.member = Shapes::ShapeRef.new(shape: DimensionMapping)

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Address"))
    Endpoint.add_member(:cache_period_in_minutes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "CachePeriodInMinutes"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidEndpointException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidEndpointException.struct_class = Types::InvalidEndpointException

    ListBatchLoadTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListBatchLoadTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageLimit, location_name: "MaxResults"))
    ListBatchLoadTasksRequest.add_member(:task_status, Shapes::ShapeRef.new(shape: BatchLoadStatus, location_name: "TaskStatus"))
    ListBatchLoadTasksRequest.struct_class = Types::ListBatchLoadTasksRequest

    ListBatchLoadTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListBatchLoadTasksResponse.add_member(:batch_load_tasks, Shapes::ShapeRef.new(shape: BatchLoadTaskList, location_name: "BatchLoadTasks"))
    ListBatchLoadTasksResponse.struct_class = Types::ListBatchLoadTasksResponse

    ListDatabasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDatabasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "MaxResults"))
    ListDatabasesRequest.struct_class = Types::ListDatabasesRequest

    ListDatabasesResponse.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseList, location_name: "Databases"))
    ListDatabasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDatabasesResponse.struct_class = Types::ListDatabasesResponse

    ListTablesRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    ListTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "MaxResults"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResponse.add_member(:tables, Shapes::ShapeRef.new(shape: TableList, location_name: "Tables"))
    ListTablesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTablesResponse.struct_class = Types::ListTablesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MagneticStoreRejectedDataLocation.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "S3Configuration"))
    MagneticStoreRejectedDataLocation.struct_class = Types::MagneticStoreRejectedDataLocation

    MagneticStoreWriteProperties.add_member(:enable_magnetic_store_writes, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EnableMagneticStoreWrites"))
    MagneticStoreWriteProperties.add_member(:magnetic_store_rejected_data_location, Shapes::ShapeRef.new(shape: MagneticStoreRejectedDataLocation, location_name: "MagneticStoreRejectedDataLocation"))
    MagneticStoreWriteProperties.struct_class = Types::MagneticStoreWriteProperties

    MeasureValue.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "Name"))
    MeasureValue.add_member(:value, Shapes::ShapeRef.new(shape: StringValue2048, required: true, location_name: "Value"))
    MeasureValue.add_member(:type, Shapes::ShapeRef.new(shape: MeasureValueType, required: true, location_name: "Type"))
    MeasureValue.struct_class = Types::MeasureValue

    MeasureValues.member = Shapes::ShapeRef.new(shape: MeasureValue)

    MixedMeasureMapping.add_member(:measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "MeasureName"))
    MixedMeasureMapping.add_member(:source_column, Shapes::ShapeRef.new(shape: SchemaName, location_name: "SourceColumn"))
    MixedMeasureMapping.add_member(:target_measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMeasureName"))
    MixedMeasureMapping.add_member(:measure_value_type, Shapes::ShapeRef.new(shape: MeasureValueType, required: true, location_name: "MeasureValueType"))
    MixedMeasureMapping.add_member(:multi_measure_attribute_mappings, Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: "MultiMeasureAttributeMappings"))
    MixedMeasureMapping.struct_class = Types::MixedMeasureMapping

    MixedMeasureMappingList.member = Shapes::ShapeRef.new(shape: MixedMeasureMapping)

    MultiMeasureAttributeMapping.add_member(:source_column, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "SourceColumn"))
    MultiMeasureAttributeMapping.add_member(:target_multi_measure_attribute_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMultiMeasureAttributeName"))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, Shapes::ShapeRef.new(shape: ScalarMeasureValueType, location_name: "MeasureValueType"))
    MultiMeasureAttributeMapping.struct_class = Types::MultiMeasureAttributeMapping

    MultiMeasureAttributeMappingList.member = Shapes::ShapeRef.new(shape: MultiMeasureAttributeMapping)

    MultiMeasureMappings.add_member(:target_multi_measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "TargetMultiMeasureName"))
    MultiMeasureMappings.add_member(:multi_measure_attribute_mappings, Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, required: true, location_name: "MultiMeasureAttributeMappings"))
    MultiMeasureMappings.struct_class = Types::MultiMeasureMappings

    PartitionKey.add_member(:type, Shapes::ShapeRef.new(shape: PartitionKeyType, required: true, location_name: "Type"))
    PartitionKey.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "Name"))
    PartitionKey.add_member(:enforcement_in_record, Shapes::ShapeRef.new(shape: PartitionKeyEnforcementLevel, location_name: "EnforcementInRecord"))
    PartitionKey.struct_class = Types::PartitionKey

    PartitionKeyList.member = Shapes::ShapeRef.new(shape: PartitionKey)

    Record.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    Record.add_member(:measure_name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "MeasureName"))
    Record.add_member(:measure_value, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "MeasureValue"))
    Record.add_member(:measure_value_type, Shapes::ShapeRef.new(shape: MeasureValueType, location_name: "MeasureValueType"))
    Record.add_member(:time, Shapes::ShapeRef.new(shape: StringValue256, location_name: "Time"))
    Record.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, location_name: "TimeUnit"))
    Record.add_member(:version, Shapes::ShapeRef.new(shape: RecordVersion, location_name: "Version", metadata: {"box"=>true}))
    Record.add_member(:measure_values, Shapes::ShapeRef.new(shape: MeasureValues, location_name: "MeasureValues"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    RecordsIngested.add_member(:total, Shapes::ShapeRef.new(shape: Integer, location_name: "Total"))
    RecordsIngested.add_member(:memory_store, Shapes::ShapeRef.new(shape: Integer, location_name: "MemoryStore"))
    RecordsIngested.add_member(:magnetic_store, Shapes::ShapeRef.new(shape: Integer, location_name: "MagneticStore"))
    RecordsIngested.struct_class = Types::RecordsIngested

    RejectedRecord.add_member(:record_index, Shapes::ShapeRef.new(shape: RecordIndex, location_name: "RecordIndex"))
    RejectedRecord.add_member(:reason, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Reason"))
    RejectedRecord.add_member(:existing_version, Shapes::ShapeRef.new(shape: RecordVersion, location_name: "ExistingVersion", metadata: {"box"=>true}))
    RejectedRecord.struct_class = Types::RejectedRecord

    RejectedRecords.member = Shapes::ShapeRef.new(shape: RejectedRecord)

    RejectedRecordsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RejectedRecordsException.add_member(:rejected_records, Shapes::ShapeRef.new(shape: RejectedRecords, location_name: "RejectedRecords"))
    RejectedRecordsException.struct_class = Types::RejectedRecordsException

    ReportConfiguration.add_member(:report_s3_configuration, Shapes::ShapeRef.new(shape: ReportS3Configuration, location_name: "ReportS3Configuration"))
    ReportConfiguration.struct_class = Types::ReportConfiguration

    ReportS3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "BucketName"))
    ReportS3Configuration.add_member(:object_key_prefix, Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: "ObjectKeyPrefix"))
    ReportS3Configuration.add_member(:encryption_option, Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: "EncryptionOption"))
    ReportS3Configuration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    ReportS3Configuration.struct_class = Types::ReportS3Configuration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResumeBatchLoadTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: BatchLoadTaskId, required: true, location_name: "TaskId"))
    ResumeBatchLoadTaskRequest.struct_class = Types::ResumeBatchLoadTaskRequest

    ResumeBatchLoadTaskResponse.struct_class = Types::ResumeBatchLoadTaskResponse

    RetentionProperties.add_member(:memory_store_retention_period_in_hours, Shapes::ShapeRef.new(shape: MemoryStoreRetentionPeriodInHours, required: true, location_name: "MemoryStoreRetentionPeriodInHours"))
    RetentionProperties.add_member(:magnetic_store_retention_period_in_days, Shapes::ShapeRef.new(shape: MagneticStoreRetentionPeriodInDays, required: true, location_name: "MagneticStoreRetentionPeriodInDays"))
    RetentionProperties.struct_class = Types::RetentionProperties

    S3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "BucketName"))
    S3Configuration.add_member(:object_key_prefix, Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: "ObjectKeyPrefix"))
    S3Configuration.add_member(:encryption_option, Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: "EncryptionOption"))
    S3Configuration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    S3Configuration.struct_class = Types::S3Configuration

    Schema.add_member(:composite_partition_key, Shapes::ShapeRef.new(shape: PartitionKeyList, location_name: "CompositePartitionKey"))
    Schema.struct_class = Types::Schema

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Table.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Table.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    Table.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    Table.add_member(:table_status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    Table.add_member(:retention_properties, Shapes::ShapeRef.new(shape: RetentionProperties, location_name: "RetentionProperties"))
    Table.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    Table.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    Table.add_member(:magnetic_store_write_properties, Shapes::ShapeRef.new(shape: MagneticStoreWriteProperties, location_name: "MagneticStoreWriteProperties"))
    Table.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, location_name: "Schema"))
    Table.struct_class = Types::Table

    TableList.member = Shapes::ShapeRef.new(shape: Table)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    UpdateDatabaseRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, required: true, location_name: "KmsKeyId"))
    UpdateDatabaseRequest.struct_class = Types::UpdateDatabaseRequest

    UpdateDatabaseResponse.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    UpdateDatabaseResponse.struct_class = Types::UpdateDatabaseResponse

    UpdateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    UpdateTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TableName"))
    UpdateTableRequest.add_member(:retention_properties, Shapes::ShapeRef.new(shape: RetentionProperties, location_name: "RetentionProperties"))
    UpdateTableRequest.add_member(:magnetic_store_write_properties, Shapes::ShapeRef.new(shape: MagneticStoreWriteProperties, location_name: "MagneticStoreWriteProperties"))
    UpdateTableRequest.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, location_name: "Schema"))
    UpdateTableRequest.struct_class = Types::UpdateTableRequest

    UpdateTableResponse.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    UpdateTableResponse.struct_class = Types::UpdateTableResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    WriteRecordsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    WriteRecordsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TableName"))
    WriteRecordsRequest.add_member(:common_attributes, Shapes::ShapeRef.new(shape: Record, location_name: "CommonAttributes"))
    WriteRecordsRequest.add_member(:records, Shapes::ShapeRef.new(shape: Records, required: true, location_name: "Records"))
    WriteRecordsRequest.struct_class = Types::WriteRecordsRequest

    WriteRecordsResponse.add_member(:records_ingested, Shapes::ShapeRef.new(shape: RecordsIngested, location_name: "RecordsIngested"))
    WriteRecordsResponse.struct_class = Types::WriteRecordsResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-01"

      api.metadata = {
        "apiVersion" => "2018-11-01",
        "endpointPrefix" => "ingest.timestream",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Timestream Write",
        "serviceFullName" => "Amazon Timestream Write",
        "serviceId" => "Timestream Write",
        "signatureVersion" => "v4",
        "signingName" => "timestream",
        "targetPrefix" => "Timestream_20181101",
        "uid" => "timestream-write-2018-11-01",
      }
      api.endpoint_operation = :describe_endpoints
      api.require_endpoint_discovery = true

      api.add_operation(:create_batch_load_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBatchLoadTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: CreateBatchLoadTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBatchLoadTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:create_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: CreateDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:create_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: CreateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:delete_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteTableRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:describe_batch_load_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBatchLoadTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeBatchLoadTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBatchLoadTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:describe_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_operation = true
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeTableRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:list_batch_load_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBatchLoadTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ListBatchLoadTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBatchLoadTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ListDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ListTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
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
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:resume_batch_load_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeBatchLoadTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: ResumeBatchLoadTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeBatchLoadTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:update_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:update_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:write_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "WriteRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: WriteRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: WriteRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RejectedRecordsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)
    end

  end
end
