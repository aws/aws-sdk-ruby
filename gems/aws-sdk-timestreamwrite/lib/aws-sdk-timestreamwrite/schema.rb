# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamWrite
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BatchLoadDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadDataFormat', name: 'BatchLoadDataFormat')
    BatchLoadProgressReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadProgressReport', name: 'BatchLoadProgressReport')
    BatchLoadStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadStatus', name: 'BatchLoadStatus')
    BatchLoadTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadTask', name: 'BatchLoadTask')
    BatchLoadTaskDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadTaskDescription', name: 'BatchLoadTaskDescription')
    BatchLoadTaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadTaskId', name: 'BatchLoadTaskId', traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    BatchLoadTaskList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#BatchLoadTaskList', name: 'BatchLoadTaskList')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.timestreamwrite#Boolean', name: 'Boolean')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBatchLoadTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CreateBatchLoadTaskRequest', name: 'CreateBatchLoadTaskRequest')
    CreateBatchLoadTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CreateBatchLoadTaskResponse', name: 'CreateBatchLoadTaskResponse')
    CreateDatabaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CreateDatabaseRequest', name: 'CreateDatabaseRequest')
    CreateDatabaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CreateDatabaseResponse', name: 'CreateDatabaseResponse')
    CreateTableRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CreateTableRequest', name: 'CreateTableRequest')
    CreateTableResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CreateTableResponse', name: 'CreateTableResponse')
    CsvConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#CsvConfiguration', name: 'CsvConfiguration')
    DataModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DataModel', name: 'DataModel')
    DataModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DataModelConfiguration', name: 'DataModelConfiguration')
    DataModelS3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DataModelS3Configuration', name: 'DataModelS3Configuration')
    DataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DataSourceConfiguration', name: 'DataSourceConfiguration')
    DataSourceS3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DataSourceS3Configuration', name: 'DataSourceS3Configuration')
    Database = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Database', name: 'Database')
    DatabaseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#DatabaseList', name: 'DatabaseList')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.timestreamwrite#Date', name: 'Date')
    DeleteDatabaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DeleteDatabaseRequest', name: 'DeleteDatabaseRequest')
    DeleteTableRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DeleteTableRequest', name: 'DeleteTableRequest')
    DescribeBatchLoadTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeBatchLoadTaskRequest', name: 'DescribeBatchLoadTaskRequest')
    DescribeBatchLoadTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeBatchLoadTaskResponse', name: 'DescribeBatchLoadTaskResponse')
    DescribeDatabaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeDatabaseRequest', name: 'DescribeDatabaseRequest')
    DescribeDatabaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeDatabaseResponse', name: 'DescribeDatabaseResponse')
    DescribeEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeEndpointsRequest', name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeEndpointsResponse', name: 'DescribeEndpointsResponse')
    DescribeTableRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeTableRequest', name: 'DescribeTableRequest')
    DescribeTableResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DescribeTableResponse', name: 'DescribeTableResponse')
    Dimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Dimension', name: 'Dimension')
    DimensionMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#DimensionMapping', name: 'DimensionMapping')
    DimensionMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#DimensionMappings', name: 'DimensionMappings', traits: {"smithy.api#length" => {"min" => 1}})
    DimensionValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#DimensionValueType', name: 'DimensionValueType')
    Dimensions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#Dimensions', name: 'Dimensions', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Endpoint', name: 'Endpoint')
    Endpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#Endpoints', name: 'Endpoints')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#ErrorMessage', name: 'ErrorMessage')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidEndpointException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#InvalidEndpointException', name: 'InvalidEndpointException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 421})
    ListBatchLoadTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListBatchLoadTasksRequest', name: 'ListBatchLoadTasksRequest')
    ListBatchLoadTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListBatchLoadTasksResponse', name: 'ListBatchLoadTasksResponse')
    ListDatabasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListDatabasesRequest', name: 'ListDatabasesRequest')
    ListDatabasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListDatabasesResponse', name: 'ListDatabasesResponse')
    ListTablesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListTablesRequest', name: 'ListTablesRequest')
    ListTablesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListTablesResponse', name: 'ListTablesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MagneticStoreRejectedDataLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#MagneticStoreRejectedDataLocation', name: 'MagneticStoreRejectedDataLocation')
    MagneticStoreRetentionPeriodInDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#MagneticStoreRetentionPeriodInDays', name: 'MagneticStoreRetentionPeriodInDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 73000}})
    MagneticStoreWriteProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#MagneticStoreWriteProperties', name: 'MagneticStoreWriteProperties')
    MeasureValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#MeasureValue', name: 'MeasureValue')
    MeasureValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#MeasureValueType', name: 'MeasureValueType')
    MeasureValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#MeasureValues', name: 'MeasureValues')
    MemoryStoreRetentionPeriodInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#MemoryStoreRetentionPeriodInHours', name: 'MemoryStoreRetentionPeriodInHours', traits: {"smithy.api#range" => {"min" => 1, "max" => 8766}})
    MixedMeasureMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#MixedMeasureMapping', name: 'MixedMeasureMapping')
    MixedMeasureMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#MixedMeasureMappingList', name: 'MixedMeasureMappingList', traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureAttributeMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#MultiMeasureAttributeMapping', name: 'MultiMeasureAttributeMapping')
    MultiMeasureAttributeMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#MultiMeasureAttributeMappingList', name: 'MultiMeasureAttributeMappingList', traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureMappings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#MultiMeasureMappings', name: 'MultiMeasureMappings')
    PageLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#PageLimit', name: 'PageLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#PaginationLimit', name: 'PaginationLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    PartitionKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#PartitionKey', name: 'PartitionKey')
    PartitionKeyEnforcementLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#PartitionKeyEnforcementLevel', name: 'PartitionKeyEnforcementLevel')
    PartitionKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#PartitionKeyList', name: 'PartitionKeyList', traits: {"smithy.api#length" => {"min" => 1}})
    PartitionKeyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#PartitionKeyType', name: 'PartitionKeyType')
    Record = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Record', name: 'Record')
    RecordIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#RecordIndex', name: 'RecordIndex', traits: {"smithy.api#default" => 0})
    RecordVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.timestreamwrite#RecordVersion', name: 'RecordVersion', traits: {"smithy.api#default" => 0})
    Records = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#Records', name: 'Records', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecordsIngested = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#RecordsIngested', name: 'RecordsIngested')
    RejectedRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#RejectedRecord', name: 'RejectedRecord')
    RejectedRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#RejectedRecords', name: 'RejectedRecords')
    RejectedRecordsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#RejectedRecordsException', name: 'RejectedRecordsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 419})
    ReportConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ReportConfiguration', name: 'ReportConfiguration')
    ReportS3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ReportS3Configuration', name: 'ReportS3Configuration')
    ResourceCreateAPIName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#ResourceCreateAPIName', name: 'ResourceCreateAPIName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#ResourceName', name: 'ResourceName')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResumeBatchLoadTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ResumeBatchLoadTaskRequest', name: 'ResumeBatchLoadTaskRequest')
    ResumeBatchLoadTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ResumeBatchLoadTaskResponse', name: 'ResumeBatchLoadTaskResponse')
    RetentionProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#RetentionProperties', name: 'RetentionProperties')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#S3Configuration', name: 'S3Configuration')
    S3EncryptionOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#S3EncryptionOption', name: 'S3EncryptionOption')
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    S3ObjectKeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#S3ObjectKeyPrefix', name: 'S3ObjectKeyPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 928}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    ScalarMeasureValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#ScalarMeasureValueType', name: 'ScalarMeasureValueType')
    Schema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Schema', name: 'Schema')
    SchemaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#SchemaName', name: 'SchemaName', traits: {"smithy.api#length" => {"min" => 1}})
    SchemaValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#SchemaValue', name: 'SchemaValue')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#String', name: 'String')
    StringValue1 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#StringValue1', name: 'StringValue1', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    StringValue2048 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#StringValue2048', name: 'StringValue2048', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringValue256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#StringValue256', name: 'StringValue256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Table = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Table', name: 'Table')
    TableList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#TableList', name: 'TableList')
    TableStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#TableStatus', name: 'TableStatus')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.timestreamwrite#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.timestreamwrite#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.timestreamwrite#TimeUnit', name: 'TimeUnit')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDatabaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#UpdateDatabaseRequest', name: 'UpdateDatabaseRequest')
    UpdateDatabaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#UpdateDatabaseResponse', name: 'UpdateDatabaseResponse')
    UpdateTableRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#UpdateTableRequest', name: 'UpdateTableRequest')
    UpdateTableResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#UpdateTableResponse', name: 'UpdateTableResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WriteRecordsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#WriteRecordsRequest', name: 'WriteRecordsRequest')
    WriteRecordsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.timestreamwrite#WriteRecordsResponse', name: 'WriteRecordsResponse')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BatchLoadDataFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    BatchLoadProgressReport.add_member(:records_processed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RecordsProcessed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadProgressReport.add_member(:records_ingested, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RecordsIngested', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadProgressReport.add_member(:parse_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ParseFailures', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadProgressReport.add_member(:record_ingestion_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RecordIngestionFailures', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadProgressReport.add_member(:file_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FileFailures', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadProgressReport.add_member(:bytes_metered, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesMetered', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadProgressReport.type = Types::BatchLoadProgressReport
    BatchLoadStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    BatchLoadStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BatchLoadStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BatchLoadStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    BatchLoadStatus.add_member(:progress_stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROGRESS_STOPPED', traits: {"smithy.api#enumValue" => "PROGRESS_STOPPED"}))
    BatchLoadStatus.add_member(:pending_resume, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_RESUME', traits: {"smithy.api#enumValue" => "PENDING_RESUME"}))
    BatchLoadTask.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The ID of the batch load task.</p>"}))
    BatchLoadTask.add_member(:task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadStatus, location_name: 'TaskStatus', traits: {"smithy.api#documentation" => "<p>Status of the batch load task.</p>"}))
    BatchLoadTask.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>Database name for the database into which a batch load task loads data.</p>"}))
    BatchLoadTask.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Table name for the table into which a batch load task loads data.</p>"}))
    BatchLoadTask.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the Timestream batch load task was created.</p>"}))
    BatchLoadTask.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time when the Timestream batch load task was last updated.</p>"}))
    BatchLoadTask.add_member(:resumable_until, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ResumableUntil', traits: {"smithy.api#documentation" => "<p>\n      </p>"}))
    BatchLoadTask.type = Types::BatchLoadTask
    BatchLoadTaskDescription.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The ID of the batch load task.</p>"}))
    BatchLoadTaskDescription.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p></p>"}))
    BatchLoadTaskDescription.add_member(:data_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'DataSourceConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration details about the data source for a batch load task.</p>"}))
    BatchLoadTaskDescription.add_member(:progress_report, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadProgressReport, location_name: 'ProgressReport', traits: {"smithy.api#documentation" => "<p></p>"}))
    BatchLoadTaskDescription.add_member(:report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfiguration, location_name: 'ReportConfiguration', traits: {"smithy.api#documentation" => "<p>Report configuration for a batch load task. This contains details about where error\n         reports are stored.</p>"}))
    BatchLoadTaskDescription.add_member(:data_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataModelConfiguration, location_name: 'DataModelConfiguration', traits: {"smithy.api#documentation" => "<p>Data model configuration for a batch load task. This contains details about where a data\n         model for a batch load task is stored.</p>"}))
    BatchLoadTaskDescription.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TargetDatabaseName', traits: {"smithy.api#documentation" => "<p></p>"}))
    BatchLoadTaskDescription.add_member(:target_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TargetTableName', traits: {"smithy.api#documentation" => "<p></p>"}))
    BatchLoadTaskDescription.add_member(:task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadStatus, location_name: 'TaskStatus', traits: {"smithy.api#documentation" => "<p>Status of the batch load task.</p>"}))
    BatchLoadTaskDescription.add_member(:record_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordVersion, location_name: 'RecordVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    BatchLoadTaskDescription.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the Timestream batch load task was created.</p>"}))
    BatchLoadTaskDescription.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time when the Timestream batch load task was last updated.</p>"}))
    BatchLoadTaskDescription.add_member(:resumable_until, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ResumableUntil', traits: {"smithy.api#documentation" => "<p>\n      </p>"}))
    BatchLoadTaskDescription.type = Types::BatchLoadTaskDescription
    BatchLoadTaskList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTask)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateBatchLoadTaskRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#idempotencyToken" => {}}))
    CreateBatchLoadTaskRequest.add_member(:data_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataModelConfiguration, location_name: 'DataModelConfiguration'))
    CreateBatchLoadTaskRequest.add_member(:data_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'DataSourceConfiguration', traits: {"smithy.api#documentation" => "<p>Defines configuration details about the data source for a batch load task.</p>", "smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfiguration, location_name: 'ReportConfiguration', traits: {"smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreateAPIName, location_name: 'TargetDatabaseName', traits: {"smithy.api#documentation" => "<p>Target Timestream database for a batch load task.</p>", "smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:target_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreateAPIName, location_name: 'TargetTableName', traits: {"smithy.api#documentation" => "<p>Target Timestream table for a batch load task.</p>", "smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:record_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordVersion, location_name: 'RecordVersion', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p></p>"}))
    CreateBatchLoadTaskRequest.type = Types::CreateBatchLoadTaskRequest
    CreateBatchLoadTaskResponse.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The ID of the batch load task.</p>", "smithy.api#required" => {}}))
    CreateBatchLoadTaskResponse.type = Types::CreateBatchLoadTaskResponse
    CreateDatabaseRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreateAPIName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    CreateDatabaseRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key for the database. If the KMS key is not\n         specified, the database will be encrypted with a Timestream managed KMS key located in your account. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk\">Amazon Web Services managed keys</a>.</p>"}))
    CreateDatabaseRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A list of key-value pairs to label the table. </p>"}))
    CreateDatabaseRequest.type = Types::CreateDatabaseRequest
    CreateDatabaseResponse.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The newly created Timestream database.</p>"}))
    CreateDatabaseResponse.type = Types::CreateDatabaseResponse
    CreateTableRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreateAPIName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    CreateTableRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreateAPIName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table.</p>", "smithy.api#required" => {}}))
    CreateTableRequest.add_member(:retention_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionProperties, location_name: 'RetentionProperties', traits: {"smithy.api#documentation" => "<p>The duration for which your time-series data must be stored in the memory store and the\n         magnetic store.</p>"}))
    CreateTableRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A list of key-value pairs to label the table. </p>"}))
    CreateTableRequest.add_member(:magnetic_store_write_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: MagneticStoreWriteProperties, location_name: 'MagneticStoreWriteProperties', traits: {"smithy.api#documentation" => "<p>Contains properties to set on the table when enabling magnetic store writes.</p>"}))
    CreateTableRequest.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p> The schema of the table. </p>"}))
    CreateTableRequest.type = Types::CreateTableRequest
    CreateTableResponse.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Table, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>The newly created Timestream table.</p>"}))
    CreateTableResponse.type = Types::CreateTableResponse
    CsvConfiguration.add_member(:column_separator, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue1, location_name: 'ColumnSeparator', traits: {"smithy.api#documentation" => "<p>Column separator can be one of comma (','), pipe ('|), semicolon (';'), tab('/t'), or\n         blank space (' '). </p>"}))
    CsvConfiguration.add_member(:escape_char, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue1, location_name: 'EscapeChar', traits: {"smithy.api#documentation" => "<p>Escape character can be one of </p>"}))
    CsvConfiguration.add_member(:quote_char, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue1, location_name: 'QuoteChar', traits: {"smithy.api#documentation" => "<p>Can be single quote (') or double quote (\").</p>"}))
    CsvConfiguration.add_member(:null_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue256, location_name: 'NullValue', traits: {"smithy.api#documentation" => "<p>Can be blank space (' ').</p>"}))
    CsvConfiguration.add_member(:trim_white_space, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'TrimWhiteSpace', traits: {"smithy.api#documentation" => "<p>Specifies to trim leading and trailing white space.</p>"}))
    CsvConfiguration.type = Types::CsvConfiguration
    DataModel.add_member(:time_column, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue256, location_name: 'TimeColumn', traits: {"smithy.api#documentation" => "<p>Source column to be mapped to time.</p>"}))
    DataModel.add_member(:time_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'TimeUnit', traits: {"smithy.api#documentation" => "<p> The granularity of the timestamp unit. It indicates if the time value is in seconds,\n         milliseconds, nanoseconds, or other supported values. Default is <code>MILLISECONDS</code>.\n      </p>"}))
    DataModel.add_member(:dimension_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionMappings, location_name: 'DimensionMappings', traits: {"smithy.api#documentation" => "<p>Source to target mappings for dimensions.</p>", "smithy.api#required" => {}}))
    DataModel.add_member(:multi_measure_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureMappings, location_name: 'MultiMeasureMappings', traits: {"smithy.api#documentation" => "<p>Source to target mappings for multi-measure records.</p>"}))
    DataModel.add_member(:mixed_measure_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MixedMeasureMappingList, location_name: 'MixedMeasureMappings', traits: {"smithy.api#documentation" => "<p>Source to target mappings for measures.</p>"}))
    DataModel.add_member(:measure_name_column, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue256, location_name: 'MeasureNameColumn', traits: {"smithy.api#documentation" => "<p></p>"}))
    DataModel.type = Types::DataModel
    DataModelConfiguration.add_member(:data_model, Smithy::Schema::Shapes::ShapeRef.new(shape: DataModel, location_name: 'DataModel', traits: {"smithy.api#documentation" => "<p></p>"}))
    DataModelConfiguration.add_member(:data_model_s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataModelS3Configuration, location_name: 'DataModelS3Configuration', traits: {"smithy.api#documentation" => "<p></p>"}))
    DataModelConfiguration.type = Types::DataModelConfiguration
    DataModelS3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p></p>"}))
    DataModelS3Configuration.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'ObjectKey', traits: {"smithy.api#documentation" => "<p></p>"}))
    DataModelS3Configuration.type = Types::DataModelS3Configuration
    DataSourceConfiguration.add_member(:data_source_s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceS3Configuration, location_name: 'DataSourceS3Configuration', traits: {"smithy.api#documentation" => "<p>Configuration of an S3 location for a file which contains data to load.</p>", "smithy.api#required" => {}}))
    DataSourceConfiguration.add_member(:csv_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CsvConfiguration, location_name: 'CsvConfiguration'))
    DataSourceConfiguration.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadDataFormat, location_name: 'DataFormat', traits: {"smithy.api#documentation" => "<p>This is currently CSV.</p>", "smithy.api#required" => {}}))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DataSourceS3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The bucket name of the customer S3 bucket.</p>", "smithy.api#required" => {}}))
    DataSourceS3Configuration.add_member(:object_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'ObjectKeyPrefix', traits: {"smithy.api#documentation" => "<p>\n      </p>"}))
    DataSourceS3Configuration.type = Types::DataSourceS3Configuration
    Database.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name that uniquely identifies this database.</p>"}))
    Database.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>"}))
    Database.add_member(:table_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TableCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of tables found within a Timestream database. </p>"}))
    Database.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS key used to encrypt the data stored in the\n         database.</p>"}))
    Database.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the database was created, calculated from the Unix epoch time.</p>"}))
    Database.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p> The last time that this database was updated. </p>"}))
    Database.type = Types::Database
    DatabaseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Database)
    DeleteDatabaseRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteDatabaseRequest.type = Types::DeleteDatabaseRequest
    DeleteTableRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database where the Timestream database is to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteTableRequest.type = Types::DeleteTableRequest
    DescribeBatchLoadTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The ID of the batch load task.</p>", "smithy.api#required" => {}}))
    DescribeBatchLoadTaskRequest.type = Types::DescribeBatchLoadTaskRequest
    DescribeBatchLoadTaskResponse.add_member(:batch_load_task_description, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskDescription, location_name: 'BatchLoadTaskDescription', traits: {"smithy.api#documentation" => "<p>Description of the batch load task.</p>", "smithy.api#required" => {}}))
    DescribeBatchLoadTaskResponse.type = Types::DescribeBatchLoadTaskResponse
    DescribeDatabaseRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    DescribeDatabaseRequest.type = Types::DescribeDatabaseRequest
    DescribeDatabaseResponse.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table.</p>"}))
    DescribeDatabaseResponse.type = Types::DescribeDatabaseResponse
    DescribeEndpointsRequest.type = Types::DescribeEndpointsRequest
    DescribeEndpointsResponse.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code>\n         request is made.</p>", "smithy.api#required" => {}}))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeTableRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    DescribeTableRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table.</p>", "smithy.api#required" => {}}))
    DescribeTableRequest.type = Types::DescribeTableRequest
    DescribeTableResponse.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Table, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>The Timestream table.</p>"}))
    DescribeTableResponse.type = Types::DescribeTableResponse
    Dimension.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> Dimension represents the metadata attributes of the time series. For example, the name\n         and Availability Zone of an EC2 instance or the name of the manufacturer of a wind turbine\n         are dimensions. </p>\n         <p>For constraints on dimension names, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming\">Naming\n            Constraints</a>.</p>", "smithy.api#required" => {}}))
    Dimension.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the dimension.</p>", "smithy.api#required" => {}}))
    Dimension.add_member(:dimension_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueType, location_name: 'DimensionValueType', traits: {"smithy.api#documentation" => "<p>The data type of the dimension for the time-series data point.</p>"}))
    Dimension.type = Types::Dimension
    DimensionMapping.add_member(:source_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'SourceColumn', traits: {"smithy.api#documentation" => "<p></p>"}))
    DimensionMapping.add_member(:destination_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'DestinationColumn', traits: {"smithy.api#documentation" => "<p>\n      </p>"}))
    DimensionMapping.type = Types::DimensionMapping
    DimensionMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionMapping)
    DimensionValueType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    Dimensions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension)
    Endpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>An endpoint address.</p>", "smithy.api#required" => {}}))
    Endpoint.add_member(:cache_period_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CachePeriodInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The TTL for the endpoint, in minutes.</p>", "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    Endpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidEndpointException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidEndpointException.type = Types::InvalidEndpointException
    ListBatchLoadTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the NextToken from a previously\n         truncated response.</p>"}))
    ListBatchLoadTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of items to return in the output. If the total number of items\n         available is more than the value specified, a NextToken is provided in the output. To\n         resume pagination, provide the NextToken value as argument of a subsequent API\n         invocation.</p>"}))
    ListBatchLoadTasksRequest.add_member(:task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadStatus, location_name: 'TaskStatus', traits: {"smithy.api#documentation" => "<p>Status of the batch load task.</p>"}))
    ListBatchLoadTasksRequest.type = Types::ListBatchLoadTasksRequest
    ListBatchLoadTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. Provide the next\n         ListBatchLoadTasksRequest.</p>"}))
    ListBatchLoadTasksResponse.add_member(:batch_load_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskList, location_name: 'BatchLoadTasks', traits: {"smithy.api#documentation" => "<p>A list of batch load task details.</p>"}))
    ListBatchLoadTasksResponse.type = Types::ListBatchLoadTasksResponse
    ListDatabasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. To resume pagination, provide the NextToken value as argument of a\n         subsequent API invocation.</p>"}))
    ListDatabasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of items to return in the output. If the total number of items\n         available is more than the value specified, a NextToken is provided in the output. To\n         resume pagination, provide the NextToken value as argument of a subsequent API\n         invocation.</p>"}))
    ListDatabasesRequest.type = Types::ListDatabasesRequest
    ListDatabasesResponse.add_member(:databases, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseList, location_name: 'Databases', traits: {"smithy.api#documentation" => "<p>A list of database names.</p>"}))
    ListDatabasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. This parameter is returned when the response is truncated.</p>"}))
    ListDatabasesResponse.type = Types::ListDatabasesResponse
    ListTablesRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>"}))
    ListTablesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. To resume pagination, provide the NextToken value as argument of a\n         subsequent API invocation.</p>"}))
    ListTablesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of items to return in the output. If the total number of items\n         available is more than the value specified, a NextToken is provided in the output. To\n         resume pagination, provide the NextToken value as argument of a subsequent API\n         invocation.</p>"}))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, Smithy::Schema::Shapes::ShapeRef.new(shape: TableList, location_name: 'Tables', traits: {"smithy.api#documentation" => "<p>A list of tables.</p>"}))
    ListTablesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the NextToken from a previously\n         truncated response.</p>"}))
    ListTablesResponse.type = Types::ListTablesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p> The Timestream resource with tags to be listed. This value is an Amazon\n         Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> The tags currently associated with the Timestream resource. </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MagneticStoreRejectedDataLocation.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 'S3Configuration', traits: {"smithy.api#documentation" => "<p>Configuration of an S3 location to write error reports for records rejected,\n         asynchronously, during magnetic store writes.</p>"}))
    MagneticStoreRejectedDataLocation.type = Types::MagneticStoreRejectedDataLocation
    MagneticStoreWriteProperties.add_member(:enable_magnetic_store_writes, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableMagneticStoreWrites', traits: {"smithy.api#documentation" => "<p>A flag to enable magnetic store writes.</p>", "smithy.api#required" => {}}))
    MagneticStoreWriteProperties.add_member(:magnetic_store_rejected_data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: MagneticStoreRejectedDataLocation, location_name: 'MagneticStoreRejectedDataLocation', traits: {"smithy.api#documentation" => "<p>The location to write error reports for records rejected asynchronously during magnetic\n         store writes.</p>"}))
    MagneticStoreWriteProperties.type = Types::MagneticStoreWriteProperties
    MeasureValue.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the MeasureValue. </p>\n         <p> For constraints on MeasureValue names, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming\"> Naming Constraints</a> in the Amazon Timestream Developer Guide.</p>", "smithy.api#required" => {}}))
    MeasureValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The value for the MeasureValue. For information, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types\">Data\n         types</a>.</p>", "smithy.api#required" => {}}))
    MeasureValue.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValueType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Contains the data type of the MeasureValue for the time-series data point.</p>", "smithy.api#required" => {}}))
    MeasureValue.type = Types::MeasureValue
    MeasureValueType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    MeasureValueType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    MeasureValueType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    MeasureValueType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    MeasureValueType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    MeasureValueType.add_member(:multi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI', traits: {"smithy.api#enumValue" => "MULTI"}))
    MeasureValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValue)
    MixedMeasureMapping.add_member(:measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'MeasureName', traits: {"smithy.api#documentation" => "<p></p>"}))
    MixedMeasureMapping.add_member(:source_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'SourceColumn', traits: {"smithy.api#documentation" => "<p></p>"}))
    MixedMeasureMapping.add_member(:target_measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TargetMeasureName', traits: {"smithy.api#documentation" => "<p></p>"}))
    MixedMeasureMapping.add_member(:measure_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValueType, location_name: 'MeasureValueType', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    MixedMeasureMapping.add_member(:multi_measure_attribute_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: 'MultiMeasureAttributeMappings', traits: {"smithy.api#documentation" => "<p></p>"}))
    MixedMeasureMapping.type = Types::MixedMeasureMapping
    MixedMeasureMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MixedMeasureMapping)
    MultiMeasureAttributeMapping.add_member(:source_column, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'SourceColumn', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.add_member(:target_multi_measure_attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TargetMultiMeasureAttributeName', traits: {"smithy.api#documentation" => "<p></p>"}))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarMeasureValueType, location_name: 'MeasureValueType', traits: {"smithy.api#documentation" => "<p></p>"}))
    MultiMeasureAttributeMapping.type = Types::MultiMeasureAttributeMapping
    MultiMeasureAttributeMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMapping)
    MultiMeasureMappings.add_member(:target_multi_measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'TargetMultiMeasureName', traits: {"smithy.api#documentation" => "<p></p>"}))
    MultiMeasureMappings.add_member(:multi_measure_attribute_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiMeasureAttributeMappingList, location_name: 'MultiMeasureAttributeMappings', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    MultiMeasureMappings.type = Types::MultiMeasureMappings
    PartitionKey.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of the partition key. Options are DIMENSION (dimension key) and MEASURE\n         (measure key). </p>", "smithy.api#required" => {}}))
    PartitionKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the attribute used for a dimension key. </p>"}))
    PartitionKey.add_member(:enforcement_in_record, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyEnforcementLevel, location_name: 'EnforcementInRecord', traits: {"smithy.api#documentation" => "<p> The level of enforcement for the specification of a dimension key in ingested records.\n         Options are REQUIRED (dimension key must be specified) and OPTIONAL (dimension key does not\n         have to be specified). </p>"}))
    PartitionKey.type = Types::PartitionKey
    PartitionKeyEnforcementLevel.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    PartitionKeyEnforcementLevel.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    PartitionKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKey)
    PartitionKeyType.add_member(:dimension, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSION', traits: {"smithy.api#enumValue" => "DIMENSION"}))
    PartitionKeyType.add_member(:measure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEASURE', traits: {"smithy.api#enumValue" => "MEASURE"}))
    Record.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>Contains the list of dimensions for time-series data points.</p>"}))
    Record.add_member(:measure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'MeasureName', traits: {"smithy.api#documentation" => "<p>Measure represents the data attribute of the time series. For example, the CPU\n         utilization of an EC2 instance or the RPM of a wind turbine are measures. </p>"}))
    Record.add_member(:measure_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'MeasureValue', traits: {"smithy.api#documentation" => "<p> Contains the measure value for the time-series data point. </p>"}))
    Record.add_member(:measure_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValueType, location_name: 'MeasureValueType', traits: {"smithy.api#documentation" => "<p> Contains the data type of the measure value for the time-series data point. Default\n         type is <code>DOUBLE</code>. For more information, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types\">Data\n         types</a>.</p>"}))
    Record.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue256, location_name: 'Time', traits: {"smithy.api#documentation" => "<p> Contains the time at which the measure value for the data point was collected. The time\n         value plus the unit provides the time elapsed since the epoch. For example, if the time\n         value is <code>12345</code> and the unit is <code>ms</code>, then <code>12345 ms</code>\n         have elapsed since the epoch. </p>"}))
    Record.add_member(:time_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'TimeUnit', traits: {"smithy.api#documentation" => "<p> The granularity of the timestamp unit. It indicates if the time value is in seconds,\n         milliseconds, nanoseconds, or other supported values. Default is <code>MILLISECONDS</code>.\n      </p>"}))
    Record.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordVersion, location_name: 'Version', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>64-bit attribute used for record updates. Write requests for duplicate data with a\n         higher version number will update the existing measure value and version. In cases where\n         the measure value is the same, <code>Version</code> will still be updated. Default value is\n            <code>1</code>.</p>\n         <note>\n            <p>\n               <code>Version</code> must be <code>1</code> or greater, or you will receive a\n               <code>ValidationException</code> error.</p>\n         </note>"}))
    Record.add_member(:measure_values, Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureValues, location_name: 'MeasureValues', traits: {"smithy.api#documentation" => "<p> Contains the list of MeasureValue for time-series data points. </p>\n         <p> This is only allowed for type <code>MULTI</code>. For scalar values, use\n            <code>MeasureValue</code> attribute of the record directly. </p>"}))
    Record.type = Types::Record
    Records.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    RecordsIngested.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Total', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total count of successfully ingested records.</p>"}))
    RecordsIngested.add_member(:memory_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MemoryStore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Count of records ingested into the memory store.</p>"}))
    RecordsIngested.add_member(:magnetic_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MagneticStore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Count of records ingested into the magnetic store.</p>"}))
    RecordsIngested.type = Types::RecordsIngested
    RejectedRecord.add_member(:record_index, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordIndex, location_name: 'RecordIndex', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The index of the record in the input request for WriteRecords. Indexes begin with 0.\n      </p>"}))
    RejectedRecord.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> The reason why a record was not successfully inserted into Timestream.\n         Possible causes of failure include: </p>\n         <ul>\n            <li>\n               <p>Records with duplicate data where there are multiple records with the same\n               dimensions, timestamps, and measure names but: </p>\n               <ul>\n                  <li>\n                     <p>Measure values are different</p>\n                  </li>\n                  <li>\n                     <p>Version is not present in the request, <i>or</i> the value of\n                     version in the new record is equal to or lower than the existing value</p>\n                  </li>\n               </ul>\n               <p>If Timestream rejects data for this case, the\n                  <code>ExistingVersion</code> field in the <code>RejectedRecords</code> response\n               will indicate the current record’s version. To force an update, you can resend the\n               request with a version for the record set to a value greater than the\n                  <code>ExistingVersion</code>.</p>\n            </li>\n            <li>\n               <p> Records with timestamps that lie outside the retention duration of the memory\n               store. </p>\n               <note>\n                  <p>When the retention window is updated, you will receive a\n                     <code>RejectedRecords</code> exception if you immediately try to ingest data\n                  within the new window. To avoid a <code>RejectedRecords</code> exception, wait\n                  until the duration of the new window to ingest new data. For further information,\n                  see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/best-practices.html#configuration\"> Best\n                     Practices for Configuring Timestream</a> and <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html\">the\n                     explanation of how storage works in Timestream</a>.</p>\n               </note>\n            </li>\n            <li>\n               <p> Records with dimensions or measures that exceed the Timestream defined\n               limits. </p>\n            </li>\n         </ul>\n         <p> For more information, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html\">Access Management</a> in the\n            Timestream Developer Guide. </p>"}))
    RejectedRecord.add_member(:existing_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordVersion, location_name: 'ExistingVersion', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The existing version of the record. This value is populated in scenarios where an\n         identical record exists with a higher version than the version in the write request.</p>"}))
    RejectedRecord.type = Types::RejectedRecord
    RejectedRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectedRecord)
    RejectedRecordsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RejectedRecordsException.add_member(:rejected_records, Smithy::Schema::Shapes::ShapeRef.new(shape: RejectedRecords, location_name: 'RejectedRecords', traits: {"smithy.api#documentation" => "<p>\n      </p>"}))
    RejectedRecordsException.type = Types::RejectedRecordsException
    ReportConfiguration.add_member(:report_s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportS3Configuration, location_name: 'ReportS3Configuration', traits: {"smithy.api#documentation" => "<p>Configuration of an S3 location to write error reports and events for a batch\n         load.</p>"}))
    ReportConfiguration.type = Types::ReportConfiguration
    ReportS3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    ReportS3Configuration.add_member(:object_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: 'ObjectKeyPrefix', traits: {"smithy.api#documentation" => "<p></p>"}))
    ReportS3Configuration.add_member(:encryption_option, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: 'EncryptionOption', traits: {"smithy.api#documentation" => "<p></p>"}))
    ReportS3Configuration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p></p>"}))
    ReportS3Configuration.type = Types::ReportS3Configuration
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeBatchLoadTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLoadTaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The ID of the batch load task to resume.</p>", "smithy.api#required" => {}}))
    ResumeBatchLoadTaskRequest.type = Types::ResumeBatchLoadTaskRequest
    ResumeBatchLoadTaskResponse.type = Types::ResumeBatchLoadTaskResponse
    RetentionProperties.add_member(:memory_store_retention_period_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStoreRetentionPeriodInHours, location_name: 'MemoryStoreRetentionPeriodInHours', traits: {"smithy.api#documentation" => "<p>The duration for which data must be stored in the memory store. </p>", "smithy.api#required" => {}}))
    RetentionProperties.add_member(:magnetic_store_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MagneticStoreRetentionPeriodInDays, location_name: 'MagneticStoreRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The duration for which data must be stored in the magnetic store. </p>", "smithy.api#required" => {}}))
    RetentionProperties.type = Types::RetentionProperties
    S3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The bucket name of the customer S3 bucket.</p>"}))
    S3Configuration.add_member(:object_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKeyPrefix, location_name: 'ObjectKeyPrefix', traits: {"smithy.api#documentation" => "<p>The object key preview for the customer S3 location.</p>"}))
    S3Configuration.add_member(:encryption_option, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionOption, location_name: 'EncryptionOption', traits: {"smithy.api#documentation" => "<p>The encryption option for the customer S3 location. Options are S3 server-side\n         encryption with an S3 managed key or Amazon Web Services managed key.</p>"}))
    S3Configuration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key ID for the customer S3 location when encrypting with an\n            Amazon Web Services managed key.</p>"}))
    S3Configuration.type = Types::S3Configuration
    S3EncryptionOption.add_member(:sse_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    S3EncryptionOption.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    ScalarMeasureValueType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarMeasureValueType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    ScalarMeasureValueType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarMeasureValueType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ScalarMeasureValueType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    Schema.add_member(:composite_partition_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyList, location_name: 'CompositePartitionKey', traits: {"smithy.api#documentation" => "<p>A non-empty list of partition keys defining the attributes used to partition the table\n         data. The order of the list determines the partition hierarchy. The name and type of each\n         partition key as well as the partition key order cannot be changed after the table is\n         created. However, the enforcement level of each partition key can be changed. </p>"}))
    Schema.type = Types::Schema
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Table.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name that uniquely identifies this table.</p>"}))
    Table.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table.</p>"}))
    Table.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database that contains this table.</p>"}))
    Table.add_member(:table_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatus, location_name: 'TableStatus', traits: {"smithy.api#documentation" => "<p>The current state of the table:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DELETING</code> - The table is being deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The table is ready for use.</p>\n            </li>\n         </ul>"}))
    Table.add_member(:retention_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionProperties, location_name: 'RetentionProperties', traits: {"smithy.api#documentation" => "<p>The retention duration for the memory store and magnetic store.</p>"}))
    Table.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the Timestream table was created. </p>"}))
    Table.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time when the Timestream table was last updated.</p>"}))
    Table.add_member(:magnetic_store_write_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: MagneticStoreWriteProperties, location_name: 'MagneticStoreWriteProperties', traits: {"smithy.api#documentation" => "<p>Contains properties to set on the table when enabling magnetic store writes.</p>"}))
    Table.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p> The schema of the table. </p>"}))
    Table.type = Types::Table
    TableList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Table)
    TableStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TableStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    TableStatus.add_member(:restoring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "RESTORING"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p> The key of the tag. Tag keys are case sensitive. </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The value of the tag. Tag values are case-sensitive and can be null. </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p> Identifies the Timestream resource to which tags should be added. This value\n         is an Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> The tags to be assigned to the Timestream resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeUnit.add_member(:milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MILLISECONDS', traits: {"smithy.api#enumValue" => "MILLISECONDS"}))
    TimeUnit.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "SECONDS"}))
    TimeUnit.add_member(:microseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSECONDS', traits: {"smithy.api#enumValue" => "MICROSECONDS"}))
    TimeUnit.add_member(:nanoseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NANOSECONDS', traits: {"smithy.api#enumValue" => "NANOSECONDS"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p> The Timestream resource that the tags will be removed from. This value is an\n         Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p> A list of tags keys. Existing tags of the resource whose keys are members of this list\n         will be removed from the Timestream resource. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatabaseRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p> The name of the database. </p>", "smithy.api#required" => {}}))
    UpdateDatabaseRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue2048, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p> The identifier of the new KMS key (<code>KmsKeyId</code>) to be used to\n         encrypt the data stored in the database. If the <code>KmsKeyId</code> currently registered\n         with the database is the same as the <code>KmsKeyId</code> in the request, there will not\n         be any update. </p>\n         <p>You can specify the <code>KmsKeyId</code> using any of the following:</p>\n         <ul>\n            <li>\n               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n            <li>\n               <p>Key ARN:\n                  <code>arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n            <li>\n               <p>Alias name: <code>alias/ExampleAlias</code>\n               </p>\n            </li>\n            <li>\n               <p>Alias ARN:\n               <code>arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateDatabaseRequest.type = Types::UpdateDatabaseRequest
    UpdateDatabaseResponse.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database'))
    UpdateDatabaseResponse.type = Types::UpdateDatabaseResponse
    UpdateTableRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    UpdateTableRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table.</p>", "smithy.api#required" => {}}))
    UpdateTableRequest.add_member(:retention_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionProperties, location_name: 'RetentionProperties', traits: {"smithy.api#documentation" => "<p>The retention duration of the memory store and the magnetic store.</p>"}))
    UpdateTableRequest.add_member(:magnetic_store_write_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: MagneticStoreWriteProperties, location_name: 'MagneticStoreWriteProperties', traits: {"smithy.api#documentation" => "<p>Contains properties to set on the table when enabling magnetic store writes.</p>"}))
    UpdateTableRequest.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p> The schema of the table. </p>"}))
    UpdateTableRequest.type = Types::UpdateTableRequest
    UpdateTableResponse.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Table, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>The updated Timestream table.</p>"}))
    UpdateTableResponse.type = Types::UpdateTableResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WriteRecordsRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    WriteRecordsRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream table.</p>", "smithy.api#required" => {}}))
    WriteRecordsRequest.add_member(:common_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Record, location_name: 'CommonAttributes', traits: {"smithy.api#documentation" => "<p>A record that contains the common measure, dimension, time, and version attributes\n         shared across all the records in the request. The measure and dimension attributes\n         specified will be merged with the measure and dimension attributes in the records object\n         when the data is written into Timestream. Dimensions may not overlap, or a\n            <code>ValidationException</code> will be thrown. In other words, a record must contain\n         dimensions with unique names. </p>"}))
    WriteRecordsRequest.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: Records, location_name: 'Records', traits: {"smithy.api#documentation" => "<p>An array of records that contain the unique measure, dimension, time, and version\n         attributes for each time-series data point. </p>", "smithy.api#required" => {}}))
    WriteRecordsRequest.type = Types::WriteRecordsRequest
    WriteRecordsResponse.add_member(:records_ingested, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordsIngested, location_name: 'RecordsIngested', traits: {"smithy.api#documentation" => "<p>Information on the records ingested by this request.</p>"}))
    WriteRecordsResponse.type = Types::WriteRecordsResponse

    Timestream20181101 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.timestreamwrite#Timestream_20181101"
      service.name = "Timestream20181101"
      service.version = "2018-11-01"
      service.traits = {"aws.api#clientEndpointDiscovery" => {"operation" => "com.amazonaws.timestreamwrite#DescribeEndpoints", "error" => "com.amazonaws.timestreamwrite#InvalidEndpointException"}, "aws.api#service" => {"sdkId" => "Timestream Write", "arnNamespace" => "timestream", "cloudFormationName" => "TimestreamWrite", "cloudTrailEventSource" => "timestreamwrite.amazonaws.com", "endpointPrefix" => "ingest.timestream"}, "aws.auth#sigv4" => {"name" => "timestream"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Timestream Write"}
      service.add_operation(:create_batch_load_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#CreateBatchLoadTask"
        operation.name = "CreateBatchLoadTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchLoadTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchLoadTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:create_database, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#CreateDatabase"
        operation.name = "CreateDatabase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatabaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatabaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:create_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#CreateTable"
        operation.name = "CreateTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:delete_database, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DeleteDatabase"
        operation.name = "DeleteDatabase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatabaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:delete_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_batch_load_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeBatchLoadTask"
        operation.name = "DescribeBatchLoadTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchLoadTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchLoadTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_database, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeDatabase"
        operation.name = "DescribeDatabase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatabaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatabaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:list_batch_load_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListBatchLoadTasks"
        operation.name = "ListBatchLoadTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchLoadTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchLoadTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListBatchLoadTasks.new
      end)
      service.add_operation(:list_databases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_tables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListTables"
        operation.name = "ListTables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:resume_batch_load_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ResumeBatchLoadTask"
        operation.name = "ResumeBatchLoadTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeBatchLoadTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeBatchLoadTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:update_database, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#UpdateDatabase"
        operation.name = "UpdateDatabase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatabaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatabaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:update_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#UpdateTable"
        operation.name = "UpdateTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:write_records, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#WriteRecords"
        operation.name = "WriteRecords"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: WriteRecordsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: WriteRecordsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RejectedRecordsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
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
