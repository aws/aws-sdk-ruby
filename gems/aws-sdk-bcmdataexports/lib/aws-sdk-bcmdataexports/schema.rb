# frozen_string_literal: true

# This is generated code!

module Aws::BCMDataExports
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:[-a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    Column = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#Column", name: "Column")
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#ColumnList", name: "ColumnList")
    CompressionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#CompressionOption", name: "CompressionOption")
    CreateExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#CreateExportRequest", name: "CreateExportRequest")
    CreateExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#CreateExportResponse", name: "CreateExportResponse")
    DataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#DataQuery", name: "DataQuery")
    DeleteExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#DeleteExportRequest", name: "DeleteExportRequest")
    DeleteExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#DeleteExportResponse", name: "DeleteExportResponse")
    DestinationConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#DestinationConfigurations", name: "DestinationConfigurations")
    ExecutionReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ExecutionReference", name: "ExecutionReference")
    ExecutionReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#ExecutionReferenceList", name: "ExecutionReferenceList")
    ExecutionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ExecutionStatus", name: "ExecutionStatus")
    ExecutionStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#ExecutionStatusCode", name: "ExecutionStatusCode")
    ExecutionStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#ExecutionStatusReason", name: "ExecutionStatusReason")
    Export = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#Export", name: "Export")
    ExportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#ExportName", name: "ExportName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9A-Za-z!\\-_.*\\'()]+$"})
    ExportReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ExportReference", name: "ExportReference")
    ExportReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#ExportReferenceList", name: "ExportReferenceList")
    ExportStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ExportStatus", name: "ExportStatus")
    ExportStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#ExportStatusCode", name: "ExportStatusCode")
    FormatOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#FormatOption", name: "FormatOption")
    FrequencyOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#FrequencyOption", name: "FrequencyOption")
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    GenericStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#GenericStringList", name: "GenericStringList")
    GetExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#GetExecutionRequest", name: "GetExecutionRequest")
    GetExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#GetExecutionResponse", name: "GetExecutionResponse")
    GetExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#GetExportRequest", name: "GetExportRequest")
    GetExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#GetExportResponse", name: "GetExportResponse")
    GetTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#GetTableRequest", name: "GetTableRequest")
    GetTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#GetTableResponse", name: "GetTableResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListExecutionsRequest", name: "ListExecutionsRequest")
    ListExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListExecutionsResponse", name: "ListExecutionsResponse")
    ListExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListExportsRequest", name: "ListExportsRequest")
    ListExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListExportsResponse", name: "ListExportsResponse")
    ListTablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListTablesRequest", name: "ListTablesRequest")
    ListTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListTablesResponse", name: "ListTablesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmdataexports#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    NextPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#NextPageToken", name: "NextPageToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    OverwriteOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#OverwriteOption", name: "OverwriteOption")
    QueryStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#QueryStatement", name: "QueryStatement", traits: {"smithy.api#length" => {"min" => 1, "max" => 36000}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    RefreshCadence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#RefreshCadence", name: "RefreshCadence")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#ResourceTagKeyList", name: "ResourceTagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#S3Destination", name: "S3Destination")
    S3OutputConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#S3OutputConfigurations", name: "S3OutputConfigurations")
    S3OutputType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#S3OutputType", name: "S3OutputType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Table = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#Table", name: "Table")
    TableConfigurations = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bcmdataexports#TableConfigurations", name: "TableConfigurations")
    TableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#TableList", name: "TableList")
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TableProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bcmdataexports#TableProperties", name: "TableProperties")
    TableProperty = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmdataexports#TableProperty", name: "TableProperty", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TablePropertyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#TablePropertyDescription", name: "TablePropertyDescription")
    TablePropertyDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#TablePropertyDescriptionList", name: "TablePropertyDescriptionList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#TagResourceResponse", name: "TagResourceResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#UpdateExportRequest", name: "UpdateExportRequest")
    UpdateExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#UpdateExportResponse", name: "UpdateExportResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmdataexports#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmdataexports#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmdataexports#ValidationExceptionReason", name: "ValidationExceptionReason")

    Column.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    Column.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Type"))
    Column.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Column.type = Types::Column
    ColumnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Column)
    CompressionOption.add_member(:gzip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    CompressionOption.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    CreateExportRequest.add_member(:export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Export, location_name: "Export", traits: {"smithy.api#required" => {}}))
    CreateExportRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateExportRequest.type = Types::CreateExportRequest
    CreateExportResponse.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    CreateExportResponse.type = Types::CreateExportResponse
    DataQuery.add_member(:query_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: "QueryStatement", traits: {"smithy.api#required" => {}}))
    DataQuery.add_member(:table_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableConfigurations, location_name: "TableConfigurations"))
    DataQuery.type = Types::DataQuery
    DeleteExportRequest.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn", traits: {"smithy.api#required" => {}}))
    DeleteExportRequest.type = Types::DeleteExportRequest
    DeleteExportResponse.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    DeleteExportResponse.type = Types::DeleteExportResponse
    DestinationConfigurations.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: "S3Destination", traits: {"smithy.api#required" => {}}))
    DestinationConfigurations.type = Types::DestinationConfigurations
    ExecutionReference.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ExecutionId", traits: {"smithy.api#required" => {}}))
    ExecutionReference.add_member(:execution_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "ExecutionStatus", traits: {"smithy.api#required" => {}}))
    ExecutionReference.type = Types::ExecutionReference
    ExecutionReferenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionReference)
    ExecutionStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatusCode, location_name: "StatusCode"))
    ExecutionStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatusReason, location_name: "StatusReason"))
    ExecutionStatus.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExecutionStatus.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CompletedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExecutionStatus.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExecutionStatus.type = Types::ExecutionStatus
    ExecutionStatusCode.add_member(:initiation_in_process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIATION_IN_PROCESS", traits: {"smithy.api#enumValue" => "INITIATION_IN_PROCESS"}))
    ExecutionStatusCode.add_member(:query_queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUERY_QUEUED", traits: {"smithy.api#enumValue" => "QUERY_QUEUED"}))
    ExecutionStatusCode.add_member(:query_in_process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUERY_IN_PROCESS", traits: {"smithy.api#enumValue" => "QUERY_IN_PROCESS"}))
    ExecutionStatusCode.add_member(:query_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUERY_FAILURE", traits: {"smithy.api#enumValue" => "QUERY_FAILURE"}))
    ExecutionStatusCode.add_member(:delivery_in_process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_IN_PROCESS", traits: {"smithy.api#enumValue" => "DELIVERY_IN_PROCESS"}))
    ExecutionStatusCode.add_member(:delivery_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_SUCCESS", traits: {"smithy.api#enumValue" => "DELIVERY_SUCCESS"}))
    ExecutionStatusCode.add_member(:delivery_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_FAILURE", traits: {"smithy.api#enumValue" => "DELIVERY_FAILURE"}))
    ExecutionStatusReason.add_member(:insufficient_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_PERMISSION", traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSION"}))
    ExecutionStatusReason.add_member(:bill_owner_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BILL_OWNER_CHANGED", traits: {"smithy.api#enumValue" => "BILL_OWNER_CHANGED"}))
    ExecutionStatusReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    Export.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    Export.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Export.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Export.add_member(:data_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataQuery, location_name: "DataQuery", traits: {"smithy.api#required" => {}}))
    Export.add_member(:destination_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfigurations, location_name: "DestinationConfigurations", traits: {"smithy.api#required" => {}}))
    Export.add_member(:refresh_cadence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshCadence, location_name: "RefreshCadence", traits: {"smithy.api#required" => {}}))
    Export.type = Types::Export
    ExportReference.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn", traits: {"smithy.api#required" => {}}))
    ExportReference.add_member(:export_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportName, location_name: "ExportName", traits: {"smithy.api#required" => {}}))
    ExportReference.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: "ExportStatus", traits: {"smithy.api#required" => {}}))
    ExportReference.type = Types::ExportReference
    ExportReferenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReference)
    ExportStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatusCode, location_name: "StatusCode"))
    ExportStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatusReason, location_name: "StatusReason"))
    ExportStatus.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExportStatus.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExportStatus.add_member(:last_refreshed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "LastRefreshedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExportStatus.type = Types::ExportStatus
    ExportStatusCode.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ExportStatusCode.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    FormatOption.add_member(:text_or_csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT_OR_CSV", traits: {"smithy.api#enumValue" => "TEXT_OR_CSV"}))
    FormatOption.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    FrequencyOption.add_member(:synchronous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYNCHRONOUS", traits: {"smithy.api#enumValue" => "SYNCHRONOUS"}))
    GenericStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    GetExecutionRequest.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn", traits: {"smithy.api#required" => {}}))
    GetExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ExecutionId", traits: {"smithy.api#required" => {}}))
    GetExecutionRequest.type = Types::GetExecutionRequest
    GetExecutionResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ExecutionId"))
    GetExecutionResponse.add_member(:export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Export, location_name: "Export"))
    GetExecutionResponse.add_member(:execution_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "ExecutionStatus"))
    GetExecutionResponse.type = Types::GetExecutionResponse
    GetExportRequest.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn", traits: {"smithy.api#required" => {}}))
    GetExportRequest.type = Types::GetExportRequest
    GetExportResponse.add_member(:export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Export, location_name: "Export"))
    GetExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: "ExportStatus"))
    GetExportResponse.type = Types::GetExportResponse
    GetTableRequest.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    GetTableRequest.add_member(:table_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableProperties, location_name: "TableProperties"))
    GetTableRequest.type = Types::GetTableRequest
    GetTableResponse.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    GetTableResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    GetTableResponse.add_member(:table_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableProperties, location_name: "TableProperties"))
    GetTableResponse.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: "Schema"))
    GetTableResponse.type = Types::GetTableResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListExecutionsRequest.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn", traits: {"smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExecutionsRequest.type = Types::ListExecutionsRequest
    ListExecutionsResponse.add_member(:executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionReferenceList, location_name: "Executions"))
    ListExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExecutionsResponse.type = Types::ListExecutionsResponse
    ListExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExportsRequest.type = Types::ListExportsRequest
    ListExportsResponse.add_member(:exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReferenceList, location_name: "Exports"))
    ListExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExportsResponse.type = Types::ListExportsResponse
    ListTablesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTablesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableList, location_name: "Tables"))
    ListTablesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTablesResponse.type = Types::ListTablesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OverwriteOption.add_member(:create_new_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_NEW_REPORT", traits: {"smithy.api#enumValue" => "CREATE_NEW_REPORT"}))
    OverwriteOption.add_member(:overwrite_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERWRITE_REPORT", traits: {"smithy.api#enumValue" => "OVERWRITE_REPORT"}))
    RefreshCadence.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrequencyOption, location_name: "Frequency", traits: {"smithy.api#required" => {}}))
    RefreshCadence.type = Types::RefreshCadence
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    ResourceTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    S3Destination.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    S3Destination.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "S3Prefix", traits: {"smithy.api#required" => {}}))
    S3Destination.add_member(:s3_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "S3Region", traits: {"smithy.api#required" => {}}))
    S3Destination.add_member(:s3_output_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3OutputConfigurations, location_name: "S3OutputConfigurations", traits: {"smithy.api#required" => {}}))
    S3Destination.type = Types::S3Destination
    S3OutputConfigurations.add_member(:output_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3OutputType, location_name: "OutputType", traits: {"smithy.api#required" => {}}))
    S3OutputConfigurations.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOption, location_name: "Format", traits: {"smithy.api#required" => {}}))
    S3OutputConfigurations.add_member(:compression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompressionOption, location_name: "Compression", traits: {"smithy.api#required" => {}}))
    S3OutputConfigurations.add_member(:overwrite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteOption, location_name: "Overwrite", traits: {"smithy.api#required" => {}}))
    S3OutputConfigurations.type = Types::S3OutputConfigurations
    S3OutputType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Table.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    Table.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Table.add_member(:table_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TablePropertyDescriptionList, location_name: "TableProperties"))
    Table.type = Types::Table
    TableConfigurations.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName)
    TableConfigurations.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableProperties)
    TableList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Table)
    TableProperties.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableProperty)
    TableProperties.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    TablePropertyDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    TablePropertyDescription.add_member(:valid_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericStringList, location_name: "ValidValues"))
    TablePropertyDescription.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "DefaultValue"))
    TablePropertyDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    TablePropertyDescription.type = Types::TablePropertyDescription
    TablePropertyDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TablePropertyDescription)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ServiceCode"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKeyList, location_name: "ResourceTagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateExportRequest.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn", traits: {"smithy.api#required" => {}}))
    UpdateExportRequest.add_member(:export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Export, location_name: "Export", traits: {"smithy.api#required" => {}}))
    UpdateExportRequest.type = Types::UpdateExportRequest
    UpdateExportResponse.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    UpdateExportResponse.type = Types::UpdateExportResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    AWSBillingAndCostManagementDataExports = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bcmdataexports#AWSBillingAndCostManagementDataExports"
      service.name = "AWSBillingAndCostManagementDataExports"
      service.version = "2023-11-26"
      service.traits = {"aws.api#service" => {"sdkId" => "BCM Data Exports", "arnNamespace" => "bcm-data-exports", "cloudTrailEventSource" => "bcm-data-exports.amazonaws.com", "endpointPrefix" => "bcm-data-exports"}, "aws.auth#sigv4" => {"name" => "bcm-data-exports"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Billing and Cost Management Data Exports"}
      service.add_operation(:create_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#CreateExport"
        operation.name = "CreateExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#DeleteExport"
        operation.name = "DeleteExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#GetExecution"
        operation.name = "GetExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#GetExport"
        operation.name = "GetExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#GetTable"
        operation.name = "GetTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#ListExports"
        operation.name = "ListExports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#ListTables"
        operation.name = "ListTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmdataexports#UpdateExport"
        operation.name = "UpdateExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
