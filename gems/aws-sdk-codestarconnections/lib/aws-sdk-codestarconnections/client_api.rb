# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStarconnections
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    CreateConnectionInput = Shapes::StructureShape.new(name: 'CreateConnectionInput')
    CreateConnectionOutput = Shapes::StructureShape.new(name: 'CreateConnectionOutput')
    DeleteConnectionInput = Shapes::StructureShape.new(name: 'DeleteConnectionInput')
    DeleteConnectionOutput = Shapes::StructureShape.new(name: 'DeleteConnectionOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetConnectionInput = Shapes::StructureShape.new(name: 'GetConnectionInput')
    GetConnectionOutput = Shapes::StructureShape.new(name: 'GetConnectionOutput')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListConnectionsInput = Shapes::StructureShape.new(name: 'ListConnectionsInput')
    ListConnectionsOutput = Shapes::StructureShape.new(name: 'ListConnectionsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ProviderType = Shapes::StringShape.new(name: 'ProviderType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')

    Connection.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    Connection.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    Connection.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    Connection.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    Connection.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "ConnectionStatus"))
    Connection.struct_class = Types::Connection

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateConnectionInput.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "ProviderType"))
    CreateConnectionInput.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "ConnectionName"))
    CreateConnectionInput.struct_class = Types::CreateConnectionInput

    CreateConnectionOutput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    CreateConnectionOutput.struct_class = Types::CreateConnectionOutput

    DeleteConnectionInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    DeleteConnectionInput.struct_class = Types::DeleteConnectionInput

    DeleteConnectionOutput.struct_class = Types::DeleteConnectionOutput

    GetConnectionInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    GetConnectionInput.struct_class = Types::GetConnectionInput

    GetConnectionOutput.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    GetConnectionOutput.struct_class = Types::GetConnectionOutput

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListConnectionsInput.add_member(:provider_type_filter, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderTypeFilter"))
    ListConnectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConnectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsInput.struct_class = Types::ListConnectionsInput

    ListConnectionsOutput.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    ListConnectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsOutput.struct_class = Types::ListConnectionsOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-01"

      api.metadata = {
        "apiVersion" => "2019-12-01",
        "endpointPrefix" => "codestar-connections",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS CodeStar connections",
        "serviceId" => "CodeStar connections",
        "signatureVersion" => "v4",
        "signingName" => "codestar-connections",
        "targetPrefix" => "com.amazonaws.codestar.connections.CodeStar_connections_20191201",
        "uid" => "codestar-connections-2019-12-01",
      }

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
