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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ArrayOfArray.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayValue, name: "member"))
    ArrayValue.add_member(:boolean_values, Types::ArrayValue::BooleanValues, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanArray, name: "booleanValues"))
    ArrayValue.add_member(:long_values, Types::ArrayValue::LongValues, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArray, name: "longValues"))
    ArrayValue.add_member(:double_values, Types::ArrayValue::DoubleValues, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleArray, name: "doubleValues"))
    ArrayValue.add_member(:string_values, Types::ArrayValue::StringValues, ::Smithy::Schema::Shapes::MemberShape.new(target: StringArray, name: "stringValues"))
    ArrayValue.add_member(:array_values, Types::ArrayValue::ArrayValues, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayOfArray, name: "arrayValues"))
    ArrayValue.add_member(:unknown, Types::ArrayValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ArrayValue.type = Types::ArrayValue
    ArrayValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "member"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BadRequestException.type = Types::BadRequestException
    BatchExecuteStatementInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlStatement, name: "sql", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "database"))
    BatchExecuteStatementInput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "schema"))
    BatchExecuteStatementInput.add_member(:parameter_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParameterSets, name: "parameterSets"))
    BatchExecuteStatementInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "transactionId"))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:update_results, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateResults, name: "updateResults"))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    BeginTransactionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    BeginTransactionInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    BeginTransactionInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "database"))
    BeginTransactionInput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "schema"))
    BeginTransactionInput.type = Types::BeginTransactionInput
    BeginTransactionOutput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "transactionId"))
    BeginTransactionOutput.type = Types::BeginTransactionOutput
    BooleanArray.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "member"))
    ColumnMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ColumnMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "type", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "typeName"))
    ColumnMetadata.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "label"))
    ColumnMetadata.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schemaName"))
    ColumnMetadata.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tableName"))
    ColumnMetadata.add_member(:is_auto_increment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAutoIncrement", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_signed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSigned", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isCurrency", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:is_case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isCaseSensitive", traits: {"smithy.api#default" => false}))
    ColumnMetadata.add_member(:nullable, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "nullable", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "precision", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "scale", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.add_member(:array_base_column_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "arrayBaseColumnType", traits: {"smithy.api#default" => 0}))
    ColumnMetadata.type = Types::ColumnMetadata
    CommitTransactionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CommitTransactionInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    CommitTransactionInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "transactionId", traits: {"smithy.api#required" => {}}))
    CommitTransactionInput.type = Types::CommitTransactionInput
    CommitTransactionOutput.add_member(:transaction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionStatus, name: "transactionStatus"))
    CommitTransactionOutput.type = Types::CommitTransactionOutput
    DatabaseErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DatabaseErrorException.type = Types::DatabaseErrorException
    DatabaseNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DatabaseNotFoundException.type = Types::DatabaseNotFoundException
    DatabaseResumingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DatabaseResumingException.type = Types::DatabaseResumingException
    DatabaseUnavailableException.type = Types::DatabaseUnavailableException
    DoubleArray.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "member"))
    ExecuteSqlInput.add_member(:db_cluster_or_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "dbClusterOrInstanceArn", traits: {"smithy.api#required" => {}}))
    ExecuteSqlInput.add_member(:aws_secret_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "awsSecretStoreArn", traits: {"smithy.api#required" => {}}))
    ExecuteSqlInput.add_member(:sql_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlStatement, name: "sqlStatements", traits: {"smithy.api#required" => {}}))
    ExecuteSqlInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "database"))
    ExecuteSqlInput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "schema"))
    ExecuteSqlInput.type = Types::ExecuteSqlInput
    ExecuteSqlOutput.add_member(:sql_statement_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlStatementResults, name: "sqlStatementResults"))
    ExecuteSqlOutput.type = Types::ExecuteSqlOutput
    ExecuteStatementInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlStatement, name: "sql", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "database"))
    ExecuteStatementInput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "schema"))
    ExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParametersList, name: "parameters"))
    ExecuteStatementInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "transactionId"))
    ExecuteStatementInput.add_member(:include_result_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeResultMetadata", traits: {"smithy.api#default" => false}))
    ExecuteStatementInput.add_member(:continue_after_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "continueAfterTimeout", traits: {"smithy.api#default" => false}))
    ExecuteStatementInput.add_member(:result_set_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSetOptions, name: "resultSetOptions"))
    ExecuteStatementInput.add_member(:format_records_as, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordsFormatType, name: "formatRecordsAs"))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlRecords, name: "records"))
    ExecuteStatementOutput.add_member(:column_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "columnMetadata"))
    ExecuteStatementOutput.add_member(:number_of_records_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordsUpdated, name: "numberOfRecordsUpdated", traits: {"smithy.api#default" => 0}))
    ExecuteStatementOutput.add_member(:generated_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "generatedFields"))
    ExecuteStatementOutput.add_member(:formatted_records, ::Smithy::Schema::Shapes::MemberShape.new(target: FormattedSqlRecords, name: "formattedRecords"))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    Field.add_member(:is_null, Types::Field::IsNull, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "isNull"))
    Field.add_member(:boolean_value, Types::Field::BooleanValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "booleanValue"))
    Field.add_member(:long_value, Types::Field::LongValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedLong, name: "longValue"))
    Field.add_member(:double_value, Types::Field::DoubleValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "doubleValue"))
    Field.add_member(:string_value, Types::Field::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stringValue"))
    Field.add_member(:blob_value, Types::Field::BlobValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "blobValue"))
    Field.add_member(:array_value, Types::Field::ArrayValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayValue, name: "arrayValue"))
    Field.add_member(:unknown, Types::Field::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Field.type = Types::Field
    FieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "member"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    HttpEndpointNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    HttpEndpointNotEnabledException.type = Types::HttpEndpointNotEnabledException
    InternalServerErrorException.type = Types::InternalServerErrorException
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    InvalidSecretException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidSecretException.type = Types::InvalidSecretException
    LongArray.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedLong, name: "member"))
    Metadata.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnMetadata, name: "member"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NotFoundException.type = Types::NotFoundException
    Record.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "values"))
    Record.type = Types::Record
    Records.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    ResultFrame.add_member(:result_set_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSetMetadata, name: "resultSetMetadata"))
    ResultFrame.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: Records, name: "records"))
    ResultFrame.type = Types::ResultFrame
    ResultSetMetadata.add_member(:column_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "columnCount", traits: {"smithy.api#default" => 0}))
    ResultSetMetadata.add_member(:column_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "columnMetadata"))
    ResultSetMetadata.type = Types::ResultSetMetadata
    ResultSetOptions.add_member(:decimal_return_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DecimalReturnType, name: "decimalReturnType"))
    ResultSetOptions.add_member(:long_return_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LongReturnType, name: "longReturnType"))
    ResultSetOptions.type = Types::ResultSetOptions
    RollbackTransactionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    RollbackTransactionInput.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    RollbackTransactionInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "transactionId", traits: {"smithy.api#required" => {}}))
    RollbackTransactionInput.type = Types::RollbackTransactionInput
    RollbackTransactionOutput.add_member(:transaction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionStatus, name: "transactionStatus"))
    RollbackTransactionOutput.type = Types::RollbackTransactionOutput
    Row.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "member"))
    SecretsErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    SecretsErrorException.type = Types::SecretsErrorException
    ServiceUnavailableError.type = Types::ServiceUnavailableError
    SqlParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "name"))
    SqlParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "value"))
    SqlParameter.add_member(:type_hint, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeHint, name: "typeHint"))
    SqlParameter.type = Types::SqlParameter
    SqlParameterSets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParametersList, name: "member"))
    SqlParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlParameter, name: "member"))
    SqlRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "member"))
    SqlStatementResult.add_member(:result_frame, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFrame, name: "resultFrame"))
    SqlStatementResult.add_member(:number_of_records_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordsUpdated, name: "numberOfRecordsUpdated", traits: {"smithy.api#default" => 0}))
    SqlStatementResult.type = Types::SqlStatementResult
    SqlStatementResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlStatementResult, name: "member"))
    StatementTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    StatementTimeoutException.add_member(:db_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "dbConnectionId", traits: {"smithy.api#default" => 0}))
    StatementTimeoutException.type = Types::StatementTimeoutException
    StringArray.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    StructValue.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayValueList, name: "attributes"))
    StructValue.type = Types::StructValue
    TransactionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TransactionNotFoundException.type = Types::TransactionNotFoundException
    UnsupportedResultException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnsupportedResultException.type = Types::UnsupportedResultException
    UpdateResult.add_member(:generated_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "generatedFields"))
    UpdateResult.type = Types::UpdateResult
    UpdateResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateResult, name: "member"))
    Value.add_member(:is_null, Types::Value::IsNull, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "isNull"))
    Value.add_member(:bit_value, Types::Value::BitValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "bitValue"))
    Value.add_member(:big_int_value, Types::Value::BigIntValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedLong, name: "bigIntValue"))
    Value.add_member(:int_value, Types::Value::IntValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "intValue"))
    Value.add_member(:double_value, Types::Value::DoubleValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "doubleValue"))
    Value.add_member(:real_value, Types::Value::RealValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedFloat, name: "realValue"))
    Value.add_member(:string_value, Types::Value::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stringValue"))
    Value.add_member(:blob_value, Types::Value::BlobValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "blobValue"))
    Value.add_member(:array_values, Types::Value::ArrayValues, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayValueList, name: "arrayValues"))
    Value.add_member(:struct_value, Types::Value::StructValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StructValue, name: "structValue"))
    Value.add_member(:unknown, Types::Value::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Value.type = Types::Value

    RdsDataService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rdsdata#RdsDataService"
      service.name = "RdsDataService"
      service.version = "2018-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "RDS Data", "arnNamespace" => "rds-data"}, "aws.auth#sigv4" => {"name" => "rds-data"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS RDS DataService"}
      service.add_operation(:batch_execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = BatchExecuteStatementInput
        operation.output = BatchExecuteStatementOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << DatabaseErrorException
        operation.errors << DatabaseNotFoundException
        operation.errors << DatabaseResumingException
        operation.errors << DatabaseUnavailableException
        operation.errors << ForbiddenException
        operation.errors << HttpEndpointNotEnabledException
        operation.errors << InternalServerErrorException
        operation.errors << InvalidResourceStateException
        operation.errors << InvalidSecretException
        operation.errors << SecretsErrorException
        operation.errors << ServiceUnavailableError
        operation.errors << StatementTimeoutException
        operation.errors << TransactionNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchExecute"}}
      end)
      service.add_operation(:begin_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#BeginTransaction"
        operation.name = "BeginTransaction"
        operation.input = BeginTransactionInput
        operation.output = BeginTransactionOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << DatabaseErrorException
        operation.errors << DatabaseNotFoundException
        operation.errors << DatabaseResumingException
        operation.errors << DatabaseUnavailableException
        operation.errors << ForbiddenException
        operation.errors << HttpEndpointNotEnabledException
        operation.errors << InternalServerErrorException
        operation.errors << InvalidResourceStateException
        operation.errors << InvalidSecretException
        operation.errors << SecretsErrorException
        operation.errors << ServiceUnavailableError
        operation.errors << StatementTimeoutException
        operation.errors << TransactionNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BeginTransaction"}}
      end)
      service.add_operation(:commit_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#CommitTransaction"
        operation.name = "CommitTransaction"
        operation.input = CommitTransactionInput
        operation.output = CommitTransactionOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << DatabaseErrorException
        operation.errors << DatabaseNotFoundException
        operation.errors << DatabaseUnavailableException
        operation.errors << ForbiddenException
        operation.errors << HttpEndpointNotEnabledException
        operation.errors << InternalServerErrorException
        operation.errors << InvalidResourceStateException
        operation.errors << InvalidSecretException
        operation.errors << NotFoundException
        operation.errors << SecretsErrorException
        operation.errors << ServiceUnavailableError
        operation.errors << StatementTimeoutException
        operation.errors << TransactionNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CommitTransaction"}}
      end)
      service.add_operation(:execute_sql, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#ExecuteSql"
        operation.name = "ExecuteSql"
        operation.input = ExecuteSqlInput
        operation.output = ExecuteSqlOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableError
        operation.traits = {"smithy.api#deprecated" => {"message" => "The ExecuteSql API is deprecated, please use the ExecuteStatement API.", "since" => "2019-03-21"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ExecuteSql"}}
      end)
      service.add_operation(:execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = ExecuteStatementInput
        operation.output = ExecuteStatementOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << DatabaseErrorException
        operation.errors << DatabaseNotFoundException
        operation.errors << DatabaseResumingException
        operation.errors << DatabaseUnavailableException
        operation.errors << ForbiddenException
        operation.errors << HttpEndpointNotEnabledException
        operation.errors << InternalServerErrorException
        operation.errors << InvalidResourceStateException
        operation.errors << InvalidSecretException
        operation.errors << SecretsErrorException
        operation.errors << ServiceUnavailableError
        operation.errors << StatementTimeoutException
        operation.errors << TransactionNotFoundException
        operation.errors << UnsupportedResultException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/Execute"}}
      end)
      service.add_operation(:rollback_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rdsdata#RollbackTransaction"
        operation.name = "RollbackTransaction"
        operation.input = RollbackTransactionInput
        operation.output = RollbackTransactionOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << DatabaseErrorException
        operation.errors << DatabaseNotFoundException
        operation.errors << DatabaseUnavailableException
        operation.errors << ForbiddenException
        operation.errors << HttpEndpointNotEnabledException
        operation.errors << InternalServerErrorException
        operation.errors << InvalidResourceStateException
        operation.errors << InvalidSecretException
        operation.errors << NotFoundException
        operation.errors << SecretsErrorException
        operation.errors << ServiceUnavailableError
        operation.errors << StatementTimeoutException
        operation.errors << TransactionNotFoundException
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
