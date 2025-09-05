# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActiveSessionsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ActiveSessionsExceededException', name: 'ActiveSessionsExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ActiveStatementsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ActiveStatementsExceededException', name: 'ActiveStatementsExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchExecuteStatementException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#BatchExecuteStatementException', name: 'BatchExecuteStatementException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    BatchExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#BatchExecuteStatementInput', name: 'BatchExecuteStatementInput')
    BatchExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#BatchExecuteStatementOutput', name: 'BatchExecuteStatementOutput')
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.redshiftdata#Blob', name: 'Blob')
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshiftdata#BoxedBoolean', name: 'BoxedBoolean')
    BoxedDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshiftdata#BoxedDouble', name: 'BoxedDouble')
    BoxedLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#BoxedLong', name: 'BoxedLong')
    CancelStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#CancelStatementRequest', name: 'CancelStatementRequest')
    CancelStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#CancelStatementResponse', name: 'CancelStatementResponse')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ClusterIdentifierString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ClusterIdentifierString', name: 'ClusterIdentifierString', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#ColumnList', name: 'ColumnList')
    ColumnMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ColumnMetadata', name: 'ColumnMetadata')
    ColumnMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#ColumnMetadataList', name: 'ColumnMetadataList')
    DatabaseConnectionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DatabaseConnectionException', name: 'DatabaseConnectionException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#DatabaseList', name: 'DatabaseList')
    DbGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#DbGroupList', name: 'DbGroupList')
    DescribeStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeStatementRequest', name: 'DescribeStatementRequest')
    DescribeStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeStatementResponse', name: 'DescribeStatementResponse')
    DescribeTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeTableRequest', name: 'DescribeTableRequest')
    DescribeTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeTableResponse', name: 'DescribeTableResponse')
    ExecuteStatementException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ExecuteStatementException', name: 'ExecuteStatementException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ExecuteStatementInput', name: 'ExecuteStatementInput')
    ExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ExecuteStatementOutput', name: 'ExecuteStatementOutput')
    Field = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshiftdata#Field', name: 'Field')
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#FieldList', name: 'FieldList')
    FormattedSqlRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#FormattedSqlRecords', name: 'FormattedSqlRecords')
    GetStatementResultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultRequest', name: 'GetStatementResultRequest')
    GetStatementResultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultResponse', name: 'GetStatementResultResponse')
    GetStatementResultV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultV2Request', name: 'GetStatementResultV2Request')
    GetStatementResultV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultV2Response', name: 'GetStatementResultV2Response')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListDatabasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListDatabasesRequest', name: 'ListDatabasesRequest')
    ListDatabasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListDatabasesResponse', name: 'ListDatabasesResponse')
    ListSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListSchemasRequest', name: 'ListSchemasRequest')
    ListSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListSchemasResponse', name: 'ListSchemasResponse')
    ListStatementsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#ListStatementsLimit', name: 'ListStatementsLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ListStatementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListStatementsRequest', name: 'ListStatementsRequest')
    ListStatementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListStatementsResponse', name: 'ListStatementsResponse')
    ListTablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListTablesRequest', name: 'ListTablesRequest')
    ListTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListTablesResponse', name: 'ListTablesResponse')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#PageSize', name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ParameterName', name: 'ParameterName', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z_]+$"})
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 1}})
    QueryRecords = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshiftdata#QueryRecords', name: 'QueryRecords')
    QueryTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#QueryTimeoutException', name: 'QueryTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultFormatString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ResultFormatString', name: 'ResultFormatString', traits: {"smithy.api#enum" => [{"name" => "JSON", "value" => "JSON"}, {"name" => "CSV", "value" => "CSV"}]})
    SchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SchemaList', name: 'SchemaList')
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#SecretArn', name: 'SecretArn')
    SessionAliveSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#SessionAliveSeconds', name: 'SessionAliveSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 86400}})
    SqlList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SqlList', name: 'SqlList', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    SqlParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#SqlParameter', name: 'SqlParameter')
    SqlParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SqlParametersList', name: 'SqlParametersList', traits: {"smithy.api#length" => {"min" => 1}})
    SqlRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SqlRecords', name: 'SqlRecords')
    StatementData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#StatementData', name: 'StatementData')
    StatementList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#StatementList', name: 'StatementList')
    StatementNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatementNameString', name: 'StatementNameString', traits: {"smithy.api#length" => {"max" => 500}})
    StatementStatusString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatementStatusString', name: 'StatementStatusString', traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "PICKED", "value" => "PICKED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "FINISHED", "value" => "FINISHED"}, {"name" => "ABORTED", "value" => "ABORTED"}, {"name" => "FAILED", "value" => "FAILED"}]})
    StatementString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatementString', name: 'StatementString')
    StatementStringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#StatementStringList', name: 'StatementStringList')
    StatusString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatusString', name: 'StatusString', traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "PICKED", "value" => "PICKED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "FINISHED", "value" => "FINISHED"}, {"name" => "ABORTED", "value" => "ABORTED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "ALL", "value" => "ALL"}]})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#String', name: 'String')
    SubStatementData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#SubStatementData', name: 'SubStatementData')
    SubStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SubStatementList', name: 'SubStatementList')
    TableList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#TableList', name: 'TableList')
    TableMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#TableMember', name: 'TableMember')
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-z0-9]{8}(-[a-z0-9]{4}){3}-[a-z0-9]{12}(:\\d+)?$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WorkgroupNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#WorkgroupNameString', name: 'WorkgroupNameString', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^(([a-z0-9-]+)|(arn:(aws(-[a-z]+)*):redshift-serverless:[a-z]{2}(-gov|(-iso[a-z]?))?-[a-z]+-\\d{1}:\\d{12}:workgroup/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}))$"})
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshiftdata#bool', name: 'Bool', traits: {"smithy.api#default" => false})

    ActiveSessionsExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ActiveSessionsExceededException.type = Types::ActiveSessionsExceededException
    ActiveStatementsExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ActiveStatementsExceededException.type = Types::ActiveStatementsExceededException
    BatchExecuteStatementException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementException.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatementId', traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementException.type = Types::BatchExecuteStatementException
    BatchExecuteStatementInput.add_member(:sqls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlList, location_name: 'Sqls', traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    BatchExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    BatchExecuteStatementInput.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    BatchExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    BatchExecuteStatementInput.add_member(:with_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'WithEvent'))
    BatchExecuteStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName'))
    BatchExecuteStatementInput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    BatchExecuteStatementInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    BatchExecuteStatementInput.add_member(:session_keep_alive_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionAliveSeconds, location_name: 'SessionKeepAliveSeconds'))
    BatchExecuteStatementInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId'))
    BatchExecuteStatementInput.add_member(:result_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat'))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id'))
    BatchExecuteStatementOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt'))
    BatchExecuteStatementOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    BatchExecuteStatementOutput.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    BatchExecuteStatementOutput.add_member(:db_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbGroupList, location_name: 'DbGroups'))
    BatchExecuteStatementOutput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    BatchExecuteStatementOutput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    BatchExecuteStatementOutput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    BatchExecuteStatementOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId'))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    CancelStatementRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    CancelStatementRequest.type = Types::CancelStatementRequest
    CancelStatementResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Status'))
    CancelStatementResponse.type = Types::CancelStatementResponse
    ColumnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadata)
    ColumnMetadata.add_member(:is_case_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isCaseSensitive', traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isCurrency', traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_signed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isSigned', traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'label'))
    ColumnMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ColumnMetadata.add_member(:nullable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'nullable', traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'precision', traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'scale', traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaName'))
    ColumnMetadata.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'tableName'))
    ColumnMetadata.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'typeName'))
    ColumnMetadata.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'length', traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:column_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'columnDefault'))
    ColumnMetadata.type = Types::ColumnMetadata
    ColumnMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadata)
    DatabaseConnectionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    DatabaseConnectionException.type = Types::DatabaseConnectionException
    DatabaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DbGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DescribeStatementRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    DescribeStatementRequest.type = Types::DescribeStatementRequest
    DescribeStatementResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    DescribeStatementResponse.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    DescribeStatementResponse.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    DescribeStatementResponse.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    DescribeStatementResponse.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeStatementResponse.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Duration', traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error'))
    DescribeStatementResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusString, location_name: 'Status'))
    DescribeStatementResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt'))
    DescribeStatementResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt'))
    DescribeStatementResponse.add_member(:redshift_pid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RedshiftPid', traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:has_result_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'HasResultSet'))
    DescribeStatementResponse.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'QueryString'))
    DescribeStatementResponse.add_member(:result_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultRows', traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:result_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultSize', traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:redshift_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RedshiftQueryId', traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:query_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: 'QueryParameters'))
    DescribeStatementResponse.add_member(:sub_statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubStatementList, location_name: 'SubStatements'))
    DescribeStatementResponse.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    DescribeStatementResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId'))
    DescribeStatementResponse.add_member(:result_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat'))
    DescribeStatementResponse.type = Types::DescribeStatementResponse
    DescribeTableRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    DescribeTableRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    DescribeTableRequest.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    DescribeTableRequest.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#required" => {}}))
    DescribeTableRequest.add_member(:connected_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectedDatabase'))
    DescribeTableRequest.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schema'))
    DescribeTableRequest.add_member(:table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Table'))
    DescribeTableRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeTableRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    DescribeTableRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    DescribeTableRequest.type = Types::DescribeTableRequest
    DescribeTableResponse.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableName'))
    DescribeTableResponse.add_member(:column_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'ColumnList'))
    DescribeTableResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeTableResponse.type = Types::DescribeTableResponse
    ExecuteStatementException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ExecuteStatementException.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatementId', traits: {"smithy.api#required" => {}}))
    ExecuteStatementException.type = Types::ExecuteStatementException
    ExecuteStatementInput.add_member(:sql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'Sql', traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    ExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    ExecuteStatementInput.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    ExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    ExecuteStatementInput.add_member(:with_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'WithEvent'))
    ExecuteStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName'))
    ExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: 'Parameters'))
    ExecuteStatementInput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    ExecuteStatementInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    ExecuteStatementInput.add_member(:session_keep_alive_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionAliveSeconds, location_name: 'SessionKeepAliveSeconds'))
    ExecuteStatementInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId'))
    ExecuteStatementInput.add_member(:result_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat'))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id'))
    ExecuteStatementOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt'))
    ExecuteStatementOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    ExecuteStatementOutput.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    ExecuteStatementOutput.add_member(:db_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbGroupList, location_name: 'DbGroups'))
    ExecuteStatementOutput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    ExecuteStatementOutput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    ExecuteStatementOutput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    ExecuteStatementOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId'))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    Field.add_member(:is_null, Types::Field::IsNull, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'isNull'))
    Field.add_member(:boolean_value, Types::Field::BooleanValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'booleanValue'))
    Field.add_member(:long_value, Types::Field::LongValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedLong, location_name: 'longValue'))
    Field.add_member(:double_value, Types::Field::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedDouble, location_name: 'doubleValue'))
    Field.add_member(:string_value, Types::Field::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stringValue'))
    Field.add_member(:blob_value, Types::Field::BlobValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'blobValue'))
    Field.add_member(:unknown, Types::Field::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Field.type = Types::Field
    FieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Field)
    FormattedSqlRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRecords)
    GetStatementResultRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    GetStatementResultRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetStatementResultRequest.type = Types::GetStatementResultRequest
    GetStatementResultResponse.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlRecords, location_name: 'Records', traits: {"smithy.api#required" => {}}))
    GetStatementResultResponse.add_member(:column_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadataList, location_name: 'ColumnMetadata'))
    GetStatementResultResponse.add_member(:total_num_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalNumRows', traits: {"smithy.api#default" => 0}))
    GetStatementResultResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetStatementResultResponse.type = Types::GetStatementResultResponse
    GetStatementResultV2Request.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    GetStatementResultV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetStatementResultV2Request.type = Types::GetStatementResultV2Request
    GetStatementResultV2Response.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormattedSqlRecords, location_name: 'Records', traits: {"smithy.api#required" => {}}))
    GetStatementResultV2Response.add_member(:column_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadataList, location_name: 'ColumnMetadata'))
    GetStatementResultV2Response.add_member(:total_num_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalNumRows', traits: {"smithy.api#default" => 0}))
    GetStatementResultV2Response.add_member(:result_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat'))
    GetStatementResultV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetStatementResultV2Response.type = Types::GetStatementResultV2Response
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDatabasesRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    ListDatabasesRequest.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#required" => {}}))
    ListDatabasesRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    ListDatabasesRequest.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    ListDatabasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListDatabasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    ListDatabasesRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    ListDatabasesRequest.type = Types::ListDatabasesRequest
    ListDatabasesResponse.add_member(:databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseList, location_name: 'Databases'))
    ListDatabasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListDatabasesResponse.type = Types::ListDatabasesResponse
    ListSchemasRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    ListSchemasRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    ListSchemasRequest.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    ListSchemasRequest.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#required" => {}}))
    ListSchemasRequest.add_member(:connected_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectedDatabase'))
    ListSchemasRequest.add_member(:schema_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SchemaPattern'))
    ListSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListSchemasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    ListSchemasRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    ListSchemasRequest.type = Types::ListSchemasRequest
    ListSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaList, location_name: 'Schemas'))
    ListSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListSchemasResponse.type = Types::ListSchemasResponse
    ListStatementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListStatementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStatementsLimit, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    ListStatementsRequest.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName'))
    ListStatementsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusString, location_name: 'Status'))
    ListStatementsRequest.add_member(:role_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RoleLevel'))
    ListStatementsRequest.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    ListStatementsRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    ListStatementsRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    ListStatementsRequest.type = Types::ListStatementsRequest
    ListStatementsResponse.add_member(:statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementList, location_name: 'Statements', traits: {"smithy.api#required" => {}}))
    ListStatementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListStatementsResponse.type = Types::ListStatementsResponse
    ListTablesRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier'))
    ListTablesRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    ListTablesRequest.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    ListTablesRequest.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#required" => {}}))
    ListTablesRequest.add_member(:connected_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectedDatabase'))
    ListTablesRequest.add_member(:schema_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SchemaPattern'))
    ListTablesRequest.add_member(:table_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TablePattern'))
    ListTablesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListTablesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    ListTablesRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName'))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableList, location_name: 'Tables'))
    ListTablesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListTablesResponse.type = Types::ListTablesResponse
    QueryRecords.add_member(:csv_records, Types::QueryRecords::CSVRecords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CSVRecords'))
    QueryRecords.add_member(:unknown, Types::QueryRecords::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryRecords.type = Types::QueryRecords
    QueryTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    QueryTimeoutException.type = Types::QueryTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SchemaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SqlList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString)
    SqlParameter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SqlParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    SqlParameter.type = Types::SqlParameter
    SqlParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParameter)
    SqlRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList)
    StatementData.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    StatementData.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'QueryString'))
    StatementData.add_member(:query_strings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementStringList, location_name: 'QueryStrings'))
    StatementData.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    StatementData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusString, location_name: 'Status'))
    StatementData.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName'))
    StatementData.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt'))
    StatementData.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt'))
    StatementData.add_member(:query_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: 'QueryParameters'))
    StatementData.add_member(:is_batch_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsBatchStatement'))
    StatementData.add_member(:result_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat'))
    StatementData.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId'))
    StatementData.type = Types::StatementData
    StatementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementData)
    StatementStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString)
    SubStatementData.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    SubStatementData.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Duration', traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error'))
    SubStatementData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementStatusString, location_name: 'Status'))
    SubStatementData.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt'))
    SubStatementData.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt'))
    SubStatementData.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'QueryString'))
    SubStatementData.add_member(:result_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultRows', traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:result_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultSize', traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:redshift_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RedshiftQueryId', traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:has_result_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'HasResultSet'))
    SubStatementData.type = Types::SubStatementData
    SubStatementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubStatementData)
    TableList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMember)
    TableMember.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    TableMember.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    TableMember.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema'))
    TableMember.type = Types::TableMember
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    RedshiftData = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshiftdata#RedshiftData"
      service.name = "RedshiftData"
      service.version = "2019-12-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift Data", "arnNamespace" => "redshift-data"}, "aws.auth#sigv4" => {"name" => "redshift-data"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Redshift Data API Service"}
      service.add_operation(:batch_execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveSessionsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveStatementsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#CancelStatement"
        operation.name = "CancelStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStatementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStatementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#DescribeStatement"
        operation.name = "DescribeStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStatementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStatementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeTable.new
      end)
      service.add_operation(:execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveSessionsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveStatementsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_statement_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#GetStatementResult"
        operation.name = "GetStatementResult"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetStatementResult.new
      end)
      service.add_operation(:get_statement_result_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#GetStatementResultV2"
        operation.name = "GetStatementResultV2"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultV2Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultV2Response)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetStatementResultV2.new
      end)
      service.add_operation(:list_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_statements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListStatements"
        operation.name = "ListStatements"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStatementsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStatementsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStatements.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListTables"
        operation.name = "ListTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTables.new
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
