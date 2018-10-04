# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaStoreData
  # @api private
  module ClientApi

    include Seahorse::Model

    ContainerNotFoundException = Shapes::StructureShape.new(name: 'ContainerNotFoundException')
    ContentRangePattern = Shapes::StringShape.new(name: 'ContentRangePattern')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    DeleteObjectRequest = Shapes::StructureShape.new(name: 'DeleteObjectRequest')
    DeleteObjectResponse = Shapes::StructureShape.new(name: 'DeleteObjectResponse')
    DescribeObjectRequest = Shapes::StructureShape.new(name: 'DescribeObjectRequest')
    DescribeObjectResponse = Shapes::StructureShape.new(name: 'DescribeObjectResponse')
    ETag = Shapes::StringShape.new(name: 'ETag')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetObjectRequest = Shapes::StructureShape.new(name: 'GetObjectRequest')
    GetObjectResponse = Shapes::StructureShape.new(name: 'GetObjectResponse')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    Item = Shapes::StructureShape.new(name: 'Item')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    ItemName = Shapes::StringShape.new(name: 'ItemName')
    ItemType = Shapes::StringShape.new(name: 'ItemType')
    ListItemsRequest = Shapes::StructureShape.new(name: 'ListItemsRequest')
    ListItemsResponse = Shapes::StructureShape.new(name: 'ListItemsResponse')
    ListLimit = Shapes::IntegerShape.new(name: 'ListLimit')
    ListPathNaming = Shapes::StringShape.new(name: 'ListPathNaming')
    NonNegativeLong = Shapes::IntegerShape.new(name: 'NonNegativeLong')
    ObjectNotFoundException = Shapes::StructureShape.new(name: 'ObjectNotFoundException')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PathNaming = Shapes::StringShape.new(name: 'PathNaming')
    PayloadBlob = Shapes::BlobShape.new(name: 'PayloadBlob')
    PutObjectRequest = Shapes::StructureShape.new(name: 'PutObjectRequest')
    PutObjectResponse = Shapes::StructureShape.new(name: 'PutObjectResponse')
    RangePattern = Shapes::StringShape.new(name: 'RangePattern')
    RequestedRangeNotSatisfiableException = Shapes::StructureShape.new(name: 'RequestedRangeNotSatisfiableException')
    SHA256Hash = Shapes::StringShape.new(name: 'SHA256Hash')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    StringPrimitive = Shapes::StringShape.new(name: 'StringPrimitive')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    statusCode = Shapes::IntegerShape.new(name: 'statusCode')

    DeleteObjectRequest.add_member(:path, Shapes::ShapeRef.new(shape: PathNaming, required: true, location: "uri", location_name: "Path"))
    DeleteObjectRequest.struct_class = Types::DeleteObjectRequest

    DeleteObjectResponse.struct_class = Types::DeleteObjectResponse

    DescribeObjectRequest.add_member(:path, Shapes::ShapeRef.new(shape: PathNaming, required: true, location: "uri", location_name: "Path"))
    DescribeObjectRequest.struct_class = Types::DescribeObjectRequest

    DescribeObjectResponse.add_member(:etag, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "ETag"))
    DescribeObjectResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    DescribeObjectResponse.add_member(:content_length, Shapes::ShapeRef.new(shape: NonNegativeLong, location: "header", location_name: "Content-Length"))
    DescribeObjectResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: StringPrimitive, location: "header", location_name: "Cache-Control"))
    DescribeObjectResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: TimeStamp, location: "header", location_name: "Last-Modified"))
    DescribeObjectResponse.struct_class = Types::DescribeObjectResponse

    GetObjectRequest.add_member(:path, Shapes::ShapeRef.new(shape: PathNaming, required: true, location: "uri", location_name: "Path"))
    GetObjectRequest.add_member(:range, Shapes::ShapeRef.new(shape: RangePattern, location: "header", location_name: "Range"))
    GetObjectRequest.struct_class = Types::GetObjectRequest

    GetObjectResponse.add_member(:body, Shapes::ShapeRef.new(shape: PayloadBlob, location_name: "Body"))
    GetObjectResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: StringPrimitive, location: "header", location_name: "Cache-Control"))
    GetObjectResponse.add_member(:content_range, Shapes::ShapeRef.new(shape: ContentRangePattern, location: "header", location_name: "Content-Range"))
    GetObjectResponse.add_member(:content_length, Shapes::ShapeRef.new(shape: NonNegativeLong, location: "header", location_name: "Content-Length"))
    GetObjectResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    GetObjectResponse.add_member(:etag, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "ETag"))
    GetObjectResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: TimeStamp, location: "header", location_name: "Last-Modified"))
    GetObjectResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: statusCode, required: true, location: "statusCode", location_name: "StatusCode"))
    GetObjectResponse.struct_class = Types::GetObjectResponse
    GetObjectResponse[:payload] = :body
    GetObjectResponse[:payload_member] = GetObjectResponse.member(:body)

    Item.add_member(:name, Shapes::ShapeRef.new(shape: ItemName, location_name: "Name"))
    Item.add_member(:type, Shapes::ShapeRef.new(shape: ItemType, location_name: "Type"))
    Item.add_member(:etag, Shapes::ShapeRef.new(shape: ETag, location_name: "ETag"))
    Item.add_member(:last_modified, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastModified"))
    Item.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Item.add_member(:content_length, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ContentLength"))
    Item.struct_class = Types::Item

    ItemList.member = Shapes::ShapeRef.new(shape: Item)

    ListItemsRequest.add_member(:path, Shapes::ShapeRef.new(shape: ListPathNaming, location: "querystring", location_name: "Path"))
    ListItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location: "querystring", location_name: "MaxResults"))
    ListItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "NextToken"))
    ListItemsRequest.struct_class = Types::ListItemsRequest

    ListItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    ListItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListItemsResponse.struct_class = Types::ListItemsResponse

    PutObjectRequest.add_member(:body, Shapes::ShapeRef.new(shape: PayloadBlob, required: true, location_name: "Body"))
    PutObjectRequest.add_member(:path, Shapes::ShapeRef.new(shape: PathNaming, required: true, location: "uri", location_name: "Path"))
    PutObjectRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    PutObjectRequest.add_member(:cache_control, Shapes::ShapeRef.new(shape: StringPrimitive, location: "header", location_name: "Cache-Control"))
    PutObjectRequest.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location: "header", location_name: "x-amz-storage-class"))
    PutObjectRequest.struct_class = Types::PutObjectRequest
    PutObjectRequest[:payload] = :body
    PutObjectRequest[:payload_member] = PutObjectRequest.member(:body)

    PutObjectResponse.add_member(:content_sha256, Shapes::ShapeRef.new(shape: SHA256Hash, location_name: "ContentSHA256"))
    PutObjectResponse.add_member(:etag, Shapes::ShapeRef.new(shape: ETag, location_name: "ETag"))
    PutObjectResponse.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass"))
    PutObjectResponse.struct_class = Types::PutObjectResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-01"

      api.metadata = {
        "apiVersion" => "2017-09-01",
        "endpointPrefix" => "data.mediastore",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaStore Data",
        "serviceFullName" => "AWS Elemental MediaStore Data Plane",
        "serviceId" => "MediaStore Data",
        "signatureVersion" => "v4",
        "signingName" => "mediastore",
        "uid" => "mediastore-data-2017-09-01",
      }

      api.add_operation(:delete_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteObject"
        o.http_method = "DELETE"
        o.http_request_uri = "/{Path+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeObject"
        o.http_method = "HEAD"
        o.http_request_uri = "/{Path+}"
        o.input = Shapes::ShapeRef.new(shape: DescribeObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetObject"
        o.http_method = "GET"
        o.http_request_uri = "/{Path+}"
        o.input = Shapes::ShapeRef.new(shape: GetObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: GetObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestedRangeNotSatisfiableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListItems"
        o.http_method = "GET"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutObject"
        o.http_method = "PUT"
        o.http_request_uri = "/{Path+}"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: PutObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: PutObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
