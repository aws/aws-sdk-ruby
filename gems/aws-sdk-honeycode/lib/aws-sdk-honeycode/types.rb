# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Honeycode
  module Types

    # You do not have sufficient access to perform this action. Check that
    # the workbook is owned by you and your IAM policy allows access to the
    # screen/automation in the request.
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

    # @note When making an API call, you may pass GetScreenDataRequest
    #   data as a hash:
    #
    #       {
    #         workbook_id: "ResourceId", # required
    #         app_id: "ResourceId", # required
    #         screen_id: "ResourceId", # required
    #         variables: {
    #           "VariableName" => {
    #             raw_value: "RawValue", # required
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] workbook_id
    #   The ID of the workbook that contains the screen.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The ID of the app that contains the screem.
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

    # @note When making an API call, you may pass InvokeScreenAutomationRequest
    #   data as a hash:
    #
    #       {
    #         workbook_id: "ResourceId", # required
    #         app_id: "ResourceId", # required
    #         screen_id: "ResourceId", # required
    #         screen_automation_id: "ResourceId", # required
    #         variables: {
    #           "VariableName" => {
    #             raw_value: "RawValue", # required
    #           },
    #         },
    #         row_id: "RowId",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
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
    #   Variables are optional and are needed only if the screen requires
    #   them to render correctly. Variables are specified as a map where the
    #   key is the name of the variable as defined on the screen. The value
    #   is an object which currently has only one property, rawValue, which
    #   holds the value of the variable to be passed to the screen.
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

    # A Workbook, App, Screen or Screen Automation was not found with the
    # given ID.
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
    # @note When making an API call, you may pass VariableValue
    #   data as a hash:
    #
    #       {
    #         raw_value: "RawValue", # required
    #       }
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
