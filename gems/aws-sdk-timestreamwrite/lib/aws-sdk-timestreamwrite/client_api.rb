# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamWrite
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDatabaseRequest = Shapes::StructureShape.new(name: 'CreateDatabaseRequest')
    CreateDatabaseResponse = Shapes::StructureShape.new(name: 'CreateDatabaseResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    Database = Shapes::StructureShape.new(name: 'Database')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteDatabaseRequest = Shapes::StructureShape.new(name: 'DeleteDatabaseRequest')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    DescribeDatabaseRequest = Shapes::StructureShape.new(name: 'DescribeDatabaseRequest')
    DescribeDatabaseResponse = Shapes::StructureShape.new(name: 'DescribeDatabaseResponse')
    DescribeEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DescribeTableRequest = Shapes::StructureShape.new(name: 'DescribeTableRequest')
    DescribeTableResponse = Shapes::StructureShape.new(name: 'DescribeTableResponse')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionValueType = Shapes::StringShape.new(name: 'DimensionValueType')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidEndpointException = Shapes::StructureShape.new(name: 'InvalidEndpointException')
    ListDatabasesRequest = Shapes::StructureShape.new(name: 'ListDatabasesRequest')
    ListDatabasesResponse = Shapes::StructureShape.new(name: 'ListDatabasesResponse')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MagneticStoreRetentionPeriodInDays = Shapes::IntegerShape.new(name: 'MagneticStoreRetentionPeriodInDays')
    MeasureValueType = Shapes::StringShape.new(name: 'MeasureValueType')
    MemoryStoreRetentionPeriodInHours = Shapes::IntegerShape.new(name: 'MemoryStoreRetentionPeriodInHours')
    PaginationLimit = Shapes::IntegerShape.new(name: 'PaginationLimit')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordIndex = Shapes::IntegerShape.new(name: 'RecordIndex')
    Records = Shapes::ListShape.new(name: 'Records')
    RejectedRecord = Shapes::StructureShape.new(name: 'RejectedRecord')
    RejectedRecords = Shapes::ListShape.new(name: 'RejectedRecords')
    RejectedRecordsException = Shapes::StructureShape.new(name: 'RejectedRecordsException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetentionProperties = Shapes::StructureShape.new(name: 'RetentionProperties')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
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

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    CreateDatabaseRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "KmsKeyId"))
    CreateDatabaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDatabaseRequest.struct_class = Types::CreateDatabaseRequest

    CreateDatabaseResponse.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    CreateDatabaseResponse.struct_class = Types::CreateDatabaseResponse

    CreateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "DatabaseName"))
    CreateTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TableName"))
    CreateTableRequest.add_member(:retention_properties, Shapes::ShapeRef.new(shape: RetentionProperties, location_name: "RetentionProperties"))
    CreateTableRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTableRequest.struct_class = Types::CreateTableRequest

    CreateTableResponse.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    CreateTableResponse.struct_class = Types::CreateTableResponse

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

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: StringValue256, required: true, location_name: "Name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: StringValue2048, required: true, location_name: "Value"))
    Dimension.add_member(:dimension_value_type, Shapes::ShapeRef.new(shape: DimensionValueType, location_name: "DimensionValueType"))
    Dimension.struct_class = Types::Dimension

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Address"))
    Endpoint.add_member(:cache_period_in_minutes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "CachePeriodInMinutes"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidEndpointException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidEndpointException.struct_class = Types::InvalidEndpointException

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

    Record.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    Record.add_member(:measure_name, Shapes::ShapeRef.new(shape: StringValue256, location_name: "MeasureName"))
    Record.add_member(:measure_value, Shapes::ShapeRef.new(shape: StringValue2048, location_name: "MeasureValue"))
    Record.add_member(:measure_value_type, Shapes::ShapeRef.new(shape: MeasureValueType, location_name: "MeasureValueType"))
    Record.add_member(:time, Shapes::ShapeRef.new(shape: StringValue256, location_name: "Time"))
    Record.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, location_name: "TimeUnit"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    RejectedRecord.add_member(:record_index, Shapes::ShapeRef.new(shape: RecordIndex, location_name: "RecordIndex"))
    RejectedRecord.add_member(:reason, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Reason"))
    RejectedRecord.struct_class = Types::RejectedRecord

    RejectedRecords.member = Shapes::ShapeRef.new(shape: RejectedRecord)

    RejectedRecordsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RejectedRecordsException.add_member(:rejected_records, Shapes::ShapeRef.new(shape: RejectedRecords, location_name: "RejectedRecords"))
    RejectedRecordsException.struct_class = Types::RejectedRecordsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetentionProperties.add_member(:memory_store_retention_period_in_hours, Shapes::ShapeRef.new(shape: MemoryStoreRetentionPeriodInHours, required: true, location_name: "MemoryStoreRetentionPeriodInHours"))
    RetentionProperties.add_member(:magnetic_store_retention_period_in_days, Shapes::ShapeRef.new(shape: MagneticStoreRetentionPeriodInDays, required: true, location_name: "MagneticStoreRetentionPeriodInDays"))
    RetentionProperties.struct_class = Types::RetentionProperties

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Table.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Table.add_member(:table_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TableName"))
    Table.add_member(:database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "DatabaseName"))
    Table.add_member(:table_status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    Table.add_member(:retention_properties, Shapes::ShapeRef.new(shape: RetentionProperties, location_name: "RetentionProperties"))
    Table.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    Table.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
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
    UpdateTableRequest.add_member(:retention_properties, Shapes::ShapeRef.new(shape: RetentionProperties, required: true, location_name: "RetentionProperties"))
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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
