# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Outposts
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    CapacityInBytes = Shapes::IntegerShape.new(name: 'CapacityInBytes')
    CidrBlock = Shapes::StringShape.new(name: 'CidrBlock')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEndpointRequest = Shapes::StructureShape.new(name: 'CreateEndpointRequest')
    CreateEndpointResult = Shapes::StructureShape.new(name: 'CreateEndpointResult')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    CustomerOwnedIpv4Pool = Shapes::StringShape.new(name: 'CustomerOwnedIpv4Pool')
    DeleteEndpointRequest = Shapes::StructureShape.new(name: 'DeleteEndpointRequest')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointAccessType = Shapes::StringShape.new(name: 'EndpointAccessType')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailedReason = Shapes::StructureShape.new(name: 'FailedReason')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListEndpointsRequest = Shapes::StructureShape.new(name: 'ListEndpointsRequest')
    ListEndpointsResult = Shapes::StructureShape.new(name: 'ListEndpointsResult')
    ListOutpostsWithS3Request = Shapes::StructureShape.new(name: 'ListOutpostsWithS3Request')
    ListOutpostsWithS3Result = Shapes::StructureShape.new(name: 'ListOutpostsWithS3Result')
    ListSharedEndpointsRequest = Shapes::StructureShape.new(name: 'ListSharedEndpointsRequest')
    ListSharedEndpointsResult = Shapes::StructureShape.new(name: 'ListSharedEndpointsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Outpost = Shapes::StructureShape.new(name: 'Outpost')
    OutpostArn = Shapes::StringShape.new(name: 'OutpostArn')
    OutpostId = Shapes::StringShape.new(name: 'OutpostId')
    OutpostOfflineException = Shapes::StructureShape.new(name: 'OutpostOfflineException')
    Outposts = Shapes::ListShape.new(name: 'Outposts')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateEndpointRequest.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location_name: "OutpostId"))
    CreateEndpointRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    CreateEndpointRequest.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, required: true, location_name: "SecurityGroupId"))
    CreateEndpointRequest.add_member(:access_type, Shapes::ShapeRef.new(shape: EndpointAccessType, location_name: "AccessType"))
    CreateEndpointRequest.add_member(:customer_owned_ipv_4_pool, Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: "CustomerOwnedIpv4Pool"))
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
    Endpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    Endpoint.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    Endpoint.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "SecurityGroupId"))
    Endpoint.add_member(:access_type, Shapes::ShapeRef.new(shape: EndpointAccessType, location_name: "AccessType"))
    Endpoint.add_member(:customer_owned_ipv_4_pool, Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: "CustomerOwnedIpv4Pool"))
    Endpoint.add_member(:failed_reason, Shapes::ShapeRef.new(shape: FailedReason, location_name: "FailedReason"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    FailedReason.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    FailedReason.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    FailedReason.struct_class = Types::FailedReason

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEndpointsRequest.struct_class = Types::ListEndpointsRequest

    ListEndpointsResult.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints"))
    ListEndpointsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEndpointsResult.struct_class = Types::ListEndpointsResult

    ListOutpostsWithS3Request.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListOutpostsWithS3Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOutpostsWithS3Request.struct_class = Types::ListOutpostsWithS3Request

    ListOutpostsWithS3Result.add_member(:outposts, Shapes::ShapeRef.new(shape: Outposts, location_name: "Outposts"))
    ListOutpostsWithS3Result.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOutpostsWithS3Result.struct_class = Types::ListOutpostsWithS3Result

    ListSharedEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSharedEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSharedEndpointsRequest.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "querystring", location_name: "outpostId"))
    ListSharedEndpointsRequest.struct_class = Types::ListSharedEndpointsRequest

    ListSharedEndpointsResult.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints"))
    ListSharedEndpointsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSharedEndpointsResult.struct_class = Types::ListSharedEndpointsResult

    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    Outpost.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    Outpost.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    Outpost.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "OwnerId"))
    Outpost.add_member(:capacity_in_bytes, Shapes::ShapeRef.new(shape: CapacityInBytes, location_name: "CapacityInBytes"))
    Outpost.struct_class = Types::Outpost

    OutpostOfflineException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    OutpostOfflineException.struct_class = Types::OutpostOfflineException

    Outposts.member = Shapes::ShapeRef.new(shape: Outpost)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: OutpostOfflineException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: OutpostOfflineException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_outposts_with_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOutpostsWithS3"
        o.http_method = "GET"
        o.http_request_uri = "/S3Outposts/ListOutpostsWithS3"
        o.input = Shapes::ShapeRef.new(shape: ListOutpostsWithS3Request)
        o.output = Shapes::ShapeRef.new(shape: ListOutpostsWithS3Result)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_shared_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSharedEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/S3Outposts/ListSharedEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListSharedEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSharedEndpointsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
