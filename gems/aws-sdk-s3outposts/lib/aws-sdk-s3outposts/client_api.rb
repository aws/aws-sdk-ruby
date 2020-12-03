# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Outposts
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CidrBlock = Shapes::StringShape.new(name: 'CidrBlock')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEndpointRequest = Shapes::StructureShape.new(name: 'CreateEndpointRequest')
    CreateEndpointResult = Shapes::StructureShape.new(name: 'CreateEndpointResult')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DeleteEndpointRequest = Shapes::StructureShape.new(name: 'DeleteEndpointRequest')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListEndpointsRequest = Shapes::StructureShape.new(name: 'ListEndpointsRequest')
    ListEndpointsResult = Shapes::StructureShape.new(name: 'ListEndpointsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutpostId = Shapes::StringShape.new(name: 'OutpostId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateEndpointRequest.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location_name: "OutpostId"))
    CreateEndpointRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    CreateEndpointRequest.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, required: true, location_name: "SecurityGroupId"))
    CreateEndpointRequest.struct_class = Types::CreateEndpointRequest

    CreateEndpointResult.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "EndpointArn"))
    CreateEndpointResult.struct_class = Types::CreateEndpointResult

    DeleteEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, required: true, location: "querystring", location_name: "endpointId"))
    DeleteEndpointRequest.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "querystring", location_name: "outpostId"))
    DeleteEndpointRequest.struct_class = Types::DeleteEndpointRequest

    Endpoint.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "EndpointArn"))
    Endpoint.add_member(:outposts_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostsId"))
    Endpoint.add_member(:cidr_block, Shapes::ShapeRef.new(shape: CidrBlock, location_name: "CidrBlock"))
    Endpoint.add_member(:status, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "Status"))
    Endpoint.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    Endpoint.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "NetworkInterfaces"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEndpointsRequest.struct_class = Types::ListEndpointsRequest

    ListEndpointsResult.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints"))
    ListEndpointsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEndpointsResult.struct_class = Types::ListEndpointsResult

    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "s3-outposts",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon S3 Outposts",
        "serviceFullName" => "Amazon S3 on Outposts",
        "serviceId" => "S3Outposts",
        "signatureVersion" => "v4",
        "signingName" => "s3-outposts",
        "uid" => "s3outposts-2017-07-25",
      }

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/S3Outposts/CreateEndpoint"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/S3Outposts/DeleteEndpoint"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/S3Outposts/ListEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
