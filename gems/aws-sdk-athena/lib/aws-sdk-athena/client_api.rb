# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Athena
  # @api private
  module ClientApi

    include Seahorse::Model

    BatchGetNamedQueryInput = Shapes::StructureShape.new(name: 'BatchGetNamedQueryInput')
    BatchGetNamedQueryOutput = Shapes::StructureShape.new(name: 'BatchGetNamedQueryOutput')
    BatchGetQueryExecutionInput = Shapes::StructureShape.new(name: 'BatchGetQueryExecutionInput')
    BatchGetQueryExecutionOutput = Shapes::StructureShape.new(name: 'BatchGetQueryExecutionOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ColumnInfo = Shapes::StructureShape.new(name: 'ColumnInfo')
    ColumnInfoList = Shapes::ListShape.new(name: 'ColumnInfoList')
    ColumnNullable = Shapes::StringShape.new(name: 'ColumnNullable')
    CreateNamedQueryInput = Shapes::StructureShape.new(name: 'CreateNamedQueryInput')
    CreateNamedQueryOutput = Shapes::StructureShape.new(name: 'CreateNamedQueryOutput')
    DatabaseString = Shapes::StringShape.new(name: 'DatabaseString')
    Date = Shapes::TimestampShape.new(name: 'Date')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DeleteNamedQueryInput = Shapes::StructureShape.new(name: 'DeleteNamedQueryInput')
    DeleteNamedQueryOutput = Shapes::StructureShape.new(name: 'DeleteNamedQueryOutput')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionOption = Shapes::StringShape.new(name: 'EncryptionOption')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetNamedQueryInput = Shapes::StructureShape.new(name: 'GetNamedQueryInput')
    GetNamedQueryOutput = Shapes::StructureShape.new(name: 'GetNamedQueryOutput')
    GetQueryExecutionInput = Shapes::StructureShape.new(name: 'GetQueryExecutionInput')
    GetQueryExecutionOutput = Shapes::StructureShape.new(name: 'GetQueryExecutionOutput')
    GetQueryResultsInput = Shapes::StructureShape.new(name: 'GetQueryResultsInput')
    GetQueryResultsOutput = Shapes::StructureShape.new(name: 'GetQueryResultsOutput')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListNamedQueriesInput = Shapes::StructureShape.new(name: 'ListNamedQueriesInput')
    ListNamedQueriesOutput = Shapes::StructureShape.new(name: 'ListNamedQueriesOutput')
    ListQueryExecutionsInput = Shapes::StructureShape.new(name: 'ListQueryExecutionsInput')
    ListQueryExecutionsOutput = Shapes::StructureShape.new(name: 'ListQueryExecutionsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxNamedQueriesCount = Shapes::IntegerShape.new(name: 'MaxNamedQueriesCount')
    MaxQueryExecutionsCount = Shapes::IntegerShape.new(name: 'MaxQueryExecutionsCount')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NamedQuery = Shapes::StructureShape.new(name: 'NamedQuery')
    NamedQueryId = Shapes::StringShape.new(name: 'NamedQueryId')
    NamedQueryIdList = Shapes::ListShape.new(name: 'NamedQueryIdList')
    NamedQueryList = Shapes::ListShape.new(name: 'NamedQueryList')
    QueryExecution = Shapes::StructureShape.new(name: 'QueryExecution')
    QueryExecutionContext = Shapes::StructureShape.new(name: 'QueryExecutionContext')
    QueryExecutionId = Shapes::StringShape.new(name: 'QueryExecutionId')
    QueryExecutionIdList = Shapes::ListShape.new(name: 'QueryExecutionIdList')
    QueryExecutionList = Shapes::ListShape.new(name: 'QueryExecutionList')
    QueryExecutionState = Shapes::StringShape.new(name: 'QueryExecutionState')
    QueryExecutionStatistics = Shapes::StructureShape.new(name: 'QueryExecutionStatistics')
    QueryExecutionStatus = Shapes::StructureShape.new(name: 'QueryExecutionStatus')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    ResultConfiguration = Shapes::StructureShape.new(name: 'ResultConfiguration')
    ResultSet = Shapes::StructureShape.new(name: 'ResultSet')
    ResultSetMetadata = Shapes::StructureShape.new(name: 'ResultSetMetadata')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    StartQueryExecutionInput = Shapes::StructureShape.new(name: 'StartQueryExecutionInput')
    StartQueryExecutionOutput = Shapes::StructureShape.new(name: 'StartQueryExecutionOutput')
    StopQueryExecutionInput = Shapes::StructureShape.new(name: 'StopQueryExecutionInput')
    StopQueryExecutionOutput = Shapes::StructureShape.new(name: 'StopQueryExecutionOutput')
    String = Shapes::StringShape.new(name: 'String')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnprocessedNamedQueryId = Shapes::StructureShape.new(name: 'UnprocessedNamedQueryId')
    UnprocessedNamedQueryIdList = Shapes::ListShape.new(name: 'UnprocessedNamedQueryIdList')
    UnprocessedQueryExecutionId = Shapes::StructureShape.new(name: 'UnprocessedQueryExecutionId')
    UnprocessedQueryExecutionIdList = Shapes::ListShape.new(name: 'UnprocessedQueryExecutionIdList')
    datumList = Shapes::ListShape.new(name: 'datumList')
    datumString = Shapes::StringShape.new(name: 'datumString')

    BatchGetNamedQueryInput.add_member(:named_query_ids, Shapes::ShapeRef.new(shape: NamedQueryIdList, required: true, location_name: "NamedQueryIds"))
    BatchGetNamedQueryInput.struct_class = Types::BatchGetNamedQueryInput

    BatchGetNamedQueryOutput.add_member(:named_queries, Shapes::ShapeRef.new(shape: NamedQueryList, location_name: "NamedQueries"))
    BatchGetNamedQueryOutput.add_member(:unprocessed_named_query_ids, Shapes::ShapeRef.new(shape: UnprocessedNamedQueryIdList, location_name: "UnprocessedNamedQueryIds"))
    BatchGetNamedQueryOutput.struct_class = Types::BatchGetNamedQueryOutput

    BatchGetQueryExecutionInput.add_member(:query_execution_ids, Shapes::ShapeRef.new(shape: QueryExecutionIdList, required: true, location_name: "QueryExecutionIds"))
    BatchGetQueryExecutionInput.struct_class = Types::BatchGetQueryExecutionInput

    BatchGetQueryExecutionOutput.add_member(:query_executions, Shapes::ShapeRef.new(shape: QueryExecutionList, location_name: "QueryExecutions"))
    BatchGetQueryExecutionOutput.add_member(:unprocessed_query_execution_ids, Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionIdList, location_name: "UnprocessedQueryExecutionIds"))
    BatchGetQueryExecutionOutput.struct_class = Types::BatchGetQueryExecutionOutput

    ColumnInfo.add_member(:catalog_name, Shapes::ShapeRef.new(shape: String, location_name: "CatalogName"))
    ColumnInfo.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    ColumnInfo.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    ColumnInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ColumnInfo.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    ColumnInfo.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    ColumnInfo.add_member(:precision, Shapes::ShapeRef.new(shape: Integer, location_name: "Precision"))
    ColumnInfo.add_member(:scale, Shapes::ShapeRef.new(shape: Integer, location_name: "Scale"))
    ColumnInfo.add_member(:nullable, Shapes::ShapeRef.new(shape: ColumnNullable, location_name: "Nullable"))
    ColumnInfo.add_member(:case_sensitive, Shapes::ShapeRef.new(shape: Boolean, location_name: "CaseSensitive"))
    ColumnInfo.struct_class = Types::ColumnInfo

    ColumnInfoList.member = Shapes::ShapeRef.new(shape: ColumnInfo)

    CreateNamedQueryInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateNamedQueryInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateNamedQueryInput.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, required: true, location_name: "Database"))
    CreateNamedQueryInput.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    CreateNamedQueryInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNamedQueryInput.struct_class = Types::CreateNamedQueryInput

    CreateNamedQueryOutput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    CreateNamedQueryOutput.struct_class = Types::CreateNamedQueryOutput

    Datum.add_member(:var_char_value, Shapes::ShapeRef.new(shape: datumString, location_name: "VarCharValue"))
    Datum.struct_class = Types::Datum

    DeleteNamedQueryInput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, required: true, location_name: "NamedQueryId", metadata: {"idempotencyToken"=>true}))
    DeleteNamedQueryInput.struct_class = Types::DeleteNamedQueryInput

    DeleteNamedQueryOutput.struct_class = Types::DeleteNamedQueryOutput

    EncryptionConfiguration.add_member(:encryption_option, Shapes::ShapeRef.new(shape: EncryptionOption, required: true, location_name: "EncryptionOption"))
    EncryptionConfiguration.add_member(:kms_key, Shapes::ShapeRef.new(shape: String, location_name: "KmsKey"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    GetNamedQueryInput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, required: true, location_name: "NamedQueryId"))
    GetNamedQueryInput.struct_class = Types::GetNamedQueryInput

    GetNamedQueryOutput.add_member(:named_query, Shapes::ShapeRef.new(shape: NamedQuery, location_name: "NamedQuery"))
    GetNamedQueryOutput.struct_class = Types::GetNamedQueryOutput

    GetQueryExecutionInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId"))
    GetQueryExecutionInput.struct_class = Types::GetQueryExecutionInput

    GetQueryExecutionOutput.add_member(:query_execution, Shapes::ShapeRef.new(shape: QueryExecution, location_name: "QueryExecution"))
    GetQueryExecutionOutput.struct_class = Types::GetQueryExecutionOutput

    GetQueryResultsInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId"))
    GetQueryResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetQueryResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxResults"))
    GetQueryResultsInput.struct_class = Types::GetQueryResultsInput

    GetQueryResultsOutput.add_member(:result_set, Shapes::ShapeRef.new(shape: ResultSet, location_name: "ResultSet"))
    GetQueryResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetQueryResultsOutput.struct_class = Types::GetQueryResultsOutput

    ListNamedQueriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNamedQueriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxNamedQueriesCount, location_name: "MaxResults"))
    ListNamedQueriesInput.struct_class = Types::ListNamedQueriesInput

    ListNamedQueriesOutput.add_member(:named_query_ids, Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: "NamedQueryIds"))
    ListNamedQueriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNamedQueriesOutput.struct_class = Types::ListNamedQueriesOutput

    ListQueryExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueryExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxQueryExecutionsCount, location_name: "MaxResults"))
    ListQueryExecutionsInput.struct_class = Types::ListQueryExecutionsInput

    ListQueryExecutionsOutput.add_member(:query_execution_ids, Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: "QueryExecutionIds"))
    ListQueryExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueryExecutionsOutput.struct_class = Types::ListQueryExecutionsOutput

    NamedQuery.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    NamedQuery.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    NamedQuery.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, required: true, location_name: "Database"))
    NamedQuery.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    NamedQuery.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    NamedQuery.struct_class = Types::NamedQuery

    NamedQueryIdList.member = Shapes::ShapeRef.new(shape: NamedQueryId)

    NamedQueryList.member = Shapes::ShapeRef.new(shape: NamedQuery)

    QueryExecution.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    QueryExecution.add_member(:query, Shapes::ShapeRef.new(shape: QueryString, location_name: "Query"))
    QueryExecution.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    QueryExecution.add_member(:query_execution_context, Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: "QueryExecutionContext"))
    QueryExecution.add_member(:status, Shapes::ShapeRef.new(shape: QueryExecutionStatus, location_name: "Status"))
    QueryExecution.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryExecutionStatistics, location_name: "Statistics"))
    QueryExecution.struct_class = Types::QueryExecution

    QueryExecutionContext.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, location_name: "Database"))
    QueryExecutionContext.struct_class = Types::QueryExecutionContext

    QueryExecutionIdList.member = Shapes::ShapeRef.new(shape: QueryExecutionId)

    QueryExecutionList.member = Shapes::ShapeRef.new(shape: QueryExecution)

    QueryExecutionStatistics.add_member(:engine_execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "EngineExecutionTimeInMillis"))
    QueryExecutionStatistics.add_member(:data_scanned_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "DataScannedInBytes"))
    QueryExecutionStatistics.struct_class = Types::QueryExecutionStatistics

    QueryExecutionStatus.add_member(:state, Shapes::ShapeRef.new(shape: QueryExecutionState, location_name: "State"))
    QueryExecutionStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateChangeReason"))
    QueryExecutionStatus.add_member(:submission_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "SubmissionDateTime"))
    QueryExecutionStatus.add_member(:completion_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CompletionDateTime"))
    QueryExecutionStatus.struct_class = Types::QueryExecutionStatus

    ResultConfiguration.add_member(:output_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OutputLocation"))
    ResultConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ResultConfiguration.struct_class = Types::ResultConfiguration

    ResultSet.add_member(:rows, Shapes::ShapeRef.new(shape: RowList, location_name: "Rows"))
    ResultSet.add_member(:result_set_metadata, Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: "ResultSetMetadata"))
    ResultSet.struct_class = Types::ResultSet

    ResultSetMetadata.add_member(:column_info, Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: "ColumnInfo"))
    ResultSetMetadata.struct_class = Types::ResultSetMetadata

    Row.add_member(:data, Shapes::ShapeRef.new(shape: datumList, location_name: "Data"))
    Row.struct_class = Types::Row

    RowList.member = Shapes::ShapeRef.new(shape: Row)

    StartQueryExecutionInput.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    StartQueryExecutionInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartQueryExecutionInput.add_member(:query_execution_context, Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: "QueryExecutionContext"))
    StartQueryExecutionInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, required: true, location_name: "ResultConfiguration"))
    StartQueryExecutionInput.struct_class = Types::StartQueryExecutionInput

    StartQueryExecutionOutput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    StartQueryExecutionOutput.struct_class = Types::StartQueryExecutionOutput

    StopQueryExecutionInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId", metadata: {"idempotencyToken"=>true}))
    StopQueryExecutionInput.struct_class = Types::StopQueryExecutionInput

    StopQueryExecutionOutput.struct_class = Types::StopQueryExecutionOutput

    UnprocessedNamedQueryId.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    UnprocessedNamedQueryId.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UnprocessedNamedQueryId.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    UnprocessedNamedQueryId.struct_class = Types::UnprocessedNamedQueryId

    UnprocessedNamedQueryIdList.member = Shapes::ShapeRef.new(shape: UnprocessedNamedQueryId)

    UnprocessedQueryExecutionId.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    UnprocessedQueryExecutionId.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UnprocessedQueryExecutionId.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    UnprocessedQueryExecutionId.struct_class = Types::UnprocessedQueryExecutionId

    UnprocessedQueryExecutionIdList.member = Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionId)

    datumList.member = Shapes::ShapeRef.new(shape: Datum)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-05-18"

      api.metadata = {
        "apiVersion" => "2017-05-18",
        "endpointPrefix" => "athena",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Athena",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonAthena",
        "uid" => "athena-2017-05-18",
      }

      api.add_operation(:batch_get_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:batch_get_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_named_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNamedQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNamedQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListNamedQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_query_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueryExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueryExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListQueryExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end
