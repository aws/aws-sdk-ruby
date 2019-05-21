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
    ArrayValues = Shapes::ListShape.new(name: 'ArrayValues')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ColumnMetadata = Shapes::StructureShape.new(name: 'ColumnMetadata')
    ColumnMetadataList = Shapes::ListShape.new(name: 'ColumnMetadataList')
    DbName = Shapes::StringShape.new(name: 'DbName')
    Double = Shapes::FloatShape.new(name: 'Double')
    ExecuteSqlRequest = Shapes::StructureShape.new(name: 'ExecuteSqlRequest')
    ExecuteSqlResponse = Shapes::StructureShape.new(name: 'ExecuteSqlResponse')
    Float = Shapes::FloatShape.new(name: 'Float')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Record = Shapes::StructureShape.new(name: 'Record')
    Records = Shapes::ListShape.new(name: 'Records')
    ResultFrame = Shapes::StructureShape.new(name: 'ResultFrame')
    ResultSetMetadata = Shapes::StructureShape.new(name: 'ResultSetMetadata')
    Row = Shapes::ListShape.new(name: 'Row')
    ServiceUnavailableError = Shapes::StructureShape.new(name: 'ServiceUnavailableError')
    SqlStatement = Shapes::StringShape.new(name: 'SqlStatement')
    SqlStatementResult = Shapes::StructureShape.new(name: 'SqlStatementResult')
    SqlStatementResults = Shapes::ListShape.new(name: 'SqlStatementResults')
    String = Shapes::StringShape.new(name: 'String')
    StructValue = Shapes::StructureShape.new(name: 'StructValue')
    Value = Shapes::StructureShape.new(name: 'Value')

    ArrayValues.member = Shapes::ShapeRef.new(shape: Value)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

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

    ColumnMetadataList.member = Shapes::ShapeRef.new(shape: ColumnMetadata)

    ExecuteSqlRequest.add_member(:aws_secret_store_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "awsSecretStoreArn"))
    ExecuteSqlRequest.add_member(:database, Shapes::ShapeRef.new(shape: DbName, location_name: "database"))
    ExecuteSqlRequest.add_member(:db_cluster_or_instance_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "dbClusterOrInstanceArn"))
    ExecuteSqlRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DbName, location_name: "schema"))
    ExecuteSqlRequest.add_member(:sql_statements, Shapes::ShapeRef.new(shape: SqlStatement, required: true, location_name: "sqlStatements"))
    ExecuteSqlRequest.struct_class = Types::ExecuteSqlRequest

    ExecuteSqlResponse.add_member(:sql_statement_results, Shapes::ShapeRef.new(shape: SqlStatementResults, required: true, location_name: "sqlStatementResults"))
    ExecuteSqlResponse.struct_class = Types::ExecuteSqlResponse

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    Record.add_member(:values, Shapes::ShapeRef.new(shape: Row, location_name: "values"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    ResultFrame.add_member(:records, Shapes::ShapeRef.new(shape: Records, location_name: "records"))
    ResultFrame.add_member(:result_set_metadata, Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: "resultSetMetadata"))
    ResultFrame.struct_class = Types::ResultFrame

    ResultSetMetadata.add_member(:column_count, Shapes::ShapeRef.new(shape: Long, location_name: "columnCount"))
    ResultSetMetadata.add_member(:column_metadata, Shapes::ShapeRef.new(shape: ColumnMetadataList, location_name: "columnMetadata"))
    ResultSetMetadata.struct_class = Types::ResultSetMetadata

    Row.member = Shapes::ShapeRef.new(shape: Value)

    SqlStatementResult.add_member(:number_of_records_updated, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfRecordsUpdated"))
    SqlStatementResult.add_member(:result_frame, Shapes::ShapeRef.new(shape: ResultFrame, location_name: "resultFrame"))
    SqlStatementResult.struct_class = Types::SqlStatementResult

    SqlStatementResults.member = Shapes::ShapeRef.new(shape: SqlStatementResult)

    StructValue.add_member(:attributes, Shapes::ShapeRef.new(shape: ArrayValues, location_name: "attributes"))
    StructValue.struct_class = Types::StructValue

    Value.add_member(:array_values, Shapes::ShapeRef.new(shape: ArrayValues, location_name: "arrayValues"))
    Value.add_member(:big_int_value, Shapes::ShapeRef.new(shape: Long, location_name: "bigIntValue"))
    Value.add_member(:bit_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "bitValue"))
    Value.add_member(:blob_value, Shapes::ShapeRef.new(shape: Blob, location_name: "blobValue"))
    Value.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    Value.add_member(:int_value, Shapes::ShapeRef.new(shape: Integer, location_name: "intValue"))
    Value.add_member(:is_null, Shapes::ShapeRef.new(shape: Boolean, location_name: "isNull"))
    Value.add_member(:real_value, Shapes::ShapeRef.new(shape: Float, location_name: "realValue"))
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

      api.add_operation(:execute_sql, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteSql"
        o.http_method = "POST"
        o.http_request_uri = "/ExecuteSql"
        o.input = Shapes::ShapeRef.new(shape: ExecuteSqlRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteSqlResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)
    end

  end
end
