# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Interconnect
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptConnectionProposalRequest = Shapes::StructureShape.new(name: 'AcceptConnectionProposalRequest')
    AcceptConnectionProposalResponse = Shapes::StructureShape.new(name: 'AcceptConnectionProposalResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivationKey = Shapes::StringShape.new(name: 'ActivationKey')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AttachPoint = Shapes::UnionShape.new(name: 'AttachPoint')
    AttachPointDescriptor = Shapes::StructureShape.new(name: 'AttachPointDescriptor')
    AttachPointDescriptorList = Shapes::ListShape.new(name: 'AttachPointDescriptorList')
    AttachPointType = Shapes::StringShape.new(name: 'AttachPointType')
    BandwidthList = Shapes::ListShape.new(name: 'BandwidthList')
    Bandwidths = Shapes::StructureShape.new(name: 'Bandwidths')
    BillingTier = Shapes::IntegerShape.new(name: 'BillingTier')
    CloudServiceProvider = Shapes::StringShape.new(name: 'CloudServiceProvider')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionBandwidth = Shapes::StringShape.new(name: 'ConnectionBandwidth')
    ConnectionDescription = Shapes::StringShape.new(name: 'ConnectionDescription')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionSharedId = Shapes::StringShape.new(name: 'ConnectionSharedId')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    ConnectionSummariesList = Shapes::ListShape.new(name: 'ConnectionSummariesList')
    ConnectionSummary = Shapes::StructureShape.new(name: 'ConnectionSummary')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DescribeConnectionProposalRequest = Shapes::StructureShape.new(name: 'DescribeConnectionProposalRequest')
    DescribeConnectionProposalResponse = Shapes::StructureShape.new(name: 'DescribeConnectionProposalResponse')
    DirectConnectGatewayAttachPoint = Shapes::StringShape.new(name: 'DirectConnectGatewayAttachPoint')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentState = Shapes::StringShape.new(name: 'EnvironmentState')
    GetConnectionRequest = Shapes::StructureShape.new(name: 'GetConnectionRequest')
    GetConnectionResponse = Shapes::StructureShape.new(name: 'GetConnectionResponse')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    InterconnectClientException = Shapes::StructureShape.new(name: 'InterconnectClientException')
    InterconnectServerException = Shapes::StructureShape.new(name: 'InterconnectServerException')
    InterconnectValidationException = Shapes::StructureShape.new(name: 'InterconnectValidationException')
    LastMileProvider = Shapes::StringShape.new(name: 'LastMileProvider')
    ListAttachPointsRequest = Shapes::StructureShape.new(name: 'ListAttachPointsRequest')
    ListAttachPointsResponse = Shapes::StructureShape.new(name: 'ListAttachPointsResponse')
    ListConnectionsRequest = Shapes::StructureShape.new(name: 'ListConnectionsRequest')
    ListConnectionsResponse = Shapes::StructureShape.new(name: 'ListConnectionsResponse')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Location = Shapes::StringShape.new(name: 'Location')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OwnerAccountId = Shapes::StringShape.new(name: 'OwnerAccountId')
    ProductType = Shapes::StringShape.new(name: 'ProductType')
    Provider = Shapes::UnionShape.new(name: 'Provider')
    RemoteAccountIdentifier = Shapes::UnionShape.new(name: 'RemoteAccountIdentifier')
    RemoteAccountIdentifierType = Shapes::StringShape.new(name: 'RemoteAccountIdentifierType')
    RemoteOwnerAccount = Shapes::StringShape.new(name: 'RemoteOwnerAccount')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')

    AcceptConnectionProposalRequest.add_member(:attach_point, Shapes::ShapeRef.new(shape: AttachPoint, required: true, location_name: "attachPoint"))
    AcceptConnectionProposalRequest.add_member(:activation_key, Shapes::ShapeRef.new(shape: ActivationKey, required: true, location_name: "activationKey"))
    AcceptConnectionProposalRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: "description"))
    AcceptConnectionProposalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AcceptConnectionProposalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AcceptConnectionProposalRequest.struct_class = Types::AcceptConnectionProposalRequest

    AcceptConnectionProposalResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "connection"))
    AcceptConnectionProposalResponse.struct_class = Types::AcceptConnectionProposalResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttachPoint.add_member(:direct_connect_gateway, Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachPoint, location_name: "directConnectGateway"))
    AttachPoint.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    AttachPoint.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AttachPoint.add_member_subclass(:direct_connect_gateway, Types::AttachPoint::DirectConnectGateway)
    AttachPoint.add_member_subclass(:arn, Types::AttachPoint::Arn)
    AttachPoint.add_member_subclass(:unknown, Types::AttachPoint::Unknown)
    AttachPoint.struct_class = Types::AttachPoint

    AttachPointDescriptor.add_member(:type, Shapes::ShapeRef.new(shape: AttachPointType, required: true, location_name: "type"))
    AttachPointDescriptor.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identifier"))
    AttachPointDescriptor.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AttachPointDescriptor.struct_class = Types::AttachPointDescriptor

    AttachPointDescriptorList.member = Shapes::ShapeRef.new(shape: AttachPointDescriptor)

    BandwidthList.member = Shapes::ShapeRef.new(shape: ConnectionBandwidth)

    Bandwidths.add_member(:available, Shapes::ShapeRef.new(shape: BandwidthList, location_name: "available"))
    Bandwidths.add_member(:supported, Shapes::ShapeRef.new(shape: BandwidthList, location_name: "supported"))
    Bandwidths.struct_class = Types::Bandwidths

    Connection.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "id"))
    Connection.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
    Connection.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, required: true, location_name: "description"))
    Connection.add_member(:bandwidth, Shapes::ShapeRef.new(shape: ConnectionBandwidth, required: true, location_name: "bandwidth"))
    Connection.add_member(:attach_point, Shapes::ShapeRef.new(shape: AttachPoint, required: true, location_name: "attachPoint"))
    Connection.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    Connection.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    Connection.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    Connection.add_member(:type, Shapes::ShapeRef.new(shape: ProductType, required: true, location_name: "type"))
    Connection.add_member(:state, Shapes::ShapeRef.new(shape: ConnectionState, required: true, location_name: "state"))
    Connection.add_member(:shared_id, Shapes::ShapeRef.new(shape: ConnectionSharedId, required: true, location_name: "sharedId"))
    Connection.add_member(:billing_tier, Shapes::ShapeRef.new(shape: BillingTier, location_name: "billingTier"))
    Connection.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccountId, required: true, location_name: "ownerAccount"))
    Connection.add_member(:activation_key, Shapes::ShapeRef.new(shape: ActivationKey, required: true, location_name: "activationKey"))
    Connection.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Connection.struct_class = Types::Connection

    ConnectionSummariesList.member = Shapes::ShapeRef.new(shape: ConnectionSummary)

    ConnectionSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "id"))
    ConnectionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
    ConnectionSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, required: true, location_name: "description"))
    ConnectionSummary.add_member(:bandwidth, Shapes::ShapeRef.new(shape: ConnectionBandwidth, required: true, location_name: "bandwidth"))
    ConnectionSummary.add_member(:attach_point, Shapes::ShapeRef.new(shape: AttachPoint, required: true, location_name: "attachPoint"))
    ConnectionSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    ConnectionSummary.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    ConnectionSummary.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    ConnectionSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProductType, required: true, location_name: "type"))
    ConnectionSummary.add_member(:state, Shapes::ShapeRef.new(shape: ConnectionState, required: true, location_name: "state"))
    ConnectionSummary.add_member(:shared_id, Shapes::ShapeRef.new(shape: ConnectionSharedId, required: true, location_name: "sharedId"))
    ConnectionSummary.add_member(:billing_tier, Shapes::ShapeRef.new(shape: BillingTier, location_name: "billingTier"))
    ConnectionSummary.struct_class = Types::ConnectionSummary

    CreateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: "description"))
    CreateConnectionRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: ConnectionBandwidth, required: true, location_name: "bandwidth"))
    CreateConnectionRequest.add_member(:attach_point, Shapes::ShapeRef.new(shape: AttachPoint, required: true, location_name: "attachPoint"))
    CreateConnectionRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateConnectionRequest.add_member(:remote_account, Shapes::ShapeRef.new(shape: RemoteAccountIdentifier, location_name: "remoteAccount"))
    CreateConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConnectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "connection"))
    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    DeleteConnectionRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "identifier"))
    DeleteConnectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, required: true, location_name: "connection"))
    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DescribeConnectionProposalRequest.add_member(:activation_key, Shapes::ShapeRef.new(shape: ActivationKey, required: true, location_name: "activationKey"))
    DescribeConnectionProposalRequest.struct_class = Types::DescribeConnectionProposalRequest

    DescribeConnectionProposalResponse.add_member(:bandwidth, Shapes::ShapeRef.new(shape: ConnectionBandwidth, required: true, location_name: "bandwidth"))
    DescribeConnectionProposalResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DescribeConnectionProposalResponse.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    DescribeConnectionProposalResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    DescribeConnectionProposalResponse.struct_class = Types::DescribeConnectionProposalResponse

    Environment.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    Environment.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    Environment.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    Environment.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentState, required: true, location_name: "state"))
    Environment.add_member(:bandwidths, Shapes::ShapeRef.new(shape: Bandwidths, required: true, location_name: "bandwidths"))
    Environment.add_member(:type, Shapes::ShapeRef.new(shape: ProductType, required: true, location_name: "type"))
    Environment.add_member(:activation_page_url, Shapes::ShapeRef.new(shape: String, location_name: "activationPageUrl"))
    Environment.add_member(:remote_identifier_type, Shapes::ShapeRef.new(shape: RemoteAccountIdentifierType, location_name: "remoteIdentifierType"))
    Environment.struct_class = Types::Environment

    EnvironmentList.member = Shapes::ShapeRef.new(shape: Environment)

    GetConnectionRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "identifier"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "connection"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GetEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "id"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, required: true, location_name: "environment"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    InterconnectClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InterconnectClientException.struct_class = Types::InterconnectClientException

    InterconnectServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InterconnectServerException.struct_class = Types::InterconnectServerException

    InterconnectValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InterconnectValidationException.struct_class = Types::InterconnectValidationException

    ListAttachPointsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    ListAttachPointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAttachPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAttachPointsRequest.struct_class = Types::ListAttachPointsRequest

    ListAttachPointsResponse.add_member(:attach_points, Shapes::ShapeRef.new(shape: AttachPointDescriptorList, required: true, location_name: "attachPoints"))
    ListAttachPointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAttachPointsResponse.struct_class = Types::ListAttachPointsResponse

    ListConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "state"))
    ListConnectionsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    ListConnectionsRequest.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    ListConnectionsRequest.add_member(:attach_point, Shapes::ShapeRef.new(shape: AttachPoint, location_name: "attachPoint"))
    ListConnectionsRequest.struct_class = Types::ListConnectionsRequest

    ListConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionSummariesList, location_name: "connections"))
    ListConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectionsResponse.struct_class = Types::ListConnectionsResponse

    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentsRequest.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    ListEnvironmentsRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentList, required: true, location_name: "environments"))
    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Provider.add_member(:cloud_service_provider, Shapes::ShapeRef.new(shape: CloudServiceProvider, location_name: "cloudServiceProvider"))
    Provider.add_member(:last_mile_provider, Shapes::ShapeRef.new(shape: LastMileProvider, location_name: "lastMileProvider"))
    Provider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Provider.add_member_subclass(:cloud_service_provider, Types::Provider::CloudServiceProvider)
    Provider.add_member_subclass(:last_mile_provider, Types::Provider::LastMileProvider)
    Provider.add_member_subclass(:unknown, Types::Provider::Unknown)
    Provider.struct_class = Types::Provider

    RemoteAccountIdentifier.add_member(:identifier, Shapes::ShapeRef.new(shape: RemoteOwnerAccount, location_name: "identifier"))
    RemoteAccountIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RemoteAccountIdentifier.add_member_subclass(:identifier, Types::RemoteAccountIdentifier::Identifier)
    RemoteAccountIdentifier.add_member_subclass(:unknown, Types::RemoteAccountIdentifier::Unknown)
    RemoteAccountIdentifier.struct_class = Types::RemoteAccountIdentifier

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectionRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "identifier"))
    UpdateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: "description"))
    UpdateConnectionRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: ConnectionBandwidth, location_name: "bandwidth"))
    UpdateConnectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateConnectionRequest.struct_class = Types::UpdateConnectionRequest

    UpdateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "connection"))
    UpdateConnectionResponse.struct_class = Types::UpdateConnectionResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "interconnect",
        "jsonVersion" => "1.0",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor", "json"],
        "serviceFullName" => "Interconnect",
        "serviceId" => "Interconnect",
        "signatureVersion" => "v4",
        "signingName" => "interconnect",
        "targetPrefix" => "Interconnect",
        "uid" => "interconnect-2022-07-26",
      }

      api.add_operation(:accept_connection_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptConnectionProposal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptConnectionProposalRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptConnectionProposalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:describe_connection_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectionProposal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionProposalRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionProposalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:list_attach_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachPoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttachPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachPointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)

      api.add_operation(:update_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InterconnectServerException)
      end)
    end

  end
end
