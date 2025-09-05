# frozen_string_literal: true

# This is generated code!

module Aws::DirectConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ASN = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#ASN', name: 'ASN', traits: {"smithy.api#default" => 0})
    AcceptDirectConnectGatewayAssociationProposalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AcceptDirectConnectGatewayAssociationProposalRequest', name: 'AcceptDirectConnectGatewayAssociationProposalRequest')
    AcceptDirectConnectGatewayAssociationProposalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AcceptDirectConnectGatewayAssociationProposalResult', name: 'AcceptDirectConnectGatewayAssociationProposalResult')
    AddressFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#AddressFamily', name: 'AddressFamily')
    AgreementList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#AgreementList', name: 'AgreementList')
    AgreementName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#AgreementName', name: 'AgreementName', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AllocateConnectionOnInterconnectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocateConnectionOnInterconnectOutput', name: 'AllocateConnectionOnInterconnectOutput')
    AllocateConnectionOnInterconnectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocateConnectionOnInterconnectRequest', name: 'AllocateConnectionOnInterconnectRequest')
    AllocateHostedConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocateHostedConnectionOutput', name: 'AllocateHostedConnectionOutput')
    AllocateHostedConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocateHostedConnectionRequest', name: 'AllocateHostedConnectionRequest')
    AllocatePrivateVirtualInterfaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocatePrivateVirtualInterfaceOutput', name: 'AllocatePrivateVirtualInterfaceOutput')
    AllocatePrivateVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocatePrivateVirtualInterfaceRequest', name: 'AllocatePrivateVirtualInterfaceRequest')
    AllocatePublicVirtualInterfaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocatePublicVirtualInterfaceOutput', name: 'AllocatePublicVirtualInterfaceOutput')
    AllocatePublicVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocatePublicVirtualInterfaceRequest', name: 'AllocatePublicVirtualInterfaceRequest')
    AllocateTransitVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocateTransitVirtualInterfaceRequest', name: 'AllocateTransitVirtualInterfaceRequest')
    AllocateTransitVirtualInterfaceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AllocateTransitVirtualInterfaceResult', name: 'AllocateTransitVirtualInterfaceResult')
    AmazonAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#AmazonAddress', name: 'AmazonAddress')
    AssociateConnectionWithLagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateConnectionWithLagOutput', name: 'AssociateConnectionWithLagOutput')
    AssociateConnectionWithLagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateConnectionWithLagRequest', name: 'AssociateConnectionWithLagRequest')
    AssociateHostedConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateHostedConnectionOutput', name: 'AssociateHostedConnectionOutput')
    AssociateHostedConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateHostedConnectionRequest', name: 'AssociateHostedConnectionRequest')
    AssociateMacSecKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateMacSecKeyRequest', name: 'AssociateMacSecKeyRequest')
    AssociateMacSecKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateMacSecKeyResponse', name: 'AssociateMacSecKeyResponse')
    AssociateVirtualInterfaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateVirtualInterfaceOutput', name: 'AssociateVirtualInterfaceOutput')
    AssociateVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociateVirtualInterfaceRequest', name: 'AssociateVirtualInterfaceRequest')
    AssociatedCoreNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociatedCoreNetwork', name: 'AssociatedCoreNetwork')
    AssociatedGateway = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#AssociatedGateway', name: 'AssociatedGateway')
    AssociatedGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#AssociatedGatewayId', name: 'AssociatedGatewayId')
    AvailableMacSecPortSpeeds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#AvailableMacSecPortSpeeds', name: 'AvailableMacSecPortSpeeds')
    AvailablePortSpeeds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#AvailablePortSpeeds', name: 'AvailablePortSpeeds')
    AwsDevice = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#AwsDevice', name: 'AwsDevice', traits: {"smithy.api#deprecated" => {}})
    AwsDeviceV2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#AwsDeviceV2', name: 'AwsDeviceV2')
    AwsLogicalDeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#AwsLogicalDeviceId', name: 'AwsLogicalDeviceId')
    BGPAuthKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#BGPAuthKey', name: 'BGPAuthKey')
    BGPPeer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#BGPPeer', name: 'BGPPeer')
    BGPPeerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#BGPPeerId', name: 'BGPPeerId')
    BGPPeerIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#BGPPeerIdList', name: 'BGPPeerIdList')
    BGPPeerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#BGPPeerList', name: 'BGPPeerList')
    BGPPeerState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#BGPPeerState', name: 'BGPPeerState')
    BGPStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#BGPStatus', name: 'BGPStatus')
    Bandwidth = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Bandwidth', name: 'Bandwidth')
    BooleanFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#BooleanFlag', name: 'BooleanFlag', traits: {"smithy.api#default" => false})
    CIDR = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#CIDR', name: 'CIDR')
    Cak = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Cak', name: 'Cak')
    Ckn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Ckn', name: 'Ckn')
    ConfirmConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmConnectionRequest', name: 'ConfirmConnectionRequest')
    ConfirmConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmConnectionResponse', name: 'ConfirmConnectionResponse')
    ConfirmCustomerAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmCustomerAgreementRequest', name: 'ConfirmCustomerAgreementRequest')
    ConfirmCustomerAgreementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmCustomerAgreementResponse', name: 'ConfirmCustomerAgreementResponse')
    ConfirmPrivateVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmPrivateVirtualInterfaceRequest', name: 'ConfirmPrivateVirtualInterfaceRequest')
    ConfirmPrivateVirtualInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmPrivateVirtualInterfaceResponse', name: 'ConfirmPrivateVirtualInterfaceResponse')
    ConfirmPublicVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmPublicVirtualInterfaceRequest', name: 'ConfirmPublicVirtualInterfaceRequest')
    ConfirmPublicVirtualInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmPublicVirtualInterfaceResponse', name: 'ConfirmPublicVirtualInterfaceResponse')
    ConfirmTransitVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmTransitVirtualInterfaceRequest', name: 'ConfirmTransitVirtualInterfaceRequest')
    ConfirmTransitVirtualInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ConfirmTransitVirtualInterfaceResponse', name: 'ConfirmTransitVirtualInterfaceResponse')
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#Connection', name: 'Connection')
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#ConnectionId', name: 'ConnectionId')
    ConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#ConnectionList', name: 'ConnectionList')
    ConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#ConnectionName', name: 'ConnectionName')
    ConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#ConnectionState', name: 'ConnectionState')
    CoreNetworkAttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#CoreNetworkAttachmentId', name: 'CoreNetworkAttachmentId', traits: {"smithy.api#length" => {"min" => 12, "max" => 28}, "smithy.api#pattern" => "^attachment-([0-9a-f]{1,17})$"})
    CoreNetworkIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#CoreNetworkIdentifier', name: 'CoreNetworkIdentifier', traits: {"smithy.api#length" => {"min" => 14, "max" => 30}, "smithy.api#pattern" => "^core-network-([0-9a-f]{1,17})$"})
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#Count', name: 'Count', traits: {"smithy.api#default" => 0})
    CreateBGPPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateBGPPeerRequest', name: 'CreateBGPPeerRequest')
    CreateBGPPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateBGPPeerResponse', name: 'CreateBGPPeerResponse')
    CreateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateConnectionOutput', name: 'CreateConnectionOutput')
    CreateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateConnectionRequest', name: 'CreateConnectionRequest')
    CreateDirectConnectGatewayAssociationProposalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateDirectConnectGatewayAssociationProposalRequest', name: 'CreateDirectConnectGatewayAssociationProposalRequest')
    CreateDirectConnectGatewayAssociationProposalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateDirectConnectGatewayAssociationProposalResult', name: 'CreateDirectConnectGatewayAssociationProposalResult')
    CreateDirectConnectGatewayAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateDirectConnectGatewayAssociationRequest', name: 'CreateDirectConnectGatewayAssociationRequest')
    CreateDirectConnectGatewayAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateDirectConnectGatewayAssociationResult', name: 'CreateDirectConnectGatewayAssociationResult')
    CreateDirectConnectGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateDirectConnectGatewayRequest', name: 'CreateDirectConnectGatewayRequest')
    CreateDirectConnectGatewayResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateDirectConnectGatewayResult', name: 'CreateDirectConnectGatewayResult')
    CreateInterconnectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateInterconnectOutput', name: 'CreateInterconnectOutput')
    CreateInterconnectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateInterconnectRequest', name: 'CreateInterconnectRequest')
    CreateLagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateLagOutput', name: 'CreateLagOutput')
    CreateLagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateLagRequest', name: 'CreateLagRequest')
    CreatePrivateVirtualInterfaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreatePrivateVirtualInterfaceOutput', name: 'CreatePrivateVirtualInterfaceOutput')
    CreatePrivateVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreatePrivateVirtualInterfaceRequest', name: 'CreatePrivateVirtualInterfaceRequest')
    CreatePublicVirtualInterfaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreatePublicVirtualInterfaceOutput', name: 'CreatePublicVirtualInterfaceOutput')
    CreatePublicVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreatePublicVirtualInterfaceRequest', name: 'CreatePublicVirtualInterfaceRequest')
    CreateTransitVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateTransitVirtualInterfaceRequest', name: 'CreateTransitVirtualInterfaceRequest')
    CreateTransitVirtualInterfaceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CreateTransitVirtualInterfaceResult', name: 'CreateTransitVirtualInterfaceResult')
    CustomerAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#CustomerAddress', name: 'CustomerAddress')
    CustomerAgreement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#CustomerAgreement', name: 'CustomerAgreement')
    DeleteBGPPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteBGPPeerRequest', name: 'DeleteBGPPeerRequest')
    DeleteBGPPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteBGPPeerResponse', name: 'DeleteBGPPeerResponse')
    DeleteConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteConnectionOutput', name: 'DeleteConnectionOutput')
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    DeleteDirectConnectGatewayAssociationProposalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteDirectConnectGatewayAssociationProposalRequest', name: 'DeleteDirectConnectGatewayAssociationProposalRequest')
    DeleteDirectConnectGatewayAssociationProposalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteDirectConnectGatewayAssociationProposalResult', name: 'DeleteDirectConnectGatewayAssociationProposalResult')
    DeleteDirectConnectGatewayAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteDirectConnectGatewayAssociationRequest', name: 'DeleteDirectConnectGatewayAssociationRequest')
    DeleteDirectConnectGatewayAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteDirectConnectGatewayAssociationResult', name: 'DeleteDirectConnectGatewayAssociationResult')
    DeleteDirectConnectGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteDirectConnectGatewayRequest', name: 'DeleteDirectConnectGatewayRequest')
    DeleteDirectConnectGatewayResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteDirectConnectGatewayResult', name: 'DeleteDirectConnectGatewayResult')
    DeleteInterconnectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteInterconnectRequest', name: 'DeleteInterconnectRequest')
    DeleteInterconnectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteInterconnectResponse', name: 'DeleteInterconnectResponse')
    DeleteLagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteLagOutput', name: 'DeleteLagOutput')
    DeleteLagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteLagRequest', name: 'DeleteLagRequest')
    DeleteVirtualInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteVirtualInterfaceRequest', name: 'DeleteVirtualInterfaceRequest')
    DeleteVirtualInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DeleteVirtualInterfaceResponse', name: 'DeleteVirtualInterfaceResponse')
    DescribeConnectionLoaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeConnectionLoaRequest', name: 'DescribeConnectionLoaRequest')
    DescribeConnectionLoaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeConnectionLoaResponse', name: 'DescribeConnectionLoaResponse')
    DescribeConnectionsOnInterconnectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeConnectionsOnInterconnectOutput', name: 'DescribeConnectionsOnInterconnectOutput')
    DescribeConnectionsOnInterconnectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeConnectionsOnInterconnectRequest', name: 'DescribeConnectionsOnInterconnectRequest')
    DescribeConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeConnectionsOutput', name: 'DescribeConnectionsOutput')
    DescribeConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeConnectionsRequest', name: 'DescribeConnectionsRequest')
    DescribeCustomerMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeCustomerMetadataResponse', name: 'DescribeCustomerMetadataResponse')
    DescribeDirectConnectGatewayAssociationProposalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewayAssociationProposalsRequest', name: 'DescribeDirectConnectGatewayAssociationProposalsRequest')
    DescribeDirectConnectGatewayAssociationProposalsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewayAssociationProposalsResult', name: 'DescribeDirectConnectGatewayAssociationProposalsResult')
    DescribeDirectConnectGatewayAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewayAssociationsRequest', name: 'DescribeDirectConnectGatewayAssociationsRequest')
    DescribeDirectConnectGatewayAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewayAssociationsResult', name: 'DescribeDirectConnectGatewayAssociationsResult')
    DescribeDirectConnectGatewayAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewayAttachmentsRequest', name: 'DescribeDirectConnectGatewayAttachmentsRequest')
    DescribeDirectConnectGatewayAttachmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewayAttachmentsResult', name: 'DescribeDirectConnectGatewayAttachmentsResult')
    DescribeDirectConnectGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewaysRequest', name: 'DescribeDirectConnectGatewaysRequest')
    DescribeDirectConnectGatewaysResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeDirectConnectGatewaysResult', name: 'DescribeDirectConnectGatewaysResult')
    DescribeHostedConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeHostedConnectionsOutput', name: 'DescribeHostedConnectionsOutput')
    DescribeHostedConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeHostedConnectionsRequest', name: 'DescribeHostedConnectionsRequest')
    DescribeInterconnectLoaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeInterconnectLoaRequest', name: 'DescribeInterconnectLoaRequest')
    DescribeInterconnectLoaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeInterconnectLoaResponse', name: 'DescribeInterconnectLoaResponse')
    DescribeInterconnectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeInterconnectsOutput', name: 'DescribeInterconnectsOutput')
    DescribeInterconnectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeInterconnectsRequest', name: 'DescribeInterconnectsRequest')
    DescribeLagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeLagsOutput', name: 'DescribeLagsOutput')
    DescribeLagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeLagsRequest', name: 'DescribeLagsRequest')
    DescribeLoaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeLoaOutput', name: 'DescribeLoaOutput')
    DescribeLoaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeLoaRequest', name: 'DescribeLoaRequest')
    DescribeLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeLocationsOutput', name: 'DescribeLocationsOutput')
    DescribeRouterConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeRouterConfigurationRequest', name: 'DescribeRouterConfigurationRequest')
    DescribeRouterConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeRouterConfigurationResponse', name: 'DescribeRouterConfigurationResponse')
    DescribeTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeTagsRequest', name: 'DescribeTagsRequest')
    DescribeTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeTagsResponse', name: 'DescribeTagsResponse')
    DescribeVirtualGatewaysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeVirtualGatewaysOutput', name: 'DescribeVirtualGatewaysOutput')
    DescribeVirtualInterfacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeVirtualInterfacesOutput', name: 'DescribeVirtualInterfacesOutput')
    DescribeVirtualInterfacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DescribeVirtualInterfacesRequest', name: 'DescribeVirtualInterfacesRequest')
    DirectConnectClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DirectConnectClientException', name: 'DirectConnectClientException', traits: {"smithy.api#error" => "client"})
    DirectConnectGateway = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DirectConnectGateway', name: 'DirectConnectGateway')
    DirectConnectGatewayAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociation', name: 'DirectConnectGatewayAssociation')
    DirectConnectGatewayAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationId', name: 'DirectConnectGatewayAssociationId')
    DirectConnectGatewayAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationList', name: 'DirectConnectGatewayAssociationList')
    DirectConnectGatewayAssociationProposal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationProposal', name: 'DirectConnectGatewayAssociationProposal')
    DirectConnectGatewayAssociationProposalId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationProposalId', name: 'DirectConnectGatewayAssociationProposalId')
    DirectConnectGatewayAssociationProposalList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationProposalList', name: 'DirectConnectGatewayAssociationProposalList')
    DirectConnectGatewayAssociationProposalState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationProposalState', name: 'DirectConnectGatewayAssociationProposalState')
    DirectConnectGatewayAssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAssociationState', name: 'DirectConnectGatewayAssociationState')
    DirectConnectGatewayAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAttachment', name: 'DirectConnectGatewayAttachment')
    DirectConnectGatewayAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAttachmentList', name: 'DirectConnectGatewayAttachmentList')
    DirectConnectGatewayAttachmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAttachmentState', name: 'DirectConnectGatewayAttachmentState')
    DirectConnectGatewayAttachmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayAttachmentType', name: 'DirectConnectGatewayAttachmentType')
    DirectConnectGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayId', name: 'DirectConnectGatewayId')
    DirectConnectGatewayList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayList', name: 'DirectConnectGatewayList')
    DirectConnectGatewayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayName', name: 'DirectConnectGatewayName')
    DirectConnectGatewayState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#DirectConnectGatewayState', name: 'DirectConnectGatewayState')
    DirectConnectServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DirectConnectServerException', name: 'DirectConnectServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DisassociateConnectionFromLagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DisassociateConnectionFromLagOutput', name: 'DisassociateConnectionFromLagOutput')
    DisassociateConnectionFromLagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DisassociateConnectionFromLagRequest', name: 'DisassociateConnectionFromLagRequest')
    DisassociateMacSecKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DisassociateMacSecKeyRequest', name: 'DisassociateMacSecKeyRequest')
    DisassociateMacSecKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DisassociateMacSecKeyResponse', name: 'DisassociateMacSecKeyResponse')
    DuplicateTagKeysException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#DuplicateTagKeysException', name: 'DuplicateTagKeysException', traits: {"smithy.api#error" => "client"})
    EnableSiteLink = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#EnableSiteLink', name: 'EnableSiteLink')
    EncryptionMode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#EncryptionMode', name: 'EncryptionMode')
    EndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directconnect#EndTime', name: 'EndTime')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#ErrorMessage', name: 'ErrorMessage')
    FailureTestHistoryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#FailureTestHistoryStatus', name: 'FailureTestHistoryStatus')
    GatewayIdToAssociate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#GatewayIdToAssociate', name: 'GatewayIdToAssociate')
    GatewayIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#GatewayIdentifier', name: 'GatewayIdentifier')
    GatewayType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#GatewayType', name: 'GatewayType')
    HasLogicalRedundancy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#HasLogicalRedundancy', name: 'HasLogicalRedundancy')
    Interconnect = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#Interconnect', name: 'Interconnect')
    InterconnectId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#InterconnectId', name: 'InterconnectId')
    InterconnectList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#InterconnectList', name: 'InterconnectList')
    InterconnectName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#InterconnectName', name: 'InterconnectName')
    InterconnectState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#InterconnectState', name: 'InterconnectState')
    JumboFrameCapable = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#JumboFrameCapable', name: 'JumboFrameCapable')
    Lag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#Lag', name: 'Lag')
    LagId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#LagId', name: 'LagId')
    LagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#LagList', name: 'LagList')
    LagName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#LagName', name: 'LagName')
    LagState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#LagState', name: 'LagState')
    ListVirtualInterfaceTestHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ListVirtualInterfaceTestHistoryRequest', name: 'ListVirtualInterfaceTestHistoryRequest')
    ListVirtualInterfaceTestHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ListVirtualInterfaceTestHistoryResponse', name: 'ListVirtualInterfaceTestHistoryResponse')
    Loa = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#Loa', name: 'Loa')
    LoaContent = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.directconnect#LoaContent', name: 'LoaContent')
    LoaContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#LoaContentType', name: 'LoaContentType')
    LoaIssueTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directconnect#LoaIssueTime', name: 'LoaIssueTime')
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#Location', name: 'Location')
    LocationCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#LocationCode', name: 'LocationCode')
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#LocationList', name: 'LocationList')
    LocationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#LocationName', name: 'LocationName')
    LongAsn = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#LongAsn', name: 'LongAsn')
    MTU = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#MTU', name: 'MTU')
    MacSecCapable = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#MacSecCapable', name: 'MacSecCapable')
    MacSecKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#MacSecKey', name: 'MacSecKey')
    MacSecKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#MacSecKeyList', name: 'MacSecKeyList')
    MaxResultSetSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#MaxResultSetSize', name: 'MaxResultSetSize')
    NewBGPPeer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewBGPPeer', name: 'NewBGPPeer')
    NewPrivateVirtualInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewPrivateVirtualInterface', name: 'NewPrivateVirtualInterface')
    NewPrivateVirtualInterfaceAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewPrivateVirtualInterfaceAllocation', name: 'NewPrivateVirtualInterfaceAllocation')
    NewPublicVirtualInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewPublicVirtualInterface', name: 'NewPublicVirtualInterface')
    NewPublicVirtualInterfaceAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewPublicVirtualInterfaceAllocation', name: 'NewPublicVirtualInterfaceAllocation')
    NewTransitVirtualInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewTransitVirtualInterface', name: 'NewTransitVirtualInterface')
    NewTransitVirtualInterfaceAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#NewTransitVirtualInterfaceAllocation', name: 'NewTransitVirtualInterfaceAllocation')
    NniPartnerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#NniPartnerType', name: 'NniPartnerType')
    OwnerAccount = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#OwnerAccount', name: 'OwnerAccount')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#PaginationToken', name: 'PaginationToken')
    PartnerInterconnectMacSecCapable = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#PartnerInterconnectMacSecCapable', name: 'PartnerInterconnectMacSecCapable')
    PartnerName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#PartnerName', name: 'PartnerName')
    Platform = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Platform', name: 'Platform')
    PortEncryptionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#PortEncryptionStatus', name: 'PortEncryptionStatus')
    PortSpeed = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#PortSpeed', name: 'PortSpeed')
    ProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#ProviderList', name: 'ProviderList')
    ProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#ProviderName', name: 'ProviderName')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Region', name: 'Region')
    RequestMACSec = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#RequestMACSec', name: 'RequestMACSec')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#ResourceArn', name: 'ResourceArn')
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#ResourceArnList', name: 'ResourceArnList')
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#ResourceTag', name: 'ResourceTag')
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#ResourceTagList', name: 'ResourceTagList')
    RouteFilterPrefix = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#RouteFilterPrefix', name: 'RouteFilterPrefix')
    RouteFilterPrefixList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#RouteFilterPrefixList', name: 'RouteFilterPrefixList')
    RouterConfig = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#RouterConfig', name: 'RouterConfig')
    RouterType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#RouterType', name: 'RouterType')
    RouterTypeIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#RouterTypeIdentifier', name: 'RouterTypeIdentifier')
    SecretARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#SecretARN', name: 'SecretARN')
    SiteLinkEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directconnect#SiteLinkEnabled', name: 'SiteLinkEnabled')
    Software = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Software', name: 'Software')
    StartBgpFailoverTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#StartBgpFailoverTestRequest', name: 'StartBgpFailoverTestRequest')
    StartBgpFailoverTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#StartBgpFailoverTestResponse', name: 'StartBgpFailoverTestResponse')
    StartOnDate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#StartOnDate', name: 'StartOnDate')
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directconnect#StartTime', name: 'StartTime')
    State = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#State', name: 'State')
    StateChangeError = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#StateChangeError', name: 'StateChangeError')
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Status', name: 'Status', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    StopBgpFailoverTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#StopBgpFailoverTestRequest', name: 'StopBgpFailoverTestRequest')
    StopBgpFailoverTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#StopBgpFailoverTestResponse', name: 'StopBgpFailoverTestResponse')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#TagKeyList', name: 'TagKeyList')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TestDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#TestDuration', name: 'TestDuration')
    TestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#TestId', name: 'TestId')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateConnectionOutput', name: 'UpdateConnectionOutput')
    UpdateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateConnectionRequest', name: 'UpdateConnectionRequest')
    UpdateDirectConnectGatewayAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateDirectConnectGatewayAssociationRequest', name: 'UpdateDirectConnectGatewayAssociationRequest')
    UpdateDirectConnectGatewayAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateDirectConnectGatewayAssociationResult', name: 'UpdateDirectConnectGatewayAssociationResult')
    UpdateDirectConnectGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateDirectConnectGatewayRequest', name: 'UpdateDirectConnectGatewayRequest')
    UpdateDirectConnectGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateDirectConnectGatewayResponse', name: 'UpdateDirectConnectGatewayResponse')
    UpdateLagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateLagOutput', name: 'UpdateLagOutput')
    UpdateLagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateLagRequest', name: 'UpdateLagRequest')
    UpdateVirtualInterfaceAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateVirtualInterfaceAttributesOutput', name: 'UpdateVirtualInterfaceAttributesOutput')
    UpdateVirtualInterfaceAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#UpdateVirtualInterfaceAttributesRequest', name: 'UpdateVirtualInterfaceAttributesRequest')
    VLAN = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directconnect#VLAN', name: 'VLAN', traits: {"smithy.api#default" => 0})
    Vendor = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#Vendor', name: 'Vendor')
    VirtualGateway = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#VirtualGateway', name: 'VirtualGateway')
    VirtualGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualGatewayId', name: 'VirtualGatewayId')
    VirtualGatewayList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#VirtualGatewayList', name: 'VirtualGatewayList')
    VirtualGatewayRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualGatewayRegion', name: 'VirtualGatewayRegion', traits: {"smithy.api#deprecated" => {}})
    VirtualGatewayState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualGatewayState', name: 'VirtualGatewayState')
    VirtualInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#VirtualInterface', name: 'VirtualInterface')
    VirtualInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceId', name: 'VirtualInterfaceId')
    VirtualInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceList', name: 'VirtualInterfaceList')
    VirtualInterfaceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceName', name: 'VirtualInterfaceName')
    VirtualInterfaceRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceRegion', name: 'VirtualInterfaceRegion')
    VirtualInterfaceState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceState', name: 'VirtualInterfaceState')
    VirtualInterfaceTestHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceTestHistory', name: 'VirtualInterfaceTestHistory')
    VirtualInterfaceTestHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceTestHistoryList', name: 'VirtualInterfaceTestHistoryList')
    VirtualInterfaceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#VirtualInterfaceType', name: 'VirtualInterfaceType')
    XsltTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#XsltTemplateName', name: 'XsltTemplateName')
    XsltTemplateNameForMacSec = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directconnect#XsltTemplateNameForMacSec', name: 'XsltTemplateNameForMacSec')

    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId', traits: {"smithy.api#required" => {}}))
    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:proposal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, location_name: 'proposalId', traits: {"smithy.api#required" => {}}))
    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:associated_gateway_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'associatedGatewayOwnerAccount', traits: {"smithy.api#required" => {}}))
    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:override_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'overrideAllowedPrefixesToDirectConnectGateway'))
    AcceptDirectConnectGatewayAssociationProposalRequest.type = Types::AcceptDirectConnectGatewayAssociationProposalRequest
    AcceptDirectConnectGatewayAssociationProposalResult.add_member(:direct_connect_gateway_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: 'directConnectGatewayAssociation'))
    AcceptDirectConnectGatewayAssociationProposalResult.type = Types::AcceptDirectConnectGatewayAssociationProposalResult
    AddressFamily.add_member(:i_pv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPv4', traits: {"smithy.api#enumValue" => "ipv4"}))
    AddressFamily.add_member(:i_pv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPv6', traits: {"smithy.api#enumValue" => "ipv6"}))
    AgreementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgreement)
    AllocateConnectionOnInterconnectOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AllocateConnectionOnInterconnectOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AllocateConnectionOnInterconnectOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    AllocateConnectionOnInterconnectOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    AllocateConnectionOnInterconnectOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AllocateConnectionOnInterconnectOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AllocateConnectionOnInterconnectOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    AllocateConnectionOnInterconnectOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AllocateConnectionOnInterconnectOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    AllocateConnectionOnInterconnectOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    AllocateConnectionOnInterconnectOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    AllocateConnectionOnInterconnectOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    AllocateConnectionOnInterconnectOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AllocateConnectionOnInterconnectOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AllocateConnectionOnInterconnectOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AllocateConnectionOnInterconnectOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    AllocateConnectionOnInterconnectOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AllocateConnectionOnInterconnectOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    AllocateConnectionOnInterconnectOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    AllocateConnectionOnInterconnectOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    AllocateConnectionOnInterconnectOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    AllocateConnectionOnInterconnectOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    AllocateConnectionOnInterconnectOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    AllocateConnectionOnInterconnectOutput.type = Types::AllocateConnectionOnInterconnectOutput
    AllocateConnectionOnInterconnectRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth', traits: {"smithy.api#required" => {}}))
    AllocateConnectionOnInterconnectRequest.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName', traits: {"smithy.api#required" => {}}))
    AllocateConnectionOnInterconnectRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#required" => {}}))
    AllocateConnectionOnInterconnectRequest.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId', traits: {"smithy.api#required" => {}}))
    AllocateConnectionOnInterconnectRequest.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AllocateConnectionOnInterconnectRequest.type = Types::AllocateConnectionOnInterconnectRequest
    AllocateHostedConnectionOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AllocateHostedConnectionOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AllocateHostedConnectionOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    AllocateHostedConnectionOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    AllocateHostedConnectionOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AllocateHostedConnectionOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AllocateHostedConnectionOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    AllocateHostedConnectionOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AllocateHostedConnectionOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    AllocateHostedConnectionOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    AllocateHostedConnectionOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    AllocateHostedConnectionOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    AllocateHostedConnectionOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AllocateHostedConnectionOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AllocateHostedConnectionOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AllocateHostedConnectionOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    AllocateHostedConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AllocateHostedConnectionOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    AllocateHostedConnectionOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    AllocateHostedConnectionOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    AllocateHostedConnectionOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    AllocateHostedConnectionOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    AllocateHostedConnectionOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    AllocateHostedConnectionOutput.type = Types::AllocateHostedConnectionOutput
    AllocateHostedConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AllocateHostedConnectionRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#required" => {}}))
    AllocateHostedConnectionRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth', traits: {"smithy.api#required" => {}}))
    AllocateHostedConnectionRequest.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName', traits: {"smithy.api#required" => {}}))
    AllocateHostedConnectionRequest.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AllocateHostedConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AllocateHostedConnectionRequest.type = Types::AllocateHostedConnectionRequest
    AllocatePrivateVirtualInterfaceOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AllocatePrivateVirtualInterfaceOutput.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    AllocatePrivateVirtualInterfaceOutput.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AllocatePrivateVirtualInterfaceOutput.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    AllocatePrivateVirtualInterfaceOutput.type = Types::AllocatePrivateVirtualInterfaceOutput
    AllocatePrivateVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AllocatePrivateVirtualInterfaceRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#required" => {}}))
    AllocatePrivateVirtualInterfaceRequest.add_member(:new_private_virtual_interface_allocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewPrivateVirtualInterfaceAllocation, location_name: 'newPrivateVirtualInterfaceAllocation', traits: {"smithy.api#required" => {}}))
    AllocatePrivateVirtualInterfaceRequest.type = Types::AllocatePrivateVirtualInterfaceRequest
    AllocatePublicVirtualInterfaceOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AllocatePublicVirtualInterfaceOutput.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    AllocatePublicVirtualInterfaceOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AllocatePublicVirtualInterfaceOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AllocatePublicVirtualInterfaceOutput.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    AllocatePublicVirtualInterfaceOutput.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    AllocatePublicVirtualInterfaceOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AllocatePublicVirtualInterfaceOutput.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    AllocatePublicVirtualInterfaceOutput.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    AllocatePublicVirtualInterfaceOutput.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    AllocatePublicVirtualInterfaceOutput.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    AllocatePublicVirtualInterfaceOutput.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    AllocatePublicVirtualInterfaceOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    AllocatePublicVirtualInterfaceOutput.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    AllocatePublicVirtualInterfaceOutput.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    AllocatePublicVirtualInterfaceOutput.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    AllocatePublicVirtualInterfaceOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AllocatePublicVirtualInterfaceOutput.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    AllocatePublicVirtualInterfaceOutput.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    AllocatePublicVirtualInterfaceOutput.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    AllocatePublicVirtualInterfaceOutput.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    AllocatePublicVirtualInterfaceOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AllocatePublicVirtualInterfaceOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AllocatePublicVirtualInterfaceOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AllocatePublicVirtualInterfaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AllocatePublicVirtualInterfaceOutput.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    AllocatePublicVirtualInterfaceOutput.type = Types::AllocatePublicVirtualInterfaceOutput
    AllocatePublicVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AllocatePublicVirtualInterfaceRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#required" => {}}))
    AllocatePublicVirtualInterfaceRequest.add_member(:new_public_virtual_interface_allocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewPublicVirtualInterfaceAllocation, location_name: 'newPublicVirtualInterfaceAllocation', traits: {"smithy.api#required" => {}}))
    AllocatePublicVirtualInterfaceRequest.type = Types::AllocatePublicVirtualInterfaceRequest
    AllocateTransitVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AllocateTransitVirtualInterfaceRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#required" => {}}))
    AllocateTransitVirtualInterfaceRequest.add_member(:new_transit_virtual_interface_allocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewTransitVirtualInterfaceAllocation, location_name: 'newTransitVirtualInterfaceAllocation', traits: {"smithy.api#required" => {}}))
    AllocateTransitVirtualInterfaceRequest.type = Types::AllocateTransitVirtualInterfaceRequest
    AllocateTransitVirtualInterfaceResult.add_member(:virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterface, location_name: 'virtualInterface'))
    AllocateTransitVirtualInterfaceResult.type = Types::AllocateTransitVirtualInterfaceResult
    AssociateConnectionWithLagOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AssociateConnectionWithLagOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AssociateConnectionWithLagOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    AssociateConnectionWithLagOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    AssociateConnectionWithLagOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AssociateConnectionWithLagOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AssociateConnectionWithLagOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    AssociateConnectionWithLagOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AssociateConnectionWithLagOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    AssociateConnectionWithLagOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    AssociateConnectionWithLagOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    AssociateConnectionWithLagOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    AssociateConnectionWithLagOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AssociateConnectionWithLagOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AssociateConnectionWithLagOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AssociateConnectionWithLagOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    AssociateConnectionWithLagOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AssociateConnectionWithLagOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    AssociateConnectionWithLagOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    AssociateConnectionWithLagOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    AssociateConnectionWithLagOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    AssociateConnectionWithLagOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    AssociateConnectionWithLagOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    AssociateConnectionWithLagOutput.type = Types::AssociateConnectionWithLagOutput
    AssociateConnectionWithLagRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AssociateConnectionWithLagRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId', traits: {"smithy.api#required" => {}}))
    AssociateConnectionWithLagRequest.type = Types::AssociateConnectionWithLagRequest
    AssociateHostedConnectionOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AssociateHostedConnectionOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AssociateHostedConnectionOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    AssociateHostedConnectionOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    AssociateHostedConnectionOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AssociateHostedConnectionOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AssociateHostedConnectionOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    AssociateHostedConnectionOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AssociateHostedConnectionOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    AssociateHostedConnectionOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    AssociateHostedConnectionOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    AssociateHostedConnectionOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    AssociateHostedConnectionOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AssociateHostedConnectionOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AssociateHostedConnectionOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AssociateHostedConnectionOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    AssociateHostedConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AssociateHostedConnectionOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    AssociateHostedConnectionOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    AssociateHostedConnectionOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    AssociateHostedConnectionOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    AssociateHostedConnectionOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    AssociateHostedConnectionOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    AssociateHostedConnectionOutput.type = Types::AssociateHostedConnectionOutput
    AssociateHostedConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AssociateHostedConnectionRequest.add_member(:parent_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'parentConnectionId', traits: {"smithy.api#required" => {}}))
    AssociateHostedConnectionRequest.type = Types::AssociateHostedConnectionRequest
    AssociateMacSecKeyRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AssociateMacSecKeyRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretARN, location_name: 'secretARN'))
    AssociateMacSecKeyRequest.add_member(:ckn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ckn, location_name: 'ckn'))
    AssociateMacSecKeyRequest.add_member(:cak, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cak, location_name: 'cak'))
    AssociateMacSecKeyRequest.type = Types::AssociateMacSecKeyRequest
    AssociateMacSecKeyResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AssociateMacSecKeyResponse.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    AssociateMacSecKeyResponse.type = Types::AssociateMacSecKeyResponse
    AssociateVirtualInterfaceOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AssociateVirtualInterfaceOutput.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    AssociateVirtualInterfaceOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    AssociateVirtualInterfaceOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    AssociateVirtualInterfaceOutput.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    AssociateVirtualInterfaceOutput.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    AssociateVirtualInterfaceOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    AssociateVirtualInterfaceOutput.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    AssociateVirtualInterfaceOutput.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    AssociateVirtualInterfaceOutput.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    AssociateVirtualInterfaceOutput.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    AssociateVirtualInterfaceOutput.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    AssociateVirtualInterfaceOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    AssociateVirtualInterfaceOutput.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    AssociateVirtualInterfaceOutput.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    AssociateVirtualInterfaceOutput.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    AssociateVirtualInterfaceOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    AssociateVirtualInterfaceOutput.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    AssociateVirtualInterfaceOutput.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    AssociateVirtualInterfaceOutput.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    AssociateVirtualInterfaceOutput.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    AssociateVirtualInterfaceOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AssociateVirtualInterfaceOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    AssociateVirtualInterfaceOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    AssociateVirtualInterfaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    AssociateVirtualInterfaceOutput.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    AssociateVirtualInterfaceOutput.type = Types::AssociateVirtualInterfaceOutput
    AssociateVirtualInterfaceRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    AssociateVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    AssociateVirtualInterfaceRequest.type = Types::AssociateVirtualInterfaceRequest
    AssociatedCoreNetwork.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkIdentifier, location_name: 'id'))
    AssociatedCoreNetwork.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AssociatedCoreNetwork.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkAttachmentId, location_name: 'attachmentId'))
    AssociatedCoreNetwork.type = Types::AssociatedCoreNetwork
    AssociatedGateway.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'id'))
    AssociatedGateway.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'type'))
    AssociatedGateway.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    AssociatedGateway.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    AssociatedGateway.type = Types::AssociatedGateway
    AvailableMacSecPortSpeeds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortSpeed)
    AvailablePortSpeeds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortSpeed)
    BGPPeer.add_member(:bgp_peer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerId, location_name: 'bgpPeerId'))
    BGPPeer.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    BGPPeer.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    BGPPeer.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    BGPPeer.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    BGPPeer.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    BGPPeer.add_member(:bgp_peer_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerState, location_name: 'bgpPeerState'))
    BGPPeer.add_member(:bgp_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPStatus, location_name: 'bgpStatus'))
    BGPPeer.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    BGPPeer.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    BGPPeer.type = Types::BGPPeer
    BGPPeerIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerId)
    BGPPeerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeer)
    BGPPeerState.add_member(:verifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Verifying', traits: {"smithy.api#enumValue" => "verifying"}))
    BGPPeerState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "pending"}))
    BGPPeerState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "available"}))
    BGPPeerState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    BGPPeerState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    BGPStatus.add_member(:up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Up', traits: {"smithy.api#enumValue" => "up"}))
    BGPStatus.add_member(:down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Down', traits: {"smithy.api#enumValue" => "down"}))
    BGPStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "unknown"}))
    ConfirmConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    ConfirmConnectionRequest.type = Types::ConfirmConnectionRequest
    ConfirmConnectionResponse.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    ConfirmConnectionResponse.type = Types::ConfirmConnectionResponse
    ConfirmCustomerAgreementRequest.add_member(:agreement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementName, location_name: 'agreementName'))
    ConfirmCustomerAgreementRequest.type = Types::ConfirmCustomerAgreementRequest
    ConfirmCustomerAgreementResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    ConfirmCustomerAgreementResponse.type = Types::ConfirmCustomerAgreementResponse
    ConfirmPrivateVirtualInterfaceRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    ConfirmPrivateVirtualInterfaceRequest.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    ConfirmPrivateVirtualInterfaceRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    ConfirmPrivateVirtualInterfaceRequest.type = Types::ConfirmPrivateVirtualInterfaceRequest
    ConfirmPrivateVirtualInterfaceResponse.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    ConfirmPrivateVirtualInterfaceResponse.type = Types::ConfirmPrivateVirtualInterfaceResponse
    ConfirmPublicVirtualInterfaceRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    ConfirmPublicVirtualInterfaceRequest.type = Types::ConfirmPublicVirtualInterfaceRequest
    ConfirmPublicVirtualInterfaceResponse.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    ConfirmPublicVirtualInterfaceResponse.type = Types::ConfirmPublicVirtualInterfaceResponse
    ConfirmTransitVirtualInterfaceRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    ConfirmTransitVirtualInterfaceRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId', traits: {"smithy.api#required" => {}}))
    ConfirmTransitVirtualInterfaceRequest.type = Types::ConfirmTransitVirtualInterfaceRequest
    ConfirmTransitVirtualInterfaceResponse.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    ConfirmTransitVirtualInterfaceResponse.type = Types::ConfirmTransitVirtualInterfaceResponse
    Connection.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    Connection.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    Connection.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    Connection.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    Connection.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    Connection.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    Connection.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    Connection.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    Connection.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    Connection.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    Connection.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    Connection.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    Connection.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    Connection.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    Connection.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    Connection.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    Connection.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    Connection.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    Connection.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    Connection.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    Connection.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    Connection.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    Connection.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    Connection.type = Types::Connection
    ConnectionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connection)
    ConnectionState.add_member(:ordering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ordering', traits: {"smithy.api#enumValue" => "ordering"}))
    ConnectionState.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'requested', traits: {"smithy.api#enumValue" => "requested"}))
    ConnectionState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    ConnectionState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "available"}))
    ConnectionState.add_member(:down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'down', traits: {"smithy.api#enumValue" => "down"}))
    ConnectionState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    ConnectionState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    ConnectionState.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rejected', traits: {"smithy.api#enumValue" => "rejected"}))
    ConnectionState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unknown', traits: {"smithy.api#enumValue" => "unknown"}))
    CreateBGPPeerRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    CreateBGPPeerRequest.add_member(:new_bgp_peer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewBGPPeer, location_name: 'newBGPPeer'))
    CreateBGPPeerRequest.type = Types::CreateBGPPeerRequest
    CreateBGPPeerResponse.add_member(:virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterface, location_name: 'virtualInterface'))
    CreateBGPPeerResponse.type = Types::CreateBGPPeerResponse
    CreateConnectionOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    CreateConnectionOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    CreateConnectionOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    CreateConnectionOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    CreateConnectionOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    CreateConnectionOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    CreateConnectionOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    CreateConnectionOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    CreateConnectionOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    CreateConnectionOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    CreateConnectionOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    CreateConnectionOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    CreateConnectionOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    CreateConnectionOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    CreateConnectionOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    CreateConnectionOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    CreateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateConnectionOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    CreateConnectionOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    CreateConnectionOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    CreateConnectionOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    CreateConnectionOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    CreateConnectionOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    CreateConnectionOutput.type = Types::CreateConnectionOutput
    CreateConnectionRequest.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location', traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth', traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName', traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    CreateConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateConnectionRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    CreateConnectionRequest.add_member(:request_mac_sec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMACSec, location_name: 'requestMACSec'))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId', traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:direct_connect_gateway_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'directConnectGatewayOwnerAccount', traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdToAssociate, location_name: 'gatewayId', traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:add_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'addAllowedPrefixesToDirectConnectGateway'))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:remove_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'removeAllowedPrefixesToDirectConnectGateway'))
    CreateDirectConnectGatewayAssociationProposalRequest.type = Types::CreateDirectConnectGatewayAssociationProposalRequest
    CreateDirectConnectGatewayAssociationProposalResult.add_member(:direct_connect_gateway_association_proposal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposal, location_name: 'directConnectGatewayAssociationProposal'))
    CreateDirectConnectGatewayAssociationProposalResult.type = Types::CreateDirectConnectGatewayAssociationProposalResult
    CreateDirectConnectGatewayAssociationRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId', traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAssociationRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdToAssociate, location_name: 'gatewayId'))
    CreateDirectConnectGatewayAssociationRequest.add_member(:add_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'addAllowedPrefixesToDirectConnectGateway'))
    CreateDirectConnectGatewayAssociationRequest.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    CreateDirectConnectGatewayAssociationRequest.type = Types::CreateDirectConnectGatewayAssociationRequest
    CreateDirectConnectGatewayAssociationResult.add_member(:direct_connect_gateway_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: 'directConnectGatewayAssociation'))
    CreateDirectConnectGatewayAssociationResult.type = Types::CreateDirectConnectGatewayAssociationResult
    CreateDirectConnectGatewayRequest.add_member(:direct_connect_gateway_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayName, location_name: 'directConnectGatewayName', traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateDirectConnectGatewayRequest.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    CreateDirectConnectGatewayRequest.type = Types::CreateDirectConnectGatewayRequest
    CreateDirectConnectGatewayResult.add_member(:direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGateway, location_name: 'directConnectGateway'))
    CreateDirectConnectGatewayResult.type = Types::CreateDirectConnectGatewayResult
    CreateInterconnectOutput.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId'))
    CreateInterconnectOutput.add_member(:interconnect_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectName, location_name: 'interconnectName'))
    CreateInterconnectOutput.add_member(:interconnect_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectState, location_name: 'interconnectState'))
    CreateInterconnectOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    CreateInterconnectOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    CreateInterconnectOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    CreateInterconnectOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    CreateInterconnectOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    CreateInterconnectOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    CreateInterconnectOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    CreateInterconnectOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    CreateInterconnectOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    CreateInterconnectOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    CreateInterconnectOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateInterconnectOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    CreateInterconnectOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    CreateInterconnectOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    CreateInterconnectOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    CreateInterconnectOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    CreateInterconnectOutput.type = Types::CreateInterconnectOutput
    CreateInterconnectRequest.add_member(:interconnect_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectName, location_name: 'interconnectName', traits: {"smithy.api#required" => {}}))
    CreateInterconnectRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth', traits: {"smithy.api#required" => {}}))
    CreateInterconnectRequest.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location', traits: {"smithy.api#required" => {}}))
    CreateInterconnectRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    CreateInterconnectRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateInterconnectRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    CreateInterconnectRequest.add_member(:request_mac_sec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMACSec, location_name: 'requestMACSec'))
    CreateInterconnectRequest.type = Types::CreateInterconnectRequest
    CreateLagOutput.add_member(:connections_bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'connectionsBandwidth'))
    CreateLagOutput.add_member(:number_of_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'numberOfConnections', traits: {"smithy.api#default" => 0}))
    CreateLagOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    CreateLagOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    CreateLagOutput.add_member(:lag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagName, location_name: 'lagName'))
    CreateLagOutput.add_member(:lag_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagState, location_name: 'lagState'))
    CreateLagOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    CreateLagOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    CreateLagOutput.add_member(:minimum_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'minimumLinks', traits: {"smithy.api#default" => 0}))
    CreateLagOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    CreateLagOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    CreateLagOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    CreateLagOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    CreateLagOutput.add_member(:allows_hosted_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanFlag, location_name: 'allowsHostedConnections', traits: {"smithy.api#default" => false}))
    CreateLagOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    CreateLagOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    CreateLagOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateLagOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    CreateLagOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    CreateLagOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    CreateLagOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    CreateLagOutput.type = Types::CreateLagOutput
    CreateLagRequest.add_member(:number_of_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'numberOfConnections', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateLagRequest.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location', traits: {"smithy.api#required" => {}}))
    CreateLagRequest.add_member(:connections_bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'connectionsBandwidth', traits: {"smithy.api#required" => {}}))
    CreateLagRequest.add_member(:lag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagName, location_name: 'lagName', traits: {"smithy.api#required" => {}}))
    CreateLagRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    CreateLagRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateLagRequest.add_member(:child_connection_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'childConnectionTags'))
    CreateLagRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    CreateLagRequest.add_member(:request_mac_sec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMACSec, location_name: 'requestMACSec'))
    CreateLagRequest.type = Types::CreateLagRequest
    CreatePrivateVirtualInterfaceOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    CreatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    CreatePrivateVirtualInterfaceOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    CreatePrivateVirtualInterfaceOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    CreatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    CreatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    CreatePrivateVirtualInterfaceOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    CreatePrivateVirtualInterfaceOutput.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    CreatePrivateVirtualInterfaceOutput.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    CreatePrivateVirtualInterfaceOutput.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    CreatePrivateVirtualInterfaceOutput.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    CreatePrivateVirtualInterfaceOutput.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    CreatePrivateVirtualInterfaceOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    CreatePrivateVirtualInterfaceOutput.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    CreatePrivateVirtualInterfaceOutput.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    CreatePrivateVirtualInterfaceOutput.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    CreatePrivateVirtualInterfaceOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    CreatePrivateVirtualInterfaceOutput.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    CreatePrivateVirtualInterfaceOutput.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    CreatePrivateVirtualInterfaceOutput.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    CreatePrivateVirtualInterfaceOutput.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    CreatePrivateVirtualInterfaceOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    CreatePrivateVirtualInterfaceOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    CreatePrivateVirtualInterfaceOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    CreatePrivateVirtualInterfaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreatePrivateVirtualInterfaceOutput.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    CreatePrivateVirtualInterfaceOutput.type = Types::CreatePrivateVirtualInterfaceOutput
    CreatePrivateVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    CreatePrivateVirtualInterfaceRequest.add_member(:new_private_virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewPrivateVirtualInterface, location_name: 'newPrivateVirtualInterface', traits: {"smithy.api#required" => {}}))
    CreatePrivateVirtualInterfaceRequest.type = Types::CreatePrivateVirtualInterfaceRequest
    CreatePublicVirtualInterfaceOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    CreatePublicVirtualInterfaceOutput.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    CreatePublicVirtualInterfaceOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    CreatePublicVirtualInterfaceOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    CreatePublicVirtualInterfaceOutput.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    CreatePublicVirtualInterfaceOutput.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    CreatePublicVirtualInterfaceOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    CreatePublicVirtualInterfaceOutput.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    CreatePublicVirtualInterfaceOutput.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    CreatePublicVirtualInterfaceOutput.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    CreatePublicVirtualInterfaceOutput.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    CreatePublicVirtualInterfaceOutput.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    CreatePublicVirtualInterfaceOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    CreatePublicVirtualInterfaceOutput.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    CreatePublicVirtualInterfaceOutput.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    CreatePublicVirtualInterfaceOutput.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    CreatePublicVirtualInterfaceOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    CreatePublicVirtualInterfaceOutput.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    CreatePublicVirtualInterfaceOutput.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    CreatePublicVirtualInterfaceOutput.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    CreatePublicVirtualInterfaceOutput.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    CreatePublicVirtualInterfaceOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    CreatePublicVirtualInterfaceOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    CreatePublicVirtualInterfaceOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    CreatePublicVirtualInterfaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreatePublicVirtualInterfaceOutput.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    CreatePublicVirtualInterfaceOutput.type = Types::CreatePublicVirtualInterfaceOutput
    CreatePublicVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    CreatePublicVirtualInterfaceRequest.add_member(:new_public_virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewPublicVirtualInterface, location_name: 'newPublicVirtualInterface', traits: {"smithy.api#required" => {}}))
    CreatePublicVirtualInterfaceRequest.type = Types::CreatePublicVirtualInterfaceRequest
    CreateTransitVirtualInterfaceRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    CreateTransitVirtualInterfaceRequest.add_member(:new_transit_virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewTransitVirtualInterface, location_name: 'newTransitVirtualInterface', traits: {"smithy.api#required" => {}}))
    CreateTransitVirtualInterfaceRequest.type = Types::CreateTransitVirtualInterfaceRequest
    CreateTransitVirtualInterfaceResult.add_member(:virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterface, location_name: 'virtualInterface'))
    CreateTransitVirtualInterfaceResult.type = Types::CreateTransitVirtualInterfaceResult
    CustomerAgreement.add_member(:agreement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementName, location_name: 'agreementName'))
    CustomerAgreement.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    CustomerAgreement.type = Types::CustomerAgreement
    DeleteBGPPeerRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    DeleteBGPPeerRequest.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    DeleteBGPPeerRequest.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    DeleteBGPPeerRequest.add_member(:bgp_peer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerId, location_name: 'bgpPeerId'))
    DeleteBGPPeerRequest.type = Types::DeleteBGPPeerRequest
    DeleteBGPPeerResponse.add_member(:virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterface, location_name: 'virtualInterface'))
    DeleteBGPPeerResponse.type = Types::DeleteBGPPeerResponse
    DeleteConnectionOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    DeleteConnectionOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    DeleteConnectionOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    DeleteConnectionOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    DeleteConnectionOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    DeleteConnectionOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    DeleteConnectionOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    DeleteConnectionOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    DeleteConnectionOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    DeleteConnectionOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    DeleteConnectionOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    DeleteConnectionOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    DeleteConnectionOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    DeleteConnectionOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    DeleteConnectionOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    DeleteConnectionOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    DeleteConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    DeleteConnectionOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    DeleteConnectionOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    DeleteConnectionOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    DeleteConnectionOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    DeleteConnectionOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    DeleteConnectionOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    DeleteConnectionOutput.type = Types::DeleteConnectionOutput
    DeleteConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteDirectConnectGatewayAssociationProposalRequest.add_member(:proposal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, location_name: 'proposalId', traits: {"smithy.api#required" => {}}))
    DeleteDirectConnectGatewayAssociationProposalRequest.type = Types::DeleteDirectConnectGatewayAssociationProposalRequest
    DeleteDirectConnectGatewayAssociationProposalResult.add_member(:direct_connect_gateway_association_proposal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposal, location_name: 'directConnectGatewayAssociationProposal'))
    DeleteDirectConnectGatewayAssociationProposalResult.type = Types::DeleteDirectConnectGatewayAssociationProposalResult
    DeleteDirectConnectGatewayAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: 'associationId'))
    DeleteDirectConnectGatewayAssociationRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DeleteDirectConnectGatewayAssociationRequest.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    DeleteDirectConnectGatewayAssociationRequest.type = Types::DeleteDirectConnectGatewayAssociationRequest
    DeleteDirectConnectGatewayAssociationResult.add_member(:direct_connect_gateway_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: 'directConnectGatewayAssociation'))
    DeleteDirectConnectGatewayAssociationResult.type = Types::DeleteDirectConnectGatewayAssociationResult
    DeleteDirectConnectGatewayRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId', traits: {"smithy.api#required" => {}}))
    DeleteDirectConnectGatewayRequest.type = Types::DeleteDirectConnectGatewayRequest
    DeleteDirectConnectGatewayResult.add_member(:direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGateway, location_name: 'directConnectGateway'))
    DeleteDirectConnectGatewayResult.type = Types::DeleteDirectConnectGatewayResult
    DeleteInterconnectRequest.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId', traits: {"smithy.api#required" => {}}))
    DeleteInterconnectRequest.type = Types::DeleteInterconnectRequest
    DeleteInterconnectResponse.add_member(:interconnect_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectState, location_name: 'interconnectState'))
    DeleteInterconnectResponse.type = Types::DeleteInterconnectResponse
    DeleteLagOutput.add_member(:connections_bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'connectionsBandwidth'))
    DeleteLagOutput.add_member(:number_of_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'numberOfConnections', traits: {"smithy.api#default" => 0}))
    DeleteLagOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    DeleteLagOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    DeleteLagOutput.add_member(:lag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagName, location_name: 'lagName'))
    DeleteLagOutput.add_member(:lag_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagState, location_name: 'lagState'))
    DeleteLagOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    DeleteLagOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    DeleteLagOutput.add_member(:minimum_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'minimumLinks', traits: {"smithy.api#default" => 0}))
    DeleteLagOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    DeleteLagOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    DeleteLagOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    DeleteLagOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    DeleteLagOutput.add_member(:allows_hosted_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanFlag, location_name: 'allowsHostedConnections', traits: {"smithy.api#default" => false}))
    DeleteLagOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    DeleteLagOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    DeleteLagOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    DeleteLagOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    DeleteLagOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    DeleteLagOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    DeleteLagOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    DeleteLagOutput.type = Types::DeleteLagOutput
    DeleteLagRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId', traits: {"smithy.api#required" => {}}))
    DeleteLagRequest.type = Types::DeleteLagRequest
    DeleteVirtualInterfaceRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    DeleteVirtualInterfaceRequest.type = Types::DeleteVirtualInterfaceRequest
    DeleteVirtualInterfaceResponse.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    DeleteVirtualInterfaceResponse.type = Types::DeleteVirtualInterfaceResponse
    DescribeConnectionLoaRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    DescribeConnectionLoaRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    DescribeConnectionLoaRequest.add_member(:loa_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContentType, location_name: 'loaContentType'))
    DescribeConnectionLoaRequest.type = Types::DescribeConnectionLoaRequest
    DescribeConnectionLoaResponse.add_member(:loa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Loa, location_name: 'loa'))
    DescribeConnectionLoaResponse.type = Types::DescribeConnectionLoaResponse
    DescribeConnectionsOnInterconnectOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    DescribeConnectionsOnInterconnectOutput.type = Types::DescribeConnectionsOnInterconnectOutput
    DescribeConnectionsOnInterconnectRequest.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId', traits: {"smithy.api#required" => {}}))
    DescribeConnectionsOnInterconnectRequest.type = Types::DescribeConnectionsOnInterconnectRequest
    DescribeConnectionsOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    DescribeConnectionsOutput.type = Types::DescribeConnectionsOutput
    DescribeConnectionsRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    DescribeConnectionsRequest.type = Types::DescribeConnectionsRequest
    DescribeCustomerMetadataResponse.add_member(:agreements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementList, location_name: 'agreements'))
    DescribeCustomerMetadataResponse.add_member(:nni_partner_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NniPartnerType, location_name: 'nniPartnerType'))
    DescribeCustomerMetadataResponse.type = Types::DescribeCustomerMetadataResponse
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:proposal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, location_name: 'proposalId'))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:associated_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedGatewayId, location_name: 'associatedGatewayId'))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: 'maxResults'))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewayAssociationProposalsRequest.type = Types::DescribeDirectConnectGatewayAssociationProposalsRequest
    DescribeDirectConnectGatewayAssociationProposalsResult.add_member(:direct_connect_gateway_association_proposals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalList, location_name: 'directConnectGatewayAssociationProposals'))
    DescribeDirectConnectGatewayAssociationProposalsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewayAssociationProposalsResult.type = Types::DescribeDirectConnectGatewayAssociationProposalsResult
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: 'associationId'))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:associated_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedGatewayId, location_name: 'associatedGatewayId'))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: 'maxResults'))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    DescribeDirectConnectGatewayAssociationsRequest.type = Types::DescribeDirectConnectGatewayAssociationsRequest
    DescribeDirectConnectGatewayAssociationsResult.add_member(:direct_connect_gateway_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationList, location_name: 'directConnectGatewayAssociations'))
    DescribeDirectConnectGatewayAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewayAssociationsResult.type = Types::DescribeDirectConnectGatewayAssociationsResult
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: 'maxResults'))
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewayAttachmentsRequest.type = Types::DescribeDirectConnectGatewayAttachmentsRequest
    DescribeDirectConnectGatewayAttachmentsResult.add_member(:direct_connect_gateway_attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachmentList, location_name: 'directConnectGatewayAttachments'))
    DescribeDirectConnectGatewayAttachmentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewayAttachmentsResult.type = Types::DescribeDirectConnectGatewayAttachmentsResult
    DescribeDirectConnectGatewaysRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DescribeDirectConnectGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: 'maxResults'))
    DescribeDirectConnectGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewaysRequest.type = Types::DescribeDirectConnectGatewaysRequest
    DescribeDirectConnectGatewaysResult.add_member(:direct_connect_gateways, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayList, location_name: 'directConnectGateways'))
    DescribeDirectConnectGatewaysResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DescribeDirectConnectGatewaysResult.type = Types::DescribeDirectConnectGatewaysResult
    DescribeHostedConnectionsOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    DescribeHostedConnectionsOutput.type = Types::DescribeHostedConnectionsOutput
    DescribeHostedConnectionsRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    DescribeHostedConnectionsRequest.type = Types::DescribeHostedConnectionsRequest
    DescribeInterconnectLoaRequest.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId', traits: {"smithy.api#required" => {}}))
    DescribeInterconnectLoaRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    DescribeInterconnectLoaRequest.add_member(:loa_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContentType, location_name: 'loaContentType'))
    DescribeInterconnectLoaRequest.type = Types::DescribeInterconnectLoaRequest
    DescribeInterconnectLoaResponse.add_member(:loa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Loa, location_name: 'loa'))
    DescribeInterconnectLoaResponse.type = Types::DescribeInterconnectLoaResponse
    DescribeInterconnectsOutput.add_member(:interconnects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectList, location_name: 'interconnects'))
    DescribeInterconnectsOutput.type = Types::DescribeInterconnectsOutput
    DescribeInterconnectsRequest.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId'))
    DescribeInterconnectsRequest.type = Types::DescribeInterconnectsRequest
    DescribeLagsOutput.add_member(:lags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagList, location_name: 'lags'))
    DescribeLagsOutput.type = Types::DescribeLagsOutput
    DescribeLagsRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    DescribeLagsRequest.type = Types::DescribeLagsRequest
    DescribeLoaOutput.add_member(:loa_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContent, location_name: 'loaContent'))
    DescribeLoaOutput.add_member(:loa_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContentType, location_name: 'loaContentType'))
    DescribeLoaOutput.type = Types::DescribeLoaOutput
    DescribeLoaRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    DescribeLoaRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    DescribeLoaRequest.add_member(:loa_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContentType, location_name: 'loaContentType'))
    DescribeLoaRequest.type = Types::DescribeLoaRequest
    DescribeLocationsOutput.add_member(:locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationList, location_name: 'locations'))
    DescribeLocationsOutput.type = Types::DescribeLocationsOutput
    DescribeRouterConfigurationRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    DescribeRouterConfigurationRequest.add_member(:router_type_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterTypeIdentifier, location_name: 'routerTypeIdentifier'))
    DescribeRouterConfigurationRequest.type = Types::DescribeRouterConfigurationRequest
    DescribeRouterConfigurationResponse.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    DescribeRouterConfigurationResponse.add_member(:router, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterType, location_name: 'router'))
    DescribeRouterConfigurationResponse.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    DescribeRouterConfigurationResponse.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    DescribeRouterConfigurationResponse.type = Types::DescribeRouterConfigurationResponse
    DescribeTagsRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns', traits: {"smithy.api#required" => {}}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'resourceTags'))
    DescribeTagsResponse.type = Types::DescribeTagsResponse
    DescribeVirtualGatewaysOutput.add_member(:virtual_gateways, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayList, location_name: 'virtualGateways'))
    DescribeVirtualGatewaysOutput.type = Types::DescribeVirtualGatewaysOutput
    DescribeVirtualInterfacesOutput.add_member(:virtual_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceList, location_name: 'virtualInterfaces'))
    DescribeVirtualInterfacesOutput.type = Types::DescribeVirtualInterfacesOutput
    DescribeVirtualInterfacesRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    DescribeVirtualInterfacesRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    DescribeVirtualInterfacesRequest.type = Types::DescribeVirtualInterfacesRequest
    DirectConnectClientException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DirectConnectClientException.type = Types::DirectConnectClientException
    DirectConnectGateway.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DirectConnectGateway.add_member(:direct_connect_gateway_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayName, location_name: 'directConnectGatewayName'))
    DirectConnectGateway.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    DirectConnectGateway.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    DirectConnectGateway.add_member(:direct_connect_gateway_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayState, location_name: 'directConnectGatewayState'))
    DirectConnectGateway.add_member(:state_change_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateChangeError, location_name: 'stateChangeError'))
    DirectConnectGateway.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    DirectConnectGateway.type = Types::DirectConnectGateway
    DirectConnectGatewayAssociation.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DirectConnectGatewayAssociation.add_member(:direct_connect_gateway_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'directConnectGatewayOwnerAccount'))
    DirectConnectGatewayAssociation.add_member(:association_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationState, location_name: 'associationState'))
    DirectConnectGatewayAssociation.add_member(:state_change_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateChangeError, location_name: 'stateChangeError'))
    DirectConnectGatewayAssociation.add_member(:associated_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedGateway, location_name: 'associatedGateway'))
    DirectConnectGatewayAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: 'associationId'))
    DirectConnectGatewayAssociation.add_member(:allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'allowedPrefixesToDirectConnectGateway'))
    DirectConnectGatewayAssociation.add_member(:associated_core_network, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedCoreNetwork, location_name: 'associatedCoreNetwork'))
    DirectConnectGatewayAssociation.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    DirectConnectGatewayAssociation.add_member(:virtual_gateway_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayRegion, location_name: 'virtualGatewayRegion'))
    DirectConnectGatewayAssociation.add_member(:virtual_gateway_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'virtualGatewayOwnerAccount'))
    DirectConnectGatewayAssociation.type = Types::DirectConnectGatewayAssociation
    DirectConnectGatewayAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation)
    DirectConnectGatewayAssociationProposal.add_member(:proposal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, location_name: 'proposalId'))
    DirectConnectGatewayAssociationProposal.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DirectConnectGatewayAssociationProposal.add_member(:direct_connect_gateway_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'directConnectGatewayOwnerAccount'))
    DirectConnectGatewayAssociationProposal.add_member(:proposal_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalState, location_name: 'proposalState'))
    DirectConnectGatewayAssociationProposal.add_member(:associated_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedGateway, location_name: 'associatedGateway'))
    DirectConnectGatewayAssociationProposal.add_member(:existing_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'existingAllowedPrefixesToDirectConnectGateway'))
    DirectConnectGatewayAssociationProposal.add_member(:requested_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'requestedAllowedPrefixesToDirectConnectGateway'))
    DirectConnectGatewayAssociationProposal.type = Types::DirectConnectGatewayAssociationProposal
    DirectConnectGatewayAssociationProposalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposal)
    DirectConnectGatewayAssociationProposalState.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'requested', traits: {"smithy.api#enumValue" => "requested"}))
    DirectConnectGatewayAssociationProposalState.add_member(:accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'accepted', traits: {"smithy.api#enumValue" => "accepted"}))
    DirectConnectGatewayAssociationProposalState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    DirectConnectGatewayAssociationState.add_member(:associating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'associating', traits: {"smithy.api#enumValue" => "associating"}))
    DirectConnectGatewayAssociationState.add_member(:associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'associated', traits: {"smithy.api#enumValue" => "associated"}))
    DirectConnectGatewayAssociationState.add_member(:disassociating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'disassociating', traits: {"smithy.api#enumValue" => "disassociating"}))
    DirectConnectGatewayAssociationState.add_member(:disassociated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'disassociated', traits: {"smithy.api#enumValue" => "disassociated"}))
    DirectConnectGatewayAssociationState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updating', traits: {"smithy.api#enumValue" => "updating"}))
    DirectConnectGatewayAttachment.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    DirectConnectGatewayAttachment.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    DirectConnectGatewayAttachment.add_member(:virtual_interface_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceRegion, location_name: 'virtualInterfaceRegion'))
    DirectConnectGatewayAttachment.add_member(:virtual_interface_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'virtualInterfaceOwnerAccount'))
    DirectConnectGatewayAttachment.add_member(:attachment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachmentState, location_name: 'attachmentState'))
    DirectConnectGatewayAttachment.add_member(:attachment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachmentType, location_name: 'attachmentType'))
    DirectConnectGatewayAttachment.add_member(:state_change_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateChangeError, location_name: 'stateChangeError'))
    DirectConnectGatewayAttachment.type = Types::DirectConnectGatewayAttachment
    DirectConnectGatewayAttachmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachment)
    DirectConnectGatewayAttachmentState.add_member(:attaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'attaching', traits: {"smithy.api#enumValue" => "attaching"}))
    DirectConnectGatewayAttachmentState.add_member(:attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'attached', traits: {"smithy.api#enumValue" => "attached"}))
    DirectConnectGatewayAttachmentState.add_member(:detaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'detaching', traits: {"smithy.api#enumValue" => "detaching"}))
    DirectConnectGatewayAttachmentState.add_member(:detached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'detached', traits: {"smithy.api#enumValue" => "detached"}))
    DirectConnectGatewayAttachmentType.add_member(:transit_virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TransitVirtualInterface', traits: {"smithy.api#enumValue" => "TransitVirtualInterface"}))
    DirectConnectGatewayAttachmentType.add_member(:private_virtual_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PrivateVirtualInterface', traits: {"smithy.api#enumValue" => "PrivateVirtualInterface"}))
    DirectConnectGatewayList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGateway)
    DirectConnectGatewayState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    DirectConnectGatewayState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "available"}))
    DirectConnectGatewayState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    DirectConnectGatewayState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    DirectConnectServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DirectConnectServerException.type = Types::DirectConnectServerException
    DisassociateConnectionFromLagOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    DisassociateConnectionFromLagOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    DisassociateConnectionFromLagOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    DisassociateConnectionFromLagOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    DisassociateConnectionFromLagOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    DisassociateConnectionFromLagOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    DisassociateConnectionFromLagOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    DisassociateConnectionFromLagOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    DisassociateConnectionFromLagOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    DisassociateConnectionFromLagOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    DisassociateConnectionFromLagOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    DisassociateConnectionFromLagOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    DisassociateConnectionFromLagOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    DisassociateConnectionFromLagOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    DisassociateConnectionFromLagOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    DisassociateConnectionFromLagOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    DisassociateConnectionFromLagOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    DisassociateConnectionFromLagOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    DisassociateConnectionFromLagOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    DisassociateConnectionFromLagOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    DisassociateConnectionFromLagOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    DisassociateConnectionFromLagOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    DisassociateConnectionFromLagOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    DisassociateConnectionFromLagOutput.type = Types::DisassociateConnectionFromLagOutput
    DisassociateConnectionFromLagRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    DisassociateConnectionFromLagRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId', traits: {"smithy.api#required" => {}}))
    DisassociateConnectionFromLagRequest.type = Types::DisassociateConnectionFromLagRequest
    DisassociateMacSecKeyRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    DisassociateMacSecKeyRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretARN, location_name: 'secretARN', traits: {"smithy.api#required" => {}}))
    DisassociateMacSecKeyRequest.type = Types::DisassociateMacSecKeyRequest
    DisassociateMacSecKeyResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    DisassociateMacSecKeyResponse.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    DisassociateMacSecKeyResponse.type = Types::DisassociateMacSecKeyResponse
    DuplicateTagKeysException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DuplicateTagKeysException.type = Types::DuplicateTagKeysException
    GatewayType.add_member(:virtual_private_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VirtualPrivateGateway', traits: {"smithy.api#enumValue" => "virtualPrivateGateway"}))
    GatewayType.add_member(:transit_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TransitGateway', traits: {"smithy.api#enumValue" => "transitGateway"}))
    HasLogicalRedundancy.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "unknown"}))
    HasLogicalRedundancy.add_member(:yes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Yes', traits: {"smithy.api#enumValue" => "yes"}))
    HasLogicalRedundancy.add_member(:no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'No', traits: {"smithy.api#enumValue" => "no"}))
    Interconnect.add_member(:interconnect_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectId, location_name: 'interconnectId'))
    Interconnect.add_member(:interconnect_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectName, location_name: 'interconnectName'))
    Interconnect.add_member(:interconnect_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterconnectState, location_name: 'interconnectState'))
    Interconnect.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    Interconnect.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    Interconnect.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    Interconnect.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    Interconnect.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    Interconnect.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    Interconnect.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    Interconnect.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    Interconnect.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    Interconnect.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    Interconnect.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    Interconnect.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    Interconnect.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    Interconnect.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    Interconnect.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    Interconnect.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    Interconnect.type = Types::Interconnect
    InterconnectList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Interconnect)
    InterconnectState.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'requested', traits: {"smithy.api#enumValue" => "requested"}))
    InterconnectState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    InterconnectState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "available"}))
    InterconnectState.add_member(:down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'down', traits: {"smithy.api#enumValue" => "down"}))
    InterconnectState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    InterconnectState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    InterconnectState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unknown', traits: {"smithy.api#enumValue" => "unknown"}))
    Lag.add_member(:connections_bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'connectionsBandwidth'))
    Lag.add_member(:number_of_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'numberOfConnections', traits: {"smithy.api#default" => 0}))
    Lag.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    Lag.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    Lag.add_member(:lag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagName, location_name: 'lagName'))
    Lag.add_member(:lag_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagState, location_name: 'lagState'))
    Lag.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    Lag.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    Lag.add_member(:minimum_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'minimumLinks', traits: {"smithy.api#default" => 0}))
    Lag.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    Lag.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    Lag.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    Lag.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    Lag.add_member(:allows_hosted_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanFlag, location_name: 'allowsHostedConnections', traits: {"smithy.api#default" => false}))
    Lag.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    Lag.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    Lag.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    Lag.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    Lag.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    Lag.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    Lag.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    Lag.type = Types::Lag
    LagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lag)
    LagState.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'requested', traits: {"smithy.api#enumValue" => "requested"}))
    LagState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    LagState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "available"}))
    LagState.add_member(:down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'down', traits: {"smithy.api#enumValue" => "down"}))
    LagState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    LagState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    LagState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unknown', traits: {"smithy.api#enumValue" => "unknown"}))
    ListVirtualInterfaceTestHistoryRequest.add_member(:test_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestId, location_name: 'testId'))
    ListVirtualInterfaceTestHistoryRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    ListVirtualInterfaceTestHistoryRequest.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerIdList, location_name: 'bgpPeers'))
    ListVirtualInterfaceTestHistoryRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureTestHistoryStatus, location_name: 'status'))
    ListVirtualInterfaceTestHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: 'maxResults'))
    ListVirtualInterfaceTestHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListVirtualInterfaceTestHistoryRequest.type = Types::ListVirtualInterfaceTestHistoryRequest
    ListVirtualInterfaceTestHistoryResponse.add_member(:virtual_interface_test_history, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistoryList, location_name: 'virtualInterfaceTestHistory'))
    ListVirtualInterfaceTestHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListVirtualInterfaceTestHistoryResponse.type = Types::ListVirtualInterfaceTestHistoryResponse
    Loa.add_member(:loa_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContent, location_name: 'loaContent'))
    Loa.add_member(:loa_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaContentType, location_name: 'loaContentType'))
    Loa.type = Types::Loa
    LoaContentType.add_member(:pdf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "application/pdf"}))
    Location.add_member(:location_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'locationCode'))
    Location.add_member(:location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationName, location_name: 'locationName'))
    Location.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    Location.add_member(:available_port_speeds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailablePortSpeeds, location_name: 'availablePortSpeeds'))
    Location.add_member(:available_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderList, location_name: 'availableProviders'))
    Location.add_member(:available_mac_sec_port_speeds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableMacSecPortSpeeds, location_name: 'availableMacSecPortSpeeds'))
    Location.type = Types::Location
    LocationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location)
    MacSecKey.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretARN, location_name: 'secretARN'))
    MacSecKey.add_member(:ckn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ckn, location_name: 'ckn'))
    MacSecKey.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'state'))
    MacSecKey.add_member(:start_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDate, location_name: 'startOn'))
    MacSecKey.type = Types::MacSecKey
    MacSecKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKey)
    NewBGPPeer.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    NewBGPPeer.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewBGPPeer.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewBGPPeer.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewBGPPeer.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewBGPPeer.type = Types::NewBGPPeer
    NewPrivateVirtualInterface.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName', traits: {"smithy.api#required" => {}}))
    NewPrivateVirtualInterface.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPrivateVirtualInterface.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPrivateVirtualInterface.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    NewPrivateVirtualInterface.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewPrivateVirtualInterface.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewPrivateVirtualInterface.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewPrivateVirtualInterface.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewPrivateVirtualInterface.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    NewPrivateVirtualInterface.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    NewPrivateVirtualInterface.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    NewPrivateVirtualInterface.add_member(:enable_site_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSiteLink, location_name: 'enableSiteLink'))
    NewPrivateVirtualInterface.type = Types::NewPrivateVirtualInterface
    NewPrivateVirtualInterfaceAllocation.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName', traits: {"smithy.api#required" => {}}))
    NewPrivateVirtualInterfaceAllocation.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPrivateVirtualInterfaceAllocation.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPrivateVirtualInterfaceAllocation.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    NewPrivateVirtualInterfaceAllocation.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewPrivateVirtualInterfaceAllocation.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewPrivateVirtualInterfaceAllocation.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewPrivateVirtualInterfaceAllocation.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewPrivateVirtualInterfaceAllocation.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    NewPrivateVirtualInterfaceAllocation.type = Types::NewPrivateVirtualInterfaceAllocation
    NewPublicVirtualInterface.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName', traits: {"smithy.api#required" => {}}))
    NewPublicVirtualInterface.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPublicVirtualInterface.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPublicVirtualInterface.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewPublicVirtualInterface.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewPublicVirtualInterface.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewPublicVirtualInterface.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewPublicVirtualInterface.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    NewPublicVirtualInterface.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    NewPublicVirtualInterface.type = Types::NewPublicVirtualInterface
    NewPublicVirtualInterfaceAllocation.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName', traits: {"smithy.api#required" => {}}))
    NewPublicVirtualInterfaceAllocation.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPublicVirtualInterfaceAllocation.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NewPublicVirtualInterfaceAllocation.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewPublicVirtualInterfaceAllocation.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewPublicVirtualInterfaceAllocation.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewPublicVirtualInterfaceAllocation.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewPublicVirtualInterfaceAllocation.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    NewPublicVirtualInterfaceAllocation.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    NewPublicVirtualInterfaceAllocation.type = Types::NewPublicVirtualInterfaceAllocation
    NewTransitVirtualInterface.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    NewTransitVirtualInterface.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    NewTransitVirtualInterface.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    NewTransitVirtualInterface.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    NewTransitVirtualInterface.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewTransitVirtualInterface.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewTransitVirtualInterface.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewTransitVirtualInterface.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewTransitVirtualInterface.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    NewTransitVirtualInterface.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    NewTransitVirtualInterface.add_member(:enable_site_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSiteLink, location_name: 'enableSiteLink'))
    NewTransitVirtualInterface.type = Types::NewTransitVirtualInterface
    NewTransitVirtualInterfaceAllocation.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    NewTransitVirtualInterfaceAllocation.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    NewTransitVirtualInterfaceAllocation.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    NewTransitVirtualInterfaceAllocation.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    NewTransitVirtualInterfaceAllocation.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    NewTransitVirtualInterfaceAllocation.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    NewTransitVirtualInterfaceAllocation.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    NewTransitVirtualInterfaceAllocation.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    NewTransitVirtualInterfaceAllocation.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    NewTransitVirtualInterfaceAllocation.type = Types::NewTransitVirtualInterfaceAllocation
    NniPartnerType.add_member(:v1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1', traits: {"smithy.api#enumValue" => "v1"}))
    NniPartnerType.add_member(:v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V2', traits: {"smithy.api#enumValue" => "v2"}))
    NniPartnerType.add_member(:non_partner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NonPartner', traits: {"smithy.api#enumValue" => "nonPartner"}))
    ProviderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName)
    ResourceArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceTag.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn'))
    ResourceTag.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ResourceTag.type = Types::ResourceTag
    ResourceTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    RouteFilterPrefix.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'cidr'))
    RouteFilterPrefix.type = Types::RouteFilterPrefix
    RouteFilterPrefixList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefix)
    RouterType.add_member(:vendor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Vendor, location_name: 'vendor'))
    RouterType.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform'))
    RouterType.add_member(:software, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Software, location_name: 'software'))
    RouterType.add_member(:xslt_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XsltTemplateName, location_name: 'xsltTemplateName'))
    RouterType.add_member(:xslt_template_name_for_mac_sec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XsltTemplateNameForMacSec, location_name: 'xsltTemplateNameForMacSec'))
    RouterType.add_member(:router_type_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterTypeIdentifier, location_name: 'routerTypeIdentifier'))
    RouterType.type = Types::RouterType
    StartBgpFailoverTestRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    StartBgpFailoverTestRequest.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerIdList, location_name: 'bgpPeers'))
    StartBgpFailoverTestRequest.add_member(:test_duration_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestDuration, location_name: 'testDurationInMinutes'))
    StartBgpFailoverTestRequest.type = Types::StartBgpFailoverTestRequest
    StartBgpFailoverTestResponse.add_member(:virtual_interface_test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistory, location_name: 'virtualInterfaceTest'))
    StartBgpFailoverTestResponse.type = Types::StartBgpFailoverTestResponse
    StopBgpFailoverTestRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    StopBgpFailoverTestRequest.type = Types::StopBgpFailoverTestRequest
    StopBgpFailoverTestResponse.add_member(:virtual_interface_test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistory, location_name: 'virtualInterfaceTest'))
    StopBgpFailoverTestResponse.type = Types::StopBgpFailoverTestResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value'))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectionOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    UpdateConnectionOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    UpdateConnectionOutput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    UpdateConnectionOutput.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'connectionState'))
    UpdateConnectionOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    UpdateConnectionOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    UpdateConnectionOutput.add_member(:bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'bandwidth'))
    UpdateConnectionOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    UpdateConnectionOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerName, location_name: 'partnerName'))
    UpdateConnectionOutput.add_member(:loa_issue_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: 'loaIssueTime'))
    UpdateConnectionOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    UpdateConnectionOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    UpdateConnectionOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    UpdateConnectionOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    UpdateConnectionOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    UpdateConnectionOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    UpdateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    UpdateConnectionOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    UpdateConnectionOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    UpdateConnectionOutput.add_member(:port_encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortEncryptionStatus, location_name: 'portEncryptionStatus'))
    UpdateConnectionOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    UpdateConnectionOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    UpdateConnectionOutput.add_member(:partner_interconnect_mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerInterconnectMacSecCapable, location_name: 'partnerInterconnectMacSecCapable'))
    UpdateConnectionOutput.type = Types::UpdateConnectionOutput
    UpdateConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId', traits: {"smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'connectionName'))
    UpdateConnectionRequest.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateDirectConnectGatewayAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: 'associationId'))
    UpdateDirectConnectGatewayAssociationRequest.add_member(:add_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'addAllowedPrefixesToDirectConnectGateway'))
    UpdateDirectConnectGatewayAssociationRequest.add_member(:remove_allowed_prefixes_to_direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'removeAllowedPrefixesToDirectConnectGateway'))
    UpdateDirectConnectGatewayAssociationRequest.type = Types::UpdateDirectConnectGatewayAssociationRequest
    UpdateDirectConnectGatewayAssociationResult.add_member(:direct_connect_gateway_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: 'directConnectGatewayAssociation'))
    UpdateDirectConnectGatewayAssociationResult.type = Types::UpdateDirectConnectGatewayAssociationResult
    UpdateDirectConnectGatewayRequest.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId', traits: {"smithy.api#required" => {}}))
    UpdateDirectConnectGatewayRequest.add_member(:new_direct_connect_gateway_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayName, location_name: 'newDirectConnectGatewayName', traits: {"smithy.api#required" => {}}))
    UpdateDirectConnectGatewayRequest.type = Types::UpdateDirectConnectGatewayRequest
    UpdateDirectConnectGatewayResponse.add_member(:direct_connect_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGateway, location_name: 'directConnectGateway'))
    UpdateDirectConnectGatewayResponse.type = Types::UpdateDirectConnectGatewayResponse
    UpdateLagOutput.add_member(:connections_bandwidth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'connectionsBandwidth'))
    UpdateLagOutput.add_member(:number_of_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'numberOfConnections', traits: {"smithy.api#default" => 0}))
    UpdateLagOutput.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId'))
    UpdateLagOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    UpdateLagOutput.add_member(:lag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagName, location_name: 'lagName'))
    UpdateLagOutput.add_member(:lag_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagState, location_name: 'lagState'))
    UpdateLagOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    UpdateLagOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    UpdateLagOutput.add_member(:minimum_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'minimumLinks', traits: {"smithy.api#default" => 0}))
    UpdateLagOutput.add_member(:aws_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDevice, location_name: 'awsDevice'))
    UpdateLagOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    UpdateLagOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    UpdateLagOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'connections'))
    UpdateLagOutput.add_member(:allows_hosted_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanFlag, location_name: 'allowsHostedConnections', traits: {"smithy.api#default" => false}))
    UpdateLagOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    UpdateLagOutput.add_member(:has_logical_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: 'hasLogicalRedundancy'))
    UpdateLagOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    UpdateLagOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'providerName'))
    UpdateLagOutput.add_member(:mac_sec_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecCapable, location_name: 'macSecCapable'))
    UpdateLagOutput.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    UpdateLagOutput.add_member(:mac_sec_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacSecKeyList, location_name: 'macSecKeys'))
    UpdateLagOutput.type = Types::UpdateLagOutput
    UpdateLagRequest.add_member(:lag_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagId, location_name: 'lagId', traits: {"smithy.api#required" => {}}))
    UpdateLagRequest.add_member(:lag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LagName, location_name: 'lagName'))
    UpdateLagRequest.add_member(:minimum_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'minimumLinks', traits: {"smithy.api#default" => 0}))
    UpdateLagRequest.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'encryptionMode'))
    UpdateLagRequest.type = Types::UpdateLagRequest
    UpdateVirtualInterfaceAttributesOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    UpdateVirtualInterfaceAttributesOutput.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    UpdateVirtualInterfaceAttributesOutput.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    UpdateVirtualInterfaceAttributesOutput.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    UpdateVirtualInterfaceAttributesOutput.type = Types::UpdateVirtualInterfaceAttributesOutput
    UpdateVirtualInterfaceAttributesRequest.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId', traits: {"smithy.api#required" => {}}))
    UpdateVirtualInterfaceAttributesRequest.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    UpdateVirtualInterfaceAttributesRequest.add_member(:enable_site_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSiteLink, location_name: 'enableSiteLink'))
    UpdateVirtualInterfaceAttributesRequest.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    UpdateVirtualInterfaceAttributesRequest.type = Types::UpdateVirtualInterfaceAttributesRequest
    VirtualGateway.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    VirtualGateway.add_member(:virtual_gateway_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayState, location_name: 'virtualGatewayState'))
    VirtualGateway.type = Types::VirtualGateway
    VirtualGatewayList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGateway)
    VirtualInterface.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    VirtualInterface.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    VirtualInterface.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationCode, location_name: 'location'))
    VirtualInterface.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'connectionId'))
    VirtualInterface.add_member(:virtual_interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: 'virtualInterfaceType'))
    VirtualInterface.add_member(:virtual_interface_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: 'virtualInterfaceName'))
    VirtualInterface.add_member(:vlan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VLAN, location_name: 'vlan', traits: {"smithy.api#default" => 0}))
    VirtualInterface.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN, location_name: 'asn', traits: {"smithy.api#default" => 0}))
    VirtualInterface.add_member(:amazon_side_asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongAsn, location_name: 'amazonSideAsn'))
    VirtualInterface.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: 'authKey'))
    VirtualInterface.add_member(:amazon_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonAddress, location_name: 'amazonAddress'))
    VirtualInterface.add_member(:customer_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAddress, location_name: 'customerAddress'))
    VirtualInterface.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    VirtualInterface.add_member(:virtual_interface_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: 'virtualInterfaceState'))
    VirtualInterface.add_member(:customer_router_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouterConfig, location_name: 'customerRouterConfig'))
    VirtualInterface.add_member(:mtu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MTU, location_name: 'mtu'))
    VirtualInterface.add_member(:jumbo_frame_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: 'jumboFrameCapable'))
    VirtualInterface.add_member(:virtual_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: 'virtualGatewayId'))
    VirtualInterface.add_member(:direct_connect_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: 'directConnectGatewayId'))
    VirtualInterface.add_member(:route_filter_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: 'routeFilterPrefixes'))
    VirtualInterface.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerList, location_name: 'bgpPeers'))
    VirtualInterface.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    VirtualInterface.add_member(:aws_device_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: 'awsDeviceV2'))
    VirtualInterface.add_member(:aws_logical_device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogicalDeviceId, location_name: 'awsLogicalDeviceId'))
    VirtualInterface.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    VirtualInterface.add_member(:site_link_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteLinkEnabled, location_name: 'siteLinkEnabled'))
    VirtualInterface.type = Types::VirtualInterface
    VirtualInterfaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterface)
    VirtualInterfaceState.add_member(:confirming, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'confirming', traits: {"smithy.api#enumValue" => "confirming"}))
    VirtualInterfaceState.add_member(:verifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'verifying', traits: {"smithy.api#enumValue" => "verifying"}))
    VirtualInterfaceState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    VirtualInterfaceState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "available"}))
    VirtualInterfaceState.add_member(:down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'down', traits: {"smithy.api#enumValue" => "down"}))
    VirtualInterfaceState.add_member(:testing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'testing', traits: {"smithy.api#enumValue" => "testing"}))
    VirtualInterfaceState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    VirtualInterfaceState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    VirtualInterfaceState.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rejected', traits: {"smithy.api#enumValue" => "rejected"}))
    VirtualInterfaceState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unknown', traits: {"smithy.api#enumValue" => "unknown"}))
    VirtualInterfaceTestHistory.add_member(:test_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestId, location_name: 'testId'))
    VirtualInterfaceTestHistory.add_member(:virtual_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: 'virtualInterfaceId'))
    VirtualInterfaceTestHistory.add_member(:bgp_peers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BGPPeerIdList, location_name: 'bgpPeers'))
    VirtualInterfaceTestHistory.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureTestHistoryStatus, location_name: 'status'))
    VirtualInterfaceTestHistory.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount'))
    VirtualInterfaceTestHistory.add_member(:test_duration_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestDuration, location_name: 'testDurationInMinutes'))
    VirtualInterfaceTestHistory.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime'))
    VirtualInterfaceTestHistory.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime'))
    VirtualInterfaceTestHistory.type = Types::VirtualInterfaceTestHistory
    VirtualInterfaceTestHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistory)

    OvertureService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.directconnect#OvertureService"
      service.name = "OvertureService"
      service.version = "2012-10-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Direct Connect", "arnNamespace" => "directconnect", "cloudFormationName" => "DirectConnect", "cloudTrailEventSource" => "directconnect.amazonaws.com", "docId" => "directconnect-2012-10-25", "endpointPrefix" => "directconnect"}, "aws.auth#sigv4" => {"name" => "directconnect"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Direct Connect", "smithy.api#xmlNamespace" => {"uri" => "http://directconnect.amazonaws.com/doc/2012-10-25/"}}
      service.add_operation(:accept_direct_connect_gateway_association_proposal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AcceptDirectConnectGatewayAssociationProposal"
        operation.name = "AcceptDirectConnectGatewayAssociationProposal"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptDirectConnectGatewayAssociationProposalRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptDirectConnectGatewayAssociationProposalResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:allocate_connection_on_interconnect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AllocateConnectionOnInterconnect"
        operation.name = "AllocateConnectionOnInterconnect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateConnectionOnInterconnectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateConnectionOnInterconnectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:allocate_hosted_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AllocateHostedConnection"
        operation.name = "AllocateHostedConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateHostedConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateHostedConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:allocate_private_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AllocatePrivateVirtualInterface"
        operation.name = "AllocatePrivateVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatePrivateVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatePrivateVirtualInterfaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:allocate_public_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AllocatePublicVirtualInterface"
        operation.name = "AllocatePublicVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatePublicVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatePublicVirtualInterfaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:allocate_transit_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AllocateTransitVirtualInterface"
        operation.name = "AllocateTransitVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateTransitVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateTransitVirtualInterfaceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:associate_connection_with_lag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AssociateConnectionWithLag"
        operation.name = "AssociateConnectionWithLag"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConnectionWithLagRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConnectionWithLagOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:associate_hosted_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AssociateHostedConnection"
        operation.name = "AssociateHostedConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateHostedConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateHostedConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:associate_mac_sec_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AssociateMacSecKey"
        operation.name = "AssociateMacSecKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMacSecKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMacSecKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:associate_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#AssociateVirtualInterface"
        operation.name = "AssociateVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVirtualInterfaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:confirm_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#ConfirmConnection"
        operation.name = "ConfirmConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:confirm_customer_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#ConfirmCustomerAgreement"
        operation.name = "ConfirmCustomerAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmCustomerAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmCustomerAgreementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:confirm_private_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#ConfirmPrivateVirtualInterface"
        operation.name = "ConfirmPrivateVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmPrivateVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmPrivateVirtualInterfaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:confirm_public_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#ConfirmPublicVirtualInterface"
        operation.name = "ConfirmPublicVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmPublicVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmPublicVirtualInterfaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:confirm_transit_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#ConfirmTransitVirtualInterface"
        operation.name = "ConfirmTransitVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmTransitVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmTransitVirtualInterfaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:create_bgp_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateBGPPeer"
        operation.name = "CreateBGPPeer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBGPPeerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBGPPeerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_direct_connect_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateDirectConnectGateway"
        operation.name = "CreateDirectConnectGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:create_direct_connect_gateway_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateDirectConnectGatewayAssociation"
        operation.name = "CreateDirectConnectGatewayAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:create_direct_connect_gateway_association_proposal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateDirectConnectGatewayAssociationProposal"
        operation.name = "CreateDirectConnectGatewayAssociationProposal"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationProposalRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationProposalResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:create_interconnect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateInterconnect"
        operation.name = "CreateInterconnect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInterconnectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInterconnectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_lag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateLag"
        operation.name = "CreateLag"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLagRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLagOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_private_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreatePrivateVirtualInterface"
        operation.name = "CreatePrivateVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivateVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivateVirtualInterfaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_public_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreatePublicVirtualInterface"
        operation.name = "CreatePublicVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePublicVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePublicVirtualInterfaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_transit_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#CreateTransitVirtualInterface"
        operation.name = "CreateTransitVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTransitVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTransitVirtualInterfaceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_bgp_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteBGPPeer"
        operation.name = "DeleteBGPPeer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBGPPeerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBGPPeerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_direct_connect_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteDirectConnectGateway"
        operation.name = "DeleteDirectConnectGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_direct_connect_gateway_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteDirectConnectGatewayAssociation"
        operation.name = "DeleteDirectConnectGatewayAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_direct_connect_gateway_association_proposal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteDirectConnectGatewayAssociationProposal"
        operation.name = "DeleteDirectConnectGatewayAssociationProposal"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationProposalRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationProposalResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_interconnect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteInterconnect"
        operation.name = "DeleteInterconnect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInterconnectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInterconnectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_lag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteLag"
        operation.name = "DeleteLag"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLagRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLagOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_virtual_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DeleteVirtualInterface"
        operation.name = "DeleteVirtualInterface"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVirtualInterfaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVirtualInterfaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_connection_loa, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeConnectionLoa"
        operation.name = "DescribeConnectionLoa"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionLoaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionLoaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeConnections"
        operation.name = "DescribeConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeConnectionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}, {"id" => "DescribeConnectionsFailure", "params" => {"connectionId" => "fake-connection"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:describe_connections_on_interconnect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeConnectionsOnInterconnect"
        operation.name = "DescribeConnectionsOnInterconnect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionsOnInterconnectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionsOnInterconnectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_customer_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeCustomerMetadata"
        operation.name = "DescribeCustomerMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomerMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_direct_connect_gateway_association_proposals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeDirectConnectGatewayAssociationProposals"
        operation.name = "DescribeDirectConnectGatewayAssociationProposals"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationProposalsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationProposalsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_direct_connect_gateway_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeDirectConnectGatewayAssociations"
        operation.name = "DescribeDirectConnectGatewayAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_direct_connect_gateway_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeDirectConnectGatewayAttachments"
        operation.name = "DescribeDirectConnectGatewayAttachments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAttachmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAttachmentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_direct_connect_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeDirectConnectGateways"
        operation.name = "DescribeDirectConnectGateways"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewaysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewaysResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_hosted_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeHostedConnections"
        operation.name = "DescribeHostedConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHostedConnectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHostedConnectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_interconnect_loa, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeInterconnectLoa"
        operation.name = "DescribeInterconnectLoa"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInterconnectLoaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInterconnectLoaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_interconnects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeInterconnects"
        operation.name = "DescribeInterconnects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInterconnectsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInterconnectsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_lags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeLags"
        operation.name = "DescribeLags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_loa, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeLoa"
        operation.name = "DescribeLoa"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoaOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeLocations"
        operation.name = "DescribeLocations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_router_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeRouterConfiguration"
        operation.name = "DescribeRouterConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRouterConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRouterConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_virtual_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeVirtualGateways"
        operation.name = "DescribeVirtualGateways"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVirtualGatewaysOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_virtual_interfaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DescribeVirtualInterfaces"
        operation.name = "DescribeVirtualInterfaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVirtualInterfacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVirtualInterfacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_connection_from_lag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DisassociateConnectionFromLag"
        operation.name = "DisassociateConnectionFromLag"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectionFromLagRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectionFromLagOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_mac_sec_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#DisassociateMacSecKey"
        operation.name = "DisassociateMacSecKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMacSecKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMacSecKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:list_virtual_interface_test_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#ListVirtualInterfaceTestHistory"
        operation.name = "ListVirtualInterfaceTestHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualInterfaceTestHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualInterfaceTestHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:start_bgp_failover_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#StartBgpFailoverTest"
        operation.name = "StartBgpFailoverTest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBgpFailoverTestRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBgpFailoverTestResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:stop_bgp_failover_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#StopBgpFailoverTest"
        operation.name = "StopBgpFailoverTest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBgpFailoverTestRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBgpFailoverTestResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:update_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:update_direct_connect_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#UpdateDirectConnectGateway"
        operation.name = "UpdateDirectConnectGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:update_direct_connect_gateway_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#UpdateDirectConnectGatewayAssociation"
        operation.name = "UpdateDirectConnectGatewayAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayAssociationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:update_lag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#UpdateLag"
        operation.name = "UpdateLag"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLagRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLagOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
      end)
      service.add_operation(:update_virtual_interface_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directconnect#UpdateVirtualInterfaceAttributes"
        operation.name = "UpdateVirtualInterfaceAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVirtualInterfaceAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVirtualInterfaceAttributesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectServerException)
        operation.traits = {}
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
