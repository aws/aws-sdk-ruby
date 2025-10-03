# frozen_string_literal: true

# This is generated code!

module Aws::CloudFrontKeyValueStore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DeleteKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#DeleteKeyRequest', name: 'DeleteKeyRequest')
    DeleteKeyRequestListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#DeleteKeyRequestListItem', name: 'DeleteKeyRequestListItem')
    DeleteKeyRequestsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#DeleteKeyRequestsList', name: 'DeleteKeyRequestsList', traits: {"smithy.api#uniqueItems" => {}})
    DeleteKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#DeleteKeyResponse', name: 'DeleteKeyResponse')
    DescribeKeyValueStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#DescribeKeyValueStoreRequest', name: 'DescribeKeyValueStoreRequest')
    DescribeKeyValueStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#DescribeKeyValueStoreResponse', name: 'DescribeKeyValueStoreResponse')
    Etag = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#Etag', name: 'Etag')
    GetKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#GetKeyRequest', name: 'GetKeyRequest')
    GetKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#GetKeyResponse', name: 'GetKeyResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#Key', name: 'Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    KvsARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#KvsARN', name: 'KvsARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ListKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ListKeysRequest', name: 'ListKeysRequest')
    ListKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ListKeysResponse', name: 'ListKeysResponse')
    ListKeysResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ListKeysResponseList', name: 'ListKeysResponseList')
    ListKeysResponseListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ListKeysResponseListItem', name: 'ListKeysResponseListItem')
    PutKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#PutKeyRequest', name: 'PutKeyRequest')
    PutKeyRequestListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#PutKeyRequestListItem', name: 'PutKeyRequestListItem')
    PutKeyRequestsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#PutKeyRequestsList', name: 'PutKeyRequestsList', traits: {"smithy.api#uniqueItems" => {}})
    PutKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#PutKeyResponse', name: 'PutKeyResponse')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    UpdateKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#UpdateKeysRequest', name: 'UpdateKeysRequest')
    UpdateKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#UpdateKeysResponse', name: 'UpdateKeysResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfrontkeyvaluestore#Value', name: 'Value', traits: {"smithy.api#sensitive" => {}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    DeleteKeyRequest.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "KvsARN"}}))
    DeleteKeyRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'IfMatch', traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteKeyRequest.type = Types::DeleteKeyRequest
    DeleteKeyRequestListItem.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    DeleteKeyRequestListItem.type = Types::DeleteKeyRequestListItem
    DeleteKeyRequestsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyRequestListItem)
    DeleteKeyResponse.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ItemCount', traits: {"smithy.api#required" => {}}))
    DeleteKeyResponse.add_member(:total_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalSizeInBytes', traits: {"smithy.api#required" => {}}))
    DeleteKeyResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    DeleteKeyResponse.type = Types::DeleteKeyResponse
    DescribeKeyValueStoreRequest.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "KvsARN"}}))
    DescribeKeyValueStoreRequest.type = Types::DescribeKeyValueStoreRequest
    DescribeKeyValueStoreResponse.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ItemCount', traits: {"smithy.api#required" => {}}))
    DescribeKeyValueStoreResponse.add_member(:total_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalSizeInBytes', traits: {"smithy.api#required" => {}}))
    DescribeKeyValueStoreResponse.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#required" => {}}))
    DescribeKeyValueStoreResponse.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'Created', traits: {"smithy.api#required" => {}}))
    DescribeKeyValueStoreResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    DescribeKeyValueStoreResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastModified'))
    DescribeKeyValueStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Status'))
    DescribeKeyValueStoreResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FailureReason'))
    DescribeKeyValueStoreResponse.type = Types::DescribeKeyValueStoreResponse
    GetKeyRequest.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "KvsARN"}}))
    GetKeyRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKeyRequest.type = Types::GetKeyRequest
    GetKeyResponse.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    GetKeyResponse.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    GetKeyResponse.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ItemCount', traits: {"smithy.api#required" => {}}))
    GetKeyResponse.add_member(:total_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalSizeInBytes', traits: {"smithy.api#required" => {}}))
    GetKeyResponse.type = Types::GetKeyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListKeysRequest.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "KvsARN"}}))
    ListKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListKeysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "MaxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListKeysRequest.type = Types::ListKeysRequest
    ListKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListKeysResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysResponseList, location_name: 'Items'))
    ListKeysResponse.type = Types::ListKeysResponse
    ListKeysResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysResponseListItem)
    ListKeysResponseListItem.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    ListKeysResponseListItem.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ListKeysResponseListItem.type = Types::ListKeysResponseListItem
    PutKeyRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutKeyRequest.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    PutKeyRequest.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "KvsARN"}}))
    PutKeyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'IfMatch', traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    PutKeyRequest.type = Types::PutKeyRequest
    PutKeyRequestListItem.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    PutKeyRequestListItem.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    PutKeyRequestListItem.type = Types::PutKeyRequestListItem
    PutKeyRequestsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeyRequestListItem)
    PutKeyResponse.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ItemCount', traits: {"smithy.api#required" => {}}))
    PutKeyResponse.add_member(:total_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalSizeInBytes', traits: {"smithy.api#required" => {}}))
    PutKeyResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    PutKeyResponse.type = Types::PutKeyResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    UpdateKeysRequest.add_member(:kvs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KvsARN, location_name: 'KvsARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "KvsARN"}}))
    UpdateKeysRequest.add_member(:if_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'IfMatch', traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateKeysRequest.add_member(:puts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeyRequestsList, location_name: 'Puts'))
    UpdateKeysRequest.add_member(:deletes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyRequestsList, location_name: 'Deletes'))
    UpdateKeysRequest.type = Types::UpdateKeysRequest
    UpdateKeysResponse.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ItemCount', traits: {"smithy.api#required" => {}}))
    UpdateKeysResponse.add_member(:total_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalSizeInBytes', traits: {"smithy.api#required" => {}}))
    UpdateKeysResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Etag, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    UpdateKeysResponse.type = Types::UpdateKeysResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    CloudFrontKeyValueStore = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudfrontkeyvaluestore#CloudFrontKeyValueStore"
      service.name = "CloudFrontKeyValueStore"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudFront KeyValueStore", "arnNamespace" => "key-value-store", "endpointPrefix" => "cloudfront-keyvaluestore"}, "aws.auth#sigv4" => {"name" => "cloudfront-keyvaluestore"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudFront KeyValueStore"}
      service.add_operation(:delete_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfrontkeyvaluestore#DeleteKey"
        operation.name = "DeleteKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/key-value-stores/{KvsARN}/keys/{Key}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_key_value_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfrontkeyvaluestore#DescribeKeyValueStore"
        operation.name = "DescribeKeyValueStore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyValueStoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyValueStoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/key-value-stores/{KvsARN}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfrontkeyvaluestore#GetKey"
        operation.name = "GetKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/key-value-stores/{KvsARN}/keys/{Key}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfrontkeyvaluestore#ListKeys"
        operation.name = "ListKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/key-value-stores/{KvsARN}/keys"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKeys.new
      end)
      service.add_operation(:put_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfrontkeyvaluestore#PutKey"
        operation.name = "PutKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/key-value-stores/{KvsARN}/keys/{Key}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfrontkeyvaluestore#UpdateKeys"
        operation.name = "UpdateKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/key-value-stores/{KvsARN}/keys"}, "smithy.api#idempotent" => {}}
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
