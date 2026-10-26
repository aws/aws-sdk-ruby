# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActiveSessionsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ActiveSessionsExceededException", name: "ActiveSessionsExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ActiveStatementsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ActiveStatementsExceededException", name: "ActiveStatementsExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ActiveWaitingRequestsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ActiveWaitingRequestsExceededException", name: "ActiveWaitingRequestsExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchExecuteStatementException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#BatchExecuteStatementException", name: "BatchExecuteStatementException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    BatchExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#BatchExecuteStatementInput", name: "BatchExecuteStatementInput")
    BatchExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#BatchExecuteStatementOutput", name: "BatchExecuteStatementOutput")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.redshiftdata#Blob", name: "Blob")
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.redshiftdata#BoxedBoolean", name: "BoxedBoolean")
    BoxedDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.redshiftdata#BoxedDouble", name: "BoxedDouble")
    BoxedLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#BoxedLong", name: "BoxedLong")
    CancelStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#CancelStatementRequest", name: "CancelStatementRequest")
    CancelStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#CancelStatementResponse", name: "CancelStatementResponse")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ClusterIdentifierString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#ClusterIdentifierString", name: "ClusterIdentifierString", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#ColumnList", name: "ColumnList")
    ColumnMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ColumnMetadata", name: "ColumnMetadata")
    ColumnMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#ColumnMetadataList", name: "ColumnMetadataList")
    DatabaseConnectionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#DatabaseConnectionException", name: "DatabaseConnectionException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#DatabaseList", name: "DatabaseList")
    DbGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#DbGroupList", name: "DbGroupList")
    DescribeStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#DescribeStatementRequest", name: "DescribeStatementRequest")
    DescribeStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#DescribeStatementResponse", name: "DescribeStatementResponse")
    DescribeTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#DescribeTableRequest", name: "DescribeTableRequest")
    DescribeTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#DescribeTableResponse", name: "DescribeTableResponse")
    ExecuteStatementException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ExecuteStatementException", name: "ExecuteStatementException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ExecuteStatementInput", name: "ExecuteStatementInput")
    ExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ExecuteStatementOutput", name: "ExecuteStatementOutput")
    ExecutionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#ExecutionMode", name: "ExecutionMode", traits: {"smithy.api#enum" => [{"name" => "TRANSACTION", "value" => "TRANSACTION"}, {"name" => "AUTO_COMMIT", "value" => "AUTO_COMMIT"}]})
    Field = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshiftdata#Field", name: "Field")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#FieldList", name: "FieldList")
    FormattedSqlRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#FormattedSqlRecords", name: "FormattedSqlRecords")
    GetStatementResultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#GetStatementResultRequest", name: "GetStatementResultRequest")
    GetStatementResultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#GetStatementResultResponse", name: "GetStatementResultResponse")
    GetStatementResultV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#GetStatementResultV2Request", name: "GetStatementResultV2Request")
    GetStatementResultV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#GetStatementResultV2Response", name: "GetStatementResultV2Response")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListDatabasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListDatabasesRequest", name: "ListDatabasesRequest")
    ListDatabasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListDatabasesResponse", name: "ListDatabasesResponse")
    ListSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListSchemasRequest", name: "ListSchemasRequest")
    ListSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListSchemasResponse", name: "ListSchemasResponse")
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListSessionsRequest", name: "ListSessionsRequest")
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListSessionsResponse", name: "ListSessionsResponse")
    ListStatementsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#ListStatementsLimit", name: "ListStatementsLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ListStatementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListStatementsRequest", name: "ListStatementsRequest")
    ListStatementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListStatementsResponse", name: "ListStatementsResponse")
    ListTablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListTablesRequest", name: "ListTablesRequest")
    ListTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ListTablesResponse", name: "ListTablesResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#Long", name: "Long", traits: {"smithy.api#default" => 0})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#PageSize", name: "PageSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#ParameterName", name: "ParameterName", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z_]+$"})
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 1}})
    QueryRecords = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshiftdata#QueryRecords", name: "QueryRecords")
    QueryTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#QueryTimeoutException", name: "QueryTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultFormatString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#ResultFormatString", name: "ResultFormatString", traits: {"smithy.api#enum" => [{"name" => "JSON", "value" => "JSON"}, {"name" => "CSV", "value" => "CSV"}]})
    SchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#SchemaList", name: "SchemaList")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#SecretArn", name: "SecretArn")
    SessionAliveSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#SessionAliveSeconds", name: "SessionAliveSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 86400}})
    SessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#SessionData", name: "SessionData")
    SessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#SessionList", name: "SessionList")
    SessionStatusString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#SessionStatusString", name: "SessionStatusString", traits: {"smithy.api#enum" => [{"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "BUSY", "value" => "BUSY"}, {"name" => "CLOSED", "value" => "CLOSED"}]})
    SqlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#SqlList", name: "SqlList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    SqlParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#SqlParameter", name: "SqlParameter")
    SqlParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#SqlParametersList", name: "SqlParametersList", traits: {"smithy.api#length" => {"min" => 1}})
    SqlRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#SqlRecords", name: "SqlRecords")
    StatementData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#StatementData", name: "StatementData")
    StatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#StatementList", name: "StatementList")
    StatementNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#StatementNameString", name: "StatementNameString", traits: {"smithy.api#length" => {"max" => 2048}})
    StatementStatusString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#StatementStatusString", name: "StatementStatusString", traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "PICKED", "value" => "PICKED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "FINISHED", "value" => "FINISHED"}, {"name" => "ABORTED", "value" => "ABORTED"}, {"name" => "FAILED", "value" => "FAILED"}]})
    StatementString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#StatementString", name: "StatementString")
    StatementStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#StatementStringList", name: "StatementStringList")
    StatusString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#StatusString", name: "StatusString", traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "PICKED", "value" => "PICKED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "FINISHED", "value" => "FINISHED"}, {"name" => "ABORTED", "value" => "ABORTED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "ALL", "value" => "ALL"}]})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#String", name: "String")
    SubStatementData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#SubStatementData", name: "SubStatementData")
    SubStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#SubStatementList", name: "SubStatementList")
    TableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftdata#TableList", name: "TableList")
    TableMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#TableMember", name: "TableMember")
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[a-z0-9]{8}(-[a-z0-9]{4}){3}-[a-z0-9]{12}(:\\d{0,2})?$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftdata#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WaitTimeSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftdata#WaitTimeSeconds", name: "WaitTimeSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 30}})
    WorkgroupNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftdata#WorkgroupNameString", name: "WorkgroupNameString", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^([a-z0-9-]{3,63}|arn:(aws(-[a-z]+)*):redshift-serverless:([a-z]{2}(-gov|(-iso[a-z]?))?|eusc-[a-z]+)-[a-z]+-\\d{1}:\\d{12}:workgroup/([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|[a-z0-9-]{1,63}/[a-z0-9-]{1,63}))$"})
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.redshiftdata#bool", name: "Bool", traits: {"smithy.api#default" => false})

    ActiveSessionsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ActiveSessionsExceededException.type = Types::ActiveSessionsExceededException
    ActiveStatementsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ActiveStatementsExceededException.type = Types::ActiveStatementsExceededException
    ActiveWaitingRequestsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ActiveWaitingRequestsExceededException.type = Types::ActiveWaitingRequestsExceededException
    BatchExecuteStatementException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementException.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatementId", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementException.type = Types::BatchExecuteStatementException
    BatchExecuteStatementInput.add_member(:sqls, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlList, name: "Sqls", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    BatchExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    BatchExecuteStatementInput.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    BatchExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    BatchExecuteStatementInput.add_member(:with_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "WithEvent"))
    BatchExecuteStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementNameString, name: "StatementName"))
    BatchExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParametersList, name: "Parameters"))
    BatchExecuteStatementInput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    BatchExecuteStatementInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    BatchExecuteStatementInput.add_member(:result_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFormatString, name: "ResultFormat"))
    BatchExecuteStatementInput.add_member(:session_keep_alive_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionAliveSeconds, name: "SessionKeepAliveSeconds"))
    BatchExecuteStatementInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId"))
    BatchExecuteStatementInput.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "ExecutionMode"))
    BatchExecuteStatementInput.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "WaitTimeSeconds"))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    BatchExecuteStatementOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    BatchExecuteStatementOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    BatchExecuteStatementOutput.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    BatchExecuteStatementOutput.add_member(:db_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DbGroupList, name: "DbGroups"))
    BatchExecuteStatementOutput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    BatchExecuteStatementOutput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    BatchExecuteStatementOutput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    BatchExecuteStatementOutput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId"))
    BatchExecuteStatementOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementStatusString, name: "Status"))
    BatchExecuteStatementOutput.add_member(:redshift_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedLong, name: "RedshiftPid"))
    BatchExecuteStatementOutput.add_member(:has_result_set, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "HasResultSet"))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    CancelStatementRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    CancelStatementRequest.type = Types::CancelStatementRequest
    CancelStatementResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Status"))
    CancelStatementResponse.type = Types::CancelStatementResponse
    ColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnMetadata, name: "member"))
    ColumnMetadata.add_member(:is_case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "isCaseSensitive", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "isCurrency", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_signed, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "isSigned", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "label"))
    ColumnMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ColumnMetadata.add_member(:nullable, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "nullable", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "precision", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "scale", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schemaName"))
    ColumnMetadata.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tableName"))
    ColumnMetadata.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "typeName"))
    ColumnMetadata.add_member(:length, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "length", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:column_default, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "columnDefault"))
    ColumnMetadata.type = Types::ColumnMetadata
    ColumnMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnMetadata, name: "member"))
    DatabaseConnectionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    DatabaseConnectionException.type = Types::DatabaseConnectionException
    DatabaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DbGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DescribeStatementRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeStatementRequest.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "WaitTimeSeconds"))
    DescribeStatementRequest.type = Types::DescribeStatementRequest
    DescribeStatementResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeStatementResponse.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    DescribeStatementResponse.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    DescribeStatementResponse.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    DescribeStatementResponse.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeStatementResponse.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Duration", traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Error"))
    DescribeStatementResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusString, name: "Status"))
    DescribeStatementResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    DescribeStatementResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    DescribeStatementResponse.add_member(:redshift_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RedshiftPid", traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:has_result_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "HasResultSet"))
    DescribeStatementResponse.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementString, name: "QueryString"))
    DescribeStatementResponse.add_member(:result_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ResultRows", traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:result_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ResultSize", traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:redshift_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RedshiftQueryId", traits: {"smithy.api#default" => 0}))
    DescribeStatementResponse.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParametersList, name: "QueryParameters"))
    DescribeStatementResponse.add_member(:sub_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: SubStatementList, name: "SubStatements"))
    DescribeStatementResponse.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    DescribeStatementResponse.add_member(:result_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFormatString, name: "ResultFormat"))
    DescribeStatementResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SessionId"))
    DescribeStatementResponse.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "ExecutionMode"))
    DescribeStatementResponse.type = Types::DescribeStatementResponse
    DescribeTableRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    DescribeTableRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    DescribeTableRequest.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    DescribeTableRequest.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database", traits: {"smithy.api#required" => {}}))
    DescribeTableRequest.add_member(:connected_database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectedDatabase"))
    DescribeTableRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schema"))
    DescribeTableRequest.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Table"))
    DescribeTableRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeTableRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    DescribeTableRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    DescribeTableRequest.type = Types::DescribeTableRequest
    DescribeTableResponse.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableName"))
    DescribeTableResponse.add_member(:column_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnList, name: "ColumnList"))
    DescribeTableResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeTableResponse.type = Types::DescribeTableResponse
    ExecuteStatementException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ExecuteStatementException.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatementId", traits: {"smithy.api#required" => {}}))
    ExecuteStatementException.type = Types::ExecuteStatementException
    ExecuteStatementInput.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementString, name: "Sql", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    ExecuteStatementInput.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    ExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    ExecuteStatementInput.add_member(:with_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "WithEvent"))
    ExecuteStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementNameString, name: "StatementName"))
    ExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParametersList, name: "Parameters"))
    ExecuteStatementInput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ExecuteStatementInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExecuteStatementInput.add_member(:result_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFormatString, name: "ResultFormat"))
    ExecuteStatementInput.add_member(:session_keep_alive_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionAliveSeconds, name: "SessionKeepAliveSeconds"))
    ExecuteStatementInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId"))
    ExecuteStatementInput.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "WaitTimeSeconds"))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id"))
    ExecuteStatementOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    ExecuteStatementOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ExecuteStatementOutput.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    ExecuteStatementOutput.add_member(:db_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DbGroupList, name: "DbGroups"))
    ExecuteStatementOutput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    ExecuteStatementOutput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    ExecuteStatementOutput.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ExecuteStatementOutput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId"))
    ExecuteStatementOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementStatusString, name: "Status"))
    ExecuteStatementOutput.add_member(:redshift_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedLong, name: "RedshiftPid"))
    ExecuteStatementOutput.add_member(:has_result_set, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "HasResultSet"))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    Field.add_member(:is_null, Types::Field::IsNull, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "isNull"))
    Field.add_member(:boolean_value, Types::Field::BooleanValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "booleanValue"))
    Field.add_member(:long_value, Types::Field::LongValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedLong, name: "longValue"))
    Field.add_member(:double_value, Types::Field::DoubleValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "doubleValue"))
    Field.add_member(:string_value, Types::Field::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stringValue"))
    Field.add_member(:blob_value, Types::Field::BlobValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "blobValue"))
    Field.add_member(:unknown, Types::Field::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Field.type = Types::Field
    FieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "member"))
    FormattedSqlRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRecords, name: "member"))
    GetStatementResultRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    GetStatementResultRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetStatementResultRequest.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "WaitTimeSeconds"))
    GetStatementResultRequest.type = Types::GetStatementResultRequest
    GetStatementResultResponse.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlRecords, name: "Records", traits: {"smithy.api#required" => {}}))
    GetStatementResultResponse.add_member(:column_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnMetadataList, name: "ColumnMetadata"))
    GetStatementResultResponse.add_member(:total_num_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalNumRows", traits: {"smithy.api#default" => 0}))
    GetStatementResultResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetStatementResultResponse.type = Types::GetStatementResultResponse
    GetStatementResultV2Request.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    GetStatementResultV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetStatementResultV2Request.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "WaitTimeSeconds"))
    GetStatementResultV2Request.type = Types::GetStatementResultV2Request
    GetStatementResultV2Response.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: FormattedSqlRecords, name: "Records", traits: {"smithy.api#required" => {}}))
    GetStatementResultV2Response.add_member(:column_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnMetadataList, name: "ColumnMetadata"))
    GetStatementResultV2Response.add_member(:total_num_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalNumRows", traits: {"smithy.api#default" => 0}))
    GetStatementResultV2Response.add_member(:result_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFormatString, name: "ResultFormat"))
    GetStatementResultV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetStatementResultV2Response.type = Types::GetStatementResultV2Response
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDatabasesRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ListDatabasesRequest.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    ListDatabasesRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    ListDatabasesRequest.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    ListDatabasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatabasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListDatabasesRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ListDatabasesRequest.type = Types::ListDatabasesRequest
    ListDatabasesResponse.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseList, name: "Databases"))
    ListDatabasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatabasesResponse.type = Types::ListDatabasesResponse
    ListSchemasRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ListSchemasRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    ListSchemasRequest.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    ListSchemasRequest.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database", traits: {"smithy.api#required" => {}}))
    ListSchemasRequest.add_member(:connected_database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectedDatabase"))
    ListSchemasRequest.add_member(:schema_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaPattern"))
    ListSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSchemasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListSchemasRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ListSchemasRequest.type = Types::ListSchemasRequest
    ListSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaList, name: "Schemas"))
    ListSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSchemasResponse.type = Types::ListSchemasResponse
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStatementsLimit, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListSessionsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId"))
    ListSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatusString, name: "Status"))
    ListSessionsRequest.add_member(:role_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "RoleLevel"))
    ListSessionsRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ListSessionsRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ListSessionsRequest.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionList, name: "Sessions", traits: {"smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListStatementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListStatementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStatementsLimit, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListStatementsRequest.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementNameString, name: "StatementName"))
    ListStatementsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusString, name: "Status"))
    ListStatementsRequest.add_member(:role_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "RoleLevel"))
    ListStatementsRequest.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    ListStatementsRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ListStatementsRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ListStatementsRequest.type = Types::ListStatementsRequest
    ListStatementsResponse.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementList, name: "Statements", traits: {"smithy.api#required" => {}}))
    ListStatementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListStatementsResponse.type = Types::ListStatementsResponse
    ListTablesRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifierString, name: "ClusterIdentifier"))
    ListTablesRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    ListTablesRequest.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    ListTablesRequest.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database", traits: {"smithy.api#required" => {}}))
    ListTablesRequest.add_member(:connected_database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectedDatabase"))
    ListTablesRequest.add_member(:schema_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaPattern"))
    ListTablesRequest.add_member(:table_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TablePattern"))
    ListTablesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTablesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListTablesRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: TableList, name: "Tables"))
    ListTablesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTablesResponse.type = Types::ListTablesResponse
    QueryRecords.add_member(:csv_records, Types::QueryRecords::CSVRecords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CSVRecords"))
    QueryRecords.add_member(:unknown, Types::QueryRecords::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryRecords.type = Types::QueryRecords
    QueryTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    QueryTimeoutException.type = Types::QueryTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SchemaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SessionData.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatusString, name: "Status", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    SessionData.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    SessionData.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    SessionData.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    SessionData.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupNameString, name: "WorkgroupName"))
    SessionData.add_member(:session_alive_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionAliveSeconds, name: "SessionAliveSeconds"))
    SessionData.add_member(:session_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "SessionTtl"))
    SessionData.add_member(:current_statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "CurrentStatementId"))
    SessionData.type = Types::SessionData
    SessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionData, name: "member"))
    SqlList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementString, name: "member"))
    SqlParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    SqlParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "value", traits: {"smithy.api#required" => {}}))
    SqlParameter.type = Types::SqlParameter
    SqlParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParameter, name: "member"))
    SqlRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "member"))
    StatementData.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    StatementData.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementString, name: "QueryString"))
    StatementData.add_member(:query_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementStringList, name: "QueryStrings"))
    StatementData.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    StatementData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusString, name: "Status"))
    StatementData.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementNameString, name: "StatementName"))
    StatementData.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    StatementData.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    StatementData.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParametersList, name: "QueryParameters"))
    StatementData.add_member(:is_batch_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IsBatchStatement"))
    StatementData.add_member(:result_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFormatString, name: "ResultFormat"))
    StatementData.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "SessionId"))
    StatementData.type = Types::StatementData
    StatementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementData, name: "member"))
    StatementStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementString, name: "member"))
    SubStatementData.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "Id", traits: {"smithy.api#required" => {}}))
    SubStatementData.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Duration", traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Error"))
    SubStatementData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementStatusString, name: "Status"))
    SubStatementData.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    SubStatementData.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    SubStatementData.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementString, name: "QueryString"))
    SubStatementData.add_member(:result_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ResultRows", traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:result_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ResultSize", traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:redshift_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RedshiftQueryId", traits: {"smithy.api#default" => 0}))
    SubStatementData.add_member(:has_result_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "HasResultSet"))
    SubStatementData.type = Types::SubStatementData
    SubStatementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubStatementData, name: "member"))
    TableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMember, name: "member"))
    TableMember.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    TableMember.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    TableMember.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    TableMember.type = Types::TableMember
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationException.type = Types::ValidationException

    RedshiftData = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshiftdata#RedshiftData"
      service.name = "RedshiftData"
      service.version = "2019-12-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift Data", "arnNamespace" => "redshift-data"}, "aws.auth#sigv4" => {"name" => "redshift-data"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Redshift Data API Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://redshift-data-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://redshift-data-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://redshift-data.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://redshift-data.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = BatchExecuteStatementInput
        operation.output = BatchExecuteStatementOutput
        operation.errors << ActiveSessionsExceededException
        operation.errors << ActiveStatementsExceededException
        operation.errors << BatchExecuteStatementException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:cancel_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#CancelStatement"
        operation.name = "CancelStatement"
        operation.input = CancelStatementRequest
        operation.output = CancelStatementResponse
        operation.errors << DatabaseConnectionException
        operation.errors << InternalServerException
        operation.errors << QueryTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#DescribeStatement"
        operation.name = "DescribeStatement"
        operation.input = DescribeStatementRequest
        operation.output = DescribeStatementResponse
        operation.errors << ActiveWaitingRequestsExceededException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = DescribeTableRequest
        operation.output = DescribeTableResponse
        operation.errors << DatabaseConnectionException
        operation.errors << InternalServerException
        operation.errors << QueryTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeTable.new
      end)
      service.add_operation(:execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = ExecuteStatementInput
        operation.output = ExecuteStatementOutput
        operation.errors << ActiveSessionsExceededException
        operation.errors << ActiveStatementsExceededException
        operation.errors << ExecuteStatementException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_statement_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#GetStatementResult"
        operation.name = "GetStatementResult"
        operation.input = GetStatementResultRequest
        operation.output = GetStatementResultResponse
        operation.errors << ActiveWaitingRequestsExceededException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetStatementResult.new
      end)
      service.add_operation(:get_statement_result_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#GetStatementResultV2"
        operation.name = "GetStatementResultV2"
        operation.input = GetStatementResultV2Request
        operation.output = GetStatementResultV2Response
        operation.errors << ActiveWaitingRequestsExceededException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetStatementResultV2.new
      end)
      service.add_operation(:list_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = ListDatabasesRequest
        operation.output = ListDatabasesResponse
        operation.errors << DatabaseConnectionException
        operation.errors << InternalServerException
        operation.errors << QueryTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = ListSchemasRequest
        operation.output = ListSchemasResponse
        operation.errors << DatabaseConnectionException
        operation.errors << InternalServerException
        operation.errors << QueryTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsRequest
        operation.output = ListSessionsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_statements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListStatements"
        operation.name = "ListStatements"
        operation.input = ListStatementsRequest
        operation.output = ListStatementsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStatements.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListTables"
        operation.name = "ListTables"
        operation.input = ListTablesRequest
        operation.output = ListTablesResponse
        operation.errors << DatabaseConnectionException
        operation.errors << InternalServerException
        operation.errors << QueryTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
