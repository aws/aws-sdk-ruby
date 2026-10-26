# frozen_string_literal: true

# This is generated code!

module Aws::Interconnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptConnectionProposalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#AcceptConnectionProposalRequest", name: "AcceptConnectionProposalRequest")
    AcceptConnectionProposalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#AcceptConnectionProposalResponse", name: "AcceptConnectionProposalResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#ActivationKey", name: "ActivationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 59, "max" => 150}, "smithy.api#pattern" => "^arn:aws[a-z-]*:interconnect:[^:]+:[0-9]{12}:connection/(mcc|lmcc)-[a-z0-9]{8}$"})
    AttachPoint = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.interconnect#AttachPoint", name: "AttachPoint")
    AttachPointDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#AttachPointDescriptor", name: "AttachPointDescriptor")
    AttachPointDescriptorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.interconnect#AttachPointDescriptorList", name: "AttachPointDescriptorList")
    AttachPointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.interconnect#AttachPointType", name: "AttachPointType")
    BandwidthList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.interconnect#BandwidthList", name: "BandwidthList")
    Bandwidths = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#Bandwidths", name: "Bandwidths")
    BillingTier = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.interconnect#BillingTier", name: "BillingTier", traits: {"smithy.api#range" => {"min" => 0, "max" => 8}})
    CloudServiceProvider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#CloudServiceProvider", name: "CloudServiceProvider", traits: {"smithy.api#length" => {"max" => 32}})
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#Connection", name: "Connection")
    ConnectionBandwidth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#ConnectionBandwidth", name: "ConnectionBandwidth", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}, "smithy.api#pattern" => "^\\d+[MG]bps$"})
    ConnectionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#ConnectionDescription", name: "ConnectionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9_ ]+$"})
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#ConnectionId", name: "ConnectionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(mcc|lmcc)-[a-z0-9]{8}$"})
    ConnectionSharedId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#ConnectionSharedId", name: "ConnectionSharedId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    ConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.interconnect#ConnectionState", name: "ConnectionState")
    ConnectionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.interconnect#ConnectionSummariesList", name: "ConnectionSummariesList")
    ConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ConnectionSummary", name: "ConnectionSummary")
    CreateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#CreateConnectionRequest", name: "CreateConnectionRequest")
    CreateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#CreateConnectionResponse", name: "CreateConnectionResponse")
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    DeleteConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#DeleteConnectionResponse", name: "DeleteConnectionResponse")
    DescribeConnectionProposalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#DescribeConnectionProposalRequest", name: "DescribeConnectionProposalRequest")
    DescribeConnectionProposalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#DescribeConnectionProposalResponse", name: "DescribeConnectionProposalResponse")
    DirectConnectGatewayAttachPoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#DirectConnectGatewayAttachPoint", name: "DirectConnectGatewayAttachPoint", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#Environment", name: "Environment")
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#EnvironmentId", name: "EnvironmentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    EnvironmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.interconnect#EnvironmentList", name: "EnvironmentList")
    EnvironmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.interconnect#EnvironmentState", name: "EnvironmentState")
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#GetConnectionRequest", name: "GetConnectionRequest")
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#GetConnectionResponse", name: "GetConnectionResponse")
    GetEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#GetEnvironmentRequest", name: "GetEnvironmentRequest")
    GetEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#GetEnvironmentResponse", name: "GetEnvironmentResponse")
    InterconnectClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#InterconnectClientException", name: "InterconnectClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InterconnectServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#InterconnectServerException", name: "InterconnectServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InterconnectValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#InterconnectValidationException", name: "InterconnectValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastMileProvider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#LastMileProvider", name: "LastMileProvider", traits: {"smithy.api#length" => {"max" => 32}})
    ListAttachPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListAttachPointsRequest", name: "ListAttachPointsRequest")
    ListAttachPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListAttachPointsResponse", name: "ListAttachPointsResponse")
    ListConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListConnectionsRequest", name: "ListConnectionsRequest")
    ListConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListConnectionsResponse", name: "ListConnectionsResponse")
    ListEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListEnvironmentsRequest", name: "ListEnvironmentsRequest")
    ListEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListEnvironmentsResponse", name: "ListEnvironmentsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#Location", name: "Location", traits: {"smithy.api#length" => {"max" => 255}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.interconnect#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    OwnerAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#OwnerAccountId", name: "OwnerAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    ProductType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#ProductType", name: "ProductType", traits: {"smithy.api#length" => {"min" => 5, "max" => 32}})
    Provider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.interconnect#Provider", name: "Provider")
    RemoteAccountIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.interconnect#RemoteAccountIdentifier", name: "RemoteAccountIdentifier")
    RemoteAccountIdentifierType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.interconnect#RemoteAccountIdentifierType", name: "RemoteAccountIdentifierType")
    RemoteOwnerAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#RemoteOwnerAccount", name: "RemoteOwnerAccount", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9_@\\.]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.interconnect#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.interconnect#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.interconnect#ConnectionResource", "ids" => {"id" => "arn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.interconnect#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.interconnect#ConnectionResource", "ids" => {"id" => "arn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#UpdateConnectionRequest", name: "UpdateConnectionRequest")
    UpdateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.interconnect#UpdateConnectionResponse", name: "UpdateConnectionResponse")

    AcceptConnectionProposalRequest.add_member(:attach_point, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPoint, name: "attachPoint", traits: {"smithy.api#required" => {}}))
    AcceptConnectionProposalRequest.add_member(:activation_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationKey, name: "activationKey", traits: {"smithy.api#required" => {}}))
    AcceptConnectionProposalRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "description"))
    AcceptConnectionProposalRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    AcceptConnectionProposalRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AcceptConnectionProposalRequest.type = Types::AcceptConnectionProposalRequest
    AcceptConnectionProposalResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "connection"))
    AcceptConnectionProposalResponse.type = Types::AcceptConnectionProposalResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AttachPoint.add_member(:direct_connect_gateway, Types::AttachPoint::DirectConnectGateway, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectConnectGatewayAttachPoint, name: "directConnectGateway"))
    AttachPoint.add_member(:arn, Types::AttachPoint::Arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn"))
    AttachPoint.add_member(:unknown, Types::AttachPoint::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttachPoint.type = Types::AttachPoint
    AttachPointDescriptor.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPointType, name: "type", traits: {"smithy.api#required" => {}}))
    AttachPointDescriptor.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "identifier", traits: {"smithy.api#required" => {}}))
    AttachPointDescriptor.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    AttachPointDescriptor.type = Types::AttachPointDescriptor
    AttachPointDescriptorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPointDescriptor, name: "member"))
    AttachPointType.add_member(:direct_connect_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DirectConnectGateway", traits: {"smithy.api#enumValue" => "DirectConnectGateway"}))
    BandwidthList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBandwidth, name: "member"))
    Bandwidths.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthList, name: "available"))
    Bandwidths.add_member(:supported, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthList, name: "supported"))
    Bandwidths.type = Types::Bandwidths
    Connection.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "id", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "description", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBandwidth, name: "bandwidth", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:attach_point, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPoint, name: "attachPoint", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductType, name: "type", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "state", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:shared_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSharedId, name: "sharedId", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:billing_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingTier, name: "billingTier"))
    Connection.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerAccountId, name: "ownerAccount", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:activation_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationKey, name: "activationKey", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Connection.type = Types::Connection
    ConnectionState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    ConnectionState.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "requested"}))
    ConnectionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    ConnectionState.add_member(:down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWN", traits: {"smithy.api#enumValue" => "down"}))
    ConnectionState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "deleting"}))
    ConnectionState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "deleted"}))
    ConnectionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    ConnectionState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "updating"}))
    ConnectionSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSummary, name: "member"))
    ConnectionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "id", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "description", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBandwidth, name: "bandwidth", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:attach_point, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPoint, name: "attachPoint", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductType, name: "type", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "state", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:shared_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSharedId, name: "sharedId", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:billing_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingTier, name: "billingTier"))
    ConnectionSummary.type = Types::ConnectionSummary
    CreateConnectionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "description"))
    CreateConnectionRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBandwidth, name: "bandwidth", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:attach_point, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPoint, name: "attachPoint", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:remote_account, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAccountIdentifier, name: "remoteAccount"))
    CreateConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateConnectionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "connection"))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    DeleteConnectionRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteConnectionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "connection", traits: {"smithy.api#required" => {}}))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DescribeConnectionProposalRequest.add_member(:activation_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationKey, name: "activationKey", traits: {"smithy.api#required" => {}}))
    DescribeConnectionProposalRequest.type = Types::DescribeConnectionProposalRequest
    DescribeConnectionProposalResponse.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBandwidth, name: "bandwidth", traits: {"smithy.api#required" => {}}))
    DescribeConnectionProposalResponse.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    DescribeConnectionProposalResponse.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    DescribeConnectionProposalResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location", traits: {"smithy.api#required" => {}}))
    DescribeConnectionProposalResponse.type = Types::DescribeConnectionProposalResponse
    Environment.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    Environment.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location", traits: {"smithy.api#required" => {}}))
    Environment.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    Environment.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "state", traits: {"smithy.api#required" => {}}))
    Environment.add_member(:bandwidths, ::Smithy::Schema::Shapes::MemberShape.new(target: Bandwidths, name: "bandwidths", traits: {"smithy.api#required" => {}}))
    Environment.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductType, name: "type", traits: {"smithy.api#required" => {}}))
    Environment.add_member(:activation_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "activationPageUrl"))
    Environment.add_member(:remote_identifier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAccountIdentifierType, name: "remoteIdentifierType"))
    Environment.type = Types::Environment
    EnvironmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "member"))
    EnvironmentState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    EnvironmentState.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMITED", traits: {"smithy.api#enumValue" => "limited"}))
    EnvironmentState.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "unavailable"}))
    GetConnectionRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "connection"))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GetEnvironmentRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "id", traits: {"smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "environment", traits: {"smithy.api#required" => {}}))
    GetEnvironmentResponse.type = Types::GetEnvironmentResponse
    InterconnectClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InterconnectClientException.type = Types::InterconnectClientException
    InterconnectServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InterconnectServerException.type = Types::InterconnectServerException
    InterconnectValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InterconnectValidationException.type = Types::InterconnectValidationException
    ListAttachPointsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    ListAttachPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAttachPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAttachPointsRequest.type = Types::ListAttachPointsRequest
    ListAttachPointsResponse.add_member(:attach_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPointDescriptorList, name: "attachPoints", traits: {"smithy.api#required" => {}}))
    ListAttachPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAttachPointsResponse.type = Types::ListAttachPointsResponse
    ListConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListConnectionsRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "state"))
    ListConnectionsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId"))
    ListConnectionsRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider"))
    ListConnectionsRequest.add_member(:attach_point, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachPoint, name: "attachPoint"))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSummariesList, name: "connections"))
    ListConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListEnvironmentsRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider"))
    ListEnvironmentsRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResponse.add_member(:environments, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentList, name: "environments", traits: {"smithy.api#required" => {}}))
    ListEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListEnvironmentsResponse.type = Types::ListEnvironmentsResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Provider.add_member(:cloud_service_provider, Types::Provider::CloudServiceProvider, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudServiceProvider, name: "cloudServiceProvider"))
    Provider.add_member(:last_mile_provider, Types::Provider::LastMileProvider, ::Smithy::Schema::Shapes::MemberShape.new(target: LastMileProvider, name: "lastMileProvider"))
    Provider.add_member(:unknown, Types::Provider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Provider.type = Types::Provider
    RemoteAccountIdentifier.add_member(:identifier, Types::RemoteAccountIdentifier::Identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteOwnerAccount, name: "identifier"))
    RemoteAccountIdentifier.add_member(:unknown, Types::RemoteAccountIdentifier::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RemoteAccountIdentifier.type = Types::RemoteAccountIdentifier
    RemoteAccountIdentifierType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "account"}))
    RemoteAccountIdentifierType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "email"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectionRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateConnectionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDescription, name: "description"))
    UpdateConnectionRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionBandwidth, name: "bandwidth"))
    UpdateConnectionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "connection"))
    UpdateConnectionResponse.type = Types::UpdateConnectionResponse

    Interconnect = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.interconnect#Interconnect"
      service.name = "Interconnect"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Interconnect", "arnNamespace" => "interconnect"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "interconnect"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Interconnect", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://interconnect-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://interconnect.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:accept_connection_proposal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#AcceptConnectionProposal"
        operation.name = "AcceptConnectionProposal"
        operation.input = AcceptConnectionProposalRequest
        operation.output = AcceptConnectionProposalResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"createsResources" => ["connection"], "documentation" => "Grants permission to accept a connection proposal generated elsewhere"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = CreateConnectionRequest
        operation.output = CreateConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a connection"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionRequest
        operation.output = DeleteConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"required" => {"connection" => {}}}, "documentation" => "Grants permission to delete an existing connection"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_connection_proposal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#DescribeConnectionProposal"
        operation.name = "DescribeConnectionProposal"
        operation.input = DescribeConnectionProposalRequest
        operation.output = DescribeConnectionProposalResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe a connection proposal"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#GetConnection"
        operation.name = "GetConnection"
        operation.input = GetConnectionRequest
        operation.output = GetConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"required" => {"connection" => {}}}, "documentation" => "Grants permission to describe a connection"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = GetEnvironmentRequest
        operation.output = GetEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe an environment"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEnvironmentFailure", "params" => {"id" => "mce-nonexistent"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"useDualstack" => true}}]}
      end)
      service.add_operation(:list_attach_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#ListAttachPoints"
        operation.name = "ListAttachPoints"
        operation.input = ListAttachPointsRequest
        operation.output = ListAttachPointsResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list available attach points"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttachPoints.new
      end)
      service.add_operation(:list_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#ListConnections"
        operation.name = "ListConnections"
        operation.input = ListConnectionsRequest
        operation.output = ListConnectionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list connections"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ListEnvironmentsRequest
        operation.output = ListEnvironmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list available environments"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEnvironmentSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"useDualstack" => true}}]}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags on a resource"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to apply tags to a resource"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource"}}
      end)
      service.add_operation(:update_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.interconnect#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = UpdateConnectionRequest
        operation.output = UpdateConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InterconnectClientException
        operation.errors << InterconnectServerException
        operation.errors << InterconnectValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"required" => {"connection" => {}}}, "documentation" => "Grants permission to update an existing connection"}, "smithy.api#idempotent" => {}}
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
