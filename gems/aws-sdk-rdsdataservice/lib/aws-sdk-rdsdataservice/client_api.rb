# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDSDataService
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    ArrayOfArray = Shapes::ListShape.new(name: 'ArrayOfArray')
    ArrayValue = Shapes::StructureShape.new(name: 'ArrayValue')
    ArrayValueList = Shapes::ListShape.new(name: 'ArrayValueList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchExecuteStatementRequest = Shapes::StructureShape.new(name: 'BatchExecuteStatementRequest')
    BatchExecuteStatementResponse = Shapes::StructureShape.new(name: 'BatchExecuteStatementResponse')
    BeginTransactionRequest = Shapes::StructureShape.new(name: 'BeginTransactionRequest')
    BeginTransactionResponse = Shapes::StructureShape.new(name: 'BeginTransactionResponse')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanArray = Shapes::ListShape.new(name: 'BooleanArray')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedDouble = Shapes::FloatShape.new(name: 'BoxedDouble')
    BoxedFloat = Shapes::FloatShape.new(name: 'BoxedFloat')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    BoxedLong = Shapes::IntegerShape.new(name: 'BoxedLong')
    ColumnMetadata = Shapes::StructureShape.new(name: 'ColumnMetadata')
    CommitTransactionRequest = Shapes::StructureShape.new(name: 'CommitTransactionRequest')
    CommitTransactionResponse = Shapes::StructureShape.new(name: 'CommitTransactionResponse')
    DbName = Shapes::StringShape.new(name: 'DbName')
    DecimalReturnType = Shapes::StringShape.new(name: 'DecimalReturnType')
    DoubleArray = Shapes::ListShape.new(name: 'DoubleArray')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecuteSqlRequest = Shapes::StructureShape.new(name: 'ExecuteSqlRequest')
    ExecuteSqlResponse = Shapes::StructureShape.new(name: 'ExecuteSqlResponse')
    ExecuteStatementRequest = Shapes::StructureShape.new(name: 'ExecuteStatementRequest')
    ExecuteStatementResponse = Shapes::StructureShape.new(name: 'ExecuteStatementResponse')
    Field = Shapes::StructureShape.new(name: 'Field')
    FieldList = Shapes::ListShape.new(name: 'FieldList')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    Id = Shapes::StringShape.new(name: 'Id')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongArray = Shapes::ListShape.new(name: 'LongArray')
    Metadata = Shapes::ListShape.new(name: 'Metadata')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    Record = Shapes::StructureShape.new(name: 'Record')
    Records = Shapes::ListShape.new(name: 'Records')
    RecordsUpdated = Shapes::IntegerShape.new(name: 'RecordsUpdated')
    ResultFrame = Shapes::StructureShape.new(name: 'ResultFrame')
    ResultSetMetadata = Shapes::StructureShape.new(name: 'ResultSetMetadata')
    ResultSetOptions = Shapes::StructureShape.new(name: 'ResultSetOptions')
    RollbackTransactionRequest = Shapes::StructureShape.new(name: 'RollbackTransactionRequest')
    RollbackTransactionResponse = Shapes::StructureShape.new(name: 'RollbackTransactionResponse')
    Row = Shapes::ListShape.new(name: 'Row')
    ServiceUnavailableError = Shapes::StructureShape.new(name: 'ServiceUnavailableError')
    SqlParameter = Shapes::StructureShape.new(name: 'SqlParameter')
    SqlParameterSets = Shapes::ListShape.new(name: 'SqlParameterSets')
    SqlParametersList = Shapes::ListShape.new(name: 'SqlParametersList')
    SqlRecords = Shapes::ListShape.new(name: 'SqlRecords')
    SqlStatement = Shapes::StringShape.new(name: 'SqlStatement')
    SqlStatementResult = Shapes::StructureShape.new(name: 'SqlStatementResult')
    SqlStatementResults = Shapes::ListShape.new(name: 'SqlStatementResults')
    StatementTimeoutException = Shapes::StructureShape.new(name: 'StatementTimeoutException')
    String = Shapes::StringShape.new(name: 'String')
    StringArray = Shapes::ListShape.new(name: 'StringArray')
    StructValue = Shapes::StructureShape.new(name: 'StructValue')
    TransactionStatus = Shapes::StringShape.new(name: 'TransactionStatus')
    TypeHint = Shapes::StringShape.new(name: 'TypeHint')
    UpdateResult = Shapes::StructureShape.new(name: 'UpdateResult')
    UpdateResults = Shapes::ListShape.new(name: 'UpdateResults')
    Value = Shapes::StructureShape.new(name: 'Value')

    ArrayOfArray.member = Shapes::ShapeRef.new(shape: ArrayValue)

    ArrayValue.add_member(:array_values, Shapes::ShapeRef.new(shape: ArrayOfArray, location_name: "arrayValues"))
    ArrayValue.add_member(:boolean_values, Shapes::ShapeRef.new(shape: BooleanArray, location_name: "booleanValues"))
    ArrayValue.add_member(:double_values, Shapes::ShapeRef.new(shape: DoubleArray, location_name: "doubleValues"))
    ArrayValue.add_member(:long_values, Shapes::ShapeRef.new(shape: LongArray, location_name: "longValues"))
    ArrayValue.add_member(:string_values, Shapes::ShapeRef.new(shape: StringArray, location_name: "stringValues"))
    ArrayValue.struct_class = Types::ArrayValue

    ArrayValueList.member = Shapes::ShapeRef.new(shape: Value)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchExecuteStatementRequest.add_member(:database, Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    BatchExecuteStatementRequest.add_member(:parameter_sets, Shapes::ShapeRef.new(shape: SqlParameterSets, location_name: "parameterSets"))
    BatchExecuteStatementRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    BatchExecuteStatementRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    BatchExecuteStatementRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "secretArn"))
    BatchExecuteStatementRequest.add_member(:sql, Shapes::ShapeRef.new(shape: SqlStatement, required: true, location_name: "sql"))
    BatchExecuteStatementRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: Id, location_name: "transactionId"))
    BatchExecuteStatementRequest.struct_class = Types::BatchExecuteStatementRequest

    BatchExecuteStatementResponse.add_member(:update_results, Shapes::ShapeRef.new(shape: UpdateResults, location_name: "updateResults"))
    BatchExecuteStatementResponse.struct_class = Types::BatchExecuteStatementResponse

    BeginTransactionRequest.add_member(:database, Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    BeginTransactionRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    BeginTransactionRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    BeginTransactionRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "secretArn"))
    BeginTransactionRequest.struct_class = Types::BeginTransactionRequest

    BeginTransactionResponse.add_member(:transaction_id, Shapes::ShapeRef.new(shape: Id, location_name: "transactionId"))
    BeginTransactionResponse.struct_class = Types::BeginTransactionResponse

    BooleanArray.member = Shapes::ShapeRef.new(shape: BoxedBoolean)

    ColumnMetadata.add_member(:array_base_column_type, Shapes::ShapeRef.new(shape: Integer, location_name: "arrayBaseColumnType"))
    ColumnMetadata.add_member(:is_auto_increment, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoIncrement"))
    ColumnMetadata.add_member(:is_case_sensitive, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCaseSensitive"))
    ColumnMetadata.add_member(:is_currency, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCurrency"))
    ColumnMetadata.add_member(:is_signed, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSigned"))
    ColumnMetadata.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "label"))
    ColumnMetadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ColumnMetadata.add_member(:nullable, Shapes::ShapeRef.new(shape: Integer, location_name: "nullable"))
    ColumnMetadata.add_member(:precision, Shapes::ShapeRef.new(shape: Integer, location_name: "precision"))
    ColumnMetadata.add_member(:scale, Shapes::ShapeRef.new(shape: Integer, location_name: "scale"))
    ColumnMetadata.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "schemaName"))
    ColumnMetadata.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "tableName"))
    ColumnMetadata.add_member(:type, Shapes::ShapeRef.new(shape: Integer, location_name: "type"))
    ColumnMetadata.add_member(:type_name, Shapes::ShapeRef.new(shape: String, location_name: "typeName"))
    ColumnMetadata.struct_class = Types::ColumnMetadata

    CommitTransactionRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    CommitTransactionRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "secretArn"))
    CommitTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "transactionId"))
    CommitTransactionRequest.struct_class = Types::CommitTransactionRequest

    CommitTransactionResponse.add_member(:transaction_status, Shapes::ShapeRef.new(shape: TransactionStatus, location_name: "transactionStatus"))
    CommitTransactionResponse.struct_class = Types::CommitTransactionResponse

    DoubleArray.member = Shapes::ShapeRef.new(shape: BoxedDouble)

    ExecuteSqlRequest.add_member(:aws_secret_store_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "awsSecretStoreArn"))
    ExecuteSqlRequest.add_member(:database, Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    ExecuteSqlRequest.add_member(:db_cluster_or_instance_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "dbClusterOrInstanceArn"))
    ExecuteSqlRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    ExecuteSqlRequest.add_member(:sql_statements, Shapes::ShapeRef.new(shape: SqlStatement, required: true, location_name: "sqlStatements"))
    ExecuteSqlRequest.struct_class = Types::ExecuteSqlRequest

    ExecuteSqlResponse.add_member(:sql_statement_results, Shapes::ShapeRef.new(shape: SqlStatementResults, location_name: "sqlStatementResults"))
    ExecuteSqlResponse.struct_class = Types::ExecuteSqlResponse

    ExecuteStatementRequest.add_member(:continue_after_timeout, Shapes::ShapeRef.new(shape: Boolean, location_name: "continueAfterTimeout"))
    ExecuteStatementRequest.add_member(:database, Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    ExecuteStatementRequest.add_member(:include_result_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeResultMetadata"))
    ExecuteStatementRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SqlParametersList, location_name: "parameters"))
    ExecuteStatementRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ExecuteStatementRequest.add_member(:result_set_options, Shapes::ShapeRef.new(shape: ResultSetOptions, location_name: "resultSetOptions"))
    ExecuteStatementRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    ExecuteStatementRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "secretArn"))
    ExecuteStatementRequest.add_member(:sql, Shapes::ShapeRef.new(shape: SqlStatement, required: true, location_name: "sql"))
    ExecuteStatementRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: Id, location_name: "transactionId"))
    ExecuteStatementRequest.struct_class = Types::ExecuteStatementRequest

    ExecuteStatementResponse.add_member(:column_metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "columnMetadata"))
    ExecuteStatementResponse.add_member(:generated_fields, Shapes::ShapeRef.new(shape: FieldList, location_name: "generatedFields"))
    ExecuteStatementResponse.add_member(:number_of_records_updated, Shapes::ShapeRef.new(shape: RecordsUpdated, location_name: "numberOfRecordsUpdated"))
    ExecuteStatementResponse.add_member(:records, Shapes::ShapeRef.new(shape: SqlRecords, location_name: "records"))
    ExecuteStatementResponse.struct_class = Types::ExecuteStatementResponse

    Field.add_member(:array_value, Shapes::ShapeRef.new(shape: ArrayValue, location_name: "arrayValue"))
    Field.add_member(:blob_value, Shapes::ShapeRef.new(shape: Blob, location_name: "blobValue"))
    Field.add_member(:boolean_value, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "booleanValue"))
    Field.add_member(:double_value, Shapes::ShapeRef.new(shape: BoxedDouble, location_name: "doubleValue"))
    Field.add_member(:is_null, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "isNull"))
    Field.add_member(:long_value, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "longValue"))
    Field.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    Field.struct_class = Types::Field

    FieldList.member = Shapes::ShapeRef.new(shape: Field)

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    LongArray.member = Shapes::ShapeRef.new(shape: BoxedLong)

    Metadata.member = Shapes::ShapeRef.new(shape: ColumnMetadata)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    Record.add_member(:values, Shapes::ShapeRef.new(shape: Row, location_name: "values"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    ResultFrame.add_member(:records, Shapes::ShapeRef.new(shape: Records, location_name: "records"))
    ResultFrame.add_member(:result_set_metadata, Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: "resultSetMetadata"))
    ResultFrame.struct_class = Types::ResultFrame

    ResultSetMetadata.add_member(:column_count, Shapes::ShapeRef.new(shape: Long, location_name: "columnCount"))
    ResultSetMetadata.add_member(:column_metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "columnMetadata"))
    ResultSetMetadata.struct_class = Types::ResultSetMetadata

    ResultSetOptions.add_member(:decimal_return_type, Shapes::ShapeRef.new(shape: DecimalReturnType, location_name: "decimalReturnType"))
    ResultSetOptions.struct_class = Types::ResultSetOptions

    RollbackTransactionRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    RollbackTransactionRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "secretArn"))
    RollbackTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "transactionId"))
    RollbackTransactionRequest.struct_class = Types::RollbackTransactionRequest

    RollbackTransactionResponse.add_member(:transaction_status, Shapes::ShapeRef.new(shape: TransactionStatus, location_name: "transactionStatus"))
    RollbackTransactionResponse.struct_class = Types::RollbackTransactionResponse

    Row.member = Shapes::ShapeRef.new(shape: Value)

    ServiceUnavailableError.struct_class = Types::ServiceUnavailableError

    SqlParameter.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    SqlParameter.add_member(:type_hint, Shapes::ShapeRef.new(shape: TypeHint, location_name: "typeHint"))
    SqlParameter.add_member(:value, Shapes::ShapeRef.new(shape: Field, location_name: "value"))
    SqlParameter.struct_class = Types::SqlParameter

    SqlParameterSets.member = Shapes::ShapeRef.new(shape: SqlParametersList)

    SqlParametersList.member = Shapes::ShapeRef.new(shape: SqlParameter)

    SqlRecords.member = Shapes::ShapeRef.new(shape: FieldList)

    SqlStatementResult.add_member(:number_of_records_updated, Shapes::ShapeRef.new(shape: RecordsUpdated, location_name: "numberOfRecordsUpdated"))
    SqlStatementResult.add_member(:result_frame, Shapes::ShapeRef.new(shape: ResultFrame, location_name: "resultFrame"))
    SqlStatementResult.struct_class = Types::SqlStatementResult

    SqlStatementResults.member = Shapes::ShapeRef.new(shape: SqlStatementResult)

    StatementTimeoutException.add_member(:db_connection_id, Shapes::ShapeRef.new(shape: Long, location_name: "dbConnectionId"))
    StatementTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StatementTimeoutException.struct_class = Types::StatementTimeoutException

    StringArray.member = Shapes::ShapeRef.new(shape: String)

    StructValue.add_member(:attributes, Shapes::ShapeRef.new(shape: ArrayValueList, location_name: "attributes"))
    StructValue.struct_class = Types::StructValue

    UpdateResult.add_member(:generated_fields, Shapes::ShapeRef.new(shape: FieldList, location_name: "generatedFields"))
    UpdateResult.struct_class = Types::UpdateResult

    UpdateResults.member = Shapes::ShapeRef.new(shape: UpdateResult)

    Value.add_member(:array_values, Shapes::ShapeRef.new(shape: ArrayValueList, location_name: "arrayValues"))
    Value.add_member(:big_int_value, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "bigIntValue"))
    Value.add_member(:bit_value, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "bitValue"))
    Value.add_member(:blob_value, Shapes::ShapeRef.new(shape: Blob, location_name: "blobValue"))
    Value.add_member(:double_value, Shapes::ShapeRef.new(shape: BoxedDouble, location_name: "doubleValue"))
    Value.add_member(:int_value, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "intValue"))
    Value.add_member(:is_null, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "isNull"))
    Value.add_member(:real_value, Shapes::ShapeRef.new(shape: BoxedFloat, location_name: "realValue"))
    Value.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    Value.add_member(:struct_value, Shapes::ShapeRef.new(shape: StructValue, location_name: "structValue"))
    Value.struct_class = Types::Value


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-08-01"

      api.metadata = {
        "apiVersion" => "2018-08-01",
        "endpointPrefix" => "rds-data",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS RDS DataService",
        "serviceId" => "RDS Data",
        "signatureVersion" => "v4",
        "signingName" => "rds-data",
        "uid" => "rds-data-2018-08-01",
      }

      api.add_operation(:batch_execute_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchExecuteStatement"
        o.http_method = "POST"
        o.http_request_uri = "/BatchExecute"
        o.input = Shapes::ShapeRef.new(shape: BatchExecuteStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchExecuteStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: StatementTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)

      api.add_operation(:begin_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BeginTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/BeginTransaction"
        o.input = Shapes::ShapeRef.new(shape: BeginTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: BeginTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: StatementTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)

      api.add_operation(:commit_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CommitTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/CommitTransaction"
        o.input = Shapes::ShapeRef.new(shape: CommitTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: CommitTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: StatementTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:execute_sql, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteSql"
        o.http_method = "POST"
        o.http_request_uri = "/ExecuteSql"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ExecuteSqlRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteSqlResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)

      api.add_operation(:execute_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteStatement"
        o.http_method = "POST"
        o.http_request_uri = "/Execute"
        o.input = Shapes::ShapeRef.new(shape: ExecuteStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: StatementTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)

      api.add_operation(:rollback_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RollbackTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/RollbackTransaction"
        o.input = Shapes::ShapeRef.new(shape: RollbackTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: RollbackTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: StatementTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)
    end

  end
end
