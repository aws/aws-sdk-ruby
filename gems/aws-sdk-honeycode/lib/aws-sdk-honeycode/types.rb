# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Honeycode
  module Types

    # You do not have sufficient access to perform this action. Check that
    # the workbook is owned by you and your IAM policy allows access to the
    # resource in the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The automation execution did not end successfully.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/AutomationExecutionException AWS API Documentation
    #
    class AutomationExecutionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The automation execution timed out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/AutomationExecutionTimeoutException AWS API Documentation
    #
    class AutomationExecutionTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook where the new rows are being added.
    #
    #   If a workbook with the specified ID could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table where the new rows are being added.
    #
    #   If a table with the specified ID could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] rows_to_create
    #   The list of rows to create at the end of the table. Each item in
    #   this list needs to have a batch item id to uniquely identify the
    #   element in the request and the cells to create for that row. You
    #   need to specify at least one item in this list.
    #
    #   Note that if one of the column ids in any of the rows in the request
    #   does not exist in the table, then the request fails and no updates
    #   are made to the table.
    #   @return [Array<Types::CreateRowData>]
    #
    # @!attribute [rw] client_request_token
    #   The request token for performing the batch create operation. Request
    #   tokens help to identify duplicate requests. If a call times out or
    #   fails due to a transient error like a failed network connection, you
    #   can retry the call with the same request token. The service ensures
    #   that if the first call using that request token is successfully
    #   performed, the second call will not perform the operation again.
    #
    #   Note that request tokens are valid only for a few minutes. You
    #   cannot use request tokens to dedupe requests spanning hours or days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchCreateTableRowsRequest AWS API Documentation
    #
    class BatchCreateTableRowsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :rows_to_create,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_cursor
    #   The updated workbook cursor after adding the new rows at the end of
    #   the table.
    #   @return [Integer]
    #
    # @!attribute [rw] created_rows
    #   The map of batch item id to the row id that was created for that
    #   item.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] failed_batch_items
    #   The list of batch items in the request that could not be added to
    #   the table. Each element in this list contains one item from the
    #   request that could not be added to the table along with the reason
    #   why that item could not be added.
    #   @return [Array<Types::FailedBatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchCreateTableRowsResult AWS API Documentation
    #
    class BatchCreateTableRowsResult < Struct.new(
      :workbook_cursor,
      :created_rows,
      :failed_batch_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook where the rows are being deleted.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table where the rows are being deleted.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] row_ids
    #   The list of row ids to delete from the table. You need to specify at
    #   least one row id in this list.
    #
    #   Note that if one of the row ids provided in the request does not
    #   exist in the table, then the request fails and no rows are deleted
    #   from the table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_request_token
    #   The request token for performing the delete action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails
    #   due to a transient error like a failed network connection, you can
    #   retry the call with the same request token. The service ensures that
    #   if the first call using that request token is successfully
    #   performed, the second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You
    #   cannot use request tokens to dedupe requests spanning hours or days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchDeleteTableRowsRequest AWS API Documentation
    #
    class BatchDeleteTableRowsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :row_ids,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_cursor
    #   The updated workbook cursor after deleting the rows from the table.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_batch_items
    #   The list of row ids in the request that could not be deleted from
    #   the table. Each element in this list contains one row id from the
    #   request that could not be deleted along with the reason why that
    #   item could not be deleted.
    #   @return [Array<Types::FailedBatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchDeleteTableRowsResult AWS API Documentation
    #
    class BatchDeleteTableRowsResult < Struct.new(
      :workbook_cursor,
      :failed_batch_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook where the rows are being updated.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table where the rows are being updated.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] rows_to_update
    #   The list of rows to update in the table. Each item in this list
    #   needs to contain the row id to update along with the map of column
    #   id to cell values for each column in that row that needs to be
    #   updated. You need to specify at least one row in this list, and for
    #   each row, you need to specify at least one column to update.
    #
    #   Note that if one of the row or column ids in the request does not
    #   exist in the table, then the request fails and no updates are made
    #   to the table.
    #   @return [Array<Types::UpdateRowData>]
    #
    # @!attribute [rw] client_request_token
    #   The request token for performing the update action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails
    #   due to a transient error like a failed network connection, you can
    #   retry the call with the same request token. The service ensures that
    #   if the first call using that request token is successfully
    #   performed, the second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You
    #   cannot use request tokens to dedupe requests spanning hours or days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchUpdateTableRowsRequest AWS API Documentation
    #
    class BatchUpdateTableRowsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :rows_to_update,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_cursor
    #   The updated workbook cursor after adding the new rows at the end of
    #   the table.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_batch_items
    #   The list of batch items in the request that could not be updated in
    #   the table. Each element in this list contains one item from the
    #   request that could not be updated in the table along with the reason
    #   why that item could not be updated.
    #   @return [Array<Types::FailedBatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchUpdateTableRowsResult AWS API Documentation
    #
    class BatchUpdateTableRowsResult < Struct.new(
      :workbook_cursor,
      :failed_batch_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook where the rows are being upserted.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table where the rows are being upserted.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] rows_to_upsert
    #   The list of rows to upsert in the table. Each item in this list
    #   needs to have a batch item id to uniquely identify the element in
    #   the request, a filter expression to find the rows to update for that
    #   element and the cell values to set for each column in the upserted
    #   rows. You need to specify at least one item in this list.
    #
    #   Note that if one of the filter formulas in the request fails to
    #   evaluate because of an error or one of the column ids in any of the
    #   rows does not exist in the table, then the request fails and no
    #   updates are made to the table.
    #   @return [Array<Types::UpsertRowData>]
    #
    # @!attribute [rw] client_request_token
    #   The request token for performing the update action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails
    #   due to a transient error like a failed network connection, you can
    #   retry the call with the same request token. The service ensures that
    #   if the first call using that request token is successfully
    #   performed, the second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You
    #   cannot use request tokens to dedupe requests spanning hours or days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchUpsertTableRowsRequest AWS API Documentation
    #
    class BatchUpsertTableRowsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :rows_to_upsert,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rows
    #   A map with the batch item id as the key and the result of the upsert
    #   operation as the value. The result of the upsert operation specifies
    #   whether existing rows were updated or a new row was appended, along
    #   with the list of row ids that were affected.
    #   @return [Hash<String,Types::UpsertRowsResult>]
    #
    # @!attribute [rw] workbook_cursor
    #   The updated workbook cursor after updating or appending rows in the
    #   table.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_batch_items
    #   The list of batch items in the request that could not be updated or
    #   appended in the table. Each element in this list contains one item
    #   from the request that could not be updated in the table along with
    #   the reason why that item could not be updated or appended.
    #   @return [Array<Types::FailedBatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchUpsertTableRowsResult AWS API Documentation
    #
    class BatchUpsertTableRowsResult < Struct.new(
      :rows,
      :workbook_cursor,
      :failed_batch_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a single cell in a table.
    #
    # @!attribute [rw] formula
    #   The formula contained in the cell. This field is empty if a cell
    #   does not have a formula.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the cell. If this field is empty, then the format is
    #   either not specified in the workbook or the format is set to AUTO.
    #   @return [String]
    #
    # @!attribute [rw] raw_value
    #   The raw value of the data contained in the cell. The raw value
    #   depends on the format of the data in the cell. However the attribute
    #   in the API return value is always a string containing the raw value.
    #
    #   Cells with format DATE, DATE\_TIME or TIME have the raw value as a
    #   floating point number where the whole number represents the number
    #   of days since 1/1/1900 and the fractional part represents the
    #   fraction of the day since midnight. For example, a cell with date
    #   11/3/2020 has the raw value "44138". A cell with the time 9:00 AM
    #   has the raw value "0.375" and a cell with date/time value of
    #   11/3/2020 9:00 AM has the raw value "44138.375". Notice that even
    #   though the raw value is a number in all three cases, it is still
    #   represented as a string.
    #
    #   Cells with format NUMBER, CURRENCY, PERCENTAGE and ACCOUNTING have
    #   the raw value of the data as the number representing the data being
    #   displayed. For example, the number 1.325 with two decimal places in
    #   the format will have it's raw value as "1.325" and formatted
    #   value as "1.33". A currency value for $10 will have the raw value
    #   as "10" and formatted value as "$10.00". A value representing
    #   20% with two decimal places in the format will have its raw value as
    #   "0.2" and the formatted value as "20.00%". An accounting value
    #   of -$25 will have "-25" as the raw value and "$ (25.00)" as the
    #   formatted value.
    #
    #   Cells with format TEXT will have the raw text as the raw value. For
    #   example, a cell with text "John Smith" will have "John Smith" as
    #   both the raw value and the formatted value.
    #
    #   Cells with format CONTACT will have the name of the contact as a
    #   formatted value and the email address of the contact as the raw
    #   value. For example, a contact for John Smith will have "John
    #   Smith" as the formatted value and "john.smith@example.com" as the
    #   raw value.
    #
    #   Cells with format ROWLINK (aka picklist) will have the first column
    #   of the linked row as the formatted value and the row id of the
    #   linked row as the raw value. For example, a cell containing a
    #   picklist to a table that displays task status might have
    #   "Completed" as the formatted value and
    #   "row:dfcefaee-5b37-4355-8f28-40c3e4ff5dd4/ca432b2f-b8eb-431d-9fb5-cbe0342f9f03"
    #   as the raw value.
    #
    #   Cells with format ROWSET (aka multi-select or multi-record picklist)
    #   will by default have the first column of each of the linked rows as
    #   the formatted value in the list, and the rowset id of the linked
    #   rows as the raw value. For example, a cell containing a multi-select
    #   picklist to a table that contains items might have "Item A",
    #   "Item B" in the formatted value list and
    #   "rows:b742c1f4-6cb0-4650-a845-35eb86fcc2bb/
    #   \[fdea123b-8f68-474a-aa8a-5ff87aa333af,6daf41f0-a138-4eee-89da-123086d36ecf\]"
    #   as the raw value.
    #
    #   Cells with format ATTACHMENT will have the name of the attachment as
    #   the formatted value and the attachment id as the raw value. For
    #   example, a cell containing an attachment named "image.jpeg" will
    #   have "image.jpeg" as the formatted value and
    #   "attachment:ca432b2f-b8eb-431d-9fb5-cbe0342f9f03" as the raw
    #   value.
    #
    #   Cells with format AUTO or cells without any format that are
    #   auto-detected as one of the formats above will contain the raw and
    #   formatted values as mentioned above, based on the auto-detected
    #   formats. If there is no auto-detected format, the raw and formatted
    #   values will be the same as the data in the cell.
    #   @return [String]
    #
    # @!attribute [rw] formatted_value
    #   The formatted value of the cell. This is the value that you see
    #   displayed in the cell in the UI.
    #
    #   Note that the formatted value of a cell is always represented as a
    #   string irrespective of the data that is stored in the cell. For
    #   example, if a cell contains a date, the formatted value of the cell
    #   is the string representation of the formatted date being shown in
    #   the cell in the UI. See details in the rawValue field below for how
    #   cells of different formats will have different raw and formatted
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] formatted_values
    #   A list of formatted values of the cell. This field is only returned
    #   when the cell is ROWSET format (aka multi-select or multi-record
    #   picklist). Values in the list are always represented as strings. The
    #   formattedValue field will be empty if this field is returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/Cell AWS API Documentation
    #
    class Cell < Struct.new(
      :formula,
      :format,
      :raw_value,
      :formatted_value,
      :formatted_values)
      SENSITIVE = [:formula]
      include Aws::Structure
    end

    # CellInput object contains the data needed to create or update cells in
    # a table.
    #
    # <note markdown="1"> CellInput object has only a facts field or a fact field, but not both.
    # A 400 bad request will be thrown if both fact and facts field are
    # present.
    #
    #  </note>
    #
    # @!attribute [rw] fact
    #   Fact represents the data that is entered into a cell. This data can
    #   be free text or a formula. Formulas need to start with the equals
    #   (=) sign.
    #   @return [String]
    #
    # @!attribute [rw] facts
    #   A list representing the values that are entered into a ROWSET cell.
    #   Facts list can have either only values or rowIDs, and rowIDs should
    #   from the same table.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/CellInput AWS API Documentation
    #
    class CellInput < Struct.new(
      :fact,
      :facts)
      SENSITIVE = [:fact]
      include Aws::Structure
    end

    # Metadata for column in the table.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ColumnMetadata AWS API Documentation
    #
    class ColumnMetadata < Struct.new(
      :name,
      :format)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Data needed to create a single row in a table as part of the
    # BatchCreateTableRows request.
    #
    # @!attribute [rw] batch_item_id
    #   An external identifier that represents the single row that is being
    #   created as part of the BatchCreateTableRows request. This can be any
    #   string that you can use to identify the row in the request. The
    #   BatchCreateTableRows API puts the batch item id in the results to
    #   allow you to link data in the request to data in the results.
    #   @return [String]
    #
    # @!attribute [rw] cells_to_create
    #   A map representing the cells to create in the new row. The key is
    #   the column id of the cell and the value is the CellInput object that
    #   represents the data to set in that cell.
    #   @return [Hash<String,Types::CellInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/CreateRowData AWS API Documentation
    #
    class CreateRowData < Struct.new(
      :batch_item_id,
      :cells_to_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data in a particular data cell defined on the screen.
    #
    # @!attribute [rw] override_format
    #   The overrideFormat is optional and is specified only if a particular
    #   row of data has a different format for the data than the default
    #   format defined on the screen or the table.
    #   @return [String]
    #
    # @!attribute [rw] raw_value
    #   The raw value of the data. e.g. jsmith@example.com
    #   @return [String]
    #
    # @!attribute [rw] formatted_value
    #   The formatted value of the data. e.g. John Smith.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/DataItem AWS API Documentation
    #
    class DataItem < Struct.new(
      :override_format,
      :raw_value,
      :formatted_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the options relating to parsing delimited text
    # as part of an import request.
    #
    # @!attribute [rw] delimiter
    #   The delimiter to use for separating columns in a single row of the
    #   input.
    #   @return [String]
    #
    # @!attribute [rw] has_header_row
    #   Indicates whether the input file has a header row at the top
    #   containing the column names.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_empty_rows
    #   A parameter to indicate whether empty rows should be ignored or be
    #   included in the import.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_character_encoding
    #   The encoding of the data in the input file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/DelimitedTextImportOptions AWS API Documentation
    #
    class DelimitedTextImportOptions < Struct.new(
      :delimiter,
      :has_header_row,
      :ignore_empty_rows,
      :data_character_encoding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook into which data was imported.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table into which data was imported.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job that was returned by the StartTableDataImportJob
    #   request.
    #
    #   If a job with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/DescribeTableDataImportJobRequest AWS API Documentation
    #
    class DescribeTableDataImportJobRequest < Struct.new(
      :workbook_id,
      :table_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message providing more details about the current status of the
    #   import job.
    #   @return [String]
    #
    # @!attribute [rw] job_metadata
    #   The metadata about the job that was submitted for import.
    #   @return [Types::TableDataImportJobMetadata]
    #
    # @!attribute [rw] error_code
    #   If job status is failed, error code to understand reason for the
    #   failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/DescribeTableDataImportJobResult AWS API Documentation
    #
    class DescribeTableDataImportJobResult < Struct.new(
      :job_status,
      :message,
      :job_metadata,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the options relating to the destination of the
    # import request.
    #
    # @!attribute [rw] column_map
    #   A map of the column id to the import properties for each column.
    #   @return [Hash<String,Types::SourceDataColumnProperties>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/DestinationOptions AWS API Documentation
    #
    class DestinationOptions < Struct.new(
      :column_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single item in a batch that failed to perform the intended action
    # because of an error preventing it from succeeding.
    #
    # @!attribute [rw] id
    #   The id of the batch item that failed. This is the batch item id for
    #   the BatchCreateTableRows and BatchUpsertTableRows operations and the
    #   row id for the BatchUpdateTableRows and BatchDeleteTableRows
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that indicates why the batch item failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/FailedBatchItem AWS API Documentation
    #
    class FailedBatchItem < Struct.new(
      :id,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a filter formula along with the id of the
    # context row under which the filter function needs to evaluate.
    #
    # @!attribute [rw] formula
    #   A formula representing a filter function that returns zero or more
    #   matching rows from a table. Valid formulas in this field return a
    #   list of rows from a table. The most common ways of writing a formula
    #   to return a list of rows are to use the FindRow() or Filter()
    #   functions. Any other formula that returns zero or more rows is also
    #   acceptable. For example, you can use a formula that points to a cell
    #   that contains a filter function.
    #   @return [String]
    #
    # @!attribute [rw] context_row_id
    #   The optional contextRowId attribute can be used to specify the row
    #   id of the context row if the filter formula contains unqualified
    #   references to table columns and needs a context row to evaluate them
    #   successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :formula,
      :context_row_id)
      SENSITIVE = [:formula]
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook that contains the screen.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The ID of the app that contains the screen.
    #   @return [String]
    #
    # @!attribute [rw] screen_id
    #   The ID of the screen.
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   Variables are optional and are needed only if the screen requires
    #   them to render correctly. Variables are specified as a map where the
    #   key is the name of the variable as defined on the screen. The value
    #   is an object which currently has only one property, rawValue, which
    #   holds the value of the variable to be passed to the screen.
    #   @return [Hash<String,Types::VariableValue>]
    #
    # @!attribute [rw] max_results
    #   The number of results to be returned on a single page. Specify a
    #   number between 1 and 100. The maximum value is 100.
    #
    #   This parameter is optional. If you don't specify this parameter,
    #   the default page size is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/GetScreenDataRequest AWS API Documentation
    #
    class GetScreenDataRequest < Struct.new(
      :workbook_id,
      :app_id,
      :screen_id,
      :variables,
      :max_results,
      :next_token)
      SENSITIVE = [:variables]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A map of all the rows on the screen keyed by block name.
    #   @return [Hash<String,Types::ResultSet>]
    #
    # @!attribute [rw] workbook_cursor
    #   Indicates the cursor of the workbook at which the data returned by
    #   this workbook is read. Workbook cursor keeps increasing with every
    #   update and the increments are not sequential.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Provides the pagination token to load the next page if there are
    #   more results matching the request. If a pagination token is not
    #   present in the response, it means that all data matching the query
    #   has been loaded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/GetScreenDataResult AWS API Documentation
    #
    class GetScreenDataResult < Struct.new(
      :results,
      :workbook_cursor,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that has details about the source of the data that was
    # submitted for import.
    #
    # @!attribute [rw] data_source_config
    #   The configuration parameters for the data source of the import
    #   @return [Types::ImportDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ImportDataSource AWS API Documentation
    #
    class ImportDataSource < Struct.new(
      :data_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the configuration parameters for the data
    # source of an import request.
    #
    # @!attribute [rw] data_source_url
    #   The URL from which source data will be downloaded for the import
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ImportDataSourceConfig AWS API Documentation
    #
    class ImportDataSourceConfig < Struct.new(
      :data_source_url)
      SENSITIVE = [:data_source_url]
      include Aws::Structure
    end

    # An object that contains the attributes of the submitter of the import
    # job.
    #
    # @!attribute [rw] email
    #   The email id of the submitter of the import job, if available.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The AWS user ARN of the submitter of the import job, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ImportJobSubmitter AWS API Documentation
    #
    class ImportJobSubmitter < Struct.new(
      :email,
      :user_arn)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # An object that contains the options specified by the sumitter of the
    # import request.
    #
    # @!attribute [rw] destination_options
    #   Options relating to the destination of the import request.
    #   @return [Types::DestinationOptions]
    #
    # @!attribute [rw] delimited_text_options
    #   Options relating to parsing delimited text. Required if dataFormat
    #   is DELIMITED\_TEXT.
    #   @return [Types::DelimitedTextImportOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ImportOptions AWS API Documentation
    #
    class ImportOptions < Struct.new(
      :destination_options,
      :delimited_text_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # There were unexpected errors from the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook that contains the screen automation.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The ID of the app that contains the screen automation.
    #   @return [String]
    #
    # @!attribute [rw] screen_id
    #   The ID of the screen that contains the screen automation.
    #   @return [String]
    #
    # @!attribute [rw] screen_automation_id
    #   The ID of the automation action to be performed.
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   Variables are specified as a map where the key is the name of the
    #   variable as defined on the screen. The value is an object which
    #   currently has only one property, rawValue, which holds the value of
    #   the variable to be passed to the screen. Any variables defined in a
    #   screen are required to be passed in the call.
    #   @return [Hash<String,Types::VariableValue>]
    #
    # @!attribute [rw] row_id
    #   The row ID for the automation if the automation is defined inside a
    #   block with source or list.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The request token for performing the automation action. Request
    #   tokens help to identify duplicate requests. If a call times out or
    #   fails due to a transient error like a failed network connection, you
    #   can retry the call with the same request token. The service ensures
    #   that if the first call using that request token is successfully
    #   performed, the second call will return the response of the previous
    #   call rather than performing the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You
    #   cannot use request tokens to dedupe requests spanning hours or days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/InvokeScreenAutomationRequest AWS API Documentation
    #
    class InvokeScreenAutomationRequest < Struct.new(
      :workbook_id,
      :app_id,
      :screen_id,
      :screen_automation_id,
      :variables,
      :row_id,
      :client_request_token)
      SENSITIVE = [:variables]
      include Aws::Structure
    end

    # @!attribute [rw] workbook_cursor
    #   The updated workbook cursor after performing the automation action.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/InvokeScreenAutomationResult AWS API Documentation
    #
    class InvokeScreenAutomationResult < Struct.new(
      :workbook_cursor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook that contains the table whose columns are
    #   being retrieved.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table whose columns are being retrieved.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTableColumnsRequest AWS API Documentation
    #
    class ListTableColumnsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_columns
    #   The list of columns in the table.
    #   @return [Array<Types::TableColumn>]
    #
    # @!attribute [rw] next_token
    #   Provides the pagination token to load the next page if there are
    #   more results matching the request. If a pagination token is not
    #   present in the response, it means that all data matching the request
    #   has been loaded.
    #   @return [String]
    #
    # @!attribute [rw] workbook_cursor
    #   Indicates the cursor of the workbook at which the data returned by
    #   this request is read. Workbook cursor keeps increasing with every
    #   update and the increments are not sequential.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTableColumnsResult AWS API Documentation
    #
    class ListTableColumnsResult < Struct.new(
      :table_columns,
      :next_token,
      :workbook_cursor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook that contains the table whose rows are being
    #   retrieved.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table whose rows are being retrieved.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] row_ids
    #   This parameter is optional. If one or more row ids are specified in
    #   this list, then only the specified row ids are returned in the
    #   result. If no row ids are specified here, then all the rows in the
    #   table are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rows to return in each page of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTableRowsRequest AWS API Documentation
    #
    class ListTableRowsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :row_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_ids
    #   The list of columns in the table whose row data is returned in the
    #   result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rows
    #   The list of rows in the table. Note that this result is paginated,
    #   so this list contains a maximum of 100 rows.
    #   @return [Array<Types::TableRow>]
    #
    # @!attribute [rw] row_ids_not_found
    #   The list of row ids included in the request that were not found in
    #   the table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Provides the pagination token to load the next page if there are
    #   more results matching the request. If a pagination token is not
    #   present in the response, it means that all data matching the request
    #   has been loaded.
    #   @return [String]
    #
    # @!attribute [rw] workbook_cursor
    #   Indicates the cursor of the workbook at which the data returned by
    #   this request is read. Workbook cursor keeps increasing with every
    #   update and the increments are not sequential.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTableRowsResult AWS API Documentation
    #
    class ListTableRowsResult < Struct.new(
      :column_ids,
      :rows,
      :row_ids_not_found,
      :next_token,
      :workbook_cursor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook whose tables are being retrieved.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in each page of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTablesRequest AWS API Documentation
    #
    class ListTablesRequest < Struct.new(
      :workbook_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tables
    #   The list of tables in the workbook.
    #   @return [Array<Types::Table>]
    #
    # @!attribute [rw] next_token
    #   Provides the pagination token to load the next page if there are
    #   more results matching the request. If a pagination token is not
    #   present in the response, it means that all data matching the request
    #   has been loaded.
    #   @return [String]
    #
    # @!attribute [rw] workbook_cursor
    #   Indicates the cursor of the workbook at which the data returned by
    #   this request is read. Workbook cursor keeps increasing with every
    #   update and the increments are not sequential.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTablesResult AWS API Documentation
    #
    class ListTablesResult < Struct.new(
      :tables,
      :next_token,
      :workbook_cursor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The resource's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook whose table rows are being queried.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   The ID of the table whose rows are being queried.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] filter_formula
    #   An object that represents a filter formula along with the id of the
    #   context row under which the filter function needs to evaluate.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rows to return in each page of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/QueryTableRowsRequest AWS API Documentation
    #
    class QueryTableRowsRequest < Struct.new(
      :workbook_id,
      :table_id,
      :filter_formula,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_ids
    #   The list of columns in the table whose row data is returned in the
    #   result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rows
    #   The list of rows in the table that match the query filter.
    #   @return [Array<Types::TableRow>]
    #
    # @!attribute [rw] next_token
    #   Provides the pagination token to load the next page if there are
    #   more results matching the request. If a pagination token is not
    #   present in the response, it means that all data matching the request
    #   has been loaded.
    #   @return [String]
    #
    # @!attribute [rw] workbook_cursor
    #   Indicates the cursor of the workbook at which the data returned by
    #   this request is read. Workbook cursor keeps increasing with every
    #   update and the increments are not sequential.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/QueryTableRowsResult AWS API Documentation
    #
    class QueryTableRowsResult < Struct.new(
      :column_ids,
      :rows,
      :next_token,
      :workbook_cursor)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request timed out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/RequestTimeoutException AWS API Documentation
    #
    class RequestTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Workbook, Table, App, Screen or Screen Automation was not found with
    # the given ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single row in the ResultSet.
    #
    # @!attribute [rw] row_id
    #   The ID for a particular row.
    #   @return [String]
    #
    # @!attribute [rw] data_items
    #   List of all the data cells in a row.
    #   @return [Array<Types::DataItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ResultRow AWS API Documentation
    #
    class ResultRow < Struct.new(
      :row_id,
      :data_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # ResultSet contains the results of the request for a single block or
    # list defined on the screen.
    #
    # @!attribute [rw] headers
    #   List of headers for all the data cells in the block. The header
    #   identifies the name and default format of the data cell. Data cells
    #   appear in the same order in all rows as defined in the header. The
    #   names and formats are not repeated in the rows. If a particular row
    #   does not have a value for a data cell, a blank value is used.
    #
    #   For example, a task list that displays the task name, due date and
    #   assigned person might have headers \[ \\\{ "name": "Task
    #   Name"\\}, \\\{"name": "Due Date", "format": "DATE"\\},
    #   \\\{"name": "Assigned", "format": "CONTACT"\\} \]. Every row
    #   in the result will have the task name as the first item, due date as
    #   the second item and assigned person as the third item. If a
    #   particular task does not have a due date, that row will still have a
    #   blank value in the second element and the assigned person will still
    #   be in the third element.
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @!attribute [rw] rows
    #   List of rows returned by the request. Each row has a row Id and a
    #   list of data cells in that row. The data cells will be present in
    #   the same order as they are defined in the header.
    #   @return [Array<Types::ResultRow>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ResultSet AWS API Documentation
    #
    class ResultSet < Struct.new(
      :headers,
      :rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request caused service quota to be breached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Remote service is unreachable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the properties for importing data to a
    # specific column in a table.
    #
    # @!attribute [rw] column_index
    #   The index of the column in the input file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/SourceDataColumnProperties AWS API Documentation
    #
    class SourceDataColumnProperties < Struct.new(
      :column_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workbook_id
    #   The ID of the workbook where the rows are being imported.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The source of the data that is being imported. The size of source
    #   must be no larger than 100 MB. Source must have no more than 100,000
    #   cells and no more than 1,000 rows.
    #   @return [Types::ImportDataSource]
    #
    # @!attribute [rw] data_format
    #   The format of the data that is being imported. Currently the only
    #   option supported is "DELIMITED\_TEXT".
    #   @return [String]
    #
    # @!attribute [rw] destination_table_id
    #   The ID of the table where the rows are being imported.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #   @return [String]
    #
    # @!attribute [rw] import_options
    #   The options for customizing this import request.
    #   @return [Types::ImportOptions]
    #
    # @!attribute [rw] client_request_token
    #   The request token for performing the update action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails
    #   due to a transient error like a failed network connection, you can
    #   retry the call with the same request token. The service ensures that
    #   if the first call using that request token is successfully
    #   performed, the second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You
    #   cannot use request tokens to dedupe requests spanning hours or days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/StartTableDataImportJobRequest AWS API Documentation
    #
    class StartTableDataImportJobRequest < Struct.new(
      :workbook_id,
      :data_source,
      :data_format,
      :destination_table_id,
      :import_options,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The id that is assigned to this import job. Future requests to find
    #   out the status of this import job need to send this id in the
    #   appropriate parameter in the request.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the import job immediately after submitting the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/StartTableDataImportJobResult AWS API Documentation
    #
    class StartTableDataImportJobResult < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the properties of a table in a workbook.
    #
    # @!attribute [rw] table_id
    #   The id of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/Table AWS API Documentation
    #
    class Table < Struct.new(
      :table_id,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains attributes about a single column in a table
    #
    # @!attribute [rw] table_column_id
    #   The id of the column in the table.
    #   @return [String]
    #
    # @!attribute [rw] table_column_name
    #   The name of the column in the table.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The column level format that is applied in the table. An empty value
    #   in this field means that the column format is the default value
    #   'AUTO'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/TableColumn AWS API Documentation
    #
    class TableColumn < Struct.new(
      :table_column_id,
      :table_column_name,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated with the table data import job that was
    # submitted.
    #
    # @!attribute [rw] submitter
    #   Details about the submitter of the import request.
    #   @return [Types::ImportJobSubmitter]
    #
    # @!attribute [rw] submit_time
    #   The timestamp when the job was submitted for import.
    #   @return [Time]
    #
    # @!attribute [rw] import_options
    #   The options that was specified at the time of submitting the import
    #   request.
    #   @return [Types::ImportOptions]
    #
    # @!attribute [rw] data_source
    #   The source of the data that was submitted for import.
    #   @return [Types::ImportDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/TableDataImportJobMetadata AWS API Documentation
    #
    class TableDataImportJobMetadata < Struct.new(
      :submitter,
      :submit_time,
      :import_options,
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains attributes about a single row in a table
    #
    # @!attribute [rw] row_id
    #   The id of the row in the table.
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   A list of cells in the table row. The cells appear in the same order
    #   as the columns of the table.
    #   @return [Array<Types::Cell>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/TableRow AWS API Documentation
    #
    class TableRow < Struct.new(
      :row_id,
      :cells)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # Tps(transactions per second) rate reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # Data needed to create a single row in a table as part of the
    # BatchCreateTableRows request.
    #
    # @!attribute [rw] row_id
    #   The id of the row that needs to be updated.
    #   @return [String]
    #
    # @!attribute [rw] cells_to_update
    #   A map representing the cells to update in the given row. The key is
    #   the column id of the cell and the value is the CellInput object that
    #   represents the data to set in that cell.
    #   @return [Hash<String,Types::CellInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/UpdateRowData AWS API Documentation
    #
    class UpdateRowData < Struct.new(
      :row_id,
      :cells_to_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data needed to upsert rows in a table as part of a single item in the
    # BatchUpsertTableRows request.
    #
    # @!attribute [rw] batch_item_id
    #   An external identifier that represents a single item in the request
    #   that is being upserted as part of the BatchUpsertTableRows request.
    #   This can be any string that you can use to identify the item in the
    #   request. The BatchUpsertTableRows API puts the batch item id in the
    #   results to allow you to link data in the request to data in the
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The filter formula to use to find existing matching rows to update.
    #   The formula needs to return zero or more rows. If the formula
    #   returns 0 rows, then a new row will be appended in the target table.
    #   If the formula returns one or more rows, then the returned rows will
    #   be updated.
    #
    #   Note that the filter formula needs to return rows from the target
    #   table for the upsert operation to succeed. If the filter formula has
    #   a syntax error or it doesn't evaluate to zero or more rows in the
    #   target table for any one item in the input list, then the entire
    #   BatchUpsertTableRows request fails and no updates are made to the
    #   table.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] cells_to_update
    #   A map representing the cells to update for the matching rows or an
    #   appended row. The key is the column id of the cell and the value is
    #   the CellInput object that represents the data to set in that cell.
    #   @return [Hash<String,Types::CellInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/UpsertRowData AWS API Documentation
    #
    class UpsertRowData < Struct.new(
      :batch_item_id,
      :filter,
      :cells_to_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the result of a single upsert row request.
    #
    # @!attribute [rw] row_ids
    #   The list of row ids that were changed as part of an upsert row
    #   operation. If the upsert resulted in an update, this list could
    #   potentially contain multiple rows that matched the filter and hence
    #   got updated. If the upsert resulted in an append, this list would
    #   only have the single row that was appended.
    #   @return [Array<String>]
    #
    # @!attribute [rw] upsert_action
    #   The result of the upsert action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/UpsertRowsResult AWS API Documentation
    #
    class UpsertRowsResult < Struct.new(
      :row_ids,
      :upsert_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request is invalid. The message in the response contains details on
    # why the request is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input variables to the app to be used by the
    # InvokeScreenAutomation action request.
    #
    # @!attribute [rw] raw_value
    #   Raw value of the variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/VariableValue AWS API Documentation
    #
    class VariableValue < Struct.new(
      :raw_value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
