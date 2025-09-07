# frozen_string_literal: true

# This is generated code!

module Aws::ApiGatewayManagementApi
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.apigatewaymanagementapi#Data', name: 'Data', traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#GetConnectionRequest', name: 'GetConnectionRequest')
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#GetConnectionResponse', name: 'GetConnectionResponse')
    GoneException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#GoneException', name: 'GoneException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#Identity', name: 'Identity')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    PayloadTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#PayloadTooLargeException', name: 'PayloadTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    PostToConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigatewaymanagementapi#PostToConnectionRequest', name: 'PostToConnectionRequest')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apigatewaymanagementapi#__string', name: 'String')
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.apigatewaymanagementapi#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    DeleteConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    ForbiddenException.type = Types::ForbiddenException
    GetConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:connected_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'ConnectedAt', traits: {"smithy.api#jsonName" => "connectedAt"}))
    GetConnectionResponse.add_member(:identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#jsonName" => "identity"}))
    GetConnectionResponse.add_member(:last_active_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'LastActiveAt', traits: {"smithy.api#jsonName" => "lastActiveAt"}))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GoneException.type = Types::GoneException
    Identity.add_member(:source_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceIp", "smithy.api#required" => {}}))
    Identity.add_member(:user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserAgent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "userAgent", "smithy.api#required" => {}}))
    Identity.type = Types::Identity
    LimitExceededException.type = Types::LimitExceededException
    PayloadTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    PayloadTooLargeException.type = Types::PayloadTooLargeException
    PostToConnectionRequest.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Data, location_name: 'Data', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PostToConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostToConnectionRequest[:http_payload] = :data
    PostToConnectionRequest[:http_payload_member] = PostToConnectionRequest.member(:data)
    PostToConnectionRequest.type = Types::PostToConnectionRequest

    ApiGatewayManagementApi = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apigatewaymanagementapi#ApiGatewayManagementApi"
      service.name = "ApiGatewayManagementApi"
      service.version = "2018-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "ApiGatewayManagementApi", "arnNamespace" => "apigateway", "cloudFormationName" => "ApiGatewayManagementApi", "cloudTrailEventSource" => "apigatewaymanagementapi.amazonaws.com", "endpointPrefix" => "execute-api"}, "aws.auth#sigv4" => {"name" => "execute-api"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AmazonApiGatewayManagementApi"}
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewaymanagementapi#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/@connections/{ConnectionId}", "code" => 204}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewaymanagementapi#GetConnection"
        operation.name = "GetConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/@connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:post_to_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewaymanagementapi#PostToConnection"
        operation.name = "PostToConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostToConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/@connections/{ConnectionId}", "code" => 200}}
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
