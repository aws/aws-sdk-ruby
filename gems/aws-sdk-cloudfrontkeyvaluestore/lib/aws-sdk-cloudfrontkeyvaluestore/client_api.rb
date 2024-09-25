# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudFrontKeyValueStore
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DeleteKeyRequest = Shapes::StructureShape.new(name: 'DeleteKeyRequest')
    DeleteKeyRequestListItem = Shapes::StructureShape.new(name: 'DeleteKeyRequestListItem')
    DeleteKeyRequestsList = Shapes::ListShape.new(name: 'DeleteKeyRequestsList')
    DeleteKeyResponse = Shapes::StructureShape.new(name: 'DeleteKeyResponse')
    DescribeKeyValueStoreRequest = Shapes::StructureShape.new(name: 'DescribeKeyValueStoreRequest')
    DescribeKeyValueStoreResponse = Shapes::StructureShape.new(name: 'DescribeKeyValueStoreResponse')
    Etag = Shapes::StringShape.new(name: 'Etag')
    GetKeyRequest = Shapes::StructureShape.new(name: 'GetKeyRequest')
    GetKeyResponse = Shapes::StructureShape.new(name: 'GetKeyResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Key = Shapes::StringShape.new(name: 'Key')
    KvsARN = Shapes::StringShape.new(name: 'KvsARN')
    ListKeysRequest = Shapes::StructureShape.new(name: 'ListKeysRequest')
    ListKeysRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListKeysRequestMaxResultsInteger')
    ListKeysResponse = Shapes::StructureShape.new(name: 'ListKeysResponse')
    ListKeysResponseList = Shapes::ListShape.new(name: 'ListKeysResponseList')
    ListKeysResponseListItem = Shapes::StructureShape.new(name: 'ListKeysResponseListItem')
    Long = Shapes::IntegerShape.new(name: 'Long')
    PutKeyRequest = Shapes::StructureShape.new(name: 'PutKeyRequest')
    PutKeyRequestListItem = Shapes::StructureShape.new(name: 'PutKeyRequestListItem')
    PutKeyRequestsList = Shapes::ListShape.new(name: 'PutKeyRequestsList')
    PutKeyResponse = Shapes::StructureShape.new(name: 'PutKeyResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateKeysRequest = Shapes::StructureShape.new(name: 'UpdateKeysRequest')
    UpdateKeysResponse = Shapes::StructureShape.new(name: 'UpdateKeysResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    DeleteKeyRequest.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location: "uri", location_name: "KvsARN", metadata: {"contextParam"=>{"name"=>"KvsARN"}}))
    DeleteKeyRequest.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location: "uri", location_name: "Key"))
    DeleteKeyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "If-Match"))
    DeleteKeyRequest.struct_class = Types::DeleteKeyRequest

    DeleteKeyRequestListItem.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    DeleteKeyRequestListItem.struct_class = Types::DeleteKeyRequestListItem

    DeleteKeyRequestsList.member = Shapes::ShapeRef.new(shape: DeleteKeyRequestListItem)

    DeleteKeyResponse.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ItemCount"))
    DeleteKeyResponse.add_member(:total_size_in_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalSizeInBytes"))
    DeleteKeyResponse.add_member(:etag, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "ETag"))
    DeleteKeyResponse.struct_class = Types::DeleteKeyResponse

    DescribeKeyValueStoreRequest.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location: "uri", location_name: "KvsARN", metadata: {"contextParam"=>{"name"=>"KvsARN"}}))
    DescribeKeyValueStoreRequest.struct_class = Types::DescribeKeyValueStoreRequest

    DescribeKeyValueStoreResponse.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ItemCount"))
    DescribeKeyValueStoreResponse.add_member(:total_size_in_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalSizeInBytes"))
    DescribeKeyValueStoreResponse.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location_name: "KvsARN"))
    DescribeKeyValueStoreResponse.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Created"))
    DescribeKeyValueStoreResponse.add_member(:etag, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "ETag"))
    DescribeKeyValueStoreResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    DescribeKeyValueStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DescribeKeyValueStoreResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    DescribeKeyValueStoreResponse.struct_class = Types::DescribeKeyValueStoreResponse

    GetKeyRequest.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location: "uri", location_name: "KvsARN", metadata: {"contextParam"=>{"name"=>"KvsARN"}}))
    GetKeyRequest.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location: "uri", location_name: "Key"))
    GetKeyRequest.struct_class = Types::GetKeyRequest

    GetKeyResponse.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    GetKeyResponse.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    GetKeyResponse.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ItemCount"))
    GetKeyResponse.add_member(:total_size_in_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalSizeInBytes"))
    GetKeyResponse.struct_class = Types::GetKeyResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListKeysRequest.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location: "uri", location_name: "KvsARN", metadata: {"contextParam"=>{"name"=>"KvsARN"}}))
    ListKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListKeysRequestMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListKeysRequest.struct_class = Types::ListKeysRequest

    ListKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListKeysResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListKeysResponseList, location_name: "Items"))
    ListKeysResponse.struct_class = Types::ListKeysResponse

    ListKeysResponseList.member = Shapes::ShapeRef.new(shape: ListKeysResponseListItem)

    ListKeysResponseListItem.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    ListKeysResponseListItem.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    ListKeysResponseListItem.struct_class = Types::ListKeysResponseListItem

    PutKeyRequest.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location: "uri", location_name: "Key"))
    PutKeyRequest.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    PutKeyRequest.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location: "uri", location_name: "KvsARN", metadata: {"contextParam"=>{"name"=>"KvsARN"}}))
    PutKeyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "If-Match"))
    PutKeyRequest.struct_class = Types::PutKeyRequest

    PutKeyRequestListItem.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    PutKeyRequestListItem.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    PutKeyRequestListItem.struct_class = Types::PutKeyRequestListItem

    PutKeyRequestsList.member = Shapes::ShapeRef.new(shape: PutKeyRequestListItem)

    PutKeyResponse.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ItemCount"))
    PutKeyResponse.add_member(:total_size_in_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalSizeInBytes"))
    PutKeyResponse.add_member(:etag, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "ETag"))
    PutKeyResponse.struct_class = Types::PutKeyResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    UpdateKeysRequest.add_member(:kvs_arn, Shapes::ShapeRef.new(shape: KvsARN, required: true, location: "uri", location_name: "KvsARN", metadata: {"contextParam"=>{"name"=>"KvsARN"}}))
    UpdateKeysRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "If-Match"))
    UpdateKeysRequest.add_member(:puts, Shapes::ShapeRef.new(shape: PutKeyRequestsList, location_name: "Puts"))
    UpdateKeysRequest.add_member(:deletes, Shapes::ShapeRef.new(shape: DeleteKeyRequestsList, location_name: "Deletes"))
    UpdateKeysRequest.struct_class = Types::UpdateKeysRequest

    UpdateKeysResponse.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ItemCount"))
    UpdateKeysResponse.add_member(:total_size_in_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalSizeInBytes"))
    UpdateKeysResponse.add_member(:etag, Shapes::ShapeRef.new(shape: Etag, required: true, location: "header", location_name: "ETag"))
    UpdateKeysResponse.struct_class = Types::UpdateKeysResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "endpointPrefix" => "cloudfront-keyvaluestore",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CloudFront KeyValueStore",
        "serviceId" => "CloudFront KeyValueStore",
        "signatureVersion" => "v4",
        "signingName" => "cloudfront-keyvaluestore",
        "uid" => "cloudfront-keyvaluestore-2022-07-26",
      }

      api.add_operation(:delete_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKey"
        o.http_method = "DELETE"
        o.http_request_uri = "/key-value-stores/{KvsARN}/keys/{Key}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_key_value_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeKeyValueStore"
        o.http_method = "GET"
        o.http_request_uri = "/key-value-stores/{KvsARN}"
        o.input = Shapes::ShapeRef.new(shape: DescribeKeyValueStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeKeyValueStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKey"
        o.http_method = "GET"
        o.http_request_uri = "/key-value-stores/{KvsARN}/keys/{Key}"
        o.input = Shapes::ShapeRef.new(shape: GetKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeys"
        o.http_method = "GET"
        o.http_request_uri = "/key-value-stores/{KvsARN}/keys"
        o.input = Shapes::ShapeRef.new(shape: ListKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutKey"
        o.http_method = "PUT"
        o.http_request_uri = "/key-value-stores/{KvsARN}/keys/{Key}"
        o.input = Shapes::ShapeRef.new(shape: PutKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKeys"
        o.http_method = "POST"
        o.http_request_uri = "/key-value-stores/{KvsARN}/keys"
        o.input = Shapes::ShapeRef.new(shape: UpdateKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
