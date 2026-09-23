# frozen_string_literal: true

# This is generated code!

module Aws::S3Outposts
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#pattern" => "^\\d{12}$"})
    CapacityInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3outposts#CapacityInBytes", name: "CapacityInBytes", traits: {"smithy.api#default" => 0})
    CidrBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#CidrBlock", name: "CidrBlock")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#CreateEndpointRequest", name: "CreateEndpointRequest")
    CreateEndpointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#CreateEndpointResult", name: "CreateEndpointResult")
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3outposts#CreationTime", name: "CreationTime")
    CustomerOwnedIpv4Pool = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#CustomerOwnedIpv4Pool", name: "CustomerOwnedIpv4Pool", traits: {"smithy.api#pattern" => "^ipv4pool-coip-([0-9a-f]{17})$"})
    DeleteEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#DeleteEndpointRequest", name: "DeleteEndpointRequest")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#Endpoint", name: "Endpoint")
    EndpointAccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3outposts#EndpointAccessType", name: "EndpointAccessType")
    EndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#EndpointArn", name: "EndpointArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3-outposts:[a-z\\-0-9]*:[0-9]{12}:outpost/(op-[a-f0-9]{17}|ec2)/endpoint/[a-zA-Z0-9]{19}$"})
    EndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#EndpointId", name: "EndpointId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{19}$"})
    EndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3outposts#EndpointStatus", name: "EndpointStatus")
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3outposts#Endpoints", name: "Endpoints")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#ErrorMessage", name: "ErrorMessage")
    FailedReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#FailedReason", name: "FailedReason")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ListEndpointsRequest", name: "ListEndpointsRequest")
    ListEndpointsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ListEndpointsResult", name: "ListEndpointsResult")
    ListOutpostsWithS3Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ListOutpostsWithS3Request", name: "ListOutpostsWithS3Request")
    ListOutpostsWithS3Result = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ListOutpostsWithS3Result", name: "ListOutpostsWithS3Result")
    ListSharedEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ListSharedEndpointsRequest", name: "ListSharedEndpointsRequest")
    ListSharedEndpointsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ListSharedEndpointsResult", name: "ListSharedEndpointsResult")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3outposts#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#Message", name: "Message")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#NetworkInterfaceId", name: "NetworkInterfaceId")
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3outposts#NetworkInterfaces", name: "NetworkInterfaces")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$"})
    Outpost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#Outpost", name: "Outpost")
    OutpostArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#OutpostArn", name: "OutpostArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):outposts:[a-z\\-0-9]*:[0-9]{12}:outpost/(op-[a-f0-9]{17}|ec2)$"})
    OutpostId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#OutpostId", name: "OutpostId", traits: {"smithy.api#pattern" => "^(op-[a-f0-9]{17}|\\d{12}|ec2)$"})
    OutpostOfflineException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#OutpostOfflineException", name: "OutpostOfflineException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Outposts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3outposts#Outposts", name: "Outposts")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3OutpostArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#S3OutpostArn", name: "S3OutpostArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3-outposts:[a-z\\-0-9]*:[0-9]{12}:outpost/(op-[a-f0-9]{17}|\\d{12})/s3$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^sg-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#SubnetId", name: "SubnetId", traits: {"smithy.api#pattern" => "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3outposts#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3outposts#VpcId", name: "VpcId")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateEndpointRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "SecurityGroupId", traits: {"smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessType, name: "AccessType"))
    CreateEndpointRequest.add_member(:customer_owned_ipv4_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerOwnedIpv4Pool, name: "CustomerOwnedIpv4Pool"))
    CreateEndpointRequest.type = Types::CreateEndpointRequest
    CreateEndpointResult.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "EndpointArn"))
    CreateEndpointResult.type = Types::CreateEndpointResult
    DeleteEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId", traits: {"smithy.api#httpQuery" => "endpointId", "smithy.api#required" => {}}))
    DeleteEndpointRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#httpQuery" => "outpostId", "smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    Endpoint.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "EndpointArn"))
    Endpoint.add_member(:outposts_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostsId"))
    Endpoint.add_member(:cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrBlock, name: "CidrBlock"))
    Endpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStatus, name: "Status"))
    Endpoint.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    Endpoint.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "NetworkInterfaces"))
    Endpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    Endpoint.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId"))
    Endpoint.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "SecurityGroupId"))
    Endpoint.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessType, name: "AccessType"))
    Endpoint.add_member(:customer_owned_ipv4_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerOwnedIpv4Pool, name: "CustomerOwnedIpv4Pool"))
    Endpoint.add_member(:failed_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedReason, name: "FailedReason"))
    Endpoint.type = Types::Endpoint
    EndpointAccessType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "Private"}))
    EndpointAccessType.add_member(:customer_owned_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_OWNED_IP", traits: {"smithy.api#enumValue" => "CustomerOwnedIp"}))
    EndpointStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    EndpointStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "Available"}))
    EndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    EndpointStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "Create_Failed"}))
    EndpointStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "Delete_Failed"}))
    Endpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    FailedReason.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    FailedReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    FailedReason.type = Types::FailedReason
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListEndpointsRequest.type = Types::ListEndpointsRequest
    ListEndpointsResult.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints"))
    ListEndpointsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEndpointsResult.type = Types::ListEndpointsResult
    ListOutpostsWithS3Request.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOutpostsWithS3Request.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListOutpostsWithS3Request.type = Types::ListOutpostsWithS3Request
    ListOutpostsWithS3Result.add_member(:outposts, ::Smithy::Schema::Shapes::MemberShape.new(target: Outposts, name: "Outposts"))
    ListOutpostsWithS3Result.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutpostsWithS3Result.type = Types::ListOutpostsWithS3Result
    ListSharedEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSharedEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListSharedEndpointsRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#httpQuery" => "outpostId", "smithy.api#required" => {}}))
    ListSharedEndpointsRequest.type = Types::ListSharedEndpointsRequest
    ListSharedEndpointsResult.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints"))
    ListSharedEndpointsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSharedEndpointsResult.type = Types::ListSharedEndpointsResult
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member"))
    Outpost.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    Outpost.add_member(:s3_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutpostArn, name: "S3OutpostArn"))
    Outpost.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId"))
    Outpost.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId"))
    Outpost.add_member(:capacity_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityInBytes, name: "CapacityInBytes", traits: {"smithy.api#default" => 0}))
    Outpost.type = Types::Outpost
    OutpostOfflineException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OutpostOfflineException.type = Types::OutpostOfflineException
    Outposts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Outpost, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    S3Outposts = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3outposts#S3Outposts"
      service.name = "S3Outposts"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Outposts", "arnNamespace" => "s3-outposts", "cloudFormationName" => "S3Outposts", "cloudTrailEventSource" => "s3outposts.amazonaws.com", "endpointPrefix" => "s3-outposts"}, "aws.auth#sigv4" => {"name" => "s3-outposts"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon S3 on Outposts"}
      service.add_operation(:create_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = CreateEndpointRequest
        operation.output = CreateEndpointResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << OutpostOfflineException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/S3Outposts/CreateEndpoint", "code" => 200}}
      end)
      service.add_operation(:delete_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = DeleteEndpointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OutpostOfflineException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/S3Outposts/DeleteEndpoint", "code" => 200}}
      end)
      service.add_operation(:list_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#ListEndpoints"
        operation.name = "ListEndpoints"
        operation.input = ListEndpointsRequest
        operation.output = ListEndpointsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/S3Outposts/ListEndpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListEndpoints.new
      end)
      service.add_operation(:list_outposts_with_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#ListOutpostsWithS3"
        operation.name = "ListOutpostsWithS3"
        operation.input = ListOutpostsWithS3Request
        operation.output = ListOutpostsWithS3Result
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/S3Outposts/ListOutpostsWithS3", "code" => 200}}
        operation[:paginator] = Paginators::ListOutpostsWithS3.new
      end)
      service.add_operation(:list_shared_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3outposts#ListSharedEndpoints"
        operation.name = "ListSharedEndpoints"
        operation.input = ListSharedEndpointsRequest
        operation.output = ListSharedEndpointsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/S3Outposts/ListSharedEndpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListSharedEndpoints.new
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
