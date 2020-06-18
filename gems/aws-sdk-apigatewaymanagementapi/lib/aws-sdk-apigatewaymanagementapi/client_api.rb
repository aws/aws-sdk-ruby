# frozen_string_literal: true

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
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetConnectionRequest = Shapes::StructureShape.new(name: 'GetConnectionRequest')
    GetConnectionResponse = Shapes::StructureShape.new(name: 'GetConnectionResponse')
    GoneException = Shapes::StructureShape.new(name: 'GoneException')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    PayloadTooLargeException = Shapes::StructureShape.new(name: 'PayloadTooLargeException')
    PostToConnectionRequest = Shapes::StructureShape.new(name: 'PostToConnectionRequest')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")

    DeleteConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectionId"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    ForbiddenException.struct_class = Types::ForbiddenException

    GetConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectionId"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:connected_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "connectedAt"))
    GetConnectionResponse.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, location_name: "identity"))
    GetConnectionResponse.add_member(:last_active_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastActiveAt"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GoneException.struct_class = Types::GoneException

    Identity.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceIp"))
    Identity.add_member(:user_agent, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "userAgent"))
    Identity.struct_class = Types::Identity

    LimitExceededException.struct_class = Types::LimitExceededException

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

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/@connections/{connectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "GET"
        o.http_request_uri = "/@connections/{connectionId}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

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
