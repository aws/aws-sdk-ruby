# frozen_string_literal: true

# This is generated code!

module Aws::S3Outposts
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    CapacityInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3outposts#CapacityInBytes', name: 'CapacityInBytes', traits: {"smithy.api#default" => 0})
    CidrBlock = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#CidrBlock', name: 'CidrBlock')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#CreateEndpointRequest', name: 'CreateEndpointRequest')
    CreateEndpointResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#CreateEndpointResult', name: 'CreateEndpointResult')
    CreationTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.s3outposts#CreationTime', name: 'CreationTime')
    CustomerOwnedIpv4Pool = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#CustomerOwnedIpv4Pool', name: 'CustomerOwnedIpv4Pool', traits: {"smithy.api#pattern" => "^ipv4pool-coip-([0-9a-f]{17})$"})
    DeleteEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#DeleteEndpointRequest', name: 'DeleteEndpointRequest')
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#Endpoint', name: 'Endpoint')
    EndpointAccessType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3outposts#EndpointAccessType', name: 'EndpointAccessType')
    EndpointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#EndpointArn', name: 'EndpointArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3-outposts:[a-z\\-0-9]*:[0-9]{12}:outpost/(op-[a-f0-9]{17}|ec2)/endpoint/[a-zA-Z0-9]{19}$"})
    EndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#EndpointId', name: 'EndpointId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{19}$"})
    EndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.s3outposts#EndpointStatus', name: 'EndpointStatus')
    Endpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3outposts#Endpoints', name: 'Endpoints')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#ErrorMessage', name: 'ErrorMessage')
    FailedReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#FailedReason', name: 'FailedReason')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ListEndpointsRequest', name: 'ListEndpointsRequest')
    ListEndpointsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ListEndpointsResult', name: 'ListEndpointsResult')
    ListOutpostsWithS3Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ListOutpostsWithS3Request', name: 'ListOutpostsWithS3Request')
    ListOutpostsWithS3Result = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ListOutpostsWithS3Result', name: 'ListOutpostsWithS3Result')
    ListSharedEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ListSharedEndpointsRequest', name: 'ListSharedEndpointsRequest')
    ListSharedEndpointsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ListSharedEndpointsResult', name: 'ListSharedEndpointsResult')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.s3outposts#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#Message', name: 'Message')
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#NetworkInterfaceId', name: 'NetworkInterfaceId')
    NetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3outposts#NetworkInterfaces', name: 'NetworkInterfaces')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$"})
    Outpost = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#Outpost', name: 'Outpost')
    OutpostArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#OutpostArn', name: 'OutpostArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):outposts:[a-z\\-0-9]*:[0-9]{12}:outpost/(op-[a-f0-9]{17}|ec2)$"})
    OutpostId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#OutpostId', name: 'OutpostId', traits: {"smithy.api#pattern" => "^(op-[a-f0-9]{17}|\\d{12}|ec2)$"})
    OutpostOfflineException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#OutpostOfflineException', name: 'OutpostOfflineException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Outposts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.s3outposts#Outposts', name: 'Outposts')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3OutpostArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#S3OutpostArn', name: 'S3OutpostArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3-outposts:[a-z\\-0-9]*:[0-9]{12}:outpost/(op-[a-f0-9]{17}|\\d{12})/s3$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.s3outposts#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.s3outposts#VpcId', name: 'VpcId')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateEndpointRequest.add_member(:outpost_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#documentation" => "<p>The ID of the Outposts. </p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost\n            that has Amazon S3 on Outposts provisioned.</p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the security group to use with the endpoint.</p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccessType, location_name: 'AccessType', traits: {"smithy.api#documentation" => "<p>The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use\n            the Amazon Web Services VPC, choose <code>Private</code>. To use the endpoint with an on-premises\n            network, choose <code>CustomerOwnedIp</code>.  If you choose\n                <code>CustomerOwnedIp</code>, you must also provide the customer-owned IP address\n            pool (CoIP pool).</p>\n         <note>\n            <p>\n               <code>Private</code> is the default access type value.</p>\n         </note>"}))
    CreateEndpointRequest.add_member(:customer_owned_ipv4_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: 'CustomerOwnedIpv4Pool', traits: {"smithy.api#documentation" => "<p>The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses\n            are allocated from this pool for the endpoint.</p>"}))
    CreateEndpointRequest.type = Types::CreateEndpointRequest
    CreateEndpointResult.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint.</p>"}))
    CreateEndpointResult.type = Types::CreateEndpointResult
    DeleteEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint.</p>", "smithy.api#httpQuery" => "endpointId", "smithy.api#required" => {}}))
    DeleteEndpointRequest.add_member(:outpost_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#documentation" => "<p>The ID of the Outposts. </p>", "smithy.api#httpQuery" => "outpostId", "smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    Endpoint.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint.</p>"}))
    Endpoint.add_member(:outposts_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostsId', traits: {"smithy.api#documentation" => "<p>The ID of the Outposts.</p>"}))
    Endpoint.add_member(:cidr_block, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlock, location_name: 'CidrBlock', traits: {"smithy.api#documentation" => "<p>The VPC CIDR committed by this endpoint.</p>"}))
    Endpoint.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the endpoint.</p>"}))
    Endpoint.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time the endpoint was created.</p>"}))
    Endpoint.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'NetworkInterfaces', traits: {"smithy.api#documentation" => "<p>The network interface of the endpoint.</p>"}))
    Endpoint.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC used for the endpoint.</p>"}))
    Endpoint.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet used for the endpoint.</p>"}))
    Endpoint.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the security group used for the endpoint.</p>"}))
    Endpoint.add_member(:access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccessType, location_name: 'AccessType', traits: {"smithy.api#documentation" => "<p>The type of connectivity used to access the Amazon S3 on Outposts endpoint.</p>"}))
    Endpoint.add_member(:customer_owned_ipv4_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: 'CustomerOwnedIpv4Pool', traits: {"smithy.api#documentation" => "<p>The ID of the customer-owned IPv4 address pool used for the endpoint.</p>"}))
    Endpoint.add_member(:failed_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedReason, location_name: 'FailedReason', traits: {"smithy.api#documentation" => "<p>The failure reason, if any, for a create or delete endpoint operation.</p>"}))
    Endpoint.type = Types::Endpoint
    EndpointAccessType.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "Private"}))
    EndpointAccessType.add_member(:customer_owned_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_OWNED_IP', traits: {"smithy.api#enumValue" => "CustomerOwnedIp"}))
    EndpointStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    EndpointStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "Available"}))
    EndpointStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    EndpointStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "Create_Failed"}))
    EndpointStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "Delete_Failed"}))
    Endpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    FailedReason.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The failure code, if any, for a create or delete endpoint operation.</p>"}))
    FailedReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Additional error details describing the endpoint failure and recommended action.</p>"}))
    FailedReason.type = Types::FailedReason
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a previous response from this operation included a <code>NextToken</code> value, \n            provide that value here to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of endpoints that will be returned in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEndpointsRequest.type = Types::ListEndpointsRequest
    ListEndpointsResult.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>The list of endpoints associated with the specified Outpost.</p>"}))
    ListEndpointsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>, \n            you can include this value in subsequent calls to this operation to retrieve more results.</p>"}))
    ListEndpointsResult.type = Types::ListEndpointsResult
    ListOutpostsWithS3Request.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you can get additional results from the <code>ListOutpostsWithS3</code> call, a\n                <code>NextToken</code> parameter is returned in the output. You can then pass in a\n            subsequent command to the <code>NextToken</code> parameter to continue listing\n            additional Outposts.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListOutpostsWithS3Request.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of Outposts to return. The limit is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListOutpostsWithS3Request.type = Types::ListOutpostsWithS3Request
    ListOutpostsWithS3Result.add_member(:outposts, Smithy::Schema::Shapes::ShapeRef.new(shape: Outposts, location_name: 'Outposts', traits: {"smithy.api#documentation" => "<p>Returns the list of Outposts that have the following characteristics:</p>\n         <ul>\n            <li>\n               <p>outposts that have S3 provisioned</p>\n            </li>\n            <li>\n               <p>outposts that are <code>Active</code> (not pending any provisioning nor decommissioned)</p>\n            </li>\n            <li>\n               <p>outposts to which the the calling Amazon Web Services account has access</p>\n            </li>\n         </ul>"}))
    ListOutpostsWithS3Result.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Returns a token that you can use to call <code>ListOutpostsWithS3</code> again and receive additional results, if there are any.</p>"}))
    ListOutpostsWithS3Result.type = Types::ListOutpostsWithS3Result
    ListSharedEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a previous response from this operation included a <code>NextToken</code> value, you\n            can provide that value here to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSharedEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of endpoints that will be returned in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSharedEndpointsRequest.add_member(:outpost_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services Outpost.</p>", "smithy.api#httpQuery" => "outpostId", "smithy.api#required" => {}}))
    ListSharedEndpointsRequest.type = Types::ListSharedEndpointsRequest
    ListSharedEndpointsResult.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>The list of endpoints associated with the specified Outpost that have been shared by Amazon Web Services Resource Access Manager (RAM).</p>"}))
    ListSharedEndpointsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>, \n            you can include this value in subsequent calls to this operation to retrieve more results.</p>"}))
    ListSharedEndpointsResult.type = Types::ListSharedEndpointsResult
    NetworkInterface.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The ID for the network interface.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    Outpost.add_member(:outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn', traits: {"smithy.api#documentation" => "<p>Specifies the unique Amazon Resource Name (ARN) for the outpost.</p>"}))
    Outpost.add_member(:s3_outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3OutpostArn, location_name: 'S3OutpostArn', traits: {"smithy.api#documentation" => "<p>Specifies the unique S3 on Outposts ARN for use with Resource Access Manager (RAM).</p>"}))
    Outpost.add_member(:outpost_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#documentation" => "<p>Specifies the unique identifier for the outpost.</p>"}))
    Outpost.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>Returns the Amazon Web Services account ID of the outpost owner. Useful for comparing owned versus shared outposts.</p>"}))
    Outpost.add_member(:capacity_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityInBytes, location_name: 'CapacityInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Amazon S3 capacity of the outpost in bytes.</p>"}))
    Outpost.type = Types::Outpost
    OutpostOfflineException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    OutpostOfflineException.type = Types::OutpostOfflineException
    Outposts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Outpost)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    S3Outposts = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3outposts#S3Outposts"
      service.name = "S3Outposts"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Outposts", "arnNamespace" => "s3-outposts", "cloudFormationName" => "S3Outposts", "cloudTrailEventSource" => "s3outposts.amazonaws.com", "endpointPrefix" => "s3-outposts"}, "aws.auth#sigv4" => {"name" => "s3-outposts"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon S3 on Outposts"}
      service.add_operation(:create_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostOfflineException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/S3Outposts/CreateEndpoint", "code" => 200}}
      end)
      service.add_operation(:delete_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostOfflineException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/S3Outposts/DeleteEndpoint", "code" => 200}}
      end)
      service.add_operation(:list_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#ListEndpoints"
        operation.name = "ListEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/S3Outposts/ListEndpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListEndpoints.new
      end)
      service.add_operation(:list_outposts_with_s3, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#ListOutpostsWithS3"
        operation.name = "ListOutpostsWithS3"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostsWithS3Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostsWithS3Result)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/S3Outposts/ListOutpostsWithS3", "code" => 200}}
        operation[:paginator] = Paginators::ListOutpostsWithS3.new
      end)
      service.add_operation(:list_shared_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#ListSharedEndpoints"
        operation.name = "ListSharedEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharedEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharedEndpointsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/S3Outposts/ListSharedEndpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListSharedEndpoints.new
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
