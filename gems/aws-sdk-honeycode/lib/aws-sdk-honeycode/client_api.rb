# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Honeycode
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AutomationExecutionException = Shapes::StructureShape.new(name: 'AutomationExecutionException')
    AutomationExecutionTimeoutException = Shapes::StructureShape.new(name: 'AutomationExecutionTimeoutException')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ColumnMetadata = Shapes::StructureShape.new(name: 'ColumnMetadata')
    DataItem = Shapes::StructureShape.new(name: 'DataItem')
    DataItems = Shapes::ListShape.new(name: 'DataItems')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Format = Shapes::StringShape.new(name: 'Format')
    FormattedValue = Shapes::StringShape.new(name: 'FormattedValue')
    GetScreenDataRequest = Shapes::StructureShape.new(name: 'GetScreenDataRequest')
    GetScreenDataResult = Shapes::StructureShape.new(name: 'GetScreenDataResult')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvokeScreenAutomationRequest = Shapes::StructureShape.new(name: 'InvokeScreenAutomationRequest')
    InvokeScreenAutomationResult = Shapes::StructureShape.new(name: 'InvokeScreenAutomationResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    RawValue = Shapes::StringShape.new(name: 'RawValue')
    RequestTimeoutException = Shapes::StructureShape.new(name: 'RequestTimeoutException')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultHeader = Shapes::ListShape.new(name: 'ResultHeader')
    ResultRow = Shapes::StructureShape.new(name: 'ResultRow')
    ResultRows = Shapes::ListShape.new(name: 'ResultRows')
    ResultSet = Shapes::StructureShape.new(name: 'ResultSet')
    ResultSetMap = Shapes::MapShape.new(name: 'ResultSetMap')
    RowId = Shapes::StringShape.new(name: 'RowId')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
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

    ColumnMetadata.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ColumnMetadata.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    ColumnMetadata.struct_class = Types::ColumnMetadata

    DataItem.add_member(:override_format, Shapes::ShapeRef.new(shape: Format, location_name: "overrideFormat"))
    DataItem.add_member(:raw_value, Shapes::ShapeRef.new(shape: RawValue, location_name: "rawValue"))
    DataItem.add_member(:formatted_value, Shapes::ShapeRef.new(shape: FormattedValue, location_name: "formattedValue"))
    DataItem.struct_class = Types::DataItem

    DataItems.member = Shapes::ShapeRef.new(shape: DataItem)

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

    RequestTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    RequestTimeoutException.struct_class = Types::RequestTimeoutException

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

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

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
      end)
    end

  end
end
