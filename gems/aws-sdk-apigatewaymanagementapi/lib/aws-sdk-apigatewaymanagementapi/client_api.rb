# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayManagementApi
  # @api private
  module ClientApi

    include Seahorse::Model

    Data = Shapes::BlobShape.new(name: 'Data')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GoneException = Shapes::StructureShape.new(name: 'GoneException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    PayloadTooLargeException = Shapes::StructureShape.new(name: 'PayloadTooLargeException')
    PostToConnectionRequest = Shapes::StructureShape.new(name: 'PostToConnectionRequest')
    __string = Shapes::StringShape.new(name: '__string')

    PayloadTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    PayloadTooLargeException.struct_class = Types::PayloadTooLargeException

    PostToConnectionRequest.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    PostToConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectionId"))
    PostToConnectionRequest.struct_class = Types::PostToConnectionRequest
    PostToConnectionRequest[:payload] = :data
    PostToConnectionRequest[:payload_member] = PostToConnectionRequest.member(:data)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-29"

      api.metadata = {
        "apiVersion" => "2018-11-29",
        "endpointPrefix" => "execute-api",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmazonApiGatewayManagementApi",
        "serviceId" => "ApiGatewayManagementApi",
        "signatureVersion" => "v4",
        "signingName" => "execute-api",
        "uid" => "apigatewaymanagementapi-2018-11-29",
      }

      api.add_operation(:post_to_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostToConnection"
        o.http_method = "POST"
        o.http_request_uri = "/@connections/{connectionId}"
        o.input = Shapes::ShapeRef.new(shape: PostToConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)
    end

  end
end
