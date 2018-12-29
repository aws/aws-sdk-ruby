# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LambdaPreview
  # @api private
  module ClientApi

    include Seahorse::Model

    AddEventSourceRequest = Shapes::StructureShape.new(name: 'AddEventSourceRequest')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    EventSourceConfiguration = Shapes::StructureShape.new(name: 'EventSourceConfiguration')
    EventSourceList = Shapes::ListShape.new(name: 'EventSourceList')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionCodeLocation = Shapes::StructureShape.new(name: 'FunctionCodeLocation')
    FunctionConfiguration = Shapes::StructureShape.new(name: 'FunctionConfiguration')
    FunctionList = Shapes::ListShape.new(name: 'FunctionList')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    GetEventSourceRequest = Shapes::StructureShape.new(name: 'GetEventSourceRequest')
    GetFunctionConfigurationRequest = Shapes::StructureShape.new(name: 'GetFunctionConfigurationRequest')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResponse = Shapes::StructureShape.new(name: 'GetFunctionResponse')
    Handler = Shapes::StringShape.new(name: 'Handler')
    HttpStatus = Shapes::IntegerShape.new(name: 'HttpStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestContentException = Shapes::StructureShape.new(name: 'InvalidRequestContentException')
    InvokeAsyncRequest = Shapes::StructureShape.new(name: 'InvokeAsyncRequest')
    InvokeAsyncResponse = Shapes::StructureShape.new(name: 'InvokeAsyncResponse')
    ListEventSourcesRequest = Shapes::StructureShape.new(name: 'ListEventSourcesRequest')
    ListEventSourcesResponse = Shapes::StructureShape.new(name: 'ListEventSourcesResponse')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsResponse = Shapes::StructureShape.new(name: 'ListFunctionsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Map = Shapes::MapShape.new(name: 'Map')
    MaxListItems = Shapes::IntegerShape.new(name: 'MaxListItems')
    MemorySize = Shapes::IntegerShape.new(name: 'MemorySize')
    Mode = Shapes::StringShape.new(name: 'Mode')
    RemoveEventSourceRequest = Shapes::StructureShape.new(name: 'RemoveEventSourceRequest')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Runtime = Shapes::StringShape.new(name: 'Runtime')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    String = Shapes::StringShape.new(name: 'String')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateFunctionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateFunctionConfigurationRequest')
    UploadFunctionRequest = Shapes::StructureShape.new(name: 'UploadFunctionRequest')

    AddEventSourceRequest.add_member(:event_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EventSource"))
    AddEventSourceRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "FunctionName"))
    AddEventSourceRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "Role"))
    AddEventSourceRequest.add_member(:batch_size, Shapes::ShapeRef.new(shape: Integer, location_name: "BatchSize"))
    AddEventSourceRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Map, location_name: "Parameters"))
    AddEventSourceRequest.struct_class = Types::AddEventSourceRequest

    DeleteFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionRequest.struct_class = Types::DeleteFunctionRequest

    EventSourceConfiguration.add_member(:uuid, Shapes::ShapeRef.new(shape: String, location_name: "UUID"))
    EventSourceConfiguration.add_member(:batch_size, Shapes::ShapeRef.new(shape: Integer, location_name: "BatchSize"))
    EventSourceConfiguration.add_member(:event_source, Shapes::ShapeRef.new(shape: String, location_name: "EventSource"))
    EventSourceConfiguration.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, location_name: "FunctionName"))
    EventSourceConfiguration.add_member(:parameters, Shapes::ShapeRef.new(shape: Map, location_name: "Parameters"))
    EventSourceConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "Role"))
    EventSourceConfiguration.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    EventSourceConfiguration.add_member(:is_active, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsActive"))
    EventSourceConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSourceConfiguration.struct_class = Types::EventSourceConfiguration

    EventSourceList.member = Shapes::ShapeRef.new(shape: EventSourceConfiguration)

    FunctionCodeLocation.add_member(:repository_type, Shapes::ShapeRef.new(shape: String, location_name: "RepositoryType"))
    FunctionCodeLocation.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "Location"))
    FunctionCodeLocation.struct_class = Types::FunctionCodeLocation

    FunctionConfiguration.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, location_name: "FunctionName"))
    FunctionConfiguration.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "FunctionARN"))
    FunctionConfiguration.add_member(:configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationId"))
    FunctionConfiguration.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "Runtime"))
    FunctionConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "Role"))
    FunctionConfiguration.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location_name: "Handler"))
    FunctionConfiguration.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    FunctionConfiguration.add_member(:code_size, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSize"))
    FunctionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    FunctionConfiguration.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    FunctionConfiguration.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    FunctionConfiguration.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    FunctionConfiguration.struct_class = Types::FunctionConfiguration

    FunctionList.member = Shapes::ShapeRef.new(shape: FunctionConfiguration)

    GetEventSourceRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    GetEventSourceRequest.struct_class = Types::GetEventSourceRequest

    GetFunctionConfigurationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionConfigurationRequest.struct_class = Types::GetFunctionConfigurationRequest

    GetFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "Configuration"))
    GetFunctionResponse.add_member(:code, Shapes::ShapeRef.new(shape: FunctionCodeLocation, location_name: "Code"))
    GetFunctionResponse.struct_class = Types::GetFunctionResponse

    InvokeAsyncRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    InvokeAsyncRequest.add_member(:invoke_args, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "InvokeArgs"))
    InvokeAsyncRequest.struct_class = Types::InvokeAsyncRequest
    InvokeAsyncRequest[:payload] = :invoke_args
    InvokeAsyncRequest[:payload_member] = InvokeAsyncRequest.member(:invoke_args)

    InvokeAsyncResponse.add_member(:status, Shapes::ShapeRef.new(shape: HttpStatus, location: "statusCode", location_name: "Status"))
    InvokeAsyncResponse.struct_class = Types::InvokeAsyncResponse

    ListEventSourcesRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "EventSource"))
    ListEventSourcesRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, location: "querystring", location_name: "FunctionName"))
    ListEventSourcesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListEventSourcesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListEventSourcesRequest.struct_class = Types::ListEventSourcesRequest

    ListEventSourcesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListEventSourcesResponse.add_member(:event_sources, Shapes::ShapeRef.new(shape: EventSourceList, location_name: "EventSources"))
    ListEventSourcesResponse.struct_class = Types::ListEventSourcesResponse

    ListFunctionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionList, location_name: "Functions"))
    ListFunctionsResponse.struct_class = Types::ListFunctionsResponse

    Map.key = Shapes::ShapeRef.new(shape: String)
    Map.value = Shapes::ShapeRef.new(shape: String)

    RemoveEventSourceRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    RemoveEventSourceRequest.struct_class = Types::RemoveEventSourceRequest

    UpdateFunctionConfigurationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionConfigurationRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location: "querystring", location_name: "Role"))
    UpdateFunctionConfigurationRequest.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location: "querystring", location_name: "Handler"))
    UpdateFunctionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location: "querystring", location_name: "Description"))
    UpdateFunctionConfigurationRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location: "querystring", location_name: "Timeout"))
    UpdateFunctionConfigurationRequest.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location: "querystring", location_name: "MemorySize"))
    UpdateFunctionConfigurationRequest.struct_class = Types::UpdateFunctionConfigurationRequest

    UploadFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UploadFunctionRequest.add_member(:function_zip, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "FunctionZip"))
    UploadFunctionRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, required: true, location: "querystring", location_name: "Runtime"))
    UploadFunctionRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location: "querystring", location_name: "Role"))
    UploadFunctionRequest.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, required: true, location: "querystring", location_name: "Handler"))
    UploadFunctionRequest.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, required: true, location: "querystring", location_name: "Mode"))
    UploadFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location: "querystring", location_name: "Description"))
    UploadFunctionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location: "querystring", location_name: "Timeout"))
    UploadFunctionRequest.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location: "querystring", location_name: "MemorySize"))
    UploadFunctionRequest.struct_class = Types::UploadFunctionRequest
    UploadFunctionRequest[:payload] = :function_zip
    UploadFunctionRequest[:payload_member] = UploadFunctionRequest.member(:function_zip)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-11"

      api.metadata = {
        "apiVersion" => "2014-11-11",
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Lambda",
        "signatureVersion" => "v4",
        "uid" => "lambda-2014-11-11",
      }

      api.add_operation(:add_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/2014-11-13/event-source-mappings/"
        o.input = Shapes::ShapeRef.new(shape: AddEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:delete_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventSource"
        o.http_method = "GET"
        o.http_request_uri = "/2014-11-13/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: GetEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invoke_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAsync"
        o.http_method = "POST"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}/invoke-async/"
        o.input = Shapes::ShapeRef.new(shape: InvokeAsyncRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAsyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestContentException)
      end)

      api.add_operation(:list_event_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventSources"
        o.http_method = "GET"
        o.http_request_uri = "/2014-11-13/event-source-mappings/"
        o.input = Shapes::ShapeRef.new(shape: ListEventSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/2014-11-13/functions/"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:remove_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveEventSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2014-11-13/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: RemoveEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:update_function_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:upload_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadFunction"
        o.http_method = "PUT"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: UploadFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
