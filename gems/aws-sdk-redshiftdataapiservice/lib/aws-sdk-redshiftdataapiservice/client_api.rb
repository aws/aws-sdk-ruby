# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RedshiftDataAPIService
  # @api private
  module ClientApi

    include Seahorse::Model

    ActiveStatementsExceededException = Shapes::StructureShape.new(name: 'ActiveStatementsExceededException')
    BatchExecuteStatementException = Shapes::StructureShape.new(name: 'BatchExecuteStatementException')
    BatchExecuteStatementInput = Shapes::StructureShape.new(name: 'BatchExecuteStatementInput')
    BatchExecuteStatementOutput = Shapes::StructureShape.new(name: 'BatchExecuteStatementOutput')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedDouble = Shapes::FloatShape.new(name: 'BoxedDouble')
    BoxedLong = Shapes::IntegerShape.new(name: 'BoxedLong')
    CancelStatementRequest = Shapes::StructureShape.new(name: 'CancelStatementRequest')
    CancelStatementResponse = Shapes::StructureShape.new(name: 'CancelStatementResponse')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnMetadata = Shapes::StructureShape.new(name: 'ColumnMetadata')
    ColumnMetadataList = Shapes::ListShape.new(name: 'ColumnMetadataList')
    DatabaseConnectionException = Shapes::StructureShape.new(name: 'DatabaseConnectionException')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    DescribeStatementRequest = Shapes::StructureShape.new(name: 'DescribeStatementRequest')
    DescribeStatementResponse = Shapes::StructureShape.new(name: 'DescribeStatementResponse')
    DescribeTableRequest = Shapes::StructureShape.new(name: 'DescribeTableRequest')
    DescribeTableResponse = Shapes::StructureShape.new(name: 'DescribeTableResponse')
    ExecuteStatementException = Shapes::StructureShape.new(name: 'ExecuteStatementException')
    ExecuteStatementInput = Shapes::StructureShape.new(name: 'ExecuteStatementInput')
    ExecuteStatementOutput = Shapes::StructureShape.new(name: 'ExecuteStatementOutput')
    Field = Shapes::UnionShape.new(name: 'Field')
    FieldList = Shapes::ListShape.new(name: 'FieldList')
    GetStatementResultRequest = Shapes::StructureShape.new(name: 'GetStatementResultRequest')
    GetStatementResultResponse = Shapes::StructureShape.new(name: 'GetStatementResultResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDatabasesRequest = Shapes::StructureShape.new(name: 'ListDatabasesRequest')
    ListDatabasesResponse = Shapes::StructureShape.new(name: 'ListDatabasesResponse')
    ListSchemasRequest = Shapes::StructureShape.new(name: 'ListSchemasRequest')
    ListSchemasResponse = Shapes::StructureShape.new(name: 'ListSchemasResponse')
    ListStatementsLimit = Shapes::IntegerShape.new(name: 'ListStatementsLimit')
    ListStatementsRequest = Shapes::StructureShape.new(name: 'ListStatementsRequest')
    ListStatementsResponse = Shapes::StructureShape.new(name: 'ListStatementsResponse')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    Location = Shapes::StringShape.new(name: 'Location')
    Long = Shapes::IntegerShape.new(name: 'Long')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SchemaList = Shapes::ListShape.new(name: 'SchemaList')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SqlList = Shapes::ListShape.new(name: 'SqlList')
    SqlParameter = Shapes::StructureShape.new(name: 'SqlParameter')
    SqlParametersList = Shapes::ListShape.new(name: 'SqlParametersList')
    SqlRecords = Shapes::ListShape.new(name: 'SqlRecords')
    StatementData = Shapes::StructureShape.new(name: 'StatementData')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    StatementList = Shapes::ListShape.new(name: 'StatementList')
    StatementNameString = Shapes::StringShape.new(name: 'StatementNameString')
    StatementStatusString = Shapes::StringShape.new(name: 'StatementStatusString')
    StatementString = Shapes::StringShape.new(name: 'StatementString')
    StatementStringList = Shapes::ListShape.new(name: 'StatementStringList')
    StatusString = Shapes::StringShape.new(name: 'StatusString')
    String = Shapes::StringShape.new(name: 'String')
    SubStatementData = Shapes::StructureShape.new(name: 'SubStatementData')
    SubStatementList = Shapes::ListShape.new(name: 'SubStatementList')
    TableList = Shapes::ListShape.new(name: 'TableList')
    TableMember = Shapes::StructureShape.new(name: 'TableMember')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WorkgroupNameString = Shapes::StringShape.new(name: 'WorkgroupNameString')
    bool = Shapes::BooleanShape.new(name: 'bool')

    ActiveStatementsExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ActiveStatementsExceededException.struct_class = Types::ActiveStatementsExceededException

    BatchExecuteStatementException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    BatchExecuteStatementException.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StatementId"))
    BatchExecuteStatementException.struct_class = Types::BatchExecuteStatementException

    BatchExecuteStatementInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    BatchExecuteStatementInput.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    BatchExecuteStatementInput.add_member(:database, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Database"))
    BatchExecuteStatementInput.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    BatchExecuteStatementInput.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    BatchExecuteStatementInput.add_member(:sqls, Shapes::ShapeRef.new(shape: SqlList, required: true, location_name: "Sqls"))
    BatchExecuteStatementInput.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementNameString, location_name: "StatementName"))
    BatchExecuteStatementInput.add_member(:with_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithEvent"))
    BatchExecuteStatementInput.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    BatchExecuteStatementInput.struct_class = Types::BatchExecuteStatementInput

    BatchExecuteStatementOutput.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    BatchExecuteStatementOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    BatchExecuteStatementOutput.add_member(:database, Shapes::ShapeRef.new(shape: String, location_name: "Database"))
    BatchExecuteStatementOutput.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    BatchExecuteStatementOutput.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, location_name: "Id"))
    BatchExecuteStatementOutput.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    BatchExecuteStatementOutput.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    BatchExecuteStatementOutput.struct_class = Types::BatchExecuteStatementOutput

    CancelStatementRequest.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "Id"))
    CancelStatementRequest.struct_class = Types::CancelStatementRequest

    CancelStatementResponse.add_member(:status, Shapes::ShapeRef.new(shape: Boolean, location_name: "Status"))
    CancelStatementResponse.struct_class = Types::CancelStatementResponse

    ColumnList.member = Shapes::ShapeRef.new(shape: ColumnMetadata)

    ColumnMetadata.add_member(:column_default, Shapes::ShapeRef.new(shape: String, location_name: "columnDefault"))
    ColumnMetadata.add_member(:is_case_sensitive, Shapes::ShapeRef.new(shape: bool, location_name: "isCaseSensitive"))
    ColumnMetadata.add_member(:is_currency, Shapes::ShapeRef.new(shape: bool, location_name: "isCurrency"))
    ColumnMetadata.add_member(:is_signed, Shapes::ShapeRef.new(shape: bool, location_name: "isSigned"))
    ColumnMetadata.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "label"))
    ColumnMetadata.add_member(:length, Shapes::ShapeRef.new(shape: Integer, location_name: "length"))
    ColumnMetadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ColumnMetadata.add_member(:nullable, Shapes::ShapeRef.new(shape: Integer, location_name: "nullable"))
    ColumnMetadata.add_member(:precision, Shapes::ShapeRef.new(shape: Integer, location_name: "precision"))
    ColumnMetadata.add_member(:scale, Shapes::ShapeRef.new(shape: Integer, location_name: "scale"))
    ColumnMetadata.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "schemaName"))
    ColumnMetadata.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "tableName"))
    ColumnMetadata.add_member(:type_name, Shapes::ShapeRef.new(shape: String, location_name: "typeName"))
    ColumnMetadata.struct_class = Types::ColumnMetadata

    ColumnMetadataList.member = Shapes::ShapeRef.new(shape: ColumnMetadata)

    DatabaseConnectionException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    DatabaseConnectionException.struct_class = Types::DatabaseConnectionException

    DatabaseList.member = Shapes::ShapeRef.new(shape: String)

    DescribeStatementRequest.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "Id"))
    DescribeStatementRequest.struct_class = Types::DescribeStatementRequest

    DescribeStatementResponse.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeStatementResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeStatementResponse.add_member(:database, Shapes::ShapeRef.new(shape: String, location_name: "Database"))
    DescribeStatementResponse.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    DescribeStatementResponse.add_member(:duration, Shapes::ShapeRef.new(shape: Long, location_name: "Duration"))
    DescribeStatementResponse.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "Error"))
    DescribeStatementResponse.add_member(:has_result_set, Shapes::ShapeRef.new(shape: Boolean, location_name: "HasResultSet"))
    DescribeStatementResponse.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "Id"))
    DescribeStatementResponse.add_member(:query_parameters, Shapes::ShapeRef.new(shape: SqlParametersList, location_name: "QueryParameters"))
    DescribeStatementResponse.add_member(:query_string, Shapes::ShapeRef.new(shape: StatementString, location_name: "QueryString"))
    DescribeStatementResponse.add_member(:redshift_pid, Shapes::ShapeRef.new(shape: Long, location_name: "RedshiftPid"))
    DescribeStatementResponse.add_member(:redshift_query_id, Shapes::ShapeRef.new(shape: Long, location_name: "RedshiftQueryId"))
    DescribeStatementResponse.add_member(:result_rows, Shapes::ShapeRef.new(shape: Long, location_name: "ResultRows"))
    DescribeStatementResponse.add_member(:result_size, Shapes::ShapeRef.new(shape: Long, location_name: "ResultSize"))
    DescribeStatementResponse.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    DescribeStatementResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusString, location_name: "Status"))
    DescribeStatementResponse.add_member(:sub_statements, Shapes::ShapeRef.new(shape: SubStatementList, location_name: "SubStatements"))
    DescribeStatementResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeStatementResponse.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    DescribeStatementResponse.struct_class = Types::DescribeStatementResponse

    DescribeTableRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    DescribeTableRequest.add_member(:connected_database, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedDatabase"))
    DescribeTableRequest.add_member(:database, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Database"))
    DescribeTableRequest.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    DescribeTableRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    DescribeTableRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeTableRequest.add_member(:schema, Shapes::ShapeRef.new(shape: String, location_name: "Schema"))
    DescribeTableRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    DescribeTableRequest.add_member(:table, Shapes::ShapeRef.new(shape: String, location_name: "Table"))
    DescribeTableRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    DescribeTableRequest.struct_class = Types::DescribeTableRequest

    DescribeTableResponse.add_member(:column_list, Shapes::ShapeRef.new(shape: ColumnList, location_name: "ColumnList"))
    DescribeTableResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeTableResponse.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    DescribeTableResponse.struct_class = Types::DescribeTableResponse

    ExecuteStatementException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ExecuteStatementException.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StatementId"))
    ExecuteStatementException.struct_class = Types::ExecuteStatementException

    ExecuteStatementInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    ExecuteStatementInput.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    ExecuteStatementInput.add_member(:database, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Database"))
    ExecuteStatementInput.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ExecuteStatementInput.add_member(:parameters, Shapes::ShapeRef.new(shape: SqlParametersList, location_name: "Parameters"))
    ExecuteStatementInput.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    ExecuteStatementInput.add_member(:sql, Shapes::ShapeRef.new(shape: StatementString, required: true, location_name: "Sql"))
    ExecuteStatementInput.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementNameString, location_name: "StatementName"))
    ExecuteStatementInput.add_member(:with_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithEvent"))
    ExecuteStatementInput.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    ExecuteStatementInput.struct_class = Types::ExecuteStatementInput

    ExecuteStatementOutput.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    ExecuteStatementOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ExecuteStatementOutput.add_member(:database, Shapes::ShapeRef.new(shape: String, location_name: "Database"))
    ExecuteStatementOutput.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ExecuteStatementOutput.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, location_name: "Id"))
    ExecuteStatementOutput.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    ExecuteStatementOutput.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    ExecuteStatementOutput.struct_class = Types::ExecuteStatementOutput

    Field.add_member(:blob_value, Shapes::ShapeRef.new(shape: Blob, location_name: "blobValue"))
    Field.add_member(:boolean_value, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "booleanValue"))
    Field.add_member(:double_value, Shapes::ShapeRef.new(shape: BoxedDouble, location_name: "doubleValue"))
    Field.add_member(:is_null, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "isNull"))
    Field.add_member(:long_value, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "longValue"))
    Field.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    Field.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Field.add_member_subclass(:blob_value, Types::Field::BlobValue)
    Field.add_member_subclass(:boolean_value, Types::Field::BooleanValue)
    Field.add_member_subclass(:double_value, Types::Field::DoubleValue)
    Field.add_member_subclass(:is_null, Types::Field::IsNull)
    Field.add_member_subclass(:long_value, Types::Field::LongValue)
    Field.add_member_subclass(:string_value, Types::Field::StringValue)
    Field.add_member_subclass(:unknown, Types::Field::Unknown)
    Field.struct_class = Types::Field

    FieldList.member = Shapes::ShapeRef.new(shape: Field)

    GetStatementResultRequest.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "Id"))
    GetStatementResultRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetStatementResultRequest.struct_class = Types::GetStatementResultRequest

    GetStatementResultResponse.add_member(:column_metadata, Shapes::ShapeRef.new(shape: ColumnMetadataList, location_name: "ColumnMetadata"))
    GetStatementResultResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetStatementResultResponse.add_member(:records, Shapes::ShapeRef.new(shape: SqlRecords, required: true, location_name: "Records"))
    GetStatementResultResponse.add_member(:total_num_rows, Shapes::ShapeRef.new(shape: Long, location_name: "TotalNumRows"))
    GetStatementResultResponse.struct_class = Types::GetStatementResultResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDatabasesRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    ListDatabasesRequest.add_member(:database, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Database"))
    ListDatabasesRequest.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ListDatabasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDatabasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDatabasesRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    ListDatabasesRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    ListDatabasesRequest.struct_class = Types::ListDatabasesRequest

    ListDatabasesResponse.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseList, location_name: "Databases"))
    ListDatabasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDatabasesResponse.struct_class = Types::ListDatabasesResponse

    ListSchemasRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    ListSchemasRequest.add_member(:connected_database, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedDatabase"))
    ListSchemasRequest.add_member(:database, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Database"))
    ListSchemasRequest.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ListSchemasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListSchemasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSchemasRequest.add_member(:schema_pattern, Shapes::ShapeRef.new(shape: String, location_name: "SchemaPattern"))
    ListSchemasRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    ListSchemasRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    ListSchemasRequest.struct_class = Types::ListSchemasRequest

    ListSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaList, location_name: "Schemas"))
    ListSchemasResponse.struct_class = Types::ListSchemasResponse

    ListStatementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStatementsLimit, location_name: "MaxResults"))
    ListStatementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListStatementsRequest.add_member(:role_level, Shapes::ShapeRef.new(shape: Boolean, location_name: "RoleLevel"))
    ListStatementsRequest.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementNameString, location_name: "StatementName"))
    ListStatementsRequest.add_member(:status, Shapes::ShapeRef.new(shape: StatusString, location_name: "Status"))
    ListStatementsRequest.struct_class = Types::ListStatementsRequest

    ListStatementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListStatementsResponse.add_member(:statements, Shapes::ShapeRef.new(shape: StatementList, required: true, location_name: "Statements"))
    ListStatementsResponse.struct_class = Types::ListStatementsResponse

    ListTablesRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: Location, location_name: "ClusterIdentifier"))
    ListTablesRequest.add_member(:connected_database, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedDatabase"))
    ListTablesRequest.add_member(:database, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Database"))
    ListTablesRequest.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ListTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTablesRequest.add_member(:schema_pattern, Shapes::ShapeRef.new(shape: String, location_name: "SchemaPattern"))
    ListTablesRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    ListTablesRequest.add_member(:table_pattern, Shapes::ShapeRef.new(shape: String, location_name: "TablePattern"))
    ListTablesRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupNameString, location_name: "WorkgroupName"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTablesResponse.add_member(:tables, Shapes::ShapeRef.new(shape: TableList, location_name: "Tables"))
    ListTablesResponse.struct_class = Types::ListTablesResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SchemaList.member = Shapes::ShapeRef.new(shape: String)

    SqlList.member = Shapes::ShapeRef.new(shape: StatementString)

    SqlParameter.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "name"))
    SqlParameter.add_member(:value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "value"))
    SqlParameter.struct_class = Types::SqlParameter

    SqlParametersList.member = Shapes::ShapeRef.new(shape: SqlParameter)

    SqlRecords.member = Shapes::ShapeRef.new(shape: FieldList)

    StatementData.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    StatementData.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "Id"))
    StatementData.add_member(:is_batch_statement, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsBatchStatement"))
    StatementData.add_member(:query_parameters, Shapes::ShapeRef.new(shape: SqlParametersList, location_name: "QueryParameters"))
    StatementData.add_member(:query_string, Shapes::ShapeRef.new(shape: StatementString, location_name: "QueryString"))
    StatementData.add_member(:query_strings, Shapes::ShapeRef.new(shape: StatementStringList, location_name: "QueryStrings"))
    StatementData.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    StatementData.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementNameString, location_name: "StatementName"))
    StatementData.add_member(:status, Shapes::ShapeRef.new(shape: StatusString, location_name: "Status"))
    StatementData.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    StatementData.struct_class = Types::StatementData

    StatementList.member = Shapes::ShapeRef.new(shape: StatementData)

    StatementStringList.member = Shapes::ShapeRef.new(shape: StatementString)

    SubStatementData.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    SubStatementData.add_member(:duration, Shapes::ShapeRef.new(shape: Long, location_name: "Duration"))
    SubStatementData.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "Error"))
    SubStatementData.add_member(:has_result_set, Shapes::ShapeRef.new(shape: Boolean, location_name: "HasResultSet"))
    SubStatementData.add_member(:id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "Id"))
    SubStatementData.add_member(:query_string, Shapes::ShapeRef.new(shape: StatementString, location_name: "QueryString"))
    SubStatementData.add_member(:redshift_query_id, Shapes::ShapeRef.new(shape: Long, location_name: "RedshiftQueryId"))
    SubStatementData.add_member(:result_rows, Shapes::ShapeRef.new(shape: Long, location_name: "ResultRows"))
    SubStatementData.add_member(:result_size, Shapes::ShapeRef.new(shape: Long, location_name: "ResultSize"))
    SubStatementData.add_member(:status, Shapes::ShapeRef.new(shape: StatementStatusString, location_name: "Status"))
    SubStatementData.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    SubStatementData.struct_class = Types::SubStatementData

    SubStatementList.member = Shapes::ShapeRef.new(shape: SubStatementData)

    TableList.member = Shapes::ShapeRef.new(shape: TableMember)

    TableMember.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TableMember.add_member(:schema, Shapes::ShapeRef.new(shape: String, location_name: "schema"))
    TableMember.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    TableMember.struct_class = Types::TableMember

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-20"

      api.metadata = {
        "apiVersion" => "2019-12-20",
        "endpointPrefix" => "redshift-data",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Redshift Data API Service",
        "serviceId" => "Redshift Data",
        "signatureVersion" => "v4",
        "signingName" => "redshift-data",
        "targetPrefix" => "RedshiftData",
        "uid" => "redshift-data-2019-12-20",
      }

      api.add_operation(:batch_execute_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchExecuteStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchExecuteStatementInput)
        o.output = Shapes::ShapeRef.new(shape: BatchExecuteStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ActiveStatementsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BatchExecuteStatementException)
      end)

      api.add_operation(:cancel_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DatabaseConnectionException)
      end)

      api.add_operation(:describe_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:execute_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteStatementInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ExecuteStatementException)
        o.errors << Shapes::ShapeRef.new(shape: ActiveStatementsExceededException)
      end)

      api.add_operation(:get_statement_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStatementResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStatementResultRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStatementResultResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSchemasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_statements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStatements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStatementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStatementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DatabaseConnectionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
