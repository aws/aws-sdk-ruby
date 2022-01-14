# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Honeycode
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AutomationExecutionException = Shapes::StructureShape.new(name: 'AutomationExecutionException')
    AutomationExecutionTimeoutException = Shapes::StructureShape.new(name: 'AutomationExecutionTimeoutException')
    AwsUserArn = Shapes::StringShape.new(name: 'AwsUserArn')
    BatchCreateTableRowsRequest = Shapes::StructureShape.new(name: 'BatchCreateTableRowsRequest')
    BatchCreateTableRowsResult = Shapes::StructureShape.new(name: 'BatchCreateTableRowsResult')
    BatchDeleteTableRowsRequest = Shapes::StructureShape.new(name: 'BatchDeleteTableRowsRequest')
    BatchDeleteTableRowsResult = Shapes::StructureShape.new(name: 'BatchDeleteTableRowsResult')
    BatchErrorMessage = Shapes::StringShape.new(name: 'BatchErrorMessage')
    BatchItemId = Shapes::StringShape.new(name: 'BatchItemId')
    BatchUpdateTableRowsRequest = Shapes::StructureShape.new(name: 'BatchUpdateTableRowsRequest')
    BatchUpdateTableRowsResult = Shapes::StructureShape.new(name: 'BatchUpdateTableRowsResult')
    BatchUpsertTableRowsRequest = Shapes::StructureShape.new(name: 'BatchUpsertTableRowsRequest')
    BatchUpsertTableRowsResult = Shapes::StructureShape.new(name: 'BatchUpsertTableRowsResult')
    Cell = Shapes::StructureShape.new(name: 'Cell')
    CellInput = Shapes::StructureShape.new(name: 'CellInput')
    Cells = Shapes::ListShape.new(name: 'Cells')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ColumnMetadata = Shapes::StructureShape.new(name: 'ColumnMetadata')
    CreateRowData = Shapes::StructureShape.new(name: 'CreateRowData')
    CreateRowDataList = Shapes::ListShape.new(name: 'CreateRowDataList')
    CreatedRowsMap = Shapes::MapShape.new(name: 'CreatedRowsMap')
    DataItem = Shapes::StructureShape.new(name: 'DataItem')
    DataItems = Shapes::ListShape.new(name: 'DataItems')
    DelimitedTextDelimiter = Shapes::StringShape.new(name: 'DelimitedTextDelimiter')
    DelimitedTextImportOptions = Shapes::StructureShape.new(name: 'DelimitedTextImportOptions')
    DescribeTableDataImportJobRequest = Shapes::StructureShape.new(name: 'DescribeTableDataImportJobRequest')
    DescribeTableDataImportJobResult = Shapes::StructureShape.new(name: 'DescribeTableDataImportJobResult')
    DestinationOptions = Shapes::StructureShape.new(name: 'DestinationOptions')
    Email = Shapes::StringShape.new(name: 'Email')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Fact = Shapes::StringShape.new(name: 'Fact')
    FactList = Shapes::ListShape.new(name: 'FactList')
    FailedBatchItem = Shapes::StructureShape.new(name: 'FailedBatchItem')
    FailedBatchItems = Shapes::ListShape.new(name: 'FailedBatchItems')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    Format = Shapes::StringShape.new(name: 'Format')
    FormattedValue = Shapes::StringShape.new(name: 'FormattedValue')
    FormattedValuesList = Shapes::ListShape.new(name: 'FormattedValuesList')
    Formula = Shapes::StringShape.new(name: 'Formula')
    GetScreenDataRequest = Shapes::StructureShape.new(name: 'GetScreenDataRequest')
    GetScreenDataResult = Shapes::StructureShape.new(name: 'GetScreenDataResult')
    HasHeaderRow = Shapes::BooleanShape.new(name: 'HasHeaderRow')
    IgnoreEmptyRows = Shapes::BooleanShape.new(name: 'IgnoreEmptyRows')
    ImportColumnMap = Shapes::MapShape.new(name: 'ImportColumnMap')
    ImportDataCharacterEncoding = Shapes::StringShape.new(name: 'ImportDataCharacterEncoding')
    ImportDataSource = Shapes::StructureShape.new(name: 'ImportDataSource')
    ImportDataSourceConfig = Shapes::StructureShape.new(name: 'ImportDataSourceConfig')
    ImportJobSubmitter = Shapes::StructureShape.new(name: 'ImportJobSubmitter')
    ImportOptions = Shapes::StructureShape.new(name: 'ImportOptions')
    ImportSourceDataFormat = Shapes::StringShape.new(name: 'ImportSourceDataFormat')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvokeScreenAutomationRequest = Shapes::StructureShape.new(name: 'InvokeScreenAutomationRequest')
    InvokeScreenAutomationResult = Shapes::StructureShape.new(name: 'InvokeScreenAutomationResult')
    JobId = Shapes::StringShape.new(name: 'JobId')
    ListTableColumnsRequest = Shapes::StructureShape.new(name: 'ListTableColumnsRequest')
    ListTableColumnsResult = Shapes::StructureShape.new(name: 'ListTableColumnsResult')
    ListTableRowsRequest = Shapes::StructureShape.new(name: 'ListTableRowsRequest')
    ListTableRowsResult = Shapes::StructureShape.new(name: 'ListTableRowsResult')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesResult = Shapes::StructureShape.new(name: 'ListTablesResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    QueryTableRowsRequest = Shapes::StructureShape.new(name: 'QueryTableRowsRequest')
    QueryTableRowsResult = Shapes::StructureShape.new(name: 'QueryTableRowsResult')
    RawValue = Shapes::StringShape.new(name: 'RawValue')
    RequestTimeoutException = Shapes::StructureShape.new(name: 'RequestTimeoutException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIds = Shapes::ListShape.new(name: 'ResourceIds')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultHeader = Shapes::ListShape.new(name: 'ResultHeader')
    ResultRow = Shapes::StructureShape.new(name: 'ResultRow')
    ResultRows = Shapes::ListShape.new(name: 'ResultRows')
    ResultSet = Shapes::StructureShape.new(name: 'ResultSet')
    ResultSetMap = Shapes::MapShape.new(name: 'ResultSetMap')
    RowDataInput = Shapes::MapShape.new(name: 'RowDataInput')
    RowId = Shapes::StringShape.new(name: 'RowId')
    RowIdList = Shapes::ListShape.new(name: 'RowIdList')
    SecureURL = Shapes::StringShape.new(name: 'SecureURL')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SourceDataColumnIndex = Shapes::IntegerShape.new(name: 'SourceDataColumnIndex')
    SourceDataColumnProperties = Shapes::StructureShape.new(name: 'SourceDataColumnProperties')
    StartTableDataImportJobRequest = Shapes::StructureShape.new(name: 'StartTableDataImportJobRequest')
    StartTableDataImportJobResult = Shapes::StructureShape.new(name: 'StartTableDataImportJobResult')
    Table = Shapes::StructureShape.new(name: 'Table')
    TableColumn = Shapes::StructureShape.new(name: 'TableColumn')
    TableColumnName = Shapes::StringShape.new(name: 'TableColumnName')
    TableColumns = Shapes::ListShape.new(name: 'TableColumns')
    TableDataImportJobMessage = Shapes::StringShape.new(name: 'TableDataImportJobMessage')
    TableDataImportJobMetadata = Shapes::StructureShape.new(name: 'TableDataImportJobMetadata')
    TableDataImportJobStatus = Shapes::StringShape.new(name: 'TableDataImportJobStatus')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableRow = Shapes::StructureShape.new(name: 'TableRow')
    TableRows = Shapes::ListShape.new(name: 'TableRows')
    Tables = Shapes::ListShape.new(name: 'Tables')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeysList = Shapes::ListShape.new(name: 'TagKeysList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampInMillis = Shapes::TimestampShape.new(name: 'TimestampInMillis')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateRowData = Shapes::StructureShape.new(name: 'UpdateRowData')
    UpdateRowDataList = Shapes::ListShape.new(name: 'UpdateRowDataList')
    UpsertAction = Shapes::StringShape.new(name: 'UpsertAction')
    UpsertRowData = Shapes::StructureShape.new(name: 'UpsertRowData')
    UpsertRowDataList = Shapes::ListShape.new(name: 'UpsertRowDataList')
    UpsertRowsResult = Shapes::StructureShape.new(name: 'UpsertRowsResult')
    UpsertRowsResultMap = Shapes::MapShape.new(name: 'UpsertRowsResultMap')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StructureShape.new(name: 'VariableValue')
    VariableValueMap = Shapes::MapShape.new(name: 'VariableValueMap')
    WorkbookCursor = Shapes::IntegerShape.new(name: 'WorkbookCursor')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AutomationExecutionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AutomationExecutionException.struct_class = Types::AutomationExecutionException

    AutomationExecutionTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AutomationExecutionTimeoutException.struct_class = Types::AutomationExecutionTimeoutException

    BatchCreateTableRowsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    BatchCreateTableRowsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    BatchCreateTableRowsRequest.add_member(:rows_to_create, Shapes::ShapeRef.new(shape: CreateRowDataList, required: true, location_name: "rowsToCreate"))
    BatchCreateTableRowsRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    BatchCreateTableRowsRequest.struct_class = Types::BatchCreateTableRowsRequest

    BatchCreateTableRowsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    BatchCreateTableRowsResult.add_member(:created_rows, Shapes::ShapeRef.new(shape: CreatedRowsMap, required: true, location_name: "createdRows"))
    BatchCreateTableRowsResult.add_member(:failed_batch_items, Shapes::ShapeRef.new(shape: FailedBatchItems, location_name: "failedBatchItems"))
    BatchCreateTableRowsResult.struct_class = Types::BatchCreateTableRowsResult

    BatchDeleteTableRowsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    BatchDeleteTableRowsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    BatchDeleteTableRowsRequest.add_member(:row_ids, Shapes::ShapeRef.new(shape: RowIdList, required: true, location_name: "rowIds"))
    BatchDeleteTableRowsRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    BatchDeleteTableRowsRequest.struct_class = Types::BatchDeleteTableRowsRequest

    BatchDeleteTableRowsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    BatchDeleteTableRowsResult.add_member(:failed_batch_items, Shapes::ShapeRef.new(shape: FailedBatchItems, location_name: "failedBatchItems"))
    BatchDeleteTableRowsResult.struct_class = Types::BatchDeleteTableRowsResult

    BatchUpdateTableRowsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    BatchUpdateTableRowsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    BatchUpdateTableRowsRequest.add_member(:rows_to_update, Shapes::ShapeRef.new(shape: UpdateRowDataList, required: true, location_name: "rowsToUpdate"))
    BatchUpdateTableRowsRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    BatchUpdateTableRowsRequest.struct_class = Types::BatchUpdateTableRowsRequest

    BatchUpdateTableRowsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    BatchUpdateTableRowsResult.add_member(:failed_batch_items, Shapes::ShapeRef.new(shape: FailedBatchItems, location_name: "failedBatchItems"))
    BatchUpdateTableRowsResult.struct_class = Types::BatchUpdateTableRowsResult

    BatchUpsertTableRowsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    BatchUpsertTableRowsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    BatchUpsertTableRowsRequest.add_member(:rows_to_upsert, Shapes::ShapeRef.new(shape: UpsertRowDataList, required: true, location_name: "rowsToUpsert"))
    BatchUpsertTableRowsRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    BatchUpsertTableRowsRequest.struct_class = Types::BatchUpsertTableRowsRequest

    BatchUpsertTableRowsResult.add_member(:rows, Shapes::ShapeRef.new(shape: UpsertRowsResultMap, required: true, location_name: "rows"))
    BatchUpsertTableRowsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    BatchUpsertTableRowsResult.add_member(:failed_batch_items, Shapes::ShapeRef.new(shape: FailedBatchItems, location_name: "failedBatchItems"))
    BatchUpsertTableRowsResult.struct_class = Types::BatchUpsertTableRowsResult

    Cell.add_member(:formula, Shapes::ShapeRef.new(shape: Formula, location_name: "formula"))
    Cell.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    Cell.add_member(:raw_value, Shapes::ShapeRef.new(shape: RawValue, location_name: "rawValue"))
    Cell.add_member(:formatted_value, Shapes::ShapeRef.new(shape: FormattedValue, location_name: "formattedValue"))
    Cell.add_member(:formatted_values, Shapes::ShapeRef.new(shape: FormattedValuesList, location_name: "formattedValues"))
    Cell.struct_class = Types::Cell

    CellInput.add_member(:fact, Shapes::ShapeRef.new(shape: Fact, location_name: "fact"))
    CellInput.add_member(:facts, Shapes::ShapeRef.new(shape: FactList, location_name: "facts"))
    CellInput.struct_class = Types::CellInput

    Cells.member = Shapes::ShapeRef.new(shape: Cell)

    ColumnMetadata.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ColumnMetadata.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    ColumnMetadata.struct_class = Types::ColumnMetadata

    CreateRowData.add_member(:batch_item_id, Shapes::ShapeRef.new(shape: BatchItemId, required: true, location_name: "batchItemId"))
    CreateRowData.add_member(:cells_to_create, Shapes::ShapeRef.new(shape: RowDataInput, required: true, location_name: "cellsToCreate"))
    CreateRowData.struct_class = Types::CreateRowData

    CreateRowDataList.member = Shapes::ShapeRef.new(shape: CreateRowData)

    CreatedRowsMap.key = Shapes::ShapeRef.new(shape: BatchItemId)
    CreatedRowsMap.value = Shapes::ShapeRef.new(shape: RowId)

    DataItem.add_member(:override_format, Shapes::ShapeRef.new(shape: Format, location_name: "overrideFormat"))
    DataItem.add_member(:raw_value, Shapes::ShapeRef.new(shape: RawValue, location_name: "rawValue"))
    DataItem.add_member(:formatted_value, Shapes::ShapeRef.new(shape: FormattedValue, location_name: "formattedValue"))
    DataItem.struct_class = Types::DataItem

    DataItems.member = Shapes::ShapeRef.new(shape: DataItem)

    DelimitedTextImportOptions.add_member(:delimiter, Shapes::ShapeRef.new(shape: DelimitedTextDelimiter, required: true, location_name: "delimiter"))
    DelimitedTextImportOptions.add_member(:has_header_row, Shapes::ShapeRef.new(shape: HasHeaderRow, location_name: "hasHeaderRow"))
    DelimitedTextImportOptions.add_member(:ignore_empty_rows, Shapes::ShapeRef.new(shape: IgnoreEmptyRows, location_name: "ignoreEmptyRows"))
    DelimitedTextImportOptions.add_member(:data_character_encoding, Shapes::ShapeRef.new(shape: ImportDataCharacterEncoding, location_name: "dataCharacterEncoding"))
    DelimitedTextImportOptions.struct_class = Types::DelimitedTextImportOptions

    DescribeTableDataImportJobRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    DescribeTableDataImportJobRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    DescribeTableDataImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DescribeTableDataImportJobRequest.struct_class = Types::DescribeTableDataImportJobRequest

    DescribeTableDataImportJobResult.add_member(:job_status, Shapes::ShapeRef.new(shape: TableDataImportJobStatus, required: true, location_name: "jobStatus"))
    DescribeTableDataImportJobResult.add_member(:message, Shapes::ShapeRef.new(shape: TableDataImportJobMessage, required: true, location_name: "message"))
    DescribeTableDataImportJobResult.add_member(:job_metadata, Shapes::ShapeRef.new(shape: TableDataImportJobMetadata, required: true, location_name: "jobMetadata"))
    DescribeTableDataImportJobResult.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    DescribeTableDataImportJobResult.struct_class = Types::DescribeTableDataImportJobResult

    DestinationOptions.add_member(:column_map, Shapes::ShapeRef.new(shape: ImportColumnMap, location_name: "columnMap"))
    DestinationOptions.struct_class = Types::DestinationOptions

    FactList.member = Shapes::ShapeRef.new(shape: Fact)

    FailedBatchItem.add_member(:id, Shapes::ShapeRef.new(shape: BatchItemId, required: true, location_name: "id"))
    FailedBatchItem.add_member(:error_message, Shapes::ShapeRef.new(shape: BatchErrorMessage, required: true, location_name: "errorMessage"))
    FailedBatchItem.struct_class = Types::FailedBatchItem

    FailedBatchItems.member = Shapes::ShapeRef.new(shape: FailedBatchItem)

    Filter.add_member(:formula, Shapes::ShapeRef.new(shape: Formula, required: true, location_name: "formula"))
    Filter.add_member(:context_row_id, Shapes::ShapeRef.new(shape: RowId, location_name: "contextRowId"))
    Filter.struct_class = Types::Filter

    FormattedValuesList.member = Shapes::ShapeRef.new(shape: FormattedValue)

    GetScreenDataRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "workbookId"))
    GetScreenDataRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "appId"))
    GetScreenDataRequest.add_member(:screen_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "screenId"))
    GetScreenDataRequest.add_member(:variables, Shapes::ShapeRef.new(shape: VariableValueMap, location_name: "variables"))
    GetScreenDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetScreenDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetScreenDataRequest.struct_class = Types::GetScreenDataRequest

    GetScreenDataResult.add_member(:results, Shapes::ShapeRef.new(shape: ResultSetMap, required: true, location_name: "results"))
    GetScreenDataResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    GetScreenDataResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetScreenDataResult.struct_class = Types::GetScreenDataResult

    ImportColumnMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    ImportColumnMap.value = Shapes::ShapeRef.new(shape: SourceDataColumnProperties)

    ImportDataSource.add_member(:data_source_config, Shapes::ShapeRef.new(shape: ImportDataSourceConfig, required: true, location_name: "dataSourceConfig"))
    ImportDataSource.struct_class = Types::ImportDataSource

    ImportDataSourceConfig.add_member(:data_source_url, Shapes::ShapeRef.new(shape: SecureURL, location_name: "dataSourceUrl"))
    ImportDataSourceConfig.struct_class = Types::ImportDataSourceConfig

    ImportJobSubmitter.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    ImportJobSubmitter.add_member(:user_arn, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "userArn"))
    ImportJobSubmitter.struct_class = Types::ImportJobSubmitter

    ImportOptions.add_member(:destination_options, Shapes::ShapeRef.new(shape: DestinationOptions, location_name: "destinationOptions"))
    ImportOptions.add_member(:delimited_text_options, Shapes::ShapeRef.new(shape: DelimitedTextImportOptions, location_name: "delimitedTextOptions"))
    ImportOptions.struct_class = Types::ImportOptions

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeScreenAutomationRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    InvokeScreenAutomationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "appId"))
    InvokeScreenAutomationRequest.add_member(:screen_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "screenId"))
    InvokeScreenAutomationRequest.add_member(:screen_automation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "automationId"))
    InvokeScreenAutomationRequest.add_member(:variables, Shapes::ShapeRef.new(shape: VariableValueMap, location_name: "variables"))
    InvokeScreenAutomationRequest.add_member(:row_id, Shapes::ShapeRef.new(shape: RowId, location_name: "rowId"))
    InvokeScreenAutomationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    InvokeScreenAutomationRequest.struct_class = Types::InvokeScreenAutomationRequest

    InvokeScreenAutomationResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    InvokeScreenAutomationResult.struct_class = Types::InvokeScreenAutomationResult

    ListTableColumnsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    ListTableColumnsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    ListTableColumnsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTableColumnsRequest.struct_class = Types::ListTableColumnsRequest

    ListTableColumnsResult.add_member(:table_columns, Shapes::ShapeRef.new(shape: TableColumns, required: true, location_name: "tableColumns"))
    ListTableColumnsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTableColumnsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, location_name: "workbookCursor"))
    ListTableColumnsResult.struct_class = Types::ListTableColumnsResult

    ListTableRowsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    ListTableRowsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    ListTableRowsRequest.add_member(:row_ids, Shapes::ShapeRef.new(shape: RowIdList, location_name: "rowIds"))
    ListTableRowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTableRowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTableRowsRequest.struct_class = Types::ListTableRowsRequest

    ListTableRowsResult.add_member(:column_ids, Shapes::ShapeRef.new(shape: ResourceIds, required: true, location_name: "columnIds"))
    ListTableRowsResult.add_member(:rows, Shapes::ShapeRef.new(shape: TableRows, required: true, location_name: "rows"))
    ListTableRowsResult.add_member(:row_ids_not_found, Shapes::ShapeRef.new(shape: RowIdList, location_name: "rowIdsNotFound"))
    ListTableRowsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTableRowsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    ListTableRowsResult.struct_class = Types::ListTableRowsResult

    ListTablesRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    ListTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResult.add_member(:tables, Shapes::ShapeRef.new(shape: Tables, required: true, location_name: "tables"))
    ListTablesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTablesResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, location_name: "workbookCursor"))
    ListTablesResult.struct_class = Types::ListTablesResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    QueryTableRowsRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    QueryTableRowsRequest.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    QueryTableRowsRequest.add_member(:filter_formula, Shapes::ShapeRef.new(shape: Filter, required: true, location_name: "filterFormula"))
    QueryTableRowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    QueryTableRowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    QueryTableRowsRequest.struct_class = Types::QueryTableRowsRequest

    QueryTableRowsResult.add_member(:column_ids, Shapes::ShapeRef.new(shape: ResourceIds, required: true, location_name: "columnIds"))
    QueryTableRowsResult.add_member(:rows, Shapes::ShapeRef.new(shape: TableRows, required: true, location_name: "rows"))
    QueryTableRowsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    QueryTableRowsResult.add_member(:workbook_cursor, Shapes::ShapeRef.new(shape: WorkbookCursor, required: true, location_name: "workbookCursor"))
    QueryTableRowsResult.struct_class = Types::QueryTableRowsResult

    RequestTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    RequestTimeoutException.struct_class = Types::RequestTimeoutException

    ResourceIds.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResultHeader.member = Shapes::ShapeRef.new(shape: ColumnMetadata)

    ResultRow.add_member(:row_id, Shapes::ShapeRef.new(shape: RowId, location_name: "rowId"))
    ResultRow.add_member(:data_items, Shapes::ShapeRef.new(shape: DataItems, required: true, location_name: "dataItems"))
    ResultRow.struct_class = Types::ResultRow

    ResultRows.member = Shapes::ShapeRef.new(shape: ResultRow)

    ResultSet.add_member(:headers, Shapes::ShapeRef.new(shape: ResultHeader, required: true, location_name: "headers"))
    ResultSet.add_member(:rows, Shapes::ShapeRef.new(shape: ResultRows, required: true, location_name: "rows"))
    ResultSet.struct_class = Types::ResultSet

    ResultSetMap.key = Shapes::ShapeRef.new(shape: Name)
    ResultSetMap.value = Shapes::ShapeRef.new(shape: ResultSet)

    RowDataInput.key = Shapes::ShapeRef.new(shape: ResourceId)
    RowDataInput.value = Shapes::ShapeRef.new(shape: CellInput)

    RowIdList.member = Shapes::ShapeRef.new(shape: RowId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SourceDataColumnProperties.add_member(:column_index, Shapes::ShapeRef.new(shape: SourceDataColumnIndex, location_name: "columnIndex"))
    SourceDataColumnProperties.struct_class = Types::SourceDataColumnProperties

    StartTableDataImportJobRequest.add_member(:workbook_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "workbookId"))
    StartTableDataImportJobRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: ImportDataSource, required: true, location_name: "dataSource"))
    StartTableDataImportJobRequest.add_member(:data_format, Shapes::ShapeRef.new(shape: ImportSourceDataFormat, required: true, location_name: "dataFormat"))
    StartTableDataImportJobRequest.add_member(:destination_table_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "tableId"))
    StartTableDataImportJobRequest.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, required: true, location_name: "importOptions"))
    StartTableDataImportJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "clientRequestToken"))
    StartTableDataImportJobRequest.struct_class = Types::StartTableDataImportJobRequest

    StartTableDataImportJobResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StartTableDataImportJobResult.add_member(:job_status, Shapes::ShapeRef.new(shape: TableDataImportJobStatus, required: true, location_name: "jobStatus"))
    StartTableDataImportJobResult.struct_class = Types::StartTableDataImportJobResult

    Table.add_member(:table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "tableId"))
    Table.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "tableName"))
    Table.struct_class = Types::Table

    TableColumn.add_member(:table_column_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "tableColumnId"))
    TableColumn.add_member(:table_column_name, Shapes::ShapeRef.new(shape: TableColumnName, location_name: "tableColumnName"))
    TableColumn.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    TableColumn.struct_class = Types::TableColumn

    TableColumns.member = Shapes::ShapeRef.new(shape: TableColumn)

    TableDataImportJobMetadata.add_member(:submitter, Shapes::ShapeRef.new(shape: ImportJobSubmitter, required: true, location_name: "submitter"))
    TableDataImportJobMetadata.add_member(:submit_time, Shapes::ShapeRef.new(shape: TimestampInMillis, required: true, location_name: "submitTime"))
    TableDataImportJobMetadata.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, required: true, location_name: "importOptions"))
    TableDataImportJobMetadata.add_member(:data_source, Shapes::ShapeRef.new(shape: ImportDataSource, required: true, location_name: "dataSource"))
    TableDataImportJobMetadata.struct_class = Types::TableDataImportJobMetadata

    TableRow.add_member(:row_id, Shapes::ShapeRef.new(shape: RowId, required: true, location_name: "rowId"))
    TableRow.add_member(:cells, Shapes::ShapeRef.new(shape: Cells, required: true, location_name: "cells"))
    TableRow.struct_class = Types::TableRow

    TableRows.member = Shapes::ShapeRef.new(shape: TableRow)

    Tables.member = Shapes::ShapeRef.new(shape: Table)

    TagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeysList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateRowData.add_member(:row_id, Shapes::ShapeRef.new(shape: RowId, required: true, location_name: "rowId"))
    UpdateRowData.add_member(:cells_to_update, Shapes::ShapeRef.new(shape: RowDataInput, required: true, location_name: "cellsToUpdate"))
    UpdateRowData.struct_class = Types::UpdateRowData

    UpdateRowDataList.member = Shapes::ShapeRef.new(shape: UpdateRowData)

    UpsertRowData.add_member(:batch_item_id, Shapes::ShapeRef.new(shape: BatchItemId, required: true, location_name: "batchItemId"))
    UpsertRowData.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, required: true, location_name: "filter"))
    UpsertRowData.add_member(:cells_to_update, Shapes::ShapeRef.new(shape: RowDataInput, required: true, location_name: "cellsToUpdate"))
    UpsertRowData.struct_class = Types::UpsertRowData

    UpsertRowDataList.member = Shapes::ShapeRef.new(shape: UpsertRowData)

    UpsertRowsResult.add_member(:row_ids, Shapes::ShapeRef.new(shape: RowIdList, required: true, location_name: "rowIds"))
    UpsertRowsResult.add_member(:upsert_action, Shapes::ShapeRef.new(shape: UpsertAction, required: true, location_name: "upsertAction"))
    UpsertRowsResult.struct_class = Types::UpsertRowsResult

    UpsertRowsResultMap.key = Shapes::ShapeRef.new(shape: BatchItemId)
    UpsertRowsResultMap.value = Shapes::ShapeRef.new(shape: UpsertRowsResult)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VariableValue.add_member(:raw_value, Shapes::ShapeRef.new(shape: RawValue, required: true, location_name: "rawValue"))
    VariableValue.struct_class = Types::VariableValue

    VariableValueMap.key = Shapes::ShapeRef.new(shape: VariableName)
    VariableValueMap.value = Shapes::ShapeRef.new(shape: VariableValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-03-01"

      api.metadata = {
        "apiVersion" => "2020-03-01",
        "endpointPrefix" => "honeycode",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Honeycode",
        "serviceFullName" => "Amazon Honeycode",
        "serviceId" => "Honeycode",
        "signatureVersion" => "v4",
        "signingName" => "honeycode",
        "uid" => "honeycode-2020-03-01",
      }

      api.add_operation(:batch_create_table_rows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateTableRows"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/rows/batchcreate"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateTableRowsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateTableRowsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:batch_delete_table_rows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteTableRows"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/rows/batchdelete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteTableRowsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteTableRowsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_table_rows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateTableRows"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/rows/batchupdate"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateTableRowsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateTableRowsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_upsert_table_rows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpsertTableRows"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/rows/batchupsert"
        o.input = Shapes::ShapeRef.new(shape: BatchUpsertTableRowsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpsertTableRowsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_table_data_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTableDataImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/import/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableDataImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableDataImportJobResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_screen_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScreenData"
        o.http_method = "POST"
        o.http_request_uri = "/screendata"
        o.input = Shapes::ShapeRef.new(shape: GetScreenDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetScreenDataResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:invoke_screen_automation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeScreenAutomation"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/apps/{appId}/screens/{screenId}/automations/{automationId}"
        o.input = Shapes::ShapeRef.new(shape: InvokeScreenAutomationRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeScreenAutomationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_table_columns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableColumns"
        o.http_method = "GET"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/columns"
        o.input = Shapes::ShapeRef.new(shape: ListTableColumnsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableColumnsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_table_rows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableRows"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/rows/list"
        o.input = Shapes::ShapeRef.new(shape: ListTableRowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableRowsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTables"
        o.http_method = "GET"
        o.http_request_uri = "/workbooks/{workbookId}/tables"
        o.input = Shapes::ShapeRef.new(shape: ListTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTablesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:query_table_rows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QueryTableRows"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/rows/query"
        o.input = Shapes::ShapeRef.new(shape: QueryTableRowsRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryTableRowsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_table_data_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTableDataImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/workbooks/{workbookId}/tables/{tableId}/import"
        o.input = Shapes::ShapeRef.new(shape: StartTableDataImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTableDataImportJobResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
