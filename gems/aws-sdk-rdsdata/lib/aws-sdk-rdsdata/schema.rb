# frozen_string_literal: true

# This is generated code!

module Aws::RDSData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 11, "max" => 100}})
    ArrayOfArray = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#ArrayOfArray", name: "ArrayOfArray")
    ArrayValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rdsdata#ArrayValue", name: "ArrayValue")
    ArrayValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#ArrayValueList", name: "ArrayValueList")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#BatchExecuteStatementInput", name: "BatchExecuteStatementInput")
    BatchExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#BatchExecuteStatementOutput", name: "BatchExecuteStatementOutput")
    BeginTransactionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#BeginTransactionInput", name: "BeginTransactionInput")
    BeginTransactionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#BeginTransactionOutput", name: "BeginTransactionOutput")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.rdsdata#Blob", name: "Blob")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rdsdata#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BooleanArray = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#BooleanArray", name: "BooleanArray")
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rdsdata#BoxedBoolean", name: "BoxedBoolean")
    BoxedDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rdsdata#BoxedDouble", name: "BoxedDouble")
    BoxedFloat = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rdsdata#BoxedFloat", name: "BoxedFloat")
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rdsdata#BoxedInteger", name: "BoxedInteger")
    BoxedLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rdsdata#BoxedLong", name: "BoxedLong")
    ColumnMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ColumnMetadata", name: "ColumnMetadata")
    CommitTransactionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#CommitTransactionInput", name: "CommitTransactionInput")
    CommitTransactionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#CommitTransactionOutput", name: "CommitTransactionOutput")
    DatabaseErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#DatabaseErrorException", name: "DatabaseErrorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DatabaseNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#DatabaseNotFoundException", name: "DatabaseNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DatabaseResumingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#DatabaseResumingException", name: "DatabaseResumingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DatabaseUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#DatabaseUnavailableException", name: "DatabaseUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    DbName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#DbName", name: "DbName", traits: {"smithy.api#length" => {"max" => 64}})
    DecimalReturnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#DecimalReturnType", name: "DecimalReturnType", traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "DOUBLE_OR_LONG", "name" => "DOUBLE_OR_LONG"}]})
    DoubleArray = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#DoubleArray", name: "DoubleArray")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#ErrorMessage", name: "ErrorMessage")
    ExecuteSqlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ExecuteSqlInput", name: "ExecuteSqlInput")
    ExecuteSqlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ExecuteSqlOutput", name: "ExecuteSqlOutput")
    ExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ExecuteStatementInput", name: "ExecuteStatementInput")
    ExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ExecuteStatementOutput", name: "ExecuteStatementOutput")
    Field = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rdsdata#Field", name: "Field")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#FieldList", name: "FieldList")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FormattedSqlRecords = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#FormattedSqlRecords", name: "FormattedSqlRecords")
    HttpEndpointNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#HttpEndpointNotEnabledException", name: "HttpEndpointNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#Id", name: "Id", traits: {"smithy.api#length" => {"max" => 192}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rdsdata#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidResourceStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#InvalidResourceStateException", name: "InvalidResourceStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSecretException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#InvalidSecretException", name: "InvalidSecretException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rdsdata#Long", name: "Long", traits: {"smithy.api#default" => 0})
    LongArray = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#LongArray", name: "LongArray")
    LongReturnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#LongReturnType", name: "LongReturnType", traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "LONG", "name" => "LONG"}]})
    Metadata = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#Metadata", name: "Metadata")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#ParameterName", name: "ParameterName")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#Record", name: "Record")
    Records = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#Records", name: "Records")
    RecordsFormatType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#RecordsFormatType", name: "RecordsFormatType", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "JSON", "name" => "JSON"}]})
    RecordsUpdated = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rdsdata#RecordsUpdated", name: "RecordsUpdated", traits: {"smithy.api#default" => 0})
    ResultFrame = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ResultFrame", name: "ResultFrame")
    ResultSetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ResultSetMetadata", name: "ResultSetMetadata")
    ResultSetOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ResultSetOptions", name: "ResultSetOptions")
    RollbackTransactionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#RollbackTransactionInput", name: "RollbackTransactionInput")
    RollbackTransactionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#RollbackTransactionOutput", name: "RollbackTransactionOutput")
    Row = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#Row", name: "Row")
    SecretsErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#SecretsErrorException", name: "SecretsErrorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUnavailableError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#ServiceUnavailableError", name: "ServiceUnavailableError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SqlParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#SqlParameter", name: "SqlParameter")
    SqlParameterSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#SqlParameterSets", name: "SqlParameterSets")
    SqlParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#SqlParametersList", name: "SqlParametersList")
    SqlRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#SqlRecords", name: "SqlRecords")
    SqlStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#SqlStatement", name: "SqlStatement", traits: {"smithy.api#length" => {"max" => 65536}})
    SqlStatementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#SqlStatementResult", name: "SqlStatementResult")
    SqlStatementResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#SqlStatementResults", name: "SqlStatementResults")
    StatementTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#StatementTimeoutException", name: "StatementTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#String", name: "String")
    StringArray = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#StringArray", name: "StringArray")
    StructValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#StructValue", name: "StructValue")
    TransactionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#TransactionNotFoundException", name: "TransactionNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TransactionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#TransactionStatus", name: "TransactionStatus", traits: {"smithy.api#length" => {"max" => 128}})
    TypeHint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rdsdata#TypeHint", name: "TypeHint", traits: {"smithy.api#enum" => [{"value" => "JSON", "name" => "JSON"}, {"value" => "UUID", "name" => "UUID"}, {"value" => "TIMESTAMP", "name" => "TIMESTAMP"}, {"value" => "DATE", "name" => "DATE"}, {"value" => "TIME", "name" => "TIME"}, {"value" => "DECIMAL", "name" => "DECIMAL"}]})
    UnsupportedResultException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#UnsupportedResultException", name: "UnsupportedResultException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rdsdata#UpdateResult", name: "UpdateResult")
    UpdateResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rdsdata#UpdateResults", name: "UpdateResults")
    Value = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rdsdata#Value", name: "Value")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ArrayOfArray.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayValue)
    ArrayValue.add_member(:boolean_values, Types::ArrayValue::BooleanValues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanArray, location_name: "booleanValues"))
    ArrayValue.add_member(:long_values, Types::ArrayValue::LongValues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongArray, location_name: "longValues"))
    ArrayValue.add_member(:double_values, Types::ArrayValue::DoubleValues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleArray, location_name: "doubleValues"))
    ArrayValue.add_member(:string_values, Types::ArrayValue::StringValues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringArray, location_name: "stringValues"))
    ArrayValue.add_member(:array_values, Types::ArrayValue::ArrayValues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayOfArray, location_name: "arrayValues"))
    ArrayValue.add_member(:unknown, Types::ArrayValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ArrayValue.type = Types::ArrayValue
    ArrayValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    BatchExecuteStatementInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:sql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlStatement, location_name: "sql", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    BatchExecuteStatementInput.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    BatchExecuteStatementInput.add_member(:parameter_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParameterSets, location_name: "parameterSets"))
    BatchExecuteStatementInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "transactionId"))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:update_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResults, location_name: "updateResults"))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    BeginTransactionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    BeginTransactionInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    BeginTransactionInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    BeginTransactionInput.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    BeginTransactionInput.type = Types::BeginTransactionInput
    BeginTransactionOutput.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "transactionId"))
    BeginTransactionOutput.type = Types::BeginTransactionOutput
    BooleanArray.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean)
    ColumnMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ColumnMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "type", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "typeName"))
    ColumnMetadata.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "label"))
    ColumnMetadata.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "schemaName"))
    ColumnMetadata.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tableName"))
    ColumnMetadata.add_member(:is_auto_increment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoIncrement", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_signed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSigned", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isCurrency", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_case_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isCaseSensitive", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:nullable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "nullable", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "precision", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "scale", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:array_base_column_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "arrayBaseColumnType", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.type = Types::ColumnMetadata
    CommitTransactionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CommitTransactionInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    CommitTransactionInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "transactionId", traits: {"smithy.api#required" => {}}))
    CommitTransactionInput.type = Types::CommitTransactionInput
    CommitTransactionOutput.add_member(:transaction_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionStatus, location_name: "transactionStatus"))
    CommitTransactionOutput.type = Types::CommitTransactionOutput
    DatabaseErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DatabaseErrorException.type = Types::DatabaseErrorException
    DatabaseNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DatabaseNotFoundException.type = Types::DatabaseNotFoundException
    DatabaseResumingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DatabaseResumingException.type = Types::DatabaseResumingException
    DatabaseUnavailableException.type = Types::DatabaseUnavailableException
    DoubleArray.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedDouble)
    ExecuteSqlInput.add_member(:db_cluster_or_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "dbClusterOrInstanceArn", traits: {"smithy.api#required" => {}}))
    ExecuteSqlInput.add_member(:aws_secret_store_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "awsSecretStoreArn", traits: {"smithy.api#required" => {}}))
    ExecuteSqlInput.add_member(:sql_statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlStatement, location_name: "sqlStatements", traits: {"smithy.api#required" => {}}))
    ExecuteSqlInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    ExecuteSqlInput.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    ExecuteSqlInput.type = Types::ExecuteSqlInput
    ExecuteSqlOutput.add_member(:sql_statement_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlStatementResults, location_name: "sqlStatementResults"))
    ExecuteSqlOutput.type = Types::ExecuteSqlOutput
    ExecuteStatementInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:sql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlStatement, location_name: "sql", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    ExecuteStatementInput.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    ExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList, location_name: "parameters"))
    ExecuteStatementInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "transactionId"))
    ExecuteStatementInput.add_member(:include_result_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeResultMetadata", traits: {"smithy.api#default" => false}))
    ExecuteStatementInput.add_member(:continue_after_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "continueAfterTimeout", traits: {"smithy.api#default" => false}))
    ExecuteStatementInput.add_member(:result_set_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSetOptions, location_name: "resultSetOptions"))
    ExecuteStatementInput.add_member(:format_records_as, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordsFormatType, location_name: "formatRecordsAs"))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlRecords, location_name: "records"))
    ExecuteStatementOutput.add_member(:column_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: "columnMetadata"))
    ExecuteStatementOutput.add_member(:number_of_records_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordsUpdated, location_name: "numberOfRecordsUpdated", traits: {"smithy.api#default" => 0}))
    ExecuteStatementOutput.add_member(:generated_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: "generatedFields"))
    ExecuteStatementOutput.add_member(:formatted_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormattedSqlRecords, location_name: "formattedRecords"))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    Field.add_member(:is_null, Types::Field::IsNull, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "isNull"))
    Field.add_member(:boolean_value, Types::Field::BooleanValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "booleanValue"))
    Field.add_member(:long_value, Types::Field::LongValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedLong, location_name: "longValue"))
    Field.add_member(:double_value, Types::Field::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedDouble, location_name: "doubleValue"))
    Field.add_member(:string_value, Types::Field::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    Field.add_member(:blob_value, Types::Field::BlobValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: "blobValue"))
    Field.add_member(:array_value, Types::Field::ArrayValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayValue, location_name: "arrayValue"))
    Field.add_member(:unknown, Types::Field::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Field.type = Types::Field
    FieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Field)
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    HttpEndpointNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    HttpEndpointNotEnabledException.type = Types::HttpEndpointNotEnabledException
    InternalServerErrorException.type = Types::InternalServerErrorException
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    InvalidSecretException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidSecretException.type = Types::InvalidSecretException
    LongArray.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedLong)
    Metadata.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnMetadata)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.type = Types::NotFoundException
    Record.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Row, location_name: "values"))
    Record.type = Types::Record
    Records.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    ResultFrame.add_member(:result_set_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: "resultSetMetadata"))
    ResultFrame.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Records, location_name: "records"))
    ResultFrame.type = Types::ResultFrame
    ResultSetMetadata.add_member(:column_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "columnCount", traits: {"smithy.api#default" => 0}))
    ResultSetMetadata.add_member(:column_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: "columnMetadata"))
    ResultSetMetadata.type = Types::ResultSetMetadata
    ResultSetOptions.add_member(:decimal_return_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecimalReturnType, location_name: "decimalReturnType"))
    ResultSetOptions.add_member(:long_return_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongReturnType, location_name: "longReturnType"))
    ResultSetOptions.type = Types::ResultSetOptions
    RollbackTransactionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    RollbackTransactionInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    RollbackTransactionInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "transactionId", traits: {"smithy.api#required" => {}}))
    RollbackTransactionInput.type = Types::RollbackTransactionInput
    RollbackTransactionOutput.add_member(:transaction_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionStatus, location_name: "transactionStatus"))
    RollbackTransactionOutput.type = Types::RollbackTransactionOutput
    Row.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    SecretsErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    SecretsErrorException.type = Types::SecretsErrorException
    ServiceUnavailableError.type = Types::ServiceUnavailableError
    SqlParameter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    SqlParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Field, location_name: "value"))
    SqlParameter.add_member(:type_hint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeHint, location_name: "typeHint"))
    SqlParameter.type = Types::SqlParameter
    SqlParameterSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParametersList)
    SqlParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlParameter)
    SqlRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList)
    SqlStatementResult.add_member(:result_frame, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFrame, location_name: "resultFrame"))
    SqlStatementResult.add_member(:number_of_records_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordsUpdated, location_name: "numberOfRecordsUpdated", traits: {"smithy.api#default" => 0}))
    SqlStatementResult.type = Types::SqlStatementResult
    SqlStatementResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlStatementResult)
    StatementTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StatementTimeoutException.add_member(:db_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "dbConnectionId", traits: {"smithy.api#default" => 0}))
    StatementTimeoutException.type = Types::StatementTimeoutException
    StringArray.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StructValue.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayValueList, location_name: "attributes"))
    StructValue.type = Types::StructValue
    TransactionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TransactionNotFoundException.type = Types::TransactionNotFoundException
    UnsupportedResultException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnsupportedResultException.type = Types::UnsupportedResultException
    UpdateResult.add_member(:generated_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: "generatedFields"))
    UpdateResult.type = Types::UpdateResult
    UpdateResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResult)
    Value.add_member(:is_null, Types::Value::IsNull, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "isNull"))
    Value.add_member(:bit_value, Types::Value::BitValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "bitValue"))
    Value.add_member(:big_int_value, Types::Value::BigIntValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedLong, location_name: "bigIntValue"))
    Value.add_member(:int_value, Types::Value::IntValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "intValue"))
    Value.add_member(:double_value, Types::Value::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedDouble, location_name: "doubleValue"))
    Value.add_member(:real_value, Types::Value::RealValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedFloat, location_name: "realValue"))
    Value.add_member(:string_value, Types::Value::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    Value.add_member(:blob_value, Types::Value::BlobValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: "blobValue"))
    Value.add_member(:array_values, Types::Value::ArrayValues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayValueList, location_name: "arrayValues"))
    Value.add_member(:struct_value, Types::Value::StructValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StructValue, location_name: "structValue"))
    Value.add_member(:unknown, Types::Value::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Value.type = Types::Value

    RdsDataService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rdsdata#RdsDataService"
      service.name = "RdsDataService"
      service.version = "2018-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "RDS Data", "arnNamespace" => "rds-data"}, "aws.auth#sigv4" => {"name" => "rds-data"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS RDS DataService"}
      service.add_operation(:batch_execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseResumingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpointNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchExecute"}}
      end)
      service.add_operation(:begin_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#BeginTransaction"
        operation.name = "BeginTransaction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BeginTransactionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BeginTransactionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseResumingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpointNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BeginTransaction"}}
      end)
      service.add_operation(:commit_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#CommitTransaction"
        operation.name = "CommitTransaction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTransactionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTransactionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpointNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CommitTransaction"}}
      end)
      service.add_operation(:execute_sql, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#ExecuteSql"
        operation.name = "ExecuteSql"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteSqlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteSqlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "The ExecuteSql API is deprecated, please use the ExecuteStatement API.", "since" => "2019-03-21"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ExecuteSql"}}
      end)
      service.add_operation(:execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseResumingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpointNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedResultException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/Execute"}}
      end)
      service.add_operation(:rollback_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#RollbackTransaction"
        operation.name = "RollbackTransaction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackTransactionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackTransactionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpointNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/RollbackTransaction"}}
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
