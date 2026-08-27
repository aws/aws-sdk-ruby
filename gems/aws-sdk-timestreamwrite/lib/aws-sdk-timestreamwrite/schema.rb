# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamWrite
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BatchLoadDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadDataFormat", name: "BatchLoadDataFormat")
    BatchLoadProgressReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadProgressReport", name: "BatchLoadProgressReport")
    BatchLoadStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadStatus", name: "BatchLoadStatus")
    BatchLoadTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadTask", name: "BatchLoadTask")
    BatchLoadTaskDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadTaskDescription", name: "BatchLoadTaskDescription")
    BatchLoadTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadTaskId", name: "BatchLoadTaskId", traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    BatchLoadTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#BatchLoadTaskList", name: "BatchLoadTaskList")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.timestreamwrite#Boolean", name: "Boolean")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBatchLoadTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CreateBatchLoadTaskRequest", name: "CreateBatchLoadTaskRequest")
    CreateBatchLoadTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CreateBatchLoadTaskResponse", name: "CreateBatchLoadTaskResponse")
    CreateDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CreateDatabaseRequest", name: "CreateDatabaseRequest")
    CreateDatabaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CreateDatabaseResponse", name: "CreateDatabaseResponse")
    CreateTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CreateTableRequest", name: "CreateTableRequest")
    CreateTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CreateTableResponse", name: "CreateTableResponse")
    CsvConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#CsvConfiguration", name: "CsvConfiguration")
    DataModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DataModel", name: "DataModel")
    DataModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DataModelConfiguration", name: "DataModelConfiguration")
    DataModelS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DataModelS3Configuration", name: "DataModelS3Configuration")
    DataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DataSourceConfiguration", name: "DataSourceConfiguration")
    DataSourceS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DataSourceS3Configuration", name: "DataSourceS3Configuration")
    Database = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Database", name: "Database")
    DatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#DatabaseList", name: "DatabaseList")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.timestreamwrite#Date", name: "Date")
    DeleteDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DeleteDatabaseRequest", name: "DeleteDatabaseRequest")
    DeleteTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DeleteTableRequest", name: "DeleteTableRequest")
    DescribeBatchLoadTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeBatchLoadTaskRequest", name: "DescribeBatchLoadTaskRequest")
    DescribeBatchLoadTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeBatchLoadTaskResponse", name: "DescribeBatchLoadTaskResponse")
    DescribeDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeDatabaseRequest", name: "DescribeDatabaseRequest")
    DescribeDatabaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeDatabaseResponse", name: "DescribeDatabaseResponse")
    DescribeEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeEndpointsRequest", name: "DescribeEndpointsRequest")
    DescribeEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeEndpointsResponse", name: "DescribeEndpointsResponse")
    DescribeTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeTableRequest", name: "DescribeTableRequest")
    DescribeTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DescribeTableResponse", name: "DescribeTableResponse")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Dimension", name: "Dimension")
    DimensionMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#DimensionMapping", name: "DimensionMapping")
    DimensionMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#DimensionMappings", name: "DimensionMappings", traits: {"smithy.api#length" => {"min" => 1}})
    DimensionValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#DimensionValueType", name: "DimensionValueType")
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Endpoint", name: "Endpoint")
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#Endpoints", name: "Endpoints")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#ErrorMessage", name: "ErrorMessage")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidEndpointException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#InvalidEndpointException", name: "InvalidEndpointException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 421})
    ListBatchLoadTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListBatchLoadTasksRequest", name: "ListBatchLoadTasksRequest")
    ListBatchLoadTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListBatchLoadTasksResponse", name: "ListBatchLoadTasksResponse")
    ListDatabasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListDatabasesRequest", name: "ListDatabasesRequest")
    ListDatabasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListDatabasesResponse", name: "ListDatabasesResponse")
    ListTablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListTablesRequest", name: "ListTablesRequest")
    ListTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListTablesResponse", name: "ListTablesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MagneticStoreRejectedDataLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#MagneticStoreRejectedDataLocation", name: "MagneticStoreRejectedDataLocation")
    MagneticStoreRetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#MagneticStoreRetentionPeriodInDays", name: "MagneticStoreRetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 73000}})
    MagneticStoreWriteProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#MagneticStoreWriteProperties", name: "MagneticStoreWriteProperties")
    MeasureValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#MeasureValue", name: "MeasureValue")
    MeasureValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#MeasureValueType", name: "MeasureValueType")
    MeasureValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#MeasureValues", name: "MeasureValues")
    MemoryStoreRetentionPeriodInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#MemoryStoreRetentionPeriodInHours", name: "MemoryStoreRetentionPeriodInHours", traits: {"smithy.api#range" => {"min" => 1, "max" => 8766}})
    MixedMeasureMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#MixedMeasureMapping", name: "MixedMeasureMapping")
    MixedMeasureMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#MixedMeasureMappingList", name: "MixedMeasureMappingList", traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureAttributeMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#MultiMeasureAttributeMapping", name: "MultiMeasureAttributeMapping")
    MultiMeasureAttributeMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#MultiMeasureAttributeMappingList", name: "MultiMeasureAttributeMappingList", traits: {"smithy.api#length" => {"min" => 1}})
    MultiMeasureMappings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#MultiMeasureMappings", name: "MultiMeasureMappings")
    PageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#PageLimit", name: "PageLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#PaginationLimit", name: "PaginationLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    PartitionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#PartitionKey", name: "PartitionKey")
    PartitionKeyEnforcementLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#PartitionKeyEnforcementLevel", name: "PartitionKeyEnforcementLevel")
    PartitionKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#PartitionKeyList", name: "PartitionKeyList", traits: {"smithy.api#length" => {"min" => 1}})
    PartitionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#PartitionKeyType", name: "PartitionKeyType")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Record", name: "Record")
    RecordIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#RecordIndex", name: "RecordIndex", traits: {"smithy.api#default" => 0})
    RecordVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreamwrite#RecordVersion", name: "RecordVersion", traits: {"smithy.api#default" => 0})
    Records = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#Records", name: "Records", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecordsIngested = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#RecordsIngested", name: "RecordsIngested")
    RejectedRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#RejectedRecord", name: "RejectedRecord")
    RejectedRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#RejectedRecords", name: "RejectedRecords")
    RejectedRecordsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#RejectedRecordsException", name: "RejectedRecordsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 419})
    ReportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ReportConfiguration", name: "ReportConfiguration")
    ReportS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ReportS3Configuration", name: "ReportS3Configuration")
    ResourceCreateAPIName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#ResourceCreateAPIName", name: "ResourceCreateAPIName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#ResourceName", name: "ResourceName")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResumeBatchLoadTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ResumeBatchLoadTaskRequest", name: "ResumeBatchLoadTaskRequest")
    ResumeBatchLoadTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ResumeBatchLoadTaskResponse", name: "ResumeBatchLoadTaskResponse")
    RetentionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#RetentionProperties", name: "RetentionProperties")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#S3Configuration", name: "S3Configuration")
    S3EncryptionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#S3EncryptionOption", name: "S3EncryptionOption")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    S3ObjectKeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#S3ObjectKeyPrefix", name: "S3ObjectKeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 928}, "smithy.api#pattern" => "^[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+$"})
    ScalarMeasureValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#ScalarMeasureValueType", name: "ScalarMeasureValueType")
    Schema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Schema", name: "Schema")
    SchemaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#SchemaName", name: "SchemaName", traits: {"smithy.api#length" => {"min" => 1}})
    SchemaValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#SchemaValue", name: "SchemaValue")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#String", name: "String")
    StringValue1 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#StringValue1", name: "StringValue1", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    StringValue2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#StringValue2048", name: "StringValue2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringValue256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#StringValue256", name: "StringValue256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Table = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Table", name: "Table")
    TableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#TableList", name: "TableList")
    TableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#TableStatus", name: "TableStatus")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreamwrite#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreamwrite#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreamwrite#TimeUnit", name: "TimeUnit")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#UpdateDatabaseRequest", name: "UpdateDatabaseRequest")
    UpdateDatabaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#UpdateDatabaseResponse", name: "UpdateDatabaseResponse")
    UpdateTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#UpdateTableRequest", name: "UpdateTableRequest")
    UpdateTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#UpdateTableResponse", name: "UpdateTableResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WriteRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#WriteRecordsRequest", name: "WriteRecordsRequest")
    WriteRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreamwrite#WriteRecordsResponse", name: "WriteRecordsResponse")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BatchLoadDataFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    BatchLoadProgressReport.add_member(:records_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RecordsProcessed", traits: {"smithy.api#default" => 0}))
    BatchLoadProgressReport.add_member(:records_ingested, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RecordsIngested", traits: {"smithy.api#default" => 0}))
    BatchLoadProgressReport.add_member(:parse_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ParseFailures", traits: {"smithy.api#default" => 0}))
    BatchLoadProgressReport.add_member(:record_ingestion_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RecordIngestionFailures", traits: {"smithy.api#default" => 0}))
    BatchLoadProgressReport.add_member(:file_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FileFailures", traits: {"smithy.api#default" => 0}))
    BatchLoadProgressReport.add_member(:bytes_metered, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesMetered", traits: {"smithy.api#default" => 0}))
    BatchLoadProgressReport.type = Types::BatchLoadProgressReport
    BatchLoadStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    BatchLoadStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BatchLoadStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BatchLoadStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    BatchLoadStatus.add_member(:progress_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROGRESS_STOPPED", traits: {"smithy.api#enumValue" => "PROGRESS_STOPPED"}))
    BatchLoadStatus.add_member(:pending_resume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_RESUME", traits: {"smithy.api#enumValue" => "PENDING_RESUME"}))
    BatchLoadTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskId, name: "TaskId"))
    BatchLoadTask.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadStatus, name: "TaskStatus"))
    BatchLoadTask.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName"))
    BatchLoadTask.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TableName"))
    BatchLoadTask.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    BatchLoadTask.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdatedTime"))
    BatchLoadTask.add_member(:resumable_until, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ResumableUntil"))
    BatchLoadTask.type = Types::BatchLoadTask
    BatchLoadTaskDescription.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskId, name: "TaskId"))
    BatchLoadTaskDescription.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "ErrorMessage"))
    BatchLoadTaskDescription.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "DataSourceConfiguration"))
    BatchLoadTaskDescription.add_member(:progress_report, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadProgressReport, name: "ProgressReport"))
    BatchLoadTaskDescription.add_member(:report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfiguration, name: "ReportConfiguration"))
    BatchLoadTaskDescription.add_member(:data_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataModelConfiguration, name: "DataModelConfiguration"))
    BatchLoadTaskDescription.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TargetDatabaseName"))
    BatchLoadTaskDescription.add_member(:target_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TargetTableName"))
    BatchLoadTaskDescription.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadStatus, name: "TaskStatus"))
    BatchLoadTaskDescription.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordVersion, name: "RecordVersion", traits: {"smithy.api#default" => 0}))
    BatchLoadTaskDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    BatchLoadTaskDescription.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdatedTime"))
    BatchLoadTaskDescription.add_member(:resumable_until, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ResumableUntil"))
    BatchLoadTaskDescription.type = Types::BatchLoadTaskDescription
    BatchLoadTaskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTask, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateBatchLoadTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBatchLoadTaskRequest.add_member(:data_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataModelConfiguration, name: "DataModelConfiguration"))
    CreateBatchLoadTaskRequest.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "DataSourceConfiguration", traits: {"smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfiguration, name: "ReportConfiguration", traits: {"smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreateAPIName, name: "TargetDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:target_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreateAPIName, name: "TargetTableName", traits: {"smithy.api#required" => {}}))
    CreateBatchLoadTaskRequest.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordVersion, name: "RecordVersion", traits: {"smithy.api#default" => nil}))
    CreateBatchLoadTaskRequest.type = Types::CreateBatchLoadTaskRequest
    CreateBatchLoadTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    CreateBatchLoadTaskResponse.type = Types::CreateBatchLoadTaskResponse
    CreateDatabaseRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreateAPIName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    CreateDatabaseRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "KmsKeyId"))
    CreateDatabaseRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDatabaseRequest.type = Types::CreateDatabaseRequest
    CreateDatabaseResponse.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database"))
    CreateDatabaseResponse.type = Types::CreateDatabaseResponse
    CreateTableRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreateAPIName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    CreateTableRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreateAPIName, name: "TableName", traits: {"smithy.api#required" => {}}))
    CreateTableRequest.add_member(:retention_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionProperties, name: "RetentionProperties"))
    CreateTableRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTableRequest.add_member(:magnetic_store_write_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MagneticStoreWriteProperties, name: "MagneticStoreWriteProperties"))
    CreateTableRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    CreateTableRequest.type = Types::CreateTableRequest
    CreateTableResponse.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: Table, name: "Table"))
    CreateTableResponse.type = Types::CreateTableResponse
    CsvConfiguration.add_member(:column_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue1, name: "ColumnSeparator"))
    CsvConfiguration.add_member(:escape_char, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue1, name: "EscapeChar"))
    CsvConfiguration.add_member(:quote_char, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue1, name: "QuoteChar"))
    CsvConfiguration.add_member(:null_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue256, name: "NullValue"))
    CsvConfiguration.add_member(:trim_white_space, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TrimWhiteSpace"))
    CsvConfiguration.type = Types::CsvConfiguration
    DataModel.add_member(:time_column, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue256, name: "TimeColumn"))
    DataModel.add_member(:time_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeUnit, name: "TimeUnit"))
    DataModel.add_member(:dimension_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMappings, name: "DimensionMappings", traits: {"smithy.api#required" => {}}))
    DataModel.add_member(:multi_measure_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureMappings, name: "MultiMeasureMappings"))
    DataModel.add_member(:mixed_measure_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedMeasureMappingList, name: "MixedMeasureMappings"))
    DataModel.add_member(:measure_name_column, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue256, name: "MeasureNameColumn"))
    DataModel.type = Types::DataModel
    DataModelConfiguration.add_member(:data_model, ::Smithy::Schema::Shapes::MemberShape.new(target: DataModel, name: "DataModel"))
    DataModelConfiguration.add_member(:data_model_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataModelS3Configuration, name: "DataModelS3Configuration"))
    DataModelConfiguration.type = Types::DataModelConfiguration
    DataModelS3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "BucketName"))
    DataModelS3Configuration.add_member(:object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "ObjectKey"))
    DataModelS3Configuration.type = Types::DataModelS3Configuration
    DataSourceConfiguration.add_member(:data_source_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceS3Configuration, name: "DataSourceS3Configuration", traits: {"smithy.api#required" => {}}))
    DataSourceConfiguration.add_member(:csv_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvConfiguration, name: "CsvConfiguration"))
    DataSourceConfiguration.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadDataFormat, name: "DataFormat", traits: {"smithy.api#required" => {}}))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DataSourceS3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    DataSourceS3Configuration.add_member(:object_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "ObjectKeyPrefix"))
    DataSourceS3Configuration.type = Types::DataSourceS3Configuration
    Database.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    Database.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName"))
    Database.add_member(:table_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TableCount", traits: {"smithy.api#default" => 0}))
    Database.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "KmsKeyId"))
    Database.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    Database.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdatedTime"))
    Database.type = Types::Database
    DatabaseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "member")
    DeleteDatabaseRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DeleteDatabaseRequest.type = Types::DeleteDatabaseRequest
    DeleteTableRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TableName", traits: {"smithy.api#required" => {}}))
    DeleteTableRequest.type = Types::DeleteTableRequest
    DescribeBatchLoadTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    DescribeBatchLoadTaskRequest.type = Types::DescribeBatchLoadTaskRequest
    DescribeBatchLoadTaskResponse.add_member(:batch_load_task_description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskDescription, name: "BatchLoadTaskDescription", traits: {"smithy.api#required" => {}}))
    DescribeBatchLoadTaskResponse.type = Types::DescribeBatchLoadTaskResponse
    DescribeDatabaseRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DescribeDatabaseRequest.type = Types::DescribeDatabaseRequest
    DescribeDatabaseResponse.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database"))
    DescribeDatabaseResponse.type = Types::DescribeDatabaseResponse
    DescribeEndpointsRequest.type = Types::DescribeEndpointsRequest
    DescribeEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints", traits: {"smithy.api#required" => {}}))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeTableRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DescribeTableRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TableName", traits: {"smithy.api#required" => {}}))
    DescribeTableRequest.type = Types::DescribeTableRequest
    DescribeTableResponse.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: Table, name: "Table"))
    DescribeTableResponse.type = Types::DescribeTableResponse
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name", traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:dimension_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueType, name: "DimensionValueType"))
    Dimension.type = Types::Dimension
    DimensionMapping.add_member(:source_column, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "SourceColumn"))
    DimensionMapping.add_member(:destination_column, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "DestinationColumn"))
    DimensionMapping.type = Types::DimensionMapping
    DimensionMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMapping, name: "member")
    DimensionValueType.add_member(:varchar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    Dimensions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member")
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address", traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:cache_period_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CachePeriodInMinutes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    Endpoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidEndpointException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidEndpointException.type = Types::InvalidEndpointException
    ListBatchLoadTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBatchLoadTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "MaxResults"))
    ListBatchLoadTasksRequest.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadStatus, name: "TaskStatus"))
    ListBatchLoadTasksRequest.type = Types::ListBatchLoadTasksRequest
    ListBatchLoadTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBatchLoadTasksResponse.add_member(:batch_load_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskList, name: "BatchLoadTasks"))
    ListBatchLoadTasksResponse.type = Types::ListBatchLoadTasksResponse
    ListDatabasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatabasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "MaxResults"))
    ListDatabasesRequest.type = Types::ListDatabasesRequest
    ListDatabasesResponse.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseList, name: "Databases"))
    ListDatabasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatabasesResponse.type = Types::ListDatabasesResponse
    ListTablesRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName"))
    ListTablesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTablesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "MaxResults"))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: TableList, name: "Tables"))
    ListTablesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTablesResponse.type = Types::ListTablesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MagneticStoreRejectedDataLocation.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "S3Configuration"))
    MagneticStoreRejectedDataLocation.type = Types::MagneticStoreRejectedDataLocation
    MagneticStoreWriteProperties.add_member(:enable_magnetic_store_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableMagneticStoreWrites", traits: {"smithy.api#required" => {}}))
    MagneticStoreWriteProperties.add_member(:magnetic_store_rejected_data_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MagneticStoreRejectedDataLocation, name: "MagneticStoreRejectedDataLocation"))
    MagneticStoreWriteProperties.type = Types::MagneticStoreWriteProperties
    MeasureValue.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name", traits: {"smithy.api#required" => {}}))
    MeasureValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "Value", traits: {"smithy.api#required" => {}}))
    MeasureValue.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValueType, name: "Type", traits: {"smithy.api#required" => {}}))
    MeasureValue.type = Types::MeasureValue
    MeasureValueType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    MeasureValueType.add_member(:bigint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    MeasureValueType.add_member(:varchar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    MeasureValueType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    MeasureValueType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    MeasureValueType.add_member(:multi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI", traits: {"smithy.api#enumValue" => "MULTI"}))
    MeasureValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValue, name: "member")
    MixedMeasureMapping.add_member(:measure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "MeasureName"))
    MixedMeasureMapping.add_member(:source_column, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "SourceColumn"))
    MixedMeasureMapping.add_member(:target_measure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "TargetMeasureName"))
    MixedMeasureMapping.add_member(:measure_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValueType, name: "MeasureValueType", traits: {"smithy.api#required" => {}}))
    MixedMeasureMapping.add_member(:multi_measure_attribute_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureAttributeMappingList, name: "MultiMeasureAttributeMappings"))
    MixedMeasureMapping.type = Types::MixedMeasureMapping
    MixedMeasureMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MixedMeasureMapping, name: "member")
    MultiMeasureAttributeMapping.add_member(:source_column, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "SourceColumn", traits: {"smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.add_member(:target_multi_measure_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "TargetMultiMeasureAttributeName"))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarMeasureValueType, name: "MeasureValueType"))
    MultiMeasureAttributeMapping.type = Types::MultiMeasureAttributeMapping
    MultiMeasureAttributeMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureAttributeMapping, name: "member")
    MultiMeasureMappings.add_member(:target_multi_measure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "TargetMultiMeasureName"))
    MultiMeasureMappings.add_member(:multi_measure_attribute_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureAttributeMappingList, name: "MultiMeasureAttributeMappings", traits: {"smithy.api#required" => {}}))
    MultiMeasureMappings.type = Types::MultiMeasureMappings
    PartitionKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyType, name: "Type", traits: {"smithy.api#required" => {}}))
    PartitionKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name"))
    PartitionKey.add_member(:enforcement_in_record, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyEnforcementLevel, name: "EnforcementInRecord"))
    PartitionKey.type = Types::PartitionKey
    PartitionKeyEnforcementLevel.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "REQUIRED"}))
    PartitionKeyEnforcementLevel.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    PartitionKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "member")
    PartitionKeyType.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIMENSION", traits: {"smithy.api#enumValue" => "DIMENSION"}))
    PartitionKeyType.add_member(:measure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEASURE", traits: {"smithy.api#enumValue" => "MEASURE"}))
    Record.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    Record.add_member(:measure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "MeasureName"))
    Record.add_member(:measure_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "MeasureValue"))
    Record.add_member(:measure_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValueType, name: "MeasureValueType"))
    Record.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue256, name: "Time"))
    Record.add_member(:time_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeUnit, name: "TimeUnit"))
    Record.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordVersion, name: "Version", traits: {"smithy.api#default" => nil}))
    Record.add_member(:measure_values, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValues, name: "MeasureValues"))
    Record.type = Types::Record
    Records.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member")
    RecordsIngested.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Total", traits: {"smithy.api#default" => 0}))
    RecordsIngested.add_member(:memory_store, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MemoryStore", traits: {"smithy.api#default" => 0}))
    RecordsIngested.add_member(:magnetic_store, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MagneticStore", traits: {"smithy.api#default" => 0}))
    RecordsIngested.type = Types::RecordsIngested
    RejectedRecord.add_member(:record_index, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIndex, name: "RecordIndex", traits: {"smithy.api#default" => 0}))
    RejectedRecord.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Reason"))
    RejectedRecord.add_member(:existing_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordVersion, name: "ExistingVersion", traits: {"smithy.api#default" => nil}))
    RejectedRecord.type = Types::RejectedRecord
    RejectedRecords.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RejectedRecord, name: "member")
    RejectedRecordsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    RejectedRecordsException.add_member(:rejected_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectedRecords, name: "RejectedRecords"))
    RejectedRecordsException.type = Types::RejectedRecordsException
    ReportConfiguration.add_member(:report_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportS3Configuration, name: "ReportS3Configuration"))
    ReportConfiguration.type = Types::ReportConfiguration
    ReportS3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    ReportS3Configuration.add_member(:object_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKeyPrefix, name: "ObjectKeyPrefix"))
    ReportS3Configuration.add_member(:encryption_option, ::Smithy::Schema::Shapes::MemberShape.new(target: S3EncryptionOption, name: "EncryptionOption"))
    ReportS3Configuration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "KmsKeyId"))
    ReportS3Configuration.type = Types::ReportS3Configuration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeBatchLoadTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLoadTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    ResumeBatchLoadTaskRequest.type = Types::ResumeBatchLoadTaskRequest
    ResumeBatchLoadTaskResponse.type = Types::ResumeBatchLoadTaskResponse
    RetentionProperties.add_member(:memory_store_retention_period_in_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStoreRetentionPeriodInHours, name: "MemoryStoreRetentionPeriodInHours", traits: {"smithy.api#required" => {}}))
    RetentionProperties.add_member(:magnetic_store_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: MagneticStoreRetentionPeriodInDays, name: "MagneticStoreRetentionPeriodInDays", traits: {"smithy.api#required" => {}}))
    RetentionProperties.type = Types::RetentionProperties
    S3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "BucketName"))
    S3Configuration.add_member(:object_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKeyPrefix, name: "ObjectKeyPrefix"))
    S3Configuration.add_member(:encryption_option, ::Smithy::Schema::Shapes::MemberShape.new(target: S3EncryptionOption, name: "EncryptionOption"))
    S3Configuration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "KmsKeyId"))
    S3Configuration.type = Types::S3Configuration
    S3EncryptionOption.add_member(:sse_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_S3", traits: {"smithy.api#enumValue" => "SSE_S3"}))
    S3EncryptionOption.add_member(:sse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_KMS", traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    ScalarMeasureValueType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarMeasureValueType.add_member(:bigint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    ScalarMeasureValueType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarMeasureValueType.add_member(:varchar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ScalarMeasureValueType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    Schema.add_member(:composite_partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyList, name: "CompositePartitionKey"))
    Schema.type = Types::Schema
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Table.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    Table.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TableName"))
    Table.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName"))
    Table.add_member(:table_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatus, name: "TableStatus"))
    Table.add_member(:retention_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionProperties, name: "RetentionProperties"))
    Table.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    Table.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdatedTime"))
    Table.add_member(:magnetic_store_write_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MagneticStoreWriteProperties, name: "MagneticStoreWriteProperties"))
    Table.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    Table.type = Types::Table
    TableList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Table, name: "member")
    TableStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TableStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TableStatus.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "RESTORING"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "MILLISECONDS"}))
    TimeUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "SECONDS"}))
    TimeUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSECONDS", traits: {"smithy.api#enumValue" => "MICROSECONDS"}))
    TimeUnit.add_member(:nanoseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NANOSECONDS", traits: {"smithy.api#enumValue" => "NANOSECONDS"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatabaseRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateDatabaseRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue2048, name: "KmsKeyId", traits: {"smithy.api#required" => {}}))
    UpdateDatabaseRequest.type = Types::UpdateDatabaseRequest
    UpdateDatabaseResponse.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database"))
    UpdateDatabaseResponse.type = Types::UpdateDatabaseResponse
    UpdateTableRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateTableRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TableName", traits: {"smithy.api#required" => {}}))
    UpdateTableRequest.add_member(:retention_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionProperties, name: "RetentionProperties"))
    UpdateTableRequest.add_member(:magnetic_store_write_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MagneticStoreWriteProperties, name: "MagneticStoreWriteProperties"))
    UpdateTableRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "Schema"))
    UpdateTableRequest.type = Types::UpdateTableRequest
    UpdateTableResponse.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: Table, name: "Table"))
    UpdateTableResponse.type = Types::UpdateTableResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WriteRecordsRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    WriteRecordsRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TableName", traits: {"smithy.api#required" => {}}))
    WriteRecordsRequest.add_member(:common_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "CommonAttributes"))
    WriteRecordsRequest.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: Records, name: "Records", traits: {"smithy.api#required" => {}}))
    WriteRecordsRequest.type = Types::WriteRecordsRequest
    WriteRecordsResponse.add_member(:records_ingested, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordsIngested, name: "RecordsIngested"))
    WriteRecordsResponse.type = Types::WriteRecordsResponse

    Timestream20181101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.timestreamwrite#Timestream_20181101"
      service.name = "Timestream20181101"
      service.version = "2018-11-01"
      service.traits = {"aws.api#clientEndpointDiscovery" => {"operation" => "com.amazonaws.timestreamwrite#DescribeEndpoints", "error" => "com.amazonaws.timestreamwrite#InvalidEndpointException"}, "aws.api#service" => {"sdkId" => "Timestream Write", "arnNamespace" => "timestream", "cloudFormationName" => "TimestreamWrite", "cloudTrailEventSource" => "timestreamwrite.amazonaws.com", "endpointPrefix" => "ingest.timestream"}, "aws.auth#sigv4" => {"name" => "timestream"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Timestream Write"}
      service.add_operation(:create_batch_load_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#CreateBatchLoadTask"
        operation.name = "CreateBatchLoadTask"
        operation.input = CreateBatchLoadTaskRequest
        operation.output = CreateBatchLoadTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:create_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#CreateDatabase"
        operation.name = "CreateDatabase"
        operation.input = CreateDatabaseRequest
        operation.output = CreateDatabaseResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:create_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#CreateTable"
        operation.name = "CreateTable"
        operation.input = CreateTableRequest
        operation.output = CreateTableResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:delete_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DeleteDatabase"
        operation.name = "DeleteDatabase"
        operation.input = DeleteDatabaseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:delete_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = DeleteTableRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_batch_load_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeBatchLoadTask"
        operation.name = "DescribeBatchLoadTask"
        operation.input = DescribeBatchLoadTaskRequest
        operation.output = DescribeBatchLoadTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeDatabase"
        operation.name = "DescribeDatabase"
        operation.input = DescribeDatabaseRequest
        operation.output = DescribeDatabaseResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:describe_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = DescribeEndpointsRequest
        operation.output = DescribeEndpointsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = DescribeTableRequest
        operation.output = DescribeTableResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:list_batch_load_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListBatchLoadTasks"
        operation.name = "ListBatchLoadTasks"
        operation.input = ListBatchLoadTasksRequest
        operation.output = ListBatchLoadTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListBatchLoadTasks.new
      end)
      service.add_operation(:list_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = ListDatabasesRequest
        operation.output = ListDatabasesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListTables"
        operation.name = "ListTables"
        operation.input = ListTablesRequest
        operation.output = ListTablesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:resume_batch_load_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#ResumeBatchLoadTask"
        operation.name = "ResumeBatchLoadTask"
        operation.input = ResumeBatchLoadTaskRequest
        operation.output = ResumeBatchLoadTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:update_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#UpdateDatabase"
        operation.name = "UpdateDatabase"
        operation.input = UpdateDatabaseRequest
        operation.output = UpdateDatabaseResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:update_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#UpdateTable"
        operation.name = "UpdateTable"
        operation.input = UpdateTableRequest
        operation.output = UpdateTableResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
      end)
      service.add_operation(:write_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreamwrite#WriteRecords"
        operation.name = "WriteRecords"
        operation.input = WriteRecordsRequest
        operation.output = WriteRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidEndpointException
        operation.errors << RejectedRecordsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => true}}
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
