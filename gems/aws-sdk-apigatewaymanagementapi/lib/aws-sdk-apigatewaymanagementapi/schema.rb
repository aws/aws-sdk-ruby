# frozen_string_literal: true

# This is generated code!

module Aws::ApiGatewayManagementApi
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.apigatewaymanagementapi#Data", name: "Data", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#GetConnectionRequest", name: "GetConnectionRequest")
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#GetConnectionResponse", name: "GetConnectionResponse")
    GoneException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#GoneException", name: "GoneException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#Identity", name: "Identity")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    PayloadTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#PayloadTooLargeException", name: "PayloadTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    PostToConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewaymanagementapi#PostToConnectionRequest", name: "PostToConnectionRequest")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewaymanagementapi#__string", name: "String")
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.apigatewaymanagementapi#__timestampIso8601", name: "Timestampiso8601", traits: {"smithy.api#timestampFormat" => "date-time"})

    DeleteConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    ForbiddenException.type = Types::ForbiddenException
    GetConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:connected_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "ConnectedAt", traits: {"smithy.api#jsonName" => "connectedAt"}))
    GetConnectionResponse.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "Identity", traits: {"smithy.api#jsonName" => "identity"}))
    GetConnectionResponse.add_member(:last_active_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastActiveAt", traits: {"smithy.api#jsonName" => "lastActiveAt"}))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GoneException.type = Types::GoneException
    Identity.add_member(:source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceIp", "smithy.api#required" => {}}))
    Identity.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserAgent", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "userAgent", "smithy.api#required" => {}}))
    Identity.type = Types::Identity
    LimitExceededException.type = Types::LimitExceededException
    PayloadTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    PayloadTooLargeException.type = Types::PayloadTooLargeException
    PostToConnectionRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PostToConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostToConnectionRequest[:http_payload] = :data
    PostToConnectionRequest[:http_payload_member] = PostToConnectionRequest.member(:data)
    PostToConnectionRequest.type = Types::PostToConnectionRequest

    ApiGatewayManagementApi = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apigatewaymanagementapi#ApiGatewayManagementApi"
      service.name = "ApiGatewayManagementApi"
      service.version = "2018-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "ApiGatewayManagementApi", "arnNamespace" => "apigateway", "cloudFormationName" => "ApiGatewayManagementApi", "cloudTrailEventSource" => "apigatewaymanagementapi.amazonaws.com", "endpointPrefix" => "execute-api"}, "aws.auth#sigv4" => {"name" => "execute-api"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AmazonApiGatewayManagementApi", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://execute-api-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://execute-api-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://execute-api.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://execute-api.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewaymanagementapi#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << LimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/@connections/{ConnectionId}", "code" => 204}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewaymanagementapi#GetConnection"
        operation.name = "GetConnection"
        operation.input = GetConnectionRequest
        operation.output = GetConnectionResponse
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << LimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/@connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:post_to_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewaymanagementapi#PostToConnection"
        operation.name = "PostToConnection"
        operation.input = PostToConnectionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << LimitExceededException
        operation.errors << PayloadTooLargeException
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
