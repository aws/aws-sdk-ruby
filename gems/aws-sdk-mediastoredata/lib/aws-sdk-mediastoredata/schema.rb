# frozen_string_literal: true

# This is generated code!

module Aws::MediaStoreData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ContainerNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#ContainerNotFoundException", name: "ContainerNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ContentRangePattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#ContentRangePattern", name: "ContentRangePattern", traits: {"smithy.api#pattern" => "^bytes=\\d+\\-\\d+/\\d+$"})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#ContentType", name: "ContentType", traits: {"smithy.api#pattern" => "^[\\w\\-\\/\\.\\+]{1,255}$"})
    DeleteObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#DeleteObjectRequest", name: "DeleteObjectRequest")
    DeleteObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#DeleteObjectResponse", name: "DeleteObjectResponse")
    DescribeObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#DescribeObjectRequest", name: "DescribeObjectRequest")
    DescribeObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#DescribeObjectResponse", name: "DescribeObjectResponse")
    ETag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#ETag", name: "ETag", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[ \\w:\\.\\?-]+$"})
    GetObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#GetObjectRequest", name: "GetObjectRequest")
    GetObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#GetObjectResponse", name: "GetObjectResponse")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    Item = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#Item", name: "Item")
    ItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastoredata#ItemList", name: "ItemList")
    ItemName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#ItemName", name: "ItemName", traits: {"smithy.api#pattern" => "^[A-Za-z0-9_\\.\\-\\~]+$"})
    ItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediastoredata#ItemType", name: "ItemType")
    ListItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#ListItemsRequest", name: "ListItemsRequest")
    ListItemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#ListItemsResponse", name: "ListItemsResponse")
    ListLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediastoredata#ListLimit", name: "ListLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPathNaming = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#ListPathNaming", name: "ListPathNaming", traits: {"smithy.api#length" => {"min" => 0, "max" => 900}, "smithy.api#pattern" => "^/?(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}(?:[A-Za-z0-9_\\.\\-\\~]+)?/?$"})
    NonNegativeLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediastoredata#NonNegativeLong", name: "NonNegativeLong", traits: {"smithy.api#range" => {"min" => 0}})
    ObjectNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#ObjectNotFoundException", name: "ObjectNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#PaginationToken", name: "PaginationToken")
    PathNaming = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#PathNaming", name: "PathNaming", traits: {"smithy.api#length" => {"min" => 1, "max" => 900}, "smithy.api#pattern" => "^(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+$"})
    PayloadBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.mediastoredata#PayloadBlob", name: "PayloadBlob", traits: {"smithy.api#streaming" => {}})
    PutObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#PutObjectRequest", name: "PutObjectRequest")
    PutObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#PutObjectResponse", name: "PutObjectResponse")
    RangePattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#RangePattern", name: "RangePattern", traits: {"smithy.api#pattern" => "^bytes=(?:\\d+\\-\\d*|\\d*\\-\\d+)$"})
    RequestedRangeNotSatisfiableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastoredata#RequestedRangeNotSatisfiableException", name: "RequestedRangeNotSatisfiableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 416})
    SHA256Hash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#SHA256Hash", name: "SHA256Hash", traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Fa-f]{64}$"})
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediastoredata#StorageClass", name: "StorageClass", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    StringPrimitive = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastoredata#StringPrimitive", name: "StringPrimitive")
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.mediastoredata#TimeStamp", name: "TimeStamp")
    UploadAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediastoredata#UploadAvailability", name: "UploadAvailability", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediastoredata#statusCode", name: "StatusCode", traits: {"smithy.api#default" => 0})

    ContainerNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ContainerNotFoundException.type = Types::ContainerNotFoundException
    DeleteObjectRequest.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathNaming, location_name: "Path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteObjectRequest.type = Types::DeleteObjectRequest
    DeleteObjectResponse.type = Types::DeleteObjectResponse
    DescribeObjectRequest.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathNaming, location_name: "Path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeObjectRequest.type = Types::DescribeObjectRequest
    DescribeObjectResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DescribeObjectResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    DescribeObjectResponse.add_member(:content_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    DescribeObjectResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringPrimitive, location_name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    DescribeObjectResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastModified", traits: {"smithy.api#httpHeader" => "Last-Modified"}))
    DescribeObjectResponse.type = Types::DescribeObjectResponse
    GetObjectRequest.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathNaming, location_name: "Path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectRequest.add_member(:range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RangePattern, location_name: "Range", traits: {"smithy.api#httpHeader" => "Range"}))
    GetObjectRequest.type = Types::GetObjectRequest
    GetObjectResponse.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadBlob, location_name: "Body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetObjectResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringPrimitive, location_name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetObjectResponse.add_member(:content_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRangePattern, location_name: "ContentRange", traits: {"smithy.api#httpHeader" => "Content-Range"}))
    GetObjectResponse.add_member(:content_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    GetObjectResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetObjectResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetObjectResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastModified", traits: {"smithy.api#httpHeader" => "Last-Modified"}))
    GetObjectResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}, "smithy.api#required" => {}}))
    GetObjectResponse[:http_payload] = :body
    GetObjectResponse[:http_payload_member] = GetObjectResponse.member(:body)
    GetObjectResponse.type = Types::GetObjectResponse
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.type = Types::InternalServerError
    Item.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemName, location_name: "Name"))
    Item.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemType, location_name: "Type"))
    Item.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: "ETag"))
    Item.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastModified"))
    Item.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Item.add_member(:content_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ContentLength"))
    Item.type = Types::Item
    ItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Item)
    ItemType.add_member(:object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OBJECT", traits: {"smithy.api#enumValue" => "OBJECT"}))
    ItemType.add_member(:folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FOLDER", traits: {"smithy.api#enumValue" => "FOLDER"}))
    ListItemsRequest.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPathNaming, location_name: "Path", traits: {"smithy.api#httpQuery" => "Path"}))
    ListItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListItemsRequest.type = Types::ListItemsRequest
    ListItemsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    ListItemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListItemsResponse.type = Types::ListItemsResponse
    ObjectNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ObjectNotFoundException.type = Types::ObjectNotFoundException
    PutObjectRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadBlob, location_name: "Body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutObjectRequest.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathNaming, location_name: "Path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutObjectRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutObjectRequest.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringPrimitive, location_name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    PutObjectRequest.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-storage-class"}))
    PutObjectRequest.add_member(:upload_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadAvailability, location_name: "UploadAvailability", traits: {"smithy.api#httpHeader" => "x-amz-upload-availability"}))
    PutObjectRequest[:http_payload] = :body
    PutObjectRequest[:http_payload_member] = PutObjectRequest.member(:body)
    PutObjectRequest.type = Types::PutObjectRequest
    PutObjectResponse.add_member(:content_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SHA256Hash, location_name: "ContentSHA256"))
    PutObjectResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: "ETag"))
    PutObjectResponse.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass"))
    PutObjectResponse.type = Types::PutObjectResponse
    RequestedRangeNotSatisfiableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RequestedRangeNotSatisfiableException.type = Types::RequestedRangeNotSatisfiableException
    StorageClass.add_member(:temporal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEMPORAL", traits: {"smithy.api#enumValue" => "TEMPORAL"}))
    UploadAvailability.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    UploadAvailability.add_member(:streaming, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STREAMING", traits: {"smithy.api#enumValue" => "STREAMING"}))

    MediaStoreObject20170901 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediastoredata#MediaStoreObject_20170901"
      service.name = "MediaStoreObject20170901"
      service.version = "2017-09-01"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaStore Data", "arnNamespace" => "mediastore", "cloudFormationName" => "MediaStoreData", "cloudTrailEventSource" => "mediastoredata.amazonaws.com", "endpointPrefix" => "data.mediastore"}, "aws.auth#sigv4" => {"name" => "mediastore"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Elemental MediaStore Data Plane", "smithy.api#xmlNamespace" => {"uri" => "https://object.mediastore.amazonaws.com/doc/2017-09-01"}}
      service.add_operation(:delete_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastoredata#DeleteObject"
        operation.name = "DeleteObject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Path+}", "code" => 200}}
      end)
      service.add_operation(:describe_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastoredata#DescribeObject"
        operation.name = "DescribeObject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "HEAD", "uri" => "/{Path+}", "code" => 200}}
      end)
      service.add_operation(:get_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastoredata#GetObject"
        operation.name = "GetObject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetObjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetObjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedRangeNotSatisfiableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Path+}", "code" => 200}}
      end)
      service.add_operation(:list_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastoredata#ListItems"
        operation.name = "ListItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListItemsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListItemsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/", "code" => 200}}
        operation[:paginator] = Paginators::ListItems.new
      end)
      service.add_operation(:put_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastoredata#PutObject"
        operation.name = "PutObject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutObjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutObjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"aws.auth#unsignedPayload" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "PUT", "uri" => "/{Path+}", "code" => 200}}
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
