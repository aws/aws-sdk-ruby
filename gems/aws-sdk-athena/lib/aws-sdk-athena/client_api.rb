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

    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    BatchGetNamedQueryInput = Shapes::StructureShape.new(name: 'BatchGetNamedQueryInput')
    BatchGetNamedQueryOutput = Shapes::StructureShape.new(name: 'BatchGetNamedQueryOutput')
    BatchGetQueryExecutionInput = Shapes::StructureShape.new(name: 'BatchGetQueryExecutionInput')
    BatchGetQueryExecutionOutput = Shapes::StructureShape.new(name: 'BatchGetQueryExecutionOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BytesScannedCutoffValue = Shapes::IntegerShape.new(name: 'BytesScannedCutoffValue')
    ColumnInfo = Shapes::StructureShape.new(name: 'ColumnInfo')
    ColumnInfoList = Shapes::ListShape.new(name: 'ColumnInfoList')
    ColumnNullable = Shapes::StringShape.new(name: 'ColumnNullable')
    CreateNamedQueryInput = Shapes::StructureShape.new(name: 'CreateNamedQueryInput')
    CreateNamedQueryOutput = Shapes::StructureShape.new(name: 'CreateNamedQueryOutput')
    CreateWorkGroupInput = Shapes::StructureShape.new(name: 'CreateWorkGroupInput')
    CreateWorkGroupOutput = Shapes::StructureShape.new(name: 'CreateWorkGroupOutput')
    DatabaseString = Shapes::StringShape.new(name: 'DatabaseString')
    Date = Shapes::TimestampShape.new(name: 'Date')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DeleteNamedQueryInput = Shapes::StructureShape.new(name: 'DeleteNamedQueryInput')
    DeleteNamedQueryOutput = Shapes::StructureShape.new(name: 'DeleteNamedQueryOutput')
    DeleteWorkGroupInput = Shapes::StructureShape.new(name: 'DeleteWorkGroupInput')
    DeleteWorkGroupOutput = Shapes::StructureShape.new(name: 'DeleteWorkGroupOutput')
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
    GetWorkGroupInput = Shapes::StructureShape.new(name: 'GetWorkGroupInput')
    GetWorkGroupOutput = Shapes::StructureShape.new(name: 'GetWorkGroupOutput')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListNamedQueriesInput = Shapes::StructureShape.new(name: 'ListNamedQueriesInput')
    ListNamedQueriesOutput = Shapes::StructureShape.new(name: 'ListNamedQueriesOutput')
    ListQueryExecutionsInput = Shapes::StructureShape.new(name: 'ListQueryExecutionsInput')
    ListQueryExecutionsOutput = Shapes::StructureShape.new(name: 'ListQueryExecutionsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListWorkGroupsInput = Shapes::StructureShape.new(name: 'ListWorkGroupsInput')
    ListWorkGroupsOutput = Shapes::StructureShape.new(name: 'ListWorkGroupsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxNamedQueriesCount = Shapes::IntegerShape.new(name: 'MaxNamedQueriesCount')
    MaxQueryExecutionsCount = Shapes::IntegerShape.new(name: 'MaxQueryExecutionsCount')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    MaxTagsCount = Shapes::IntegerShape.new(name: 'MaxTagsCount')
    MaxWorkGroupsCount = Shapes::IntegerShape.new(name: 'MaxWorkGroupsCount')
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
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultConfiguration = Shapes::StructureShape.new(name: 'ResultConfiguration')
    ResultConfigurationUpdates = Shapes::StructureShape.new(name: 'ResultConfigurationUpdates')
    ResultSet = Shapes::StructureShape.new(name: 'ResultSet')
    ResultSetMetadata = Shapes::StructureShape.new(name: 'ResultSetMetadata')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    StartQueryExecutionInput = Shapes::StructureShape.new(name: 'StartQueryExecutionInput')
    StartQueryExecutionOutput = Shapes::StructureShape.new(name: 'StartQueryExecutionOutput')
    StatementType = Shapes::StringShape.new(name: 'StatementType')
    StopQueryExecutionInput = Shapes::StructureShape.new(name: 'StopQueryExecutionInput')
    StopQueryExecutionOutput = Shapes::StructureShape.new(name: 'StopQueryExecutionOutput')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnprocessedNamedQueryId = Shapes::StructureShape.new(name: 'UnprocessedNamedQueryId')
    UnprocessedNamedQueryIdList = Shapes::ListShape.new(name: 'UnprocessedNamedQueryIdList')
    UnprocessedQueryExecutionId = Shapes::StructureShape.new(name: 'UnprocessedQueryExecutionId')
    UnprocessedQueryExecutionIdList = Shapes::ListShape.new(name: 'UnprocessedQueryExecutionIdList')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateWorkGroupInput = Shapes::StructureShape.new(name: 'UpdateWorkGroupInput')
    UpdateWorkGroupOutput = Shapes::StructureShape.new(name: 'UpdateWorkGroupOutput')
    WorkGroup = Shapes::StructureShape.new(name: 'WorkGroup')
    WorkGroupConfiguration = Shapes::StructureShape.new(name: 'WorkGroupConfiguration')
    WorkGroupConfigurationUpdates = Shapes::StructureShape.new(name: 'WorkGroupConfigurationUpdates')
    WorkGroupDescriptionString = Shapes::StringShape.new(name: 'WorkGroupDescriptionString')
    WorkGroupName = Shapes::StringShape.new(name: 'WorkGroupName')
    WorkGroupState = Shapes::StringShape.new(name: 'WorkGroupState')
    WorkGroupSummary = Shapes::StructureShape.new(name: 'WorkGroupSummary')
    WorkGroupsList = Shapes::ListShape.new(name: 'WorkGroupsList')
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
    CreateNamedQueryInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    CreateNamedQueryInput.struct_class = Types::CreateNamedQueryInput

    CreateNamedQueryOutput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    CreateNamedQueryOutput.struct_class = Types::CreateNamedQueryOutput

    CreateWorkGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "Name"))
    CreateWorkGroupInput.add_member(:configuration, Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: "Configuration"))
    CreateWorkGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    CreateWorkGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkGroupInput.struct_class = Types::CreateWorkGroupInput

    CreateWorkGroupOutput.struct_class = Types::CreateWorkGroupOutput

    Datum.add_member(:var_char_value, Shapes::ShapeRef.new(shape: datumString, location_name: "VarCharValue"))
    Datum.struct_class = Types::Datum

    DeleteNamedQueryInput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, required: true, location_name: "NamedQueryId", metadata: {"idempotencyToken"=>true}))
    DeleteNamedQueryInput.struct_class = Types::DeleteNamedQueryInput

    DeleteNamedQueryOutput.struct_class = Types::DeleteNamedQueryOutput

    DeleteWorkGroupInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    DeleteWorkGroupInput.add_member(:recursive_delete_option, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RecursiveDeleteOption"))
    DeleteWorkGroupInput.struct_class = Types::DeleteWorkGroupInput

    DeleteWorkGroupOutput.struct_class = Types::DeleteWorkGroupOutput

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

    GetQueryResultsOutput.add_member(:update_count, Shapes::ShapeRef.new(shape: Long, location_name: "UpdateCount"))
    GetQueryResultsOutput.add_member(:result_set, Shapes::ShapeRef.new(shape: ResultSet, location_name: "ResultSet"))
    GetQueryResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetQueryResultsOutput.struct_class = Types::GetQueryResultsOutput

    GetWorkGroupInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    GetWorkGroupInput.struct_class = Types::GetWorkGroupInput

    GetWorkGroupOutput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroup, location_name: "WorkGroup"))
    GetWorkGroupOutput.struct_class = Types::GetWorkGroupOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:athena_error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "AthenaErrorCode"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListNamedQueriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNamedQueriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxNamedQueriesCount, location_name: "MaxResults"))
    ListNamedQueriesInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    ListNamedQueriesInput.struct_class = Types::ListNamedQueriesInput

    ListNamedQueriesOutput.add_member(:named_query_ids, Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: "NamedQueryIds"))
    ListNamedQueriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNamedQueriesOutput.struct_class = Types::ListNamedQueriesOutput

    ListQueryExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueryExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxQueryExecutionsCount, location_name: "MaxResults"))
    ListQueryExecutionsInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    ListQueryExecutionsInput.struct_class = Types::ListQueryExecutionsInput

    ListQueryExecutionsOutput.add_member(:query_execution_ids, Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: "QueryExecutionIds"))
    ListQueryExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueryExecutionsOutput.struct_class = Types::ListQueryExecutionsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxTagsCount, location_name: "MaxResults"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListWorkGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListWorkGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxWorkGroupsCount, location_name: "MaxResults"))
    ListWorkGroupsInput.struct_class = Types::ListWorkGroupsInput

    ListWorkGroupsOutput.add_member(:work_groups, Shapes::ShapeRef.new(shape: WorkGroupsList, location_name: "WorkGroups"))
    ListWorkGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListWorkGroupsOutput.struct_class = Types::ListWorkGroupsOutput

    NamedQuery.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    NamedQuery.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    NamedQuery.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, required: true, location_name: "Database"))
    NamedQuery.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    NamedQuery.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    NamedQuery.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    NamedQuery.struct_class = Types::NamedQuery

    NamedQueryIdList.member = Shapes::ShapeRef.new(shape: NamedQueryId)

    NamedQueryList.member = Shapes::ShapeRef.new(shape: NamedQuery)

    QueryExecution.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    QueryExecution.add_member(:query, Shapes::ShapeRef.new(shape: QueryString, location_name: "Query"))
    QueryExecution.add_member(:statement_type, Shapes::ShapeRef.new(shape: StatementType, location_name: "StatementType"))
    QueryExecution.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    QueryExecution.add_member(:query_execution_context, Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: "QueryExecutionContext"))
    QueryExecution.add_member(:status, Shapes::ShapeRef.new(shape: QueryExecutionStatus, location_name: "Status"))
    QueryExecution.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryExecutionStatistics, location_name: "Statistics"))
    QueryExecution.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
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

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResultConfiguration.add_member(:output_location, Shapes::ShapeRef.new(shape: String, location_name: "OutputLocation"))
    ResultConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ResultConfiguration.struct_class = Types::ResultConfiguration

    ResultConfigurationUpdates.add_member(:output_location, Shapes::ShapeRef.new(shape: String, location_name: "OutputLocation"))
    ResultConfigurationUpdates.add_member(:remove_output_location, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveOutputLocation"))
    ResultConfigurationUpdates.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ResultConfigurationUpdates.add_member(:remove_encryption_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveEncryptionConfiguration"))
    ResultConfigurationUpdates.struct_class = Types::ResultConfigurationUpdates

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
    StartQueryExecutionInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    StartQueryExecutionInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    StartQueryExecutionInput.struct_class = Types::StartQueryExecutionInput

    StartQueryExecutionOutput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    StartQueryExecutionOutput.struct_class = Types::StartQueryExecutionOutput

    StopQueryExecutionInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId", metadata: {"idempotencyToken"=>true}))
    StopQueryExecutionInput.struct_class = Types::StopQueryExecutionInput

    StopQueryExecutionOutput.struct_class = Types::StopQueryExecutionOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.add_member(:reason, Shapes::ShapeRef.new(shape: ThrottleReason, location_name: "Reason"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

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

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateWorkGroupInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    UpdateWorkGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    UpdateWorkGroupInput.add_member(:configuration_updates, Shapes::ShapeRef.new(shape: WorkGroupConfigurationUpdates, location_name: "ConfigurationUpdates"))
    UpdateWorkGroupInput.add_member(:state, Shapes::ShapeRef.new(shape: WorkGroupState, location_name: "State"))
    UpdateWorkGroupInput.struct_class = Types::UpdateWorkGroupInput

    UpdateWorkGroupOutput.struct_class = Types::UpdateWorkGroupOutput

    WorkGroup.add_member(:name, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "Name"))
    WorkGroup.add_member(:state, Shapes::ShapeRef.new(shape: WorkGroupState, location_name: "State"))
    WorkGroup.add_member(:configuration, Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: "Configuration"))
    WorkGroup.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    WorkGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    WorkGroup.struct_class = Types::WorkGroup

    WorkGroupConfiguration.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    WorkGroupConfiguration.add_member(:enforce_work_group_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnforceWorkGroupConfiguration"))
    WorkGroupConfiguration.add_member(:publish_cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "PublishCloudWatchMetricsEnabled"))
    WorkGroupConfiguration.add_member(:bytes_scanned_cutoff_per_query, Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: "BytesScannedCutoffPerQuery"))
    WorkGroupConfiguration.struct_class = Types::WorkGroupConfiguration

    WorkGroupConfigurationUpdates.add_member(:enforce_work_group_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnforceWorkGroupConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:result_configuration_updates, Shapes::ShapeRef.new(shape: ResultConfigurationUpdates, location_name: "ResultConfigurationUpdates"))
    WorkGroupConfigurationUpdates.add_member(:publish_cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "PublishCloudWatchMetricsEnabled"))
    WorkGroupConfigurationUpdates.add_member(:bytes_scanned_cutoff_per_query, Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: "BytesScannedCutoffPerQuery"))
    WorkGroupConfigurationUpdates.add_member(:remove_bytes_scanned_cutoff_per_query, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveBytesScannedCutoffPerQuery"))
    WorkGroupConfigurationUpdates.struct_class = Types::WorkGroupConfigurationUpdates

    WorkGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "Name"))
    WorkGroupSummary.add_member(:state, Shapes::ShapeRef.new(shape: WorkGroupState, location_name: "State"))
    WorkGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    WorkGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    WorkGroupSummary.struct_class = Types::WorkGroupSummary

    WorkGroupsList.member = Shapes::ShapeRef.new(shape: WorkGroupSummary)

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
        "serviceId" => "Athena",
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

      api.add_operation(:create_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkGroupOutput)
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

      api.add_operation(:delete_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkGroupOutput)
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

      api.add_operation(:get_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetWorkGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_work_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListWorkGroupsOutput)
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

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end
