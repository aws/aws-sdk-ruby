# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActiveSessionsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ActiveSessionsExceededException', name: 'ActiveSessionsExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ActiveStatementsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ActiveStatementsExceededException', name: 'ActiveStatementsExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchExecuteStatementException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#BatchExecuteStatementException', name: 'BatchExecuteStatementException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    BatchExecuteStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#BatchExecuteStatementInput', name: 'BatchExecuteStatementInput')
    BatchExecuteStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#BatchExecuteStatementOutput', name: 'BatchExecuteStatementOutput')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.redshiftdata#Blob', name: 'Blob')
    BoxedBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshiftdata#BoxedBoolean', name: 'BoxedBoolean')
    BoxedDouble = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshiftdata#BoxedDouble', name: 'BoxedDouble')
    BoxedLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#BoxedLong', name: 'BoxedLong')
    CancelStatementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#CancelStatementRequest', name: 'CancelStatementRequest')
    CancelStatementResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#CancelStatementResponse', name: 'CancelStatementResponse')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ClusterIdentifierString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ClusterIdentifierString', name: 'ClusterIdentifierString', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    ColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#ColumnList', name: 'ColumnList')
    ColumnMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ColumnMetadata', name: 'ColumnMetadata')
    ColumnMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#ColumnMetadataList', name: 'ColumnMetadataList')
    DatabaseConnectionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DatabaseConnectionException', name: 'DatabaseConnectionException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DatabaseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#DatabaseList', name: 'DatabaseList')
    DbGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#DbGroupList', name: 'DbGroupList')
    DescribeStatementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeStatementRequest', name: 'DescribeStatementRequest')
    DescribeStatementResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeStatementResponse', name: 'DescribeStatementResponse')
    DescribeTableRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeTableRequest', name: 'DescribeTableRequest')
    DescribeTableResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#DescribeTableResponse', name: 'DescribeTableResponse')
    ExecuteStatementException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ExecuteStatementException', name: 'ExecuteStatementException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ExecuteStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ExecuteStatementInput', name: 'ExecuteStatementInput')
    ExecuteStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ExecuteStatementOutput', name: 'ExecuteStatementOutput')
    Field = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshiftdata#Field', name: 'Field')
    FieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#FieldList', name: 'FieldList')
    FormattedSqlRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#FormattedSqlRecords', name: 'FormattedSqlRecords')
    GetStatementResultRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultRequest', name: 'GetStatementResultRequest')
    GetStatementResultResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultResponse', name: 'GetStatementResultResponse')
    GetStatementResultV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultV2Request', name: 'GetStatementResultV2Request')
    GetStatementResultV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#GetStatementResultV2Response', name: 'GetStatementResultV2Response')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListDatabasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListDatabasesRequest', name: 'ListDatabasesRequest')
    ListDatabasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListDatabasesResponse', name: 'ListDatabasesResponse')
    ListSchemasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListSchemasRequest', name: 'ListSchemasRequest')
    ListSchemasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListSchemasResponse', name: 'ListSchemasResponse')
    ListStatementsLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#ListStatementsLimit', name: 'ListStatementsLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ListStatementsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListStatementsRequest', name: 'ListStatementsRequest')
    ListStatementsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListStatementsResponse', name: 'ListStatementsResponse')
    ListTablesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListTablesRequest', name: 'ListTablesRequest')
    ListTablesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ListTablesResponse', name: 'ListTablesResponse')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#PageSize', name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ParameterName', name: 'ParameterName', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z_]+$"})
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 1}})
    QueryRecords = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshiftdata#QueryRecords', name: 'QueryRecords')
    QueryTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#QueryTimeoutException', name: 'QueryTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultFormatString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#ResultFormatString', name: 'ResultFormatString', traits: {"smithy.api#enum" => [{"name" => "JSON", "value" => "JSON"}, {"name" => "CSV", "value" => "CSV"}]})
    SchemaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SchemaList', name: 'SchemaList')
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#SecretArn', name: 'SecretArn')
    SessionAliveSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftdata#SessionAliveSeconds', name: 'SessionAliveSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 86400}})
    SqlList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SqlList', name: 'SqlList', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    SqlParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#SqlParameter', name: 'SqlParameter')
    SqlParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SqlParametersList', name: 'SqlParametersList', traits: {"smithy.api#length" => {"min" => 1}})
    SqlRecords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SqlRecords', name: 'SqlRecords')
    StatementData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#StatementData', name: 'StatementData')
    StatementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#StatementList', name: 'StatementList')
    StatementNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatementNameString', name: 'StatementNameString', traits: {"smithy.api#length" => {"max" => 500}})
    StatementStatusString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatementStatusString', name: 'StatementStatusString', traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "PICKED", "value" => "PICKED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "FINISHED", "value" => "FINISHED"}, {"name" => "ABORTED", "value" => "ABORTED"}, {"name" => "FAILED", "value" => "FAILED"}]})
    StatementString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatementString', name: 'StatementString')
    StatementStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#StatementStringList', name: 'StatementStringList')
    StatusString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#StatusString', name: 'StatusString', traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "PICKED", "value" => "PICKED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "FINISHED", "value" => "FINISHED"}, {"name" => "ABORTED", "value" => "ABORTED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "ALL", "value" => "ALL"}]})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#String', name: 'String')
    SubStatementData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#SubStatementData', name: 'SubStatementData')
    SubStatementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#SubStatementList', name: 'SubStatementList')
    TableList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftdata#TableList', name: 'TableList')
    TableMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#TableMember', name: 'TableMember')
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-z0-9]{8}(-[a-z0-9]{4}){3}-[a-z0-9]{12}(:\\d+)?$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftdata#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WorkgroupNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftdata#WorkgroupNameString', name: 'WorkgroupNameString', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^(([a-z0-9-]+)|(arn:(aws(-[a-z]+)*):redshift-serverless:[a-z]{2}(-gov|(-iso[a-z]?))?-[a-z]+-\\d{1}:\\d{12}:workgroup/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}))$"})
    Bool = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshiftdata#bool', name: 'Bool', traits: {"smithy.api#default" => false})

    ActiveSessionsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ActiveSessionsExceededException.type = Types::ActiveSessionsExceededException
    ActiveStatementsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ActiveStatementsExceededException.type = Types::ActiveStatementsExceededException
    BatchExecuteStatementException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementException.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatementId', traits: {"smithy.api#documentation" => "<p>Statement identifier of the exception.</p>", "smithy.api#required" => {}}))
    BatchExecuteStatementException.type = Types::BatchExecuteStatementException
    BatchExecuteStatementInput.add_member(:sqls, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlList, location_name: 'Sqls', traits: {"smithy.api#documentation" => "<p>One or more SQL statements to run. \n      \n      The SQL statements are run as a single transaction. They run serially in the order of the array. \n      Subsequent SQL statements don't start until the previous statement in the array completes. \n      If any SQL statement fails, then because they are run as one transaction, all work is rolled back.</p>", "smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>"}))
    BatchExecuteStatementInput.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>"}))
    BatchExecuteStatementInput.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>"}))
    BatchExecuteStatementInput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>"}))
    BatchExecuteStatementInput.add_member(:with_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'WithEvent', traits: {"smithy.api#documentation" => "<p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statements run. </p>"}))
    BatchExecuteStatementInput.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the SQL statements. You can name the SQL statements when you create them to identify the query. </p>"}))
    BatchExecuteStatementInput.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>"}))
    BatchExecuteStatementInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    BatchExecuteStatementInput.add_member(:session_keep_alive_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionAliveSeconds, location_name: 'SessionKeepAliveSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to keep the session alive after the query finishes. The maximum time a session can keep alive is 24 hours. After 24 hours, the session is forced closed and the query is terminated.</p>"}))
    BatchExecuteStatementInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session identifier of the query.</p>"}))
    BatchExecuteStatementInput.add_member(:result_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat', traits: {"smithy.api#documentation" => "<p>The data format of the result of the SQL statement. If no format is specified, the default is JSON.</p>"}))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. \n      This identifier is returned by <code>BatchExecuteStatment</code>. </p>"}))
    BatchExecuteStatementOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) the statement was created. </p>"}))
    BatchExecuteStatementOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This element is not returned when connecting to a serverless workgroup. </p>"}))
    BatchExecuteStatementOutput.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name.</p>"}))
    BatchExecuteStatementOutput.add_member(:db_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DbGroupList, location_name: 'DbGroups', traits: {"smithy.api#documentation" => "<p>A list of colon (:) separated names of database groups.</p>"}))
    BatchExecuteStatementOutput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database.</p>"}))
    BatchExecuteStatementOutput.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. </p>"}))
    BatchExecuteStatementOutput.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This element is not returned when connecting to a provisioned cluster.</p>"}))
    BatchExecuteStatementOutput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session identifier of the query.</p>"}))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    CancelStatementRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement to cancel. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. \n        This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>", "smithy.api#required" => {}}))
    CancelStatementRequest.type = Types::CancelStatementRequest
    CancelStatementResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the cancel statement succeeded (true). </p>"}))
    CancelStatementResponse.type = Types::CancelStatementResponse
    ColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadata)
    ColumnMetadata.add_member(:is_case_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isCaseSensitive', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that indicates whether the column is case-sensitive. </p>"}))
    ColumnMetadata.add_member(:is_currency, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isCurrency', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that indicates whether the column contains currency values.</p>"}))
    ColumnMetadata.add_member(:is_signed, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isSigned', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that indicates whether an integer column is signed.</p>"}))
    ColumnMetadata.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'label', traits: {"smithy.api#documentation" => "<p>The label for the column. </p>"}))
    ColumnMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column. </p>"}))
    ColumnMetadata.add_member(:nullable, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'nullable', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A value that indicates whether the column is nullable. </p>"}))
    ColumnMetadata.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'precision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The precision value of a decimal number column. </p>"}))
    ColumnMetadata.add_member(:scale, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'scale', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The scale value of a decimal number column. </p>"}))
    ColumnMetadata.add_member(:schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaName', traits: {"smithy.api#documentation" => "<p>The name of the schema that contains the table that includes the column.</p>"}))
    ColumnMetadata.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table that includes the column. </p>"}))
    ColumnMetadata.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The database-specific data type of the column. </p>"}))
    ColumnMetadata.add_member(:length, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'length', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The length of the column.</p>"}))
    ColumnMetadata.add_member(:column_default, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'columnDefault', traits: {"smithy.api#documentation" => "<p>The default value of the column. </p>"}))
    ColumnMetadata.type = Types::ColumnMetadata
    ColumnMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadata)
    DatabaseConnectionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    DatabaseConnectionException.type = Types::DatabaseConnectionException
    DatabaseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DbGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DescribeStatementRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement to describe. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. \n       A suffix indicates the number of the SQL statement.\n       For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.\n       This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatement</code>, and <code>ListStatements</code>. </p>", "smithy.api#required" => {}}))
    DescribeStatementRequest.type = Types::DescribeStatementRequest
    DescribeStatementResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement described. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>", "smithy.api#required" => {}}))
    DescribeStatementResponse.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the secret that enables access to the database. </p>"}))
    DescribeStatementResponse.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. </p>"}))
    DescribeStatementResponse.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database. </p>"}))
    DescribeStatementResponse.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. </p>"}))
    DescribeStatementResponse.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time in nanoseconds that the statement ran. </p>"}))
    DescribeStatementResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>The error message from the cluster if the SQL statement encountered an error while running. </p>"}))
    DescribeStatementResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusString, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the SQL statement being described. Status values are defined as follows: </p>\n         <ul>\n            <li>\n               <p>ABORTED - The query run was stopped by the user. </p>\n            </li>\n            <li>\n               <p>ALL -  A status value that includes all query statuses. This value can be used to filter results. </p>\n            </li>\n            <li>\n               <p>FAILED - The query run failed. </p>\n            </li>\n            <li>\n               <p>FINISHED - The query has finished running. </p>\n            </li>\n            <li>\n               <p>PICKED - The query has been chosen to be run. </p>\n            </li>\n            <li>\n               <p>STARTED - The query run has started. </p>\n            </li>\n            <li>\n               <p>SUBMITTED - The query was submitted, but not yet processed. </p>\n            </li>\n         </ul>"}))
    DescribeStatementResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) when the SQL statement was submitted to run. </p>"}))
    DescribeStatementResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) that the metadata for the SQL statement was last updated. An\n      example is the time the status last changed. </p>"}))
    DescribeStatementResponse.add_member(:redshift_pid, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RedshiftPid', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The process identifier from Amazon Redshift. </p>"}))
    DescribeStatementResponse.add_member(:has_result_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'HasResultSet', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the statement has a result set. The result set can be empty. The value is true for an empty result set.\n      The value is true if any substatement returns a result set.</p>"}))
    DescribeStatementResponse.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The SQL statement text. </p>"}))
    DescribeStatementResponse.add_member(:result_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultRows', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Either the number of rows returned from the SQL statement or the number of rows affected.\n        If result size is greater than zero, the result rows can be the number of rows affected by SQL statements such as INSERT, UPDATE, DELETE, COPY, and others. \n        A <code>-1</code> indicates the value is null.</p>"}))
    DescribeStatementResponse.add_member(:result_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size in bytes of the returned results. A <code>-1</code> indicates the value is null.</p>"}))
    DescribeStatementResponse.add_member(:redshift_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RedshiftQueryId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The identifier of the query generated by Amazon Redshift. \n      These identifiers are also available in the <code>query</code> column of the <code>STL_QUERY</code> system view. </p>"}))
    DescribeStatementResponse.add_member(:query_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: 'QueryParameters', traits: {"smithy.api#documentation" => "<p>The parameters for the SQL statement.</p>"}))
    DescribeStatementResponse.add_member(:sub_statements, Smithy::Schema::Shapes::ShapeRef.new(shape: SubStatementList, location_name: 'SubStatements', traits: {"smithy.api#documentation" => "<p>The SQL statements from a multiple statement run.</p>"}))
    DescribeStatementResponse.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN).</p>"}))
    DescribeStatementResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session identifier of the query.</p>"}))
    DescribeStatementResponse.add_member(:result_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat', traits: {"smithy.api#documentation" => "<p>The data format of the result of the SQL statement.</p>"}))
    DescribeStatementResponse.type = Types::DescribeStatementResponse
    DescribeTableRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>"}))
    DescribeTableRequest.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>"}))
    DescribeTableRequest.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>"}))
    DescribeTableRequest.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database that contains the tables to be described.  \n      If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>", "smithy.api#required" => {}}))
    DescribeTableRequest.add_member(:connected_database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectedDatabase', traits: {"smithy.api#documentation" => "<p>A database name. The connected database is specified when you connect with your authentication credentials. </p>"}))
    DescribeTableRequest.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p>The schema that contains the table. If no schema is specified, then matching tables for all schemas are returned. </p>"}))
    DescribeTableRequest.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>The table name. If no table is specified, then all tables for all matching schemas are returned. \n       If no table and no schema is specified, then all tables for all schemas in the database are returned</p>"}))
    DescribeTableRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    DescribeTableRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of tables to return in the response. \n      If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"}))
    DescribeTableRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>"}))
    DescribeTableRequest.type = Types::DescribeTableRequest
    DescribeTableResponse.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The table name. </p>"}))
    DescribeTableResponse.add_member(:column_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'ColumnList', traits: {"smithy.api#documentation" => "<p>A list of columns in the table. </p>"}))
    DescribeTableResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    DescribeTableResponse.type = Types::DescribeTableResponse
    ExecuteStatementException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The exception message.</p>", "smithy.api#required" => {}}))
    ExecuteStatementException.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatementId', traits: {"smithy.api#documentation" => "<p>Statement identifier of the exception.</p>", "smithy.api#required" => {}}))
    ExecuteStatementException.type = Types::ExecuteStatementException
    ExecuteStatementInput.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'Sql', traits: {"smithy.api#documentation" => "<p>The SQL statement text to run. </p>", "smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>"}))
    ExecuteStatementInput.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>"}))
    ExecuteStatementInput.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>"}))
    ExecuteStatementInput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>"}))
    ExecuteStatementInput.add_member(:with_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'WithEvent', traits: {"smithy.api#documentation" => "<p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs. </p>"}))
    ExecuteStatementInput.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the SQL statement. You can name the SQL statement when you create it to identify the query. </p>"}))
    ExecuteStatementInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the SQL statement.</p>"}))
    ExecuteStatementInput.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>"}))
    ExecuteStatementInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    ExecuteStatementInput.add_member(:session_keep_alive_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionAliveSeconds, location_name: 'SessionKeepAliveSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to keep the session alive after the query finishes. The maximum time a session can keep alive is 24 hours. After 24 hours, the session is forced closed and the query is terminated.</p>"}))
    ExecuteStatementInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session identifier of the query.</p>"}))
    ExecuteStatementInput.add_member(:result_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat', traits: {"smithy.api#documentation" => "<p>The data format of the result of the SQL statement. If no format is specified, the default is JSON.</p>"}))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>"}))
    ExecuteStatementOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) the statement was created. </p>"}))
    ExecuteStatementOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This element is not returned when connecting to a serverless workgroup. </p>"}))
    ExecuteStatementOutput.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name.</p>"}))
    ExecuteStatementOutput.add_member(:db_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DbGroupList, location_name: 'DbGroups', traits: {"smithy.api#documentation" => "<p>A list of colon (:) separated names of database groups.</p>"}))
    ExecuteStatementOutput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database.</p>"}))
    ExecuteStatementOutput.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. </p>"}))
    ExecuteStatementOutput.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This element is not returned when connecting to a provisioned cluster.</p>"}))
    ExecuteStatementOutput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session identifier of the query.</p>"}))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    Field.add_member(:is_null, Types::Field::IsNull, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'isNull', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the data is NULL. </p>"}))
    Field.add_member(:boolean_value, Types::Field::BooleanValue, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'booleanValue', traits: {"smithy.api#documentation" => "<p>A value of the Boolean data type. </p>"}))
    Field.add_member(:long_value, Types::Field::LongValue, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedLong, location_name: 'longValue', traits: {"smithy.api#documentation" => "<p>A value of the long data type. </p>"}))
    Field.add_member(:double_value, Types::Field::DoubleValue, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedDouble, location_name: 'doubleValue', traits: {"smithy.api#documentation" => "<p>A value of the double data type. </p>"}))
    Field.add_member(:string_value, Types::Field::StringValue, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>A value of the string data type. </p>"}))
    Field.add_member(:blob_value, Types::Field::BlobValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'blobValue', traits: {"smithy.api#documentation" => "<p>A value of the BLOB data type. </p>"}))
    Field.add_member(:unknown, Types::Field::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Field.type = Types::Field
    FieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Field)
    FormattedSqlRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRecords)
    GetStatementResultRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. \n       A suffix indicates then number of the SQL statement.\n       For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.\n       This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>", "smithy.api#required" => {}}))
    GetStatementResultRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    GetStatementResultRequest.type = Types::GetStatementResultRequest
    GetStatementResultResponse.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlRecords, location_name: 'Records', traits: {"smithy.api#documentation" => "<p>The results of the SQL statement in JSON format.</p>", "smithy.api#required" => {}}))
    GetStatementResultResponse.add_member(:column_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadataList, location_name: 'ColumnMetadata', traits: {"smithy.api#documentation" => "<p>The properties (metadata) of a column. </p>"}))
    GetStatementResultResponse.add_member(:total_num_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalNumRows', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of rows in the result set returned from a query. \n       You can use this number to estimate the number of calls to the <code>GetStatementResult</code> operation needed to page through the results. </p>"}))
    GetStatementResultResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    GetStatementResultResponse.type = Types::GetStatementResultResponse
    GetStatementResultV2Request.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. \n      A suffix indicates then number of the SQL statement.\n      For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.\n      This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>", "smithy.api#required" => {}}))
    GetStatementResultV2Request.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request.</p>"}))
    GetStatementResultV2Request.type = Types::GetStatementResultV2Request
    GetStatementResultV2Response.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: FormattedSqlRecords, location_name: 'Records', traits: {"smithy.api#documentation" => "<p>The results of the SQL statement in CSV format.</p>", "smithy.api#required" => {}}))
    GetStatementResultV2Response.add_member(:column_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadataList, location_name: 'ColumnMetadata', traits: {"smithy.api#documentation" => "<p>The properties (metadata) of a column.</p>"}))
    GetStatementResultV2Response.add_member(:total_num_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalNumRows', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of rows in the result set returned from a query. \n      You can use this number to estimate the number of calls to the <code>GetStatementResultV2</code> operation needed to page through the results. </p>"}))
    GetStatementResultV2Response.add_member(:result_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat', traits: {"smithy.api#documentation" => "<p>The data format of the result of the SQL statement.</p>"}))
    GetStatementResultV2Response.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    GetStatementResultV2Response.type = Types::GetStatementResultV2Response
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The exception message.</p>", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDatabasesRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>"}))
    ListDatabasesRequest.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>", "smithy.api#required" => {}}))
    ListDatabasesRequest.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>"}))
    ListDatabasesRequest.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>"}))
    ListDatabasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListDatabasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of databases to return in the response. \n       If more databases exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"}))
    ListDatabasesRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>"}))
    ListDatabasesRequest.type = Types::ListDatabasesRequest
    ListDatabasesResponse.add_member(:databases, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseList, location_name: 'Databases', traits: {"smithy.api#documentation" => "<p>The names of databases. </p>"}))
    ListDatabasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListDatabasesResponse.type = Types::ListDatabasesResponse
    ListSchemasRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>"}))
    ListSchemasRequest.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>"}))
    ListSchemasRequest.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>"}))
    ListSchemasRequest.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database that contains the schemas to list. \n     If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>", "smithy.api#required" => {}}))
    ListSchemasRequest.add_member(:connected_database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectedDatabase', traits: {"smithy.api#documentation" => "<p>A database name. The connected database is specified when you connect with your authentication credentials. </p>"}))
    ListSchemasRequest.add_member(:schema_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SchemaPattern', traits: {"smithy.api#documentation" => "<p>A pattern to filter results by schema name. Within a schema pattern, \"%\" means match any\n      substring of 0 or more characters and \"_\" means match any one character. Only schema name\n      entries matching the search pattern are returned. </p>"}))
    ListSchemasRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListSchemasRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of schemas to return in the response. \n       If more schemas exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"}))
    ListSchemasRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>"}))
    ListSchemasRequest.type = Types::ListSchemasRequest
    ListSchemasResponse.add_member(:schemas, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaList, location_name: 'Schemas', traits: {"smithy.api#documentation" => "<p>The schemas that match the request pattern. </p>"}))
    ListSchemasResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListSchemasResponse.type = Types::ListSchemasResponse
    ListStatementsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListStatementsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStatementsLimit, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of SQL statements to return in the response. \n       If more SQL statements exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"}))
    ListStatementsRequest.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the SQL statement specified as input to <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> to identify the query. \n      You can list multiple statements by providing a prefix that matches the beginning of the statement name. \n      For example, to list myStatement1, myStatement2, myStatement3, and so on, then provide the a value of <code>myStatement</code>.  \n      Data API does a case-sensitive match of SQL statement names to the prefix value you provide. </p>"}))
    ListStatementsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusString, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the SQL statement to list. Status values are defined as follows: </p>\n         <ul>\n            <li>\n               <p>ABORTED - The query run was stopped by the user. </p>\n            </li>\n            <li>\n               <p>ALL -  A status value that includes all query statuses. This value can be used to filter results. </p>\n            </li>\n            <li>\n               <p>FAILED - The query run failed. </p>\n            </li>\n            <li>\n               <p>FINISHED - The query has finished running. </p>\n            </li>\n            <li>\n               <p>PICKED - The query has been chosen to be run. </p>\n            </li>\n            <li>\n               <p>STARTED - The query run has started. </p>\n            </li>\n            <li>\n               <p>SUBMITTED - The query was submitted, but not yet processed. </p>\n            </li>\n         </ul>"}))
    ListStatementsRequest.add_member(:role_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RoleLevel', traits: {"smithy.api#documentation" => "<p>A value that filters which statements to return in the response. If true, all statements run by the caller's IAM role are returned. \n      If false, only statements run by the caller's IAM role in the current IAM session are returned.  The default is true. </p>"}))
    ListStatementsRequest.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database when listing statements run against a <code>ClusterIdentifier</code> or <code>WorkgroupName</code>. \n       </p>"}))
    ListStatementsRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. Only statements that ran on this cluster are returned. \n      When providing <code>ClusterIdentifier</code>, then <code>WorkgroupName</code> can't be specified.</p>"}))
    ListStatementsRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). Only statements that ran on this workgroup are returned. \n      When providing <code>WorkgroupName</code>, then <code>ClusterIdentifier</code> can't be specified.</p>"}))
    ListStatementsRequest.type = Types::ListStatementsRequest
    ListStatementsResponse.add_member(:statements, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementList, location_name: 'Statements', traits: {"smithy.api#documentation" => "<p>The SQL statements. </p>", "smithy.api#required" => {}}))
    ListStatementsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListStatementsResponse.type = Types::ListStatementsResponse
    ListTablesRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifierString, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>"}))
    ListTablesRequest.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>"}))
    ListTablesRequest.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>"}))
    ListTablesRequest.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database that contains the tables to list. \n      If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>", "smithy.api#required" => {}}))
    ListTablesRequest.add_member(:connected_database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectedDatabase', traits: {"smithy.api#documentation" => "<p>A database name. The connected database is specified when you connect with your authentication credentials. </p>"}))
    ListTablesRequest.add_member(:schema_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SchemaPattern', traits: {"smithy.api#documentation" => "<p>A pattern to filter results by schema name. Within a schema pattern, \"%\" means match any\n      substring of 0 or more characters and \"_\" means match any one character. Only schema name\n      entries matching the search pattern are returned. If <code>SchemaPattern</code> is not specified, then all tables that match \n       <code>TablePattern</code> are returned. \n       If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>"}))
    ListTablesRequest.add_member(:table_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TablePattern', traits: {"smithy.api#documentation" => "<p>A pattern to filter results by table name. Within a table pattern, \"%\" means match any\n      substring of 0 or more characters and \"_\" means match any one character. Only table name\n      entries matching the search pattern are returned. If <code>TablePattern</code> is not specified, then all tables that match \n       <code>SchemaPattern</code>are returned.  \n       If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>"}))
    ListTablesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListTablesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of tables to return in the response. \n       If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"}))
    ListTablesRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: 'WorkgroupName', traits: {"smithy.api#documentation" => "<p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>"}))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, Smithy::Schema::Shapes::ShapeRef.new(shape: TableList, location_name: 'Tables', traits: {"smithy.api#documentation" => "<p>The tables that match the request pattern. </p>"}))
    ListTablesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"}))
    ListTablesResponse.type = Types::ListTablesResponse
    QueryRecords.add_member(:csv_records, Types::QueryRecords::CsvRecords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CSVRecords', traits: {"smithy.api#documentation" => "<p>The results of the SQL statement in CSV format.</p>"}))
    QueryRecords.add_member(:unknown, Types::QueryRecords::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QueryRecords.type = Types::QueryRecords
    QueryTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    QueryTimeoutException.type = Types::QueryTimeoutException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The exception message.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Resource identifier associated with the exception.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SchemaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SqlList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString)
    SqlParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>", "smithy.api#required" => {}}))
    SqlParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the parameter. \n    Amazon Redshift implicitly converts to the proper data type. For more information, see \n      <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/c_Supported_data_types.html\">Data types</a> in the \n      <i>Amazon Redshift Database Developer Guide</i>. </p>", "smithy.api#required" => {}}))
    SqlParameter.type = Types::SqlParameter
    SqlParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParameter)
    SqlRecords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList)
    StatementData.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The SQL statement identifier. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>", "smithy.api#required" => {}}))
    StatementData.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The SQL statement.</p>"}))
    StatementData.add_member(:query_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementStringList, location_name: 'QueryStrings', traits: {"smithy.api#documentation" => "<p>One or more SQL statements. Each query string in the array corresponds to one of the queries in a batch query request.</p>"}))
    StatementData.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the secret that enables access to the database. </p>"}))
    StatementData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusString, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the SQL statement. An\n       example is the that the SQL statement finished.\n      </p>"}))
    StatementData.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementNameString, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the SQL statement. </p>"}))
    StatementData.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) the statement was created. </p>"}))
    StatementData.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) that the statement metadata was last updated.</p>"}))
    StatementData.add_member(:query_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: 'QueryParameters', traits: {"smithy.api#documentation" => "<p>The parameters used in a SQL statement.</p>"}))
    StatementData.add_member(:is_batch_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsBatchStatement', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the statement is a batch query request.</p>"}))
    StatementData.add_member(:result_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormatString, location_name: 'ResultFormat', traits: {"smithy.api#documentation" => "<p>The data format of the result of the SQL statement.</p>"}))
    StatementData.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session identifier of the query.</p>"}))
    StatementData.type = Types::StatementData
    StatementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StatementData)
    StatementStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString)
    SubStatementData.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the SQL statement. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. \n      A suffix indicates the number of the SQL statement.\n      For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.</p>", "smithy.api#required" => {}}))
    SubStatementData.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time in nanoseconds that the statement ran.</p>"}))
    SubStatementData.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>The error message from the cluster if the SQL statement encountered an error while running.</p>"}))
    SubStatementData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementStatusString, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the SQL statement. An\n      example is the that the SQL statement finished.\n      </p>"}))
    SubStatementData.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) the statement was created. </p>"}))
    SubStatementData.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) that the statement metadata was last updated.</p>"}))
    SubStatementData.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The SQL statement text.</p>"}))
    SubStatementData.add_member(:result_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultRows', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Either the number of rows returned from the SQL statement or the number of rows affected. \n      If result size is greater than zero, the result rows can be the number of rows affected by SQL statements such as INSERT, UPDATE, DELETE, COPY, and others.\n      A <code>-1</code> indicates the value is null.</p>"}))
    SubStatementData.add_member(:result_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ResultSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size in bytes of the returned results. A <code>-1</code> indicates the value is null.</p>"}))
    SubStatementData.add_member(:redshift_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RedshiftQueryId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The SQL statement identifier. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>"}))
    SubStatementData.add_member(:has_result_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'HasResultSet', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the statement has a result set. The result set can be empty. The value is true for an empty result set.</p>"}))
    SubStatementData.type = Types::SubStatementData
    SubStatementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubStatementData)
    TableList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableMember)
    TableMember.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the table. </p>"}))
    TableMember.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the table. Possible values include TABLE, VIEW, SYSTEM TABLE, GLOBAL\n      TEMPORARY, LOCAL TEMPORARY, ALIAS, and SYNONYM. </p>"}))
    TableMember.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema containing the table. </p>"}))
    TableMember.type = Types::TableMember
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The exception message.</p>"}))
    ValidationException.type = Types::ValidationException

    RedshiftData = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshiftdata#RedshiftData"
      service.name = "RedshiftData"
      service.version = "2019-12-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift Data", "arnNamespace" => "redshift-data"}, "aws.auth#sigv4" => {"name" => "redshift-data"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Redshift Data API Service"}
      service.add_operation(:batch_execute_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveSessionsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveStatementsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#CancelStatement"
        operation.name = "CancelStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStatementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStatementResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#DescribeStatement"
        operation.name = "DescribeStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStatementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStatementResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeTable.new
      end)
      service.add_operation(:execute_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveSessionsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveStatementsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_statement_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#GetStatementResult"
        operation.name = "GetStatementResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetStatementResult.new
      end)
      service.add_operation(:get_statement_result_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#GetStatementResultV2"
        operation.name = "GetStatementResultV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStatementResultV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetStatementResultV2.new
      end)
      service.add_operation(:list_databases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_schemas, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_statements, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListStatements"
        operation.name = "ListStatements"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStatementsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStatementsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStatements.new
      end)
      service.add_operation(:list_tables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftdata#ListTables"
        operation.name = "ListTables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTables.new
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
