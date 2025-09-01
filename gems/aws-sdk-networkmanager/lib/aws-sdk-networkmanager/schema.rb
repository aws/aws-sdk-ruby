# frozen_string_literal: true

# This is generated code!

module Aws::NetworkManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#AWSAccountId', name: 'AWSAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    AWSLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AWSLocation', name: 'AWSLocation')
    AcceptAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AcceptAttachmentRequest', name: 'AcceptAttachmentRequest')
    AcceptAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AcceptAttachmentResponse', name: 'AcceptAttachmentResponse')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AccountStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AccountStatus', name: 'AccountStatus')
    AccountStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#AccountStatusList', name: 'AccountStatusList')
    Action = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#Action', name: 'Action', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssociateConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateConnectPeerRequest', name: 'AssociateConnectPeerRequest')
    AssociateConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateConnectPeerResponse', name: 'AssociateConnectPeerResponse')
    AssociateCustomerGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateCustomerGatewayRequest', name: 'AssociateCustomerGatewayRequest')
    AssociateCustomerGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateCustomerGatewayResponse', name: 'AssociateCustomerGatewayResponse')
    AssociateLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateLinkRequest', name: 'AssociateLinkRequest')
    AssociateLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateLinkResponse', name: 'AssociateLinkResponse')
    AssociateTransitGatewayConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateTransitGatewayConnectPeerRequest', name: 'AssociateTransitGatewayConnectPeerRequest')
    AssociateTransitGatewayConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AssociateTransitGatewayConnectPeerResponse', name: 'AssociateTransitGatewayConnectPeerResponse')
    Attachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Attachment', name: 'Attachment')
    AttachmentError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#AttachmentError', name: 'AttachmentError')
    AttachmentErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#AttachmentErrorCode', name: 'AttachmentErrorCode')
    AttachmentErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#AttachmentErrorList', name: 'AttachmentErrorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AttachmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#AttachmentId', name: 'AttachmentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^attachment-([0-9a-f]{8,17})$"})
    AttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#AttachmentList', name: 'AttachmentList')
    AttachmentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#AttachmentState', name: 'AttachmentState')
    AttachmentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#AttachmentType', name: 'AttachmentType')
    Bandwidth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Bandwidth', name: 'Bandwidth')
    BgpOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#BgpOptions', name: 'BgpOptions')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.networkmanager#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ChangeAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ChangeAction', name: 'ChangeAction')
    ChangeSetState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ChangeSetState', name: 'ChangeSetState')
    ChangeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ChangeStatus', name: 'ChangeStatus')
    ChangeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ChangeType', name: 'ChangeType')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectAttachment', name: 'ConnectAttachment')
    ConnectAttachmentOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectAttachmentOptions', name: 'ConnectAttachmentOptions')
    ConnectPeer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectPeer', name: 'ConnectPeer')
    ConnectPeerAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerAssociation', name: 'ConnectPeerAssociation')
    ConnectPeerAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerAssociationList', name: 'ConnectPeerAssociationList')
    ConnectPeerAssociationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerAssociationState', name: 'ConnectPeerAssociationState')
    ConnectPeerBgpConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerBgpConfiguration', name: 'ConnectPeerBgpConfiguration')
    ConnectPeerBgpConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerBgpConfigurationList', name: 'ConnectPeerBgpConfigurationList')
    ConnectPeerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerConfiguration', name: 'ConnectPeerConfiguration')
    ConnectPeerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerError', name: 'ConnectPeerError')
    ConnectPeerErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerErrorCode', name: 'ConnectPeerErrorCode')
    ConnectPeerErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerErrorList', name: 'ConnectPeerErrorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConnectPeerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerId', name: 'ConnectPeerId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^connect-peer-([0-9a-f]{8,17})$"})
    ConnectPeerIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerIdList', name: 'ConnectPeerIdList')
    ConnectPeerState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerState', name: 'ConnectPeerState')
    ConnectPeerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerSummary', name: 'ConnectPeerSummary')
    ConnectPeerSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectPeerSummaryList', name: 'ConnectPeerSummaryList')
    Connection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Connection', name: 'Connection')
    ConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ConnectionArn', name: 'ConnectionArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ConnectionHealth', name: 'ConnectionHealth')
    ConnectionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ConnectionId', name: 'ConnectionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectionIdList', name: 'ConnectionIdList')
    ConnectionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConnectionList', name: 'ConnectionList')
    ConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ConnectionState', name: 'ConnectionState')
    ConnectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ConnectionStatus', name: 'ConnectionStatus')
    ConnectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ConnectionType', name: 'ConnectionType')
    ConstrainedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ConstrainedString', name: 'ConstrainedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConstrainedStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ConstrainedStringList', name: 'ConstrainedStringList')
    CoreNetwork = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetwork', name: 'CoreNetwork')
    CoreNetworkArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkArn', name: 'CoreNetworkArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CoreNetworkChange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkChange', name: 'CoreNetworkChange')
    CoreNetworkChangeEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkChangeEvent', name: 'CoreNetworkChangeEvent')
    CoreNetworkChangeEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkChangeEventList', name: 'CoreNetworkChangeEventList')
    CoreNetworkChangeEventValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkChangeEventValues', name: 'CoreNetworkChangeEventValues')
    CoreNetworkChangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkChangeList', name: 'CoreNetworkChangeList')
    CoreNetworkChangeValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkChangeValues', name: 'CoreNetworkChangeValues')
    CoreNetworkEdge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkEdge', name: 'CoreNetworkEdge')
    CoreNetworkEdgeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkEdgeList', name: 'CoreNetworkEdgeList')
    CoreNetworkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkId', name: 'CoreNetworkId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^core-network-([0-9a-f]{8,17})$"})
    CoreNetworkNetworkFunctionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkNetworkFunctionGroup', name: 'CoreNetworkNetworkFunctionGroup')
    CoreNetworkNetworkFunctionGroupIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkNetworkFunctionGroupIdentifier', name: 'CoreNetworkNetworkFunctionGroupIdentifier')
    CoreNetworkNetworkFunctionGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkNetworkFunctionGroupList', name: 'CoreNetworkNetworkFunctionGroupList')
    CoreNetworkPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicy', name: 'CoreNetworkPolicy')
    CoreNetworkPolicyAlias = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyAlias', name: 'CoreNetworkPolicyAlias')
    CoreNetworkPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyDocument', name: 'CoreNetworkPolicyDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CoreNetworkPolicyError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyError', name: 'CoreNetworkPolicyError')
    CoreNetworkPolicyErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyErrorList', name: 'CoreNetworkPolicyErrorList')
    CoreNetworkPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyException', name: 'CoreNetworkPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CoreNetworkPolicyVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyVersion', name: 'CoreNetworkPolicyVersion')
    CoreNetworkPolicyVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkPolicyVersionList', name: 'CoreNetworkPolicyVersionList')
    CoreNetworkSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkSegment', name: 'CoreNetworkSegment')
    CoreNetworkSegmentEdgeIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkSegmentEdgeIdentifier', name: 'CoreNetworkSegmentEdgeIdentifier')
    CoreNetworkSegmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkSegmentList', name: 'CoreNetworkSegmentList')
    CoreNetworkState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkState', name: 'CoreNetworkState')
    CoreNetworkSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkSummary', name: 'CoreNetworkSummary')
    CoreNetworkSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CoreNetworkSummaryList', name: 'CoreNetworkSummaryList')
    CreateConnectAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateConnectAttachmentRequest', name: 'CreateConnectAttachmentRequest')
    CreateConnectAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateConnectAttachmentResponse', name: 'CreateConnectAttachmentResponse')
    CreateConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateConnectPeerRequest', name: 'CreateConnectPeerRequest')
    CreateConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateConnectPeerResponse', name: 'CreateConnectPeerResponse')
    CreateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateConnectionRequest', name: 'CreateConnectionRequest')
    CreateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateConnectionResponse', name: 'CreateConnectionResponse')
    CreateCoreNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateCoreNetworkRequest', name: 'CreateCoreNetworkRequest')
    CreateCoreNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateCoreNetworkResponse', name: 'CreateCoreNetworkResponse')
    CreateDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateDeviceRequest', name: 'CreateDeviceRequest')
    CreateDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateDeviceResponse', name: 'CreateDeviceResponse')
    CreateDirectConnectGatewayAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateDirectConnectGatewayAttachmentRequest', name: 'CreateDirectConnectGatewayAttachmentRequest')
    CreateDirectConnectGatewayAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateDirectConnectGatewayAttachmentResponse', name: 'CreateDirectConnectGatewayAttachmentResponse')
    CreateGlobalNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateGlobalNetworkRequest', name: 'CreateGlobalNetworkRequest')
    CreateGlobalNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateGlobalNetworkResponse', name: 'CreateGlobalNetworkResponse')
    CreateLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateLinkRequest', name: 'CreateLinkRequest')
    CreateLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateLinkResponse', name: 'CreateLinkResponse')
    CreateSiteRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateSiteRequest', name: 'CreateSiteRequest')
    CreateSiteResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateSiteResponse', name: 'CreateSiteResponse')
    CreateSiteToSiteVpnAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateSiteToSiteVpnAttachmentRequest', name: 'CreateSiteToSiteVpnAttachmentRequest')
    CreateSiteToSiteVpnAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateSiteToSiteVpnAttachmentResponse', name: 'CreateSiteToSiteVpnAttachmentResponse')
    CreateTransitGatewayPeeringRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateTransitGatewayPeeringRequest', name: 'CreateTransitGatewayPeeringRequest')
    CreateTransitGatewayPeeringResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateTransitGatewayPeeringResponse', name: 'CreateTransitGatewayPeeringResponse')
    CreateTransitGatewayRouteTableAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateTransitGatewayRouteTableAttachmentRequest', name: 'CreateTransitGatewayRouteTableAttachmentRequest')
    CreateTransitGatewayRouteTableAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateTransitGatewayRouteTableAttachmentResponse', name: 'CreateTransitGatewayRouteTableAttachmentResponse')
    CreateVpcAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateVpcAttachmentRequest', name: 'CreateVpcAttachmentRequest')
    CreateVpcAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CreateVpcAttachmentResponse', name: 'CreateVpcAttachmentResponse')
    CustomerGatewayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#CustomerGatewayArn', name: 'CustomerGatewayArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CustomerGatewayArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CustomerGatewayArnList', name: 'CustomerGatewayArnList')
    CustomerGatewayAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#CustomerGatewayAssociation', name: 'CustomerGatewayAssociation')
    CustomerGatewayAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#CustomerGatewayAssociationList', name: 'CustomerGatewayAssociationList')
    CustomerGatewayAssociationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#CustomerGatewayAssociationState', name: 'CustomerGatewayAssociationState')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.networkmanager#DateTime', name: 'DateTime')
    DeleteAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteAttachmentRequest', name: 'DeleteAttachmentRequest')
    DeleteAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteAttachmentResponse', name: 'DeleteAttachmentResponse')
    DeleteConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteConnectPeerRequest', name: 'DeleteConnectPeerRequest')
    DeleteConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteConnectPeerResponse', name: 'DeleteConnectPeerResponse')
    DeleteConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteConnectionResponse', name: 'DeleteConnectionResponse')
    DeleteCoreNetworkPolicyVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteCoreNetworkPolicyVersionRequest', name: 'DeleteCoreNetworkPolicyVersionRequest')
    DeleteCoreNetworkPolicyVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteCoreNetworkPolicyVersionResponse', name: 'DeleteCoreNetworkPolicyVersionResponse')
    DeleteCoreNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteCoreNetworkRequest', name: 'DeleteCoreNetworkRequest')
    DeleteCoreNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteCoreNetworkResponse', name: 'DeleteCoreNetworkResponse')
    DeleteDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteDeviceRequest', name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteDeviceResponse', name: 'DeleteDeviceResponse')
    DeleteGlobalNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteGlobalNetworkRequest', name: 'DeleteGlobalNetworkRequest')
    DeleteGlobalNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteGlobalNetworkResponse', name: 'DeleteGlobalNetworkResponse')
    DeleteLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteLinkRequest', name: 'DeleteLinkRequest')
    DeleteLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteLinkResponse', name: 'DeleteLinkResponse')
    DeletePeeringRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeletePeeringRequest', name: 'DeletePeeringRequest')
    DeletePeeringResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeletePeeringResponse', name: 'DeletePeeringResponse')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DeleteSiteRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteSiteRequest', name: 'DeleteSiteRequest')
    DeleteSiteResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeleteSiteResponse', name: 'DeleteSiteResponse')
    DeregisterTransitGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeregisterTransitGatewayRequest', name: 'DeregisterTransitGatewayRequest')
    DeregisterTransitGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DeregisterTransitGatewayResponse', name: 'DeregisterTransitGatewayResponse')
    DescribeGlobalNetworksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DescribeGlobalNetworksRequest', name: 'DescribeGlobalNetworksRequest')
    DescribeGlobalNetworksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DescribeGlobalNetworksResponse', name: 'DescribeGlobalNetworksResponse')
    Device = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Device', name: 'Device')
    DeviceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#DeviceArn', name: 'DeviceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DeviceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#DeviceId', name: 'DeviceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DeviceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#DeviceIdList', name: 'DeviceIdList')
    DeviceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#DeviceList', name: 'DeviceList')
    DeviceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#DeviceState', name: 'DeviceState')
    DirectConnectGatewayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#DirectConnectGatewayArn', name: 'DirectConnectGatewayArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:directconnect::[^:]{0,63}:dx-gateway\\/[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$"})
    DirectConnectGatewayAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DirectConnectGatewayAttachment', name: 'DirectConnectGatewayAttachment')
    DisassociateConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateConnectPeerRequest', name: 'DisassociateConnectPeerRequest')
    DisassociateConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateConnectPeerResponse', name: 'DisassociateConnectPeerResponse')
    DisassociateCustomerGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateCustomerGatewayRequest', name: 'DisassociateCustomerGatewayRequest')
    DisassociateCustomerGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateCustomerGatewayResponse', name: 'DisassociateCustomerGatewayResponse')
    DisassociateLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateLinkRequest', name: 'DisassociateLinkRequest')
    DisassociateLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateLinkResponse', name: 'DisassociateLinkResponse')
    DisassociateTransitGatewayConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateTransitGatewayConnectPeerRequest', name: 'DisassociateTransitGatewayConnectPeerRequest')
    DisassociateTransitGatewayConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#DisassociateTransitGatewayConnectPeerResponse', name: 'DisassociateTransitGatewayConnectPeerResponse')
    EdgeOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#EdgeOverride', name: 'EdgeOverride')
    EdgeSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#EdgeSet', name: 'EdgeSet')
    EdgeSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#EdgeSetList', name: 'EdgeSetList')
    ExceptionContextKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ExceptionContextKey', name: 'ExceptionContextKey')
    ExceptionContextMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.networkmanager#ExceptionContextMap', name: 'ExceptionContextMap')
    ExceptionContextValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ExceptionContextValue', name: 'ExceptionContextValue')
    ExecuteCoreNetworkChangeSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ExecuteCoreNetworkChangeSetRequest', name: 'ExecuteCoreNetworkChangeSetRequest')
    ExecuteCoreNetworkChangeSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ExecuteCoreNetworkChangeSetResponse', name: 'ExecuteCoreNetworkChangeSetResponse')
    ExternalRegionCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ExternalRegionCode', name: 'ExternalRegionCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ExternalRegionCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ExternalRegionCodeList', name: 'ExternalRegionCodeList')
    FilterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.networkmanager#FilterMap', name: 'FilterMap')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\.-]*$"})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?-]*$"})
    FilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#FilterValues', name: 'FilterValues')
    GetConnectAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectAttachmentRequest', name: 'GetConnectAttachmentRequest')
    GetConnectAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectAttachmentResponse', name: 'GetConnectAttachmentResponse')
    GetConnectPeerAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectPeerAssociationsRequest', name: 'GetConnectPeerAssociationsRequest')
    GetConnectPeerAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectPeerAssociationsResponse', name: 'GetConnectPeerAssociationsResponse')
    GetConnectPeerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectPeerRequest', name: 'GetConnectPeerRequest')
    GetConnectPeerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectPeerResponse', name: 'GetConnectPeerResponse')
    GetConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectionsRequest', name: 'GetConnectionsRequest')
    GetConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetConnectionsResponse', name: 'GetConnectionsResponse')
    GetCoreNetworkChangeEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkChangeEventsRequest', name: 'GetCoreNetworkChangeEventsRequest')
    GetCoreNetworkChangeEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkChangeEventsResponse', name: 'GetCoreNetworkChangeEventsResponse')
    GetCoreNetworkChangeSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkChangeSetRequest', name: 'GetCoreNetworkChangeSetRequest')
    GetCoreNetworkChangeSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkChangeSetResponse', name: 'GetCoreNetworkChangeSetResponse')
    GetCoreNetworkPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkPolicyRequest', name: 'GetCoreNetworkPolicyRequest')
    GetCoreNetworkPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkPolicyResponse', name: 'GetCoreNetworkPolicyResponse')
    GetCoreNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkRequest', name: 'GetCoreNetworkRequest')
    GetCoreNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCoreNetworkResponse', name: 'GetCoreNetworkResponse')
    GetCustomerGatewayAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCustomerGatewayAssociationsRequest', name: 'GetCustomerGatewayAssociationsRequest')
    GetCustomerGatewayAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetCustomerGatewayAssociationsResponse', name: 'GetCustomerGatewayAssociationsResponse')
    GetDevicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetDevicesRequest', name: 'GetDevicesRequest')
    GetDevicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetDevicesResponse', name: 'GetDevicesResponse')
    GetDirectConnectGatewayAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetDirectConnectGatewayAttachmentRequest', name: 'GetDirectConnectGatewayAttachmentRequest')
    GetDirectConnectGatewayAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetDirectConnectGatewayAttachmentResponse', name: 'GetDirectConnectGatewayAttachmentResponse')
    GetLinkAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetLinkAssociationsRequest', name: 'GetLinkAssociationsRequest')
    GetLinkAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetLinkAssociationsResponse', name: 'GetLinkAssociationsResponse')
    GetLinksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetLinksRequest', name: 'GetLinksRequest')
    GetLinksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetLinksResponse', name: 'GetLinksResponse')
    GetNetworkResourceCountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkResourceCountsRequest', name: 'GetNetworkResourceCountsRequest')
    GetNetworkResourceCountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkResourceCountsResponse', name: 'GetNetworkResourceCountsResponse')
    GetNetworkResourceRelationshipsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkResourceRelationshipsRequest', name: 'GetNetworkResourceRelationshipsRequest')
    GetNetworkResourceRelationshipsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkResourceRelationshipsResponse', name: 'GetNetworkResourceRelationshipsResponse')
    GetNetworkResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkResourcesRequest', name: 'GetNetworkResourcesRequest')
    GetNetworkResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkResourcesResponse', name: 'GetNetworkResourcesResponse')
    GetNetworkRoutesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkRoutesRequest', name: 'GetNetworkRoutesRequest')
    GetNetworkRoutesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkRoutesResponse', name: 'GetNetworkRoutesResponse')
    GetNetworkTelemetryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkTelemetryRequest', name: 'GetNetworkTelemetryRequest')
    GetNetworkTelemetryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetNetworkTelemetryResponse', name: 'GetNetworkTelemetryResponse')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    GetRouteAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetRouteAnalysisRequest', name: 'GetRouteAnalysisRequest')
    GetRouteAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetRouteAnalysisResponse', name: 'GetRouteAnalysisResponse')
    GetSiteToSiteVpnAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetSiteToSiteVpnAttachmentRequest', name: 'GetSiteToSiteVpnAttachmentRequest')
    GetSiteToSiteVpnAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetSiteToSiteVpnAttachmentResponse', name: 'GetSiteToSiteVpnAttachmentResponse')
    GetSitesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetSitesRequest', name: 'GetSitesRequest')
    GetSitesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetSitesResponse', name: 'GetSitesResponse')
    GetTransitGatewayConnectPeerAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayConnectPeerAssociationsRequest', name: 'GetTransitGatewayConnectPeerAssociationsRequest')
    GetTransitGatewayConnectPeerAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayConnectPeerAssociationsResponse', name: 'GetTransitGatewayConnectPeerAssociationsResponse')
    GetTransitGatewayPeeringRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayPeeringRequest', name: 'GetTransitGatewayPeeringRequest')
    GetTransitGatewayPeeringResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayPeeringResponse', name: 'GetTransitGatewayPeeringResponse')
    GetTransitGatewayRegistrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayRegistrationsRequest', name: 'GetTransitGatewayRegistrationsRequest')
    GetTransitGatewayRegistrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayRegistrationsResponse', name: 'GetTransitGatewayRegistrationsResponse')
    GetTransitGatewayRouteTableAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayRouteTableAttachmentRequest', name: 'GetTransitGatewayRouteTableAttachmentRequest')
    GetTransitGatewayRouteTableAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetTransitGatewayRouteTableAttachmentResponse', name: 'GetTransitGatewayRouteTableAttachmentResponse')
    GetVpcAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetVpcAttachmentRequest', name: 'GetVpcAttachmentRequest')
    GetVpcAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GetVpcAttachmentResponse', name: 'GetVpcAttachmentResponse')
    GlobalNetwork = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#GlobalNetwork', name: 'GlobalNetwork')
    GlobalNetworkArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#GlobalNetworkArn', name: 'GlobalNetworkArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GlobalNetworkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#GlobalNetworkId', name: 'GlobalNetworkId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GlobalNetworkIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#GlobalNetworkIdList', name: 'GlobalNetworkIdList')
    GlobalNetworkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#GlobalNetworkList', name: 'GlobalNetworkList')
    GlobalNetworkState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#GlobalNetworkState', name: 'GlobalNetworkState')
    IPAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#IPAddress', name: 'IPAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmanager#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Link = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Link', name: 'Link')
    LinkArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#LinkArn', name: 'LinkArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    LinkAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#LinkAssociation', name: 'LinkAssociation')
    LinkAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#LinkAssociationList', name: 'LinkAssociationList')
    LinkAssociationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#LinkAssociationState', name: 'LinkAssociationState')
    LinkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#LinkId', name: 'LinkId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    LinkIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#LinkIdList', name: 'LinkIdList')
    LinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#LinkList', name: 'LinkList')
    LinkState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#LinkState', name: 'LinkState')
    ListAttachmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListAttachmentsRequest', name: 'ListAttachmentsRequest')
    ListAttachmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListAttachmentsResponse', name: 'ListAttachmentsResponse')
    ListConnectPeersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListConnectPeersRequest', name: 'ListConnectPeersRequest')
    ListConnectPeersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListConnectPeersResponse', name: 'ListConnectPeersResponse')
    ListCoreNetworkPolicyVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListCoreNetworkPolicyVersionsRequest', name: 'ListCoreNetworkPolicyVersionsRequest')
    ListCoreNetworkPolicyVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListCoreNetworkPolicyVersionsResponse', name: 'ListCoreNetworkPolicyVersionsResponse')
    ListCoreNetworksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListCoreNetworksRequest', name: 'ListCoreNetworksRequest')
    ListCoreNetworksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListCoreNetworksResponse', name: 'ListCoreNetworksResponse')
    ListOrganizationServiceAccessStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListOrganizationServiceAccessStatusRequest', name: 'ListOrganizationServiceAccessStatusRequest')
    ListOrganizationServiceAccessStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListOrganizationServiceAccessStatusResponse', name: 'ListOrganizationServiceAccessStatusResponse')
    ListPeeringsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListPeeringsRequest', name: 'ListPeeringsRequest')
    ListPeeringsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListPeeringsResponse', name: 'ListPeeringsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Location', name: 'Location', traits: {"smithy.api#sensitive" => {}})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmanager#Long', name: 'Long')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmanager#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    NetworkFunctionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkFunctionGroup', name: 'NetworkFunctionGroup')
    NetworkFunctionGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#NetworkFunctionGroupList', name: 'NetworkFunctionGroupList')
    NetworkFunctionGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#NetworkFunctionGroupName', name: 'NetworkFunctionGroupName', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    NetworkResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkResource', name: 'NetworkResource')
    NetworkResourceCount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkResourceCount', name: 'NetworkResourceCount')
    NetworkResourceCountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#NetworkResourceCountList', name: 'NetworkResourceCountList')
    NetworkResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#NetworkResourceList', name: 'NetworkResourceList')
    NetworkResourceMetadataMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.networkmanager#NetworkResourceMetadataMap', name: 'NetworkResourceMetadataMap')
    NetworkResourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkResourceSummary', name: 'NetworkResourceSummary')
    NetworkRoute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkRoute', name: 'NetworkRoute')
    NetworkRouteDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkRouteDestination', name: 'NetworkRouteDestination')
    NetworkRouteDestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#NetworkRouteDestinationList', name: 'NetworkRouteDestinationList')
    NetworkRouteList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#NetworkRouteList', name: 'NetworkRouteList')
    NetworkTelemetry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#NetworkTelemetry', name: 'NetworkTelemetry')
    NetworkTelemetryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#NetworkTelemetryList', name: 'NetworkTelemetryList')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    OrganizationAwsServiceAccessStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#OrganizationAwsServiceAccessStatus', name: 'OrganizationAwsServiceAccessStatus', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    OrganizationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#OrganizationId', name: 'OrganizationId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^o-([0-9a-f]{8,17})$"})
    OrganizationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#OrganizationStatus', name: 'OrganizationStatus')
    PathComponent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PathComponent', name: 'PathComponent')
    PathComponentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#PathComponentList', name: 'PathComponentList')
    Peering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Peering', name: 'Peering')
    PeeringError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PeeringError', name: 'PeeringError')
    PeeringErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#PeeringErrorCode', name: 'PeeringErrorCode')
    PeeringErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#PeeringErrorList', name: 'PeeringErrorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    PeeringId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#PeeringId', name: 'PeeringId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^peering-([0-9a-f]{8,17})$"})
    PeeringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#PeeringList', name: 'PeeringList')
    PeeringState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#PeeringState', name: 'PeeringState')
    PeeringType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#PeeringType', name: 'PeeringType')
    PermissionsErrorContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PermissionsErrorContext', name: 'PermissionsErrorContext')
    ProposedNetworkFunctionGroupChange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ProposedNetworkFunctionGroupChange', name: 'ProposedNetworkFunctionGroupChange')
    ProposedSegmentChange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ProposedSegmentChange', name: 'ProposedSegmentChange')
    PutCoreNetworkPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PutCoreNetworkPolicyRequest', name: 'PutCoreNetworkPolicyRequest')
    PutCoreNetworkPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PutCoreNetworkPolicyResponse', name: 'PutCoreNetworkPolicyResponse')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    ReasonContextKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ReasonContextKey', name: 'ReasonContextKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ReasonContextMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.networkmanager#ReasonContextMap', name: 'ReasonContextMap')
    ReasonContextValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ReasonContextValue', name: 'ReasonContextValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    RegisterTransitGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RegisterTransitGatewayRequest', name: 'RegisterTransitGatewayRequest')
    RegisterTransitGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RegisterTransitGatewayResponse', name: 'RegisterTransitGatewayResponse')
    RejectAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RejectAttachmentRequest', name: 'RejectAttachmentRequest')
    RejectAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RejectAttachmentResponse', name: 'RejectAttachmentResponse')
    Relationship = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Relationship', name: 'Relationship')
    RelationshipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#RelationshipList', name: 'RelationshipList')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreCoreNetworkPolicyVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RestoreCoreNetworkPolicyVersionRequest', name: 'RestoreCoreNetworkPolicyVersionRequest')
    RestoreCoreNetworkPolicyVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RestoreCoreNetworkPolicyVersionResponse', name: 'RestoreCoreNetworkPolicyVersionResponse')
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmanager#RetryAfterSeconds', name: 'RetryAfterSeconds')
    RouteAnalysis = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysis', name: 'RouteAnalysis')
    RouteAnalysisCompletion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisCompletion', name: 'RouteAnalysisCompletion')
    RouteAnalysisCompletionReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisCompletionReasonCode', name: 'RouteAnalysisCompletionReasonCode')
    RouteAnalysisCompletionResultCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisCompletionResultCode', name: 'RouteAnalysisCompletionResultCode')
    RouteAnalysisEndpointOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisEndpointOptions', name: 'RouteAnalysisEndpointOptions')
    RouteAnalysisEndpointOptionsSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisEndpointOptionsSpecification', name: 'RouteAnalysisEndpointOptionsSpecification')
    RouteAnalysisPath = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisPath', name: 'RouteAnalysisPath')
    RouteAnalysisStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#RouteAnalysisStatus', name: 'RouteAnalysisStatus')
    RouteState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#RouteState', name: 'RouteState')
    RouteStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#RouteStateList', name: 'RouteStateList')
    RouteTableIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#RouteTableIdentifier', name: 'RouteTableIdentifier')
    RouteTableType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#RouteTableType', name: 'RouteTableType')
    RouteType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#RouteType', name: 'RouteType')
    RouteTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#RouteTypeList', name: 'RouteTypeList')
    SLRDeploymentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#SLRDeploymentStatus', name: 'SLRDeploymentStatus', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SegmentActionServiceInsertion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#SegmentActionServiceInsertion', name: 'SegmentActionServiceInsertion')
    SendViaMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#SendViaMode', name: 'SendViaMode')
    ServerSideString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#ServerSideString', name: 'ServerSideString', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ServiceInsertionAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ServiceInsertionAction', name: 'ServiceInsertionAction')
    ServiceInsertionActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ServiceInsertionActionList', name: 'ServiceInsertionActionList')
    ServiceInsertionSegments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ServiceInsertionSegments', name: 'ServiceInsertionSegments')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Site = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Site', name: 'Site')
    SiteArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#SiteArn', name: 'SiteArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SiteId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#SiteId', name: 'SiteId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SiteIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#SiteIdList', name: 'SiteIdList')
    SiteList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#SiteList', name: 'SiteList')
    SiteState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#SiteState', name: 'SiteState')
    SiteToSiteVpnAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#SiteToSiteVpnAttachment', name: 'SiteToSiteVpnAttachment')
    StartOrganizationServiceAccessUpdateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#StartOrganizationServiceAccessUpdateRequest', name: 'StartOrganizationServiceAccessUpdateRequest')
    StartOrganizationServiceAccessUpdateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#StartOrganizationServiceAccessUpdateResponse', name: 'StartOrganizationServiceAccessUpdateResponse')
    StartRouteAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#StartRouteAnalysisRequest', name: 'StartRouteAnalysisRequest')
    StartRouteAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#StartRouteAnalysisResponse', name: 'StartRouteAnalysisResponse')
    SubnetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#SubnetArn', name: 'SubnetArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:subnet\\/subnet-[0-9a-f]{8,17}$|^$"})
    SubnetArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#SubnetArnList', name: 'SubnetArnList')
    SynthesizedJsonCoreNetworkPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#SynthesizedJsonCoreNetworkPolicyDocument', name: 'SynthesizedJsonCoreNetworkPolicyDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#mediaType" => "application/json", "smithy.api#pattern" => "^[\\s\\S]*$"})
    SynthesizedJsonResourcePolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#SynthesizedJsonResourcePolicyDocument', name: 'SynthesizedJsonResourcePolicyDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#mediaType" => "application/json", "smithy.api#pattern" => "^[\\s\\S]*$"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransitGatewayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayArn', name: 'TransitGatewayArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayArnList', name: 'TransitGatewayArnList')
    TransitGatewayAttachmentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayAttachmentArn', name: 'TransitGatewayAttachmentArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayAttachmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayAttachmentId', name: 'TransitGatewayAttachmentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayConnectPeerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayConnectPeerArn', name: 'TransitGatewayConnectPeerArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayConnectPeerArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayConnectPeerArnList', name: 'TransitGatewayConnectPeerArnList')
    TransitGatewayConnectPeerAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayConnectPeerAssociation', name: 'TransitGatewayConnectPeerAssociation')
    TransitGatewayConnectPeerAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayConnectPeerAssociationList', name: 'TransitGatewayConnectPeerAssociationList')
    TransitGatewayConnectPeerAssociationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayConnectPeerAssociationState', name: 'TransitGatewayConnectPeerAssociationState')
    TransitGatewayPeering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayPeering', name: 'TransitGatewayPeering')
    TransitGatewayPeeringAttachmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayPeeringAttachmentId', name: 'TransitGatewayPeeringAttachmentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^tgw-attach-([0-9a-f]{8,17})$"})
    TransitGatewayRegistration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayRegistration', name: 'TransitGatewayRegistration')
    TransitGatewayRegistrationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayRegistrationList', name: 'TransitGatewayRegistrationList')
    TransitGatewayRegistrationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayRegistrationState', name: 'TransitGatewayRegistrationState')
    TransitGatewayRegistrationStateReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayRegistrationStateReason', name: 'TransitGatewayRegistrationStateReason')
    TransitGatewayRouteTableArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayRouteTableArn', name: 'TransitGatewayRouteTableArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayRouteTableAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#TransitGatewayRouteTableAttachment', name: 'TransitGatewayRouteTableAttachment')
    TunnelProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#TunnelProtocol', name: 'TunnelProtocol')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateConnectionRequest', name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateConnectionResponse', name: 'UpdateConnectionResponse')
    UpdateCoreNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateCoreNetworkRequest', name: 'UpdateCoreNetworkRequest')
    UpdateCoreNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateCoreNetworkResponse', name: 'UpdateCoreNetworkResponse')
    UpdateDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateDeviceRequest', name: 'UpdateDeviceRequest')
    UpdateDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateDeviceResponse', name: 'UpdateDeviceResponse')
    UpdateDirectConnectGatewayAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateDirectConnectGatewayAttachmentRequest', name: 'UpdateDirectConnectGatewayAttachmentRequest')
    UpdateDirectConnectGatewayAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateDirectConnectGatewayAttachmentResponse', name: 'UpdateDirectConnectGatewayAttachmentResponse')
    UpdateGlobalNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateGlobalNetworkRequest', name: 'UpdateGlobalNetworkRequest')
    UpdateGlobalNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateGlobalNetworkResponse', name: 'UpdateGlobalNetworkResponse')
    UpdateLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateLinkRequest', name: 'UpdateLinkRequest')
    UpdateLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateLinkResponse', name: 'UpdateLinkResponse')
    UpdateNetworkResourceMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateNetworkResourceMetadataRequest', name: 'UpdateNetworkResourceMetadataRequest')
    UpdateNetworkResourceMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateNetworkResourceMetadataResponse', name: 'UpdateNetworkResourceMetadataResponse')
    UpdateSiteRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateSiteRequest', name: 'UpdateSiteRequest')
    UpdateSiteResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateSiteResponse', name: 'UpdateSiteResponse')
    UpdateVpcAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateVpcAttachmentRequest', name: 'UpdateVpcAttachmentRequest')
    UpdateVpcAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#UpdateVpcAttachmentResponse', name: 'UpdateVpcAttachmentResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmanager#ValidationExceptionReason', name: 'ValidationExceptionReason')
    Via = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#Via', name: 'Via')
    VpcArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#VpcArn', name: 'VpcArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:vpc\\/vpc-[0-9a-f]{8,17}$"})
    VpcAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#VpcAttachment', name: 'VpcAttachment')
    VpcOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#VpcOptions', name: 'VpcOptions')
    VpnConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmanager#VpnConnectionArn', name: 'VpnConnectionArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:vpn-connection\\/vpn-[0-9a-f]{8,17}$"})
    WhenSentTo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmanager#WhenSentTo', name: 'WhenSentTo')
    WhenSentToSegmentsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#WhenSentToSegmentsList', name: 'WhenSentToSegmentsList')
    WithEdgeOverridesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmanager#WithEdgeOverridesList', name: 'WithEdgeOverridesList')

    AWSLocation.add_member(:zone, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Zone', traits: {"smithy.api#documentation" => "<p>The Zone that the device is located in. Specify the ID of an Availability Zone, Local\n            Zone, Wavelength Zone, or an Outpost.</p>"}))
    AWSLocation.add_member(:subnet_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArn, location_name: 'SubnetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the subnet that the device is located in.</p>"}))
    AWSLocation.type = Types::AWSLocation
    AcceptAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptAttachmentRequest.type = Types::AcceptAttachmentRequest
    AcceptAttachmentResponse.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment', traits: {"smithy.api#documentation" => "<p>The response to the attachment request. </p>"}))
    AcceptAttachmentResponse.type = Types::AcceptAttachmentResponse
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountStatus.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of an account within the Amazon Web Services Organization.</p>"}))
    AccountStatus.add_member(:slr_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SLRDeploymentStatus, location_name: 'SLRDeploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of SLR deployment for the account.</p>"}))
    AccountStatus.type = Types::AccountStatus
    AccountStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus)
    AssociateConnectPeerRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of your global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateConnectPeerRequest.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of the Connect peer.</p>", "smithy.api#required" => {}}))
    AssociateConnectPeerRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#required" => {}}))
    AssociateConnectPeerRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    AssociateConnectPeerRequest.type = Types::AssociateConnectPeerRequest
    AssociateConnectPeerResponse.add_member(:connect_peer_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerAssociation, location_name: 'ConnectPeerAssociation', traits: {"smithy.api#documentation" => "<p>The response to the Connect peer request.</p>"}))
    AssociateConnectPeerResponse.type = Types::AssociateConnectPeerResponse
    AssociateCustomerGatewayRequest.add_member(:customer_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayArn, location_name: 'CustomerGatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer gateway.</p>", "smithy.api#required" => {}}))
    AssociateCustomerGatewayRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateCustomerGatewayRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#required" => {}}))
    AssociateCustomerGatewayRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    AssociateCustomerGatewayRequest.type = Types::AssociateCustomerGatewayRequest
    AssociateCustomerGatewayResponse.add_member(:customer_gateway_association, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayAssociation, location_name: 'CustomerGatewayAssociation', traits: {"smithy.api#documentation" => "<p>The customer gateway association.</p>"}))
    AssociateCustomerGatewayResponse.type = Types::AssociateCustomerGatewayResponse
    AssociateLinkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLinkRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#required" => {}}))
    AssociateLinkRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>", "smithy.api#required" => {}}))
    AssociateLinkRequest.type = Types::AssociateLinkRequest
    AssociateLinkResponse.add_member(:link_association, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAssociation, location_name: 'LinkAssociation', traits: {"smithy.api#documentation" => "<p>The link association.</p>"}))
    AssociateLinkResponse.type = Types::AssociateLinkResponse
    AssociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn, location_name: 'TransitGatewayConnectPeerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Connect peer.</p>", "smithy.api#required" => {}}))
    AssociateTransitGatewayConnectPeerRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#required" => {}}))
    AssociateTransitGatewayConnectPeerRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    AssociateTransitGatewayConnectPeerRequest.type = Types::AssociateTransitGatewayConnectPeerRequest
    AssociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation, location_name: 'TransitGatewayConnectPeerAssociation', traits: {"smithy.api#documentation" => "<p>The transit gateway Connect peer association.</p>"}))
    AssociateTransitGatewayConnectPeerResponse.type = Types::AssociateTransitGatewayConnectPeerResponse
    Attachment.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    Attachment.add_member(:core_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: 'CoreNetworkArn', traits: {"smithy.api#documentation" => "<p>The ARN of a core network.</p>"}))
    Attachment.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>"}))
    Attachment.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment account owner.</p>"}))
    Attachment.add_member(:attachment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentType, location_name: 'AttachmentType', traits: {"smithy.api#documentation" => "<p>The type of attachment.</p>"}))
    Attachment.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the attachment.</p>"}))
    Attachment.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Region where the edge is located. This is returned for all attachment types except a Direct Connect gateway attachment, which instead returns <code>EdgeLocations</code>.</p>"}))
    Attachment.add_member(:edge_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: 'EdgeLocations', traits: {"smithy.api#documentation" => "<p>The edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types retrun <code>EdgeLocation</code>.</p>"}))
    Attachment.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The attachment resource ARN.</p>"}))
    Attachment.add_member(:attachment_policy_rule_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AttachmentPolicyRuleNumber', traits: {"smithy.api#documentation" => "<p>The policy rule number associated with the attachment.</p>"}))
    Attachment.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The name of the segment attachment.</p>"}))
    Attachment.add_member(:network_function_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFunctionGroupName, location_name: 'NetworkFunctionGroupName', traits: {"smithy.api#documentation" => "<p>The name of the network function group.</p>"}))
    Attachment.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the attachment.</p>"}))
    Attachment.add_member(:proposed_segment_change, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposedSegmentChange, location_name: 'ProposedSegmentChange', traits: {"smithy.api#documentation" => "<p>The attachment to move from one segment to another.</p>"}))
    Attachment.add_member(:proposed_network_function_group_change, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposedNetworkFunctionGroupChange, location_name: 'ProposedNetworkFunctionGroupChange', traits: {"smithy.api#documentation" => "<p>Describes a proposed change to a network function group associated with the attachment.</p>"}))
    Attachment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the attachment was created.</p>"}))
    Attachment.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the attachment was last updated.</p>"}))
    Attachment.add_member(:last_modification_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentErrorList, location_name: 'LastModificationErrors', traits: {"smithy.api#documentation" => "<p>Describes the error associated with the attachment request.</p>"}))
    Attachment.type = Types::Attachment
    AttachmentError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The error code for the attachment request. </p>"}))
    AttachmentError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message associated with the error <code>code</code>.</p>"}))
    AttachmentError.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the requested attachment resource.</p>"}))
    AttachmentError.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment request.</p>"}))
    AttachmentError.type = Types::AttachmentError
    AttachmentErrorCode.add_member(:vpc_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_NOT_FOUND', traits: {"smithy.api#enumValue" => "VPC_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:subnet_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:subnet_duplicated_in_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE', traits: {"smithy.api#enumValue" => "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE"}))
    AttachmentErrorCode.add_member(:subnet_no_free_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NO_FREE_ADDRESSES', traits: {"smithy.api#enumValue" => "SUBNET_NO_FREE_ADDRESSES"}))
    AttachmentErrorCode.add_member(:subnet_unsupported_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_UNSUPPORTED_AVAILABILITY_ZONE', traits: {"smithy.api#enumValue" => "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE"}))
    AttachmentErrorCode.add_member(:subnet_no_ipv6_cidrs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NO_IPV6_CIDRS', traits: {"smithy.api#enumValue" => "SUBNET_NO_IPV6_CIDRS"}))
    AttachmentErrorCode.add_member(:vpn_connection_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPN_CONNECTION_NOT_FOUND', traits: {"smithy.api#enumValue" => "VPN_CONNECTION_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:maximum_no_encap_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED"}))
    AttachmentErrorCode.add_member(:direct_connect_gateway_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_CONNECT_GATEWAY_NOT_FOUND', traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:direct_connect_gateway_existing_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS', traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS"}))
    AttachmentErrorCode.add_member(:direct_connect_gateway_no_private_vif, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF', traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF"}))
    AttachmentErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentError)
    AttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    AttachmentState.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    AttachmentState.add_member(:pending_attachment_acceptance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ATTACHMENT_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PENDING_ATTACHMENT_ACCEPTANCE"}))
    AttachmentState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AttachmentState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AttachmentState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AttachmentState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AttachmentState.add_member(:pending_network_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_NETWORK_UPDATE', traits: {"smithy.api#enumValue" => "PENDING_NETWORK_UPDATE"}))
    AttachmentState.add_member(:pending_tag_acceptance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_TAG_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PENDING_TAG_ACCEPTANCE"}))
    AttachmentState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AttachmentType.add_member(:connect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECT', traits: {"smithy.api#enumValue" => "CONNECT"}))
    AttachmentType.add_member(:site_to_site_vpn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SITE_TO_SITE_VPN', traits: {"smithy.api#enumValue" => "SITE_TO_SITE_VPN"}))
    AttachmentType.add_member(:vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC', traits: {"smithy.api#enumValue" => "VPC"}))
    AttachmentType.add_member(:direct_connect_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_CONNECT_GATEWAY', traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY"}))
    AttachmentType.add_member(:transit_gateway_route_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_ROUTE_TABLE', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ROUTE_TABLE"}))
    Bandwidth.add_member(:upload_speed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'UploadSpeed', traits: {"smithy.api#documentation" => "<p>Upload speed in Mbps.</p>"}))
    Bandwidth.add_member(:download_speed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DownloadSpeed', traits: {"smithy.api#documentation" => "<p>Download speed in Mbps.</p>"}))
    Bandwidth.type = Types::Bandwidth
    BgpOptions.add_member(:peer_asn, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'PeerAsn', traits: {"smithy.api#documentation" => "<p>The Peer ASN of the BGP.</p>"}))
    BgpOptions.type = Types::BgpOptions
    ChangeAction.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    ChangeAction.add_member(:modify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFY', traits: {"smithy.api#enumValue" => "MODIFY"}))
    ChangeAction.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    ChangeSetState.add_member(:pending_generation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_GENERATION', traits: {"smithy.api#enumValue" => "PENDING_GENERATION"}))
    ChangeSetState.add_member(:failed_generation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_GENERATION', traits: {"smithy.api#enumValue" => "FAILED_GENERATION"}))
    ChangeSetState.add_member(:ready_to_execute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_TO_EXECUTE', traits: {"smithy.api#enumValue" => "READY_TO_EXECUTE"}))
    ChangeSetState.add_member(:executing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTING', traits: {"smithy.api#enumValue" => "EXECUTING"}))
    ChangeSetState.add_member(:execution_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_SUCCEEDED', traits: {"smithy.api#enumValue" => "EXECUTION_SUCCEEDED"}))
    ChangeSetState.add_member(:out_of_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUT_OF_DATE', traits: {"smithy.api#enumValue" => "OUT_OF_DATE"}))
    ChangeStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ChangeStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChangeStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ChangeStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeType.add_member(:core_network_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE_NETWORK_SEGMENT', traits: {"smithy.api#enumValue" => "CORE_NETWORK_SEGMENT"}))
    ChangeType.add_member(:network_function_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_FUNCTION_GROUP', traits: {"smithy.api#enumValue" => "NETWORK_FUNCTION_GROUP"}))
    ChangeType.add_member(:core_network_edge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE_NETWORK_EDGE', traits: {"smithy.api#enumValue" => "CORE_NETWORK_EDGE"}))
    ChangeType.add_member(:attachment_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHMENT_MAPPING', traits: {"smithy.api#enumValue" => "ATTACHMENT_MAPPING"}))
    ChangeType.add_member(:attachment_route_propagation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHMENT_ROUTE_PROPAGATION', traits: {"smithy.api#enumValue" => "ATTACHMENT_ROUTE_PROPAGATION"}))
    ChangeType.add_member(:attachment_route_static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHMENT_ROUTE_STATIC', traits: {"smithy.api#enumValue" => "ATTACHMENT_ROUTE_STATIC"}))
    ChangeType.add_member(:core_network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE_NETWORK_CONFIGURATION', traits: {"smithy.api#enumValue" => "CORE_NETWORK_CONFIGURATION"}))
    ChangeType.add_member(:segments_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEGMENTS_CONFIGURATION', traits: {"smithy.api#enumValue" => "SEGMENTS_CONFIGURATION"}))
    ChangeType.add_member(:segment_actions_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEGMENT_ACTIONS_CONFIGURATION', traits: {"smithy.api#enumValue" => "SEGMENT_ACTIONS_CONFIGURATION"}))
    ChangeType.add_member(:attachment_policies_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHMENT_POLICIES_CONFIGURATION', traits: {"smithy.api#enumValue" => "ATTACHMENT_POLICIES_CONFIGURATION"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectAttachment.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment', traits: {"smithy.api#documentation" => "<p>The attachment details.</p>"}))
    ConnectAttachment.add_member(:transport_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'TransportAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the transport attachment.</p>"}))
    ConnectAttachment.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAttachmentOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Options for connecting an attachment.</p>"}))
    ConnectAttachment.type = Types::ConnectAttachment
    ConnectAttachmentOptions.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelProtocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol used for the attachment connection.</p>"}))
    ConnectAttachmentOptions.type = Types::ConnectAttachmentOptions
    ConnectPeer.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    ConnectPeer.add_member(:connect_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'ConnectAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment to connect.</p>"}))
    ConnectPeer.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of the Connect peer.</p>"}))
    ConnectPeer.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Connect peer Regions where edges are located.</p>"}))
    ConnectPeer.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the Connect peer.</p>"}))
    ConnectPeer.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the Connect peer was created.</p>"}))
    ConnectPeer.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the Connect peer.</p>"}))
    ConnectPeer.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with the Connect peer.</p>"}))
    ConnectPeer.add_member(:subnet_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArn, location_name: 'SubnetArn', traits: {"smithy.api#documentation" => "<p>The subnet ARN for the Connect peer. This only applies only when the protocol is NO_ENCAP.</p>"}))
    ConnectPeer.add_member(:last_modification_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerErrorList, location_name: 'LastModificationErrors', traits: {"smithy.api#documentation" => "<p>Describes the error associated with the attachment request.</p>"}))
    ConnectPeer.type = Types::ConnectPeer
    ConnectPeerAssociation.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of the Connect peer.</p>"}))
    ConnectPeerAssociation.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    ConnectPeerAssociation.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device to connect to.</p>"}))
    ConnectPeerAssociation.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    ConnectPeerAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerAssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the Connect peer association.</p>"}))
    ConnectPeerAssociation.type = Types::ConnectPeerAssociation
    ConnectPeerAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerAssociation)
    ConnectPeerAssociationState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectPeerAssociationState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectPeerAssociationState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectPeerAssociationState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectPeerBgpConfiguration.add_member(:core_network_asn, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CoreNetworkAsn', traits: {"smithy.api#documentation" => "<p>The ASN of the Coret Network.</p>"}))
    ConnectPeerBgpConfiguration.add_member(:peer_asn, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'PeerAsn', traits: {"smithy.api#documentation" => "<p>The ASN of the Connect peer.</p>"}))
    ConnectPeerBgpConfiguration.add_member(:core_network_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'CoreNetworkAddress', traits: {"smithy.api#documentation" => "<p>The address of a core network.</p>"}))
    ConnectPeerBgpConfiguration.add_member(:peer_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'PeerAddress', traits: {"smithy.api#documentation" => "<p>The address of a core network Connect peer.</p>"}))
    ConnectPeerBgpConfiguration.type = Types::ConnectPeerBgpConfiguration
    ConnectPeerBgpConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerBgpConfiguration)
    ConnectPeerConfiguration.add_member(:core_network_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'CoreNetworkAddress', traits: {"smithy.api#documentation" => "<p>The IP address of a core network.</p>"}))
    ConnectPeerConfiguration.add_member(:peer_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'PeerAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the Connect peer.</p>"}))
    ConnectPeerConfiguration.add_member(:inside_cidr_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'InsideCidrBlocks', traits: {"smithy.api#documentation" => "<p>The inside IP addresses used for a Connect peer configuration.</p>"}))
    ConnectPeerConfiguration.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelProtocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol used for a Connect peer configuration.</p>"}))
    ConnectPeerConfiguration.add_member(:bgp_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerBgpConfigurationList, location_name: 'BgpConfigurations', traits: {"smithy.api#documentation" => "<p>The Connect peer BGP configurations.</p>"}))
    ConnectPeerConfiguration.type = Types::ConnectPeerConfiguration
    ConnectPeerError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The error code for the Connect peer request.</p>"}))
    ConnectPeerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message associated with the error <code>code</code>.</p>"}))
    ConnectPeerError.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the requested Connect peer resource.</p>"}))
    ConnectPeerError.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the Connect peer request.</p>"}))
    ConnectPeerError.type = Types::ConnectPeerError
    ConnectPeerErrorCode.add_member(:edge_location_no_free_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE_LOCATION_NO_FREE_IPS', traits: {"smithy.api#enumValue" => "EDGE_LOCATION_NO_FREE_IPS"}))
    ConnectPeerErrorCode.add_member(:edge_location_peer_duplicate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE_LOCATION_PEER_DUPLICATE', traits: {"smithy.api#enumValue" => "EDGE_LOCATION_PEER_DUPLICATE"}))
    ConnectPeerErrorCode.add_member(:subnet_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    ConnectPeerErrorCode.add_member(:ip_outside_subnet_cidr_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_OUTSIDE_SUBNET_CIDR_RANGE', traits: {"smithy.api#enumValue" => "IP_OUTSIDE_SUBNET_CIDR_RANGE"}))
    ConnectPeerErrorCode.add_member(:invalid_inside_cidr_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_INSIDE_CIDR_BLOCK', traits: {"smithy.api#enumValue" => "INVALID_INSIDE_CIDR_BLOCK"}))
    ConnectPeerErrorCode.add_member(:no_associated_cidr_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ASSOCIATED_CIDR_BLOCK', traits: {"smithy.api#enumValue" => "NO_ASSOCIATED_CIDR_BLOCK"}))
    ConnectPeerErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerError)
    ConnectPeerIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId)
    ConnectPeerState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectPeerState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ConnectPeerState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectPeerState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectPeerSummary.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    ConnectPeerSummary.add_member(:connect_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'ConnectAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of a Connect peer attachment.</p>"}))
    ConnectPeerSummary.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of a Connect peer.</p>"}))
    ConnectPeerSummary.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Region where the edge is located.</p>"}))
    ConnectPeerSummary.add_member(:connect_peer_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerState, location_name: 'ConnectPeerState', traits: {"smithy.api#documentation" => "<p>The state of a Connect peer.</p>"}))
    ConnectPeerSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when a Connect peer was created.</p>"}))
    ConnectPeerSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with the Connect peer summary.</p>"}))
    ConnectPeerSummary.add_member(:subnet_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArn, location_name: 'SubnetArn', traits: {"smithy.api#documentation" => "<p>The subnet ARN for the Connect peer summary.</p>"}))
    ConnectPeerSummary.type = Types::ConnectPeerSummary
    ConnectPeerSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerSummary)
    Connection.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the connection.</p>"}))
    Connection.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection.</p>"}))
    Connection.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    Connection.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the first device in the connection.</p>"}))
    Connection.add_member(:connected_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'ConnectedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the second device in the connection.</p>"}))
    Connection.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link for the first device in the connection.</p>"}))
    Connection.add_member(:connected_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'ConnectedLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link for the second device in the connection.</p>"}))
    Connection.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the connection.</p>"}))
    Connection.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connection was created.</p>"}))
    Connection.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the connection.</p>"}))
    Connection.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the connection.</p>"}))
    Connection.type = Types::Connection
    ConnectionHealth.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The connection type.</p>"}))
    ConnectionHealth.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The connection status.</p>"}))
    ConnectionHealth.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The time the status was last updated.</p>"}))
    ConnectionHealth.type = Types::ConnectionHealth
    ConnectionIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId)
    ConnectionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Connection)
    ConnectionState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectionState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectionState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ConnectionStatus.add_member(:up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UP', traits: {"smithy.api#enumValue" => "UP"}))
    ConnectionStatus.add_member(:down, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOWN', traits: {"smithy.api#enumValue" => "DOWN"}))
    ConnectionType.add_member(:bgp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BGP', traits: {"smithy.api#enumValue" => "BGP"}))
    ConnectionType.add_member(:ipsec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPSEC', traits: {"smithy.api#enumValue" => "IPSEC"}))
    ConstrainedStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString)
    CoreNetwork.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network that your core network is a part of. </p>"}))
    CoreNetwork.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    CoreNetwork.add_member(:core_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: 'CoreNetworkArn', traits: {"smithy.api#documentation" => "<p>The ARN of a core network.</p>"}))
    CoreNetwork.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of a core network.</p>"}))
    CoreNetwork.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when a core network was created.</p>"}))
    CoreNetwork.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of a core network.</p>"}))
    CoreNetwork.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkSegmentList, location_name: 'Segments', traits: {"smithy.api#documentation" => "<p>The segments within a core network.</p>"}))
    CoreNetwork.add_member(:network_function_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkNetworkFunctionGroupList, location_name: 'NetworkFunctionGroups', traits: {"smithy.api#documentation" => "<p>The network function groups associated with a core network.</p>"}))
    CoreNetwork.add_member(:edges, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkEdgeList, location_name: 'Edges', traits: {"smithy.api#documentation" => "<p>The edges within a core network.</p>"}))
    CoreNetwork.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with a core network.</p>"}))
    CoreNetwork.type = Types::CoreNetwork
    CoreNetworkChange.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of change.</p>"}))
    CoreNetworkChange.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to take for a core network.</p>"}))
    CoreNetworkChange.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The resource identifier.</p>"}))
    CoreNetworkChange.add_member(:previous_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChangeValues, location_name: 'PreviousValues', traits: {"smithy.api#documentation" => "<p>The previous values for a core network.</p>"}))
    CoreNetworkChange.add_member(:new_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChangeValues, location_name: 'NewValues', traits: {"smithy.api#documentation" => "<p>The new value for a core network</p>"}))
    CoreNetworkChange.add_member(:identifier_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'IdentifierPath', traits: {"smithy.api#documentation" => "<p>Uniquely identifies the path for a change within the changeset. For example, the <code>IdentifierPath</code> for a core network segment change might be <code>\"CORE_NETWORK_SEGMENT/us-east-1/devsegment\"</code>.</p>"}))
    CoreNetworkChange.type = Types::CoreNetworkChange
    CoreNetworkChangeEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Describes the type of change event. </p>"}))
    CoreNetworkChangeEvent.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action taken for the change event.</p>"}))
    CoreNetworkChangeEvent.add_member(:identifier_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'IdentifierPath', traits: {"smithy.api#documentation" => "<p>Uniquely identifies the path for a change within the changeset. For example, the <code>IdentifierPath</code> for a core network segment change might be <code>\"CORE_NETWORK_SEGMENT/us-east-1/devsegment\"</code>.</p>"}))
    CoreNetworkChangeEvent.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EventTime', traits: {"smithy.api#documentation" => "<p>The timestamp for an event change in status.</p>"}))
    CoreNetworkChangeEvent.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the core network change event.</p>"}))
    CoreNetworkChangeEvent.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChangeEventValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>Details of the change event.</p>"}))
    CoreNetworkChangeEvent.type = Types::CoreNetworkChangeEvent
    CoreNetworkChangeEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChangeEvent)
    CoreNetworkChangeEventValues.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The edge location for the core network change event.</p>"}))
    CoreNetworkChangeEventValues.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The segment name if the change event is associated with a segment.</p>"}))
    CoreNetworkChangeEventValues.add_member(:network_function_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'NetworkFunctionGroupName', traits: {"smithy.api#documentation" => "<p>The changed network function group name.</p>"}))
    CoreNetworkChangeEventValues.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment if the change event is associated with an attachment.  </p>"}))
    CoreNetworkChangeEventValues.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>For a <code>STATIC_ROUTE</code> event, this is the IP address.</p>"}))
    CoreNetworkChangeEventValues.type = Types::CoreNetworkChangeEventValues
    CoreNetworkChangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChange)
    CoreNetworkChangeValues.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The names of the segments in a core network.</p>"}))
    CoreNetworkChangeValues.add_member(:network_function_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'NetworkFunctionGroupName', traits: {"smithy.api#documentation" => "<p>The network function group name if the change event is associated with a network function group.</p>"}))
    CoreNetworkChangeValues.add_member(:edge_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: 'EdgeLocations', traits: {"smithy.api#documentation" => "<p>The Regions where edges are located in a core network. </p>"}))
    CoreNetworkChangeValues.add_member(:asn, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Asn', traits: {"smithy.api#documentation" => "<p>The ASN of a core network.</p>"}))
    CoreNetworkChangeValues.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>The IP addresses used for a core network.</p>"}))
    CoreNetworkChangeValues.add_member(:destination_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'DestinationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the destination.</p>"}))
    CoreNetworkChangeValues.add_member(:inside_cidr_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'InsideCidrBlocks', traits: {"smithy.api#documentation" => "<p>The inside IP addresses used for core network change values.</p>"}))
    CoreNetworkChangeValues.add_member(:shared_segments, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'SharedSegments', traits: {"smithy.api#documentation" => "<p>The shared segments for a core network change value. </p>"}))
    CoreNetworkChangeValues.add_member(:service_insertion_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInsertionActionList, location_name: 'ServiceInsertionActions', traits: {"smithy.api#documentation" => "<p>Describes the service insertion action. </p>"}))
    CoreNetworkChangeValues.add_member(:vpn_ecmp_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VpnEcmpSupport', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether Equal Cost Multipath (ECMP) is enabled for the core network.</p>"}))
    CoreNetworkChangeValues.add_member(:dns_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DnsSupport', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether public DNS support is supported. The default is <code>true</code>. </p>"}))
    CoreNetworkChangeValues.add_member(:security_group_referencing_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SecurityGroupReferencingSupport', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether security group referencing is enabled for the core network.</p>"}))
    CoreNetworkChangeValues.type = Types::CoreNetworkChangeValues
    CoreNetworkEdge.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Region where a core network edge is located.</p>"}))
    CoreNetworkEdge.add_member(:asn, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Asn', traits: {"smithy.api#documentation" => "<p>The ASN of a core network edge.</p>"}))
    CoreNetworkEdge.add_member(:inside_cidr_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'InsideCidrBlocks', traits: {"smithy.api#documentation" => "<p>The inside IP addresses used for core network edges.</p>"}))
    CoreNetworkEdge.type = Types::CoreNetworkEdge
    CoreNetworkEdgeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkEdge)
    CoreNetworkNetworkFunctionGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the network function group.</p>"}))
    CoreNetworkNetworkFunctionGroup.add_member(:edge_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: 'EdgeLocations', traits: {"smithy.api#documentation" => "<p>The core network edge locations.</p>"}))
    CoreNetworkNetworkFunctionGroup.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInsertionSegments, location_name: 'Segments', traits: {"smithy.api#documentation" => "<p>The segments associated with the network function group.</p>"}))
    CoreNetworkNetworkFunctionGroup.type = Types::CoreNetworkNetworkFunctionGroup
    CoreNetworkNetworkFunctionGroupIdentifier.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the core network.</p>"}))
    CoreNetworkNetworkFunctionGroupIdentifier.add_member(:network_function_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'NetworkFunctionGroupName', traits: {"smithy.api#documentation" => "<p>The network function group name.</p>"}))
    CoreNetworkNetworkFunctionGroupIdentifier.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The location for the core network edge.</p>"}))
    CoreNetworkNetworkFunctionGroupIdentifier.type = Types::CoreNetworkNetworkFunctionGroupIdentifier
    CoreNetworkNetworkFunctionGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkNetworkFunctionGroup)
    CoreNetworkPolicy.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    CoreNetworkPolicy.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the policy version.</p>"}))
    CoreNetworkPolicy.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyAlias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>Whether a core network policy is the current LIVE policy or the most recently submitted policy.</p>"}))
    CoreNetworkPolicy.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of a core network policy.</p>"}))
    CoreNetworkPolicy.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when a core network policy was created.</p>"}))
    CoreNetworkPolicy.add_member(:change_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetState, location_name: 'ChangeSetState', traits: {"smithy.api#documentation" => "<p>The state of a core network policy.</p>"}))
    CoreNetworkPolicy.add_member(:policy_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyErrorList, location_name: 'PolicyErrors', traits: {"smithy.api#documentation" => "<p>Describes any errors in a core network policy.</p>"}))
    CoreNetworkPolicy.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonCoreNetworkPolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>Describes a core network policy.</p>"}))
    CoreNetworkPolicy.type = Types::CoreNetworkPolicy
    CoreNetworkPolicyAlias.add_member(:live, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIVE', traits: {"smithy.api#enumValue" => "LIVE"}))
    CoreNetworkPolicyAlias.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    CoreNetworkPolicyError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code associated with a core network policy error.</p>", "smithy.api#required" => {}}))
    CoreNetworkPolicyError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message associated with a core network policy error code.</p>", "smithy.api#required" => {}}))
    CoreNetworkPolicyError.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The JSON path where the error was discovered in the policy document.</p>"}))
    CoreNetworkPolicyError.type = Types::CoreNetworkPolicyError
    CoreNetworkPolicyErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyError)
    CoreNetworkPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    CoreNetworkPolicyException.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Describes a core network policy exception.</p>"}))
    CoreNetworkPolicyException.type = Types::CoreNetworkPolicyException
    CoreNetworkPolicyVersion.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    CoreNetworkPolicyVersion.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the policy version.</p>"}))
    CoreNetworkPolicyVersion.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyAlias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>Whether a core network policy is the current policy or the most recently submitted policy.</p>"}))
    CoreNetworkPolicyVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of a core network policy version.</p>"}))
    CoreNetworkPolicyVersion.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when a core network policy version was created.</p>"}))
    CoreNetworkPolicyVersion.add_member(:change_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetState, location_name: 'ChangeSetState', traits: {"smithy.api#documentation" => "<p>The status of the policy version change set.</p>"}))
    CoreNetworkPolicyVersion.type = Types::CoreNetworkPolicyVersion
    CoreNetworkPolicyVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyVersion)
    CoreNetworkSegment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a core network segment.</p>"}))
    CoreNetworkSegment.add_member(:edge_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: 'EdgeLocations', traits: {"smithy.api#documentation" => "<p>The Regions where the edges are located.</p>"}))
    CoreNetworkSegment.add_member(:shared_segments, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'SharedSegments', traits: {"smithy.api#documentation" => "<p>The shared segments of a core network.</p>"}))
    CoreNetworkSegment.type = Types::CoreNetworkSegment
    CoreNetworkSegmentEdgeIdentifier.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    CoreNetworkSegmentEdgeIdentifier.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The name of the segment edge.</p>"}))
    CoreNetworkSegmentEdgeIdentifier.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Region where the segment edge is located.</p>"}))
    CoreNetworkSegmentEdgeIdentifier.type = Types::CoreNetworkSegmentEdgeIdentifier
    CoreNetworkSegmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkSegment)
    CoreNetworkState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CoreNetworkState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    CoreNetworkState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CoreNetworkState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CoreNetworkSummary.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    CoreNetworkSummary.add_member(:core_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: 'CoreNetworkArn', traits: {"smithy.api#documentation" => "<p>a core network ARN.</p>"}))
    CoreNetworkSummary.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The global network ID.</p>"}))
    CoreNetworkSummary.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the account owner.</p>"}))
    CoreNetworkSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of a core network.</p>"}))
    CoreNetworkSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of a core network.</p>"}))
    CoreNetworkSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value tags associated with a core network summary.</p>"}))
    CoreNetworkSummary.type = Types::CoreNetworkSummary
    CoreNetworkSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkSummary)
    CreateConnectAttachmentRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network where you want to create the attachment. </p>", "smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Region where the edge is located.</p>", "smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:transport_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'TransportAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment between the two connections.</p>", "smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAttachmentOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Options for creating an attachment.</p>", "smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with the request.</p>"}))
    CreateConnectAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateConnectAttachmentRequest.type = Types::CreateConnectAttachmentRequest
    CreateConnectAttachmentResponse.add_member(:connect_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAttachment, location_name: 'ConnectAttachment', traits: {"smithy.api#documentation" => "<p>The response to a Connect attachment request.</p>"}))
    CreateConnectAttachmentResponse.type = Types::CreateConnectAttachmentResponse
    CreateConnectPeerRequest.add_member(:connect_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'ConnectAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the connection attachment.</p>", "smithy.api#required" => {}}))
    CreateConnectPeerRequest.add_member(:core_network_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'CoreNetworkAddress', traits: {"smithy.api#documentation" => "<p>A Connect peer core network address. This only applies only when the protocol is <code>GRE</code>.</p>"}))
    CreateConnectPeerRequest.add_member(:peer_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'PeerAddress', traits: {"smithy.api#documentation" => "<p>The Connect peer address.</p>", "smithy.api#required" => {}}))
    CreateConnectPeerRequest.add_member(:bgp_options, Smithy::Schema::Shapes::ShapeRef.new(shape: BgpOptions, location_name: 'BgpOptions', traits: {"smithy.api#documentation" => "<p>The Connect peer BGP options. This only applies only when the protocol is <code>GRE</code>.</p>"}))
    CreateConnectPeerRequest.add_member(:inside_cidr_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'InsideCidrBlocks', traits: {"smithy.api#documentation" => "<p>The inside IP addresses used for BGP peering.</p>"}))
    CreateConnectPeerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the peer request.</p>"}))
    CreateConnectPeerRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateConnectPeerRequest.add_member(:subnet_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArn, location_name: 'SubnetArn', traits: {"smithy.api#documentation" => "<p>The subnet ARN for the Connect peer. This only applies only when the protocol is NO_ENCAP.</p>"}))
    CreateConnectPeerRequest.type = Types::CreateConnectPeerRequest
    CreateConnectPeerResponse.add_member(:connect_peer, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeer, location_name: 'ConnectPeer', traits: {"smithy.api#documentation" => "<p>The response to the request.</p>"}))
    CreateConnectPeerResponse.type = Types::CreateConnectPeerResponse
    CreateConnectionRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the first device in the connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:connected_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'ConnectedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the second device in the connection.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link for the first device.</p>"}))
    CreateConnectionRequest.add_member(:connected_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'ConnectedLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link for the second device.</p>"}))
    CreateConnectionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the connection.</p>\n         <p>Length Constraints: Maximum length of 256 characters.</p>"}))
    CreateConnectionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the resource during creation.</p>"}))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>Information about the connection.</p>"}))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateCoreNetworkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network that a core network will be a part of. </p>", "smithy.api#required" => {}}))
    CreateCoreNetworkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of a core network.</p>"}))
    CreateCoreNetworkRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Key-value tags associated with a core network request.</p>"}))
    CreateCoreNetworkRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The policy document for creating a core network.</p>"}))
    CreateCoreNetworkRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with a core network request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateCoreNetworkRequest.type = Types::CreateCoreNetworkRequest
    CreateCoreNetworkResponse.add_member(:core_network, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetwork, location_name: 'CoreNetwork', traits: {"smithy.api#documentation" => "<p>Returns details about a core network.</p>"}))
    CreateCoreNetworkResponse.type = Types::CreateCoreNetworkResponse
    CreateDeviceRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeviceRequest.add_member(:aws_location, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSLocation, location_name: 'AWSLocation', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>"}))
    CreateDeviceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the device.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    CreateDeviceRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the device.</p>"}))
    CreateDeviceRequest.add_member(:vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Vendor', traits: {"smithy.api#documentation" => "<p>The vendor of the device.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    CreateDeviceRequest.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Model', traits: {"smithy.api#documentation" => "<p>The model of the device.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    CreateDeviceRequest.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SerialNumber', traits: {"smithy.api#documentation" => "<p>The serial number of the device.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    CreateDeviceRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location of the device.</p>"}))
    CreateDeviceRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>"}))
    CreateDeviceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the resource during creation.</p>"}))
    CreateDeviceRequest.type = Types::CreateDeviceRequest
    CreateDeviceResponse.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'Device', traits: {"smithy.api#documentation" => "<p>Information about the device.</p>"}))
    CreateDeviceResponse.type = Types::CreateDeviceResponse
    CreateDirectConnectGatewayAttachmentRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the Cloud WAN core network that the Direct Connect gateway attachment should be attached to.</p>", "smithy.api#required" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:direct_connect_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayArn, location_name: 'DirectConnectGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Direct Connect gateway attachment.</p>", "smithy.api#required" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:edge_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: 'EdgeLocations', traits: {"smithy.api#documentation" => "<p>One or more core network edge locations that the Direct Connect gateway attachment is associated with. </p>", "smithy.api#required" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key value tags to apply to the Direct Connect gateway attachment during creation.</p>"}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>client token</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.type = Types::CreateDirectConnectGatewayAttachmentRequest
    CreateDirectConnectGatewayAttachmentResponse.add_member(:direct_connect_gateway_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachment, location_name: 'DirectConnectGatewayAttachment', traits: {"smithy.api#documentation" => "<p>Describes the details of a <code>CreateDirectConnectGatewayAttachment</code> request.</p>"}))
    CreateDirectConnectGatewayAttachmentResponse.type = Types::CreateDirectConnectGatewayAttachmentResponse
    CreateGlobalNetworkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the global network.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    CreateGlobalNetworkRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the resource during creation.</p>"}))
    CreateGlobalNetworkRequest.type = Types::CreateGlobalNetworkRequest
    CreateGlobalNetworkResponse.add_member(:global_network, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: 'GlobalNetwork', traits: {"smithy.api#documentation" => "<p>Information about the global network object.</p>"}))
    CreateGlobalNetworkResponse.type = Types::CreateGlobalNetworkResponse
    CreateLinkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the link.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    CreateLinkRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the link.</p>\n         <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \\ ^</p>"}))
    CreateLinkRequest.add_member(:bandwidth, Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'Bandwidth', traits: {"smithy.api#documentation" => "<p> The upload speed and download speed in Mbps. </p>", "smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Provider', traits: {"smithy.api#documentation" => "<p>The provider of the link.</p>\n         <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \\ ^</p>"}))
    CreateLinkRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>", "smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the resource during creation.</p>"}))
    CreateLinkRequest.type = Types::CreateLinkRequest
    CreateLinkResponse.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: Link, location_name: 'Link', traits: {"smithy.api#documentation" => "<p>Information about the link.</p>"}))
    CreateLinkResponse.type = Types::CreateLinkResponse
    CreateSiteRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSiteRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of your site.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    CreateSiteRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Address</code>: The physical address of the site.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Latitude</code>: The latitude of the site. </p>\n            </li>\n            <li>\n               <p>\n                  <code>Longitude</code>: The longitude of the site.</p>\n            </li>\n         </ul>"}))
    CreateSiteRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the resource during creation.</p>"}))
    CreateSiteRequest.type = Types::CreateSiteRequest
    CreateSiteResponse.add_member(:site, Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site', traits: {"smithy.api#documentation" => "<p>Information about the site.</p>"}))
    CreateSiteResponse.type = Types::CreateSiteResponse
    CreateSiteToSiteVpnAttachmentRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network where you're creating a site-to-site VPN attachment.</p>", "smithy.api#required" => {}}))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:vpn_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VpnConnectionArn, location_name: 'VpnConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN identifying the VPN attachment.</p>", "smithy.api#required" => {}}))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the request.</p>"}))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSiteToSiteVpnAttachmentRequest.type = Types::CreateSiteToSiteVpnAttachmentRequest
    CreateSiteToSiteVpnAttachmentResponse.add_member(:site_to_site_vpn_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteToSiteVpnAttachment, location_name: 'SiteToSiteVpnAttachment', traits: {"smithy.api#documentation" => "<p>Details about a site-to-site VPN attachment.</p>"}))
    CreateSiteToSiteVpnAttachmentResponse.type = Types::CreateSiteToSiteVpnAttachmentResponse
    CreateTransitGatewayPeeringRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#required" => {}}))
    CreateTransitGatewayPeeringRequest.add_member(:transit_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: 'TransitGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway for the peering request.</p>", "smithy.api#required" => {}}))
    CreateTransitGatewayPeeringRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with the request.</p>"}))
    CreateTransitGatewayPeeringRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTransitGatewayPeeringRequest.type = Types::CreateTransitGatewayPeeringRequest
    CreateTransitGatewayPeeringResponse.add_member(:transit_gateway_peering, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayPeering, location_name: 'TransitGatewayPeering', traits: {"smithy.api#documentation" => "<p>Returns information about the transit gateway peering connection request.</p>"}))
    CreateTransitGatewayPeeringResponse.type = Types::CreateTransitGatewayPeeringResponse
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:peering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringId, location_name: 'PeeringId', traits: {"smithy.api#documentation" => "<p>The ID of the peer for the </p>", "smithy.api#required" => {}}))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:transit_gateway_route_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRouteTableArn, location_name: 'TransitGatewayRouteTableArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway route table for the attachment request. For example, <code>\"TransitGatewayRouteTableArn\": \"arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456\"</code>.</p>", "smithy.api#required" => {}}))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with the request.</p>"}))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTransitGatewayRouteTableAttachmentRequest.type = Types::CreateTransitGatewayRouteTableAttachmentRequest
    CreateTransitGatewayRouteTableAttachmentResponse.add_member(:transit_gateway_route_table_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRouteTableAttachment, location_name: 'TransitGatewayRouteTableAttachment', traits: {"smithy.api#documentation" => "<p>The route table associated with the create transit gateway route table attachment request.</p>"}))
    CreateTransitGatewayRouteTableAttachmentResponse.type = Types::CreateTransitGatewayRouteTableAttachmentResponse
    CreateVpcAttachmentRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network for the VPC attachment.</p>", "smithy.api#required" => {}}))
    CreateVpcAttachmentRequest.add_member(:vpc_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcArn, location_name: 'VpcArn', traits: {"smithy.api#documentation" => "<p>The ARN of the VPC.</p>", "smithy.api#required" => {}}))
    CreateVpcAttachmentRequest.add_member(:subnet_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArnList, location_name: 'SubnetArns', traits: {"smithy.api#documentation" => "<p>The subnet ARN of the VPC attachment.</p>", "smithy.api#required" => {}}))
    CreateVpcAttachmentRequest.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Options for the VPC attachment.</p>"}))
    CreateVpcAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value tags associated with the request.</p>"}))
    CreateVpcAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateVpcAttachmentRequest.type = Types::CreateVpcAttachmentRequest
    CreateVpcAttachmentResponse.add_member(:vpc_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcAttachment, location_name: 'VpcAttachment', traits: {"smithy.api#documentation" => "<p>Provides details about the VPC attachment.</p>"}))
    CreateVpcAttachmentResponse.type = Types::CreateVpcAttachmentResponse
    CustomerGatewayArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayArn)
    CustomerGatewayAssociation.add_member(:customer_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayArn, location_name: 'CustomerGatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer gateway.</p>"}))
    CustomerGatewayAssociation.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    CustomerGatewayAssociation.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>"}))
    CustomerGatewayAssociation.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    CustomerGatewayAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayAssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The association state.</p>"}))
    CustomerGatewayAssociation.type = Types::CustomerGatewayAssociation
    CustomerGatewayAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayAssociation)
    CustomerGatewayAssociationState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    CustomerGatewayAssociationState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CustomerGatewayAssociationState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    CustomerGatewayAssociationState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    DeleteAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.type = Types::DeleteAttachmentRequest
    DeleteAttachmentResponse.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment', traits: {"smithy.api#documentation" => "<p>Information about the deleted attachment.</p>"}))
    DeleteAttachmentResponse.type = Types::DeleteAttachmentResponse
    DeleteConnectPeerRequest.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of the deleted Connect peer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectPeerRequest.type = Types::DeleteConnectPeerRequest
    DeleteConnectPeerResponse.add_member(:connect_peer, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeer, location_name: 'ConnectPeer', traits: {"smithy.api#documentation" => "<p>Information about the deleted Connect peer.</p>"}))
    DeleteConnectPeerResponse.type = Types::DeleteConnectPeerResponse
    DeleteConnectionRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the connection.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>Information about the connection.</p>"}))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteCoreNetworkPolicyVersionRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network for the deleted policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreNetworkPolicyVersionRequest.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The version ID of the deleted policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreNetworkPolicyVersionRequest.type = Types::DeleteCoreNetworkPolicyVersionRequest
    DeleteCoreNetworkPolicyVersionResponse.add_member(:core_network_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: 'CoreNetworkPolicy', traits: {"smithy.api#documentation" => "<p>Returns information about the deleted policy version. </p>"}))
    DeleteCoreNetworkPolicyVersionResponse.type = Types::DeleteCoreNetworkPolicyVersionResponse
    DeleteCoreNetworkRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The network ID of the deleted core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreNetworkRequest.type = Types::DeleteCoreNetworkRequest
    DeleteCoreNetworkResponse.add_member(:core_network, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetwork, location_name: 'CoreNetwork', traits: {"smithy.api#documentation" => "<p>Information about the deleted core network.</p>"}))
    DeleteCoreNetworkResponse.type = Types::DeleteCoreNetworkResponse
    DeleteDeviceRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceRequest.type = Types::DeleteDeviceRequest
    DeleteDeviceResponse.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'Device', traits: {"smithy.api#documentation" => "<p>Information about the device.</p>"}))
    DeleteDeviceResponse.type = Types::DeleteDeviceResponse
    DeleteGlobalNetworkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGlobalNetworkRequest.type = Types::DeleteGlobalNetworkRequest
    DeleteGlobalNetworkResponse.add_member(:global_network, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: 'GlobalNetwork', traits: {"smithy.api#documentation" => "<p>Information about the global network.</p>"}))
    DeleteGlobalNetworkResponse.type = Types::DeleteGlobalNetworkResponse
    DeleteLinkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRequest.type = Types::DeleteLinkRequest
    DeleteLinkResponse.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: Link, location_name: 'Link', traits: {"smithy.api#documentation" => "<p>Information about the link.</p>"}))
    DeleteLinkResponse.type = Types::DeleteLinkResponse
    DeletePeeringRequest.add_member(:peering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringId, location_name: 'PeeringId', traits: {"smithy.api#documentation" => "<p>The ID of the peering connection to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePeeringRequest.type = Types::DeletePeeringRequest
    DeletePeeringResponse.add_member(:peering, Smithy::Schema::Shapes::ShapeRef.new(shape: Peering, location_name: 'Peering', traits: {"smithy.api#documentation" => "<p>Information about a deleted peering connection.</p>"}))
    DeletePeeringResponse.type = Types::DeletePeeringResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the policy to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteSiteRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSiteRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSiteRequest.type = Types::DeleteSiteRequest
    DeleteSiteResponse.add_member(:site, Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site', traits: {"smithy.api#documentation" => "<p>Information about the site.</p>"}))
    DeleteSiteResponse.type = Types::DeleteSiteResponse
    DeregisterTransitGatewayRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterTransitGatewayRequest.add_member(:transit_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: 'TransitGatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the transit gateway.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterTransitGatewayRequest.type = Types::DeregisterTransitGatewayRequest
    DeregisterTransitGatewayResponse.add_member(:transit_gateway_registration, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: 'TransitGatewayRegistration', traits: {"smithy.api#documentation" => "<p>The transit gateway registration information.</p>"}))
    DeregisterTransitGatewayResponse.type = Types::DeregisterTransitGatewayResponse
    DescribeGlobalNetworksRequest.add_member(:global_network_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkIdList, location_name: 'GlobalNetworkIds', traits: {"smithy.api#documentation" => "<p>The IDs of one or more global networks. The maximum is 10.</p>", "smithy.api#httpQuery" => "globalNetworkIds"}))
    DescribeGlobalNetworksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    DescribeGlobalNetworksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    DescribeGlobalNetworksRequest.type = Types::DescribeGlobalNetworksRequest
    DescribeGlobalNetworksResponse.add_member(:global_networks, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkList, location_name: 'GlobalNetworks', traits: {"smithy.api#documentation" => "<p>Information about the global networks.</p>"}))
    DescribeGlobalNetworksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    DescribeGlobalNetworksResponse.type = Types::DescribeGlobalNetworksResponse
    Device.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>"}))
    Device.add_member(:device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceArn, location_name: 'DeviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device.</p>"}))
    Device.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    Device.add_member(:aws_location, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSLocation, location_name: 'AWSLocation', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services location of the device.</p>"}))
    Device.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the device.</p>"}))
    Device.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The device type.</p>"}))
    Device.add_member(:vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Vendor', traits: {"smithy.api#documentation" => "<p>The device vendor.</p>"}))
    Device.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Model', traits: {"smithy.api#documentation" => "<p>The device model.</p>"}))
    Device.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SerialNumber', traits: {"smithy.api#documentation" => "<p>The device serial number.</p>"}))
    Device.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The site location.</p>"}))
    Device.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The site ID.</p>"}))
    Device.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the site was created.</p>"}))
    Device.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The device state.</p>"}))
    Device.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the device.</p>"}))
    Device.type = Types::Device
    DeviceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId)
    DeviceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Device)
    DeviceState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    DeviceState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DeviceState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    DeviceState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    DirectConnectGatewayAttachment.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment'))
    DirectConnectGatewayAttachment.add_member(:direct_connect_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayArn, location_name: 'DirectConnectGatewayArn', traits: {"smithy.api#documentation" => "<p>The Direct Connect gateway attachment ARN.</p>"}))
    DirectConnectGatewayAttachment.type = Types::DirectConnectGatewayAttachment
    DisassociateConnectPeerRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateConnectPeerRequest.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of the Connect peer to disassociate from a device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateConnectPeerRequest.type = Types::DisassociateConnectPeerRequest
    DisassociateConnectPeerResponse.add_member(:connect_peer_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerAssociation, location_name: 'ConnectPeerAssociation', traits: {"smithy.api#documentation" => "<p>Describes the Connect peer association.</p>"}))
    DisassociateConnectPeerResponse.type = Types::DisassociateConnectPeerResponse
    DisassociateCustomerGatewayRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateCustomerGatewayRequest.add_member(:customer_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayArn, location_name: 'CustomerGatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer gateway.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateCustomerGatewayRequest.type = Types::DisassociateCustomerGatewayRequest
    DisassociateCustomerGatewayResponse.add_member(:customer_gateway_association, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayAssociation, location_name: 'CustomerGatewayAssociation', traits: {"smithy.api#documentation" => "<p>Information about the customer gateway association.</p>"}))
    DisassociateCustomerGatewayResponse.type = Types::DisassociateCustomerGatewayResponse
    DisassociateLinkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLinkRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#httpQuery" => "deviceId", "smithy.api#required" => {}}))
    DisassociateLinkRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>", "smithy.api#httpQuery" => "linkId", "smithy.api#required" => {}}))
    DisassociateLinkRequest.type = Types::DisassociateLinkRequest
    DisassociateLinkResponse.add_member(:link_association, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAssociation, location_name: 'LinkAssociation', traits: {"smithy.api#documentation" => "<p>Information about the link association.</p>"}))
    DisassociateLinkResponse.type = Types::DisassociateLinkResponse
    DisassociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn, location_name: 'TransitGatewayConnectPeerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTransitGatewayConnectPeerRequest.type = Types::DisassociateTransitGatewayConnectPeerRequest
    DisassociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation, location_name: 'TransitGatewayConnectPeerAssociation', traits: {"smithy.api#documentation" => "<p>The transit gateway Connect peer association.</p>"}))
    DisassociateTransitGatewayConnectPeerResponse.type = Types::DisassociateTransitGatewayConnectPeerResponse
    EdgeOverride.add_member(:edge_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeSetList, location_name: 'EdgeSets', traits: {"smithy.api#documentation" => "<p>The list of edge locations.</p>"}))
    EdgeOverride.add_member(:use_edge, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'UseEdge', traits: {"smithy.api#documentation" => "<p>The edge that should be used when overriding the current edge order.</p>"}))
    EdgeOverride.type = Types::EdgeOverride
    EdgeSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString)
    EdgeSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeSet)
    ExceptionContextMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContextKey)
    ExceptionContextMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContextValue)
    ExecuteCoreNetworkChangeSetRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExecuteCoreNetworkChangeSetRequest.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the policy version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExecuteCoreNetworkChangeSetRequest.type = Types::ExecuteCoreNetworkChangeSetRequest
    ExecuteCoreNetworkChangeSetResponse.type = Types::ExecuteCoreNetworkChangeSetResponse
    ExternalRegionCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode)
    FilterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName)
    FilterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues)
    FilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GetConnectAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectAttachmentRequest.type = Types::GetConnectAttachmentRequest
    GetConnectAttachmentResponse.add_member(:connect_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAttachment, location_name: 'ConnectAttachment', traits: {"smithy.api#documentation" => "<p>Details about the Connect attachment.</p>"}))
    GetConnectAttachmentResponse.type = Types::GetConnectAttachmentResponse
    GetConnectPeerAssociationsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectPeerAssociationsRequest.add_member(:connect_peer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerIdList, location_name: 'ConnectPeerIds', traits: {"smithy.api#documentation" => "<p>The IDs of the Connect peers.</p>", "smithy.api#httpQuery" => "connectPeerIds"}))
    GetConnectPeerAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetConnectPeerAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetConnectPeerAssociationsRequest.type = Types::GetConnectPeerAssociationsRequest
    GetConnectPeerAssociationsResponse.add_member(:connect_peer_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerAssociationList, location_name: 'ConnectPeerAssociations', traits: {"smithy.api#documentation" => "<p>Displays a list of Connect peer associations.</p>"}))
    GetConnectPeerAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetConnectPeerAssociationsResponse.type = Types::GetConnectPeerAssociationsResponse
    GetConnectPeerRequest.add_member(:connect_peer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: 'ConnectPeerId', traits: {"smithy.api#documentation" => "<p>The ID of the Connect peer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectPeerRequest.type = Types::GetConnectPeerRequest
    GetConnectPeerResponse.add_member(:connect_peer, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeer, location_name: 'ConnectPeer', traits: {"smithy.api#documentation" => "<p>Returns information about a core network Connect peer.</p>"}))
    GetConnectPeerResponse.type = Types::GetConnectPeerResponse
    GetConnectionsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionsRequest.add_member(:connection_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionIdList, location_name: 'ConnectionIds', traits: {"smithy.api#documentation" => "<p>One or more connection IDs.</p>", "smithy.api#httpQuery" => "connectionIds"}))
    GetConnectionsRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#httpQuery" => "deviceId"}))
    GetConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetConnectionsRequest.type = Types::GetConnectionsRequest
    GetConnectionsResponse.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'Connections', traits: {"smithy.api#documentation" => "<p>Information about the connections.</p>"}))
    GetConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use for the next page of results.</p>"}))
    GetConnectionsResponse.type = Types::GetConnectionsResponse
    GetCoreNetworkChangeEventsRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeEventsRequest.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the policy version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetCoreNetworkChangeEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetCoreNetworkChangeEventsRequest.type = Types::GetCoreNetworkChangeEventsRequest
    GetCoreNetworkChangeEventsResponse.add_member(:core_network_change_events, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChangeEventList, location_name: 'CoreNetworkChangeEvents', traits: {"smithy.api#documentation" => "<p>The response to <code>GetCoreNetworkChangeEventsRequest</code>.</p>"}))
    GetCoreNetworkChangeEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetCoreNetworkChangeEventsResponse.type = Types::GetCoreNetworkChangeEventsResponse
    GetCoreNetworkChangeSetRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeSetRequest.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the policy version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeSetRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetCoreNetworkChangeSetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetCoreNetworkChangeSetRequest.type = Types::GetCoreNetworkChangeSetRequest
    GetCoreNetworkChangeSetResponse.add_member(:core_network_changes, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkChangeList, location_name: 'CoreNetworkChanges', traits: {"smithy.api#documentation" => "<p>Describes a core network changes.</p>"}))
    GetCoreNetworkChangeSetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetCoreNetworkChangeSetResponse.type = Types::GetCoreNetworkChangeSetResponse
    GetCoreNetworkPolicyRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkPolicyRequest.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of a core network policy version.</p>", "smithy.api#httpQuery" => "policyVersionId"}))
    GetCoreNetworkPolicyRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyAlias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The alias of a core network policy </p>", "smithy.api#httpQuery" => "alias"}))
    GetCoreNetworkPolicyRequest.type = Types::GetCoreNetworkPolicyRequest
    GetCoreNetworkPolicyResponse.add_member(:core_network_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: 'CoreNetworkPolicy', traits: {"smithy.api#documentation" => "<p>The details about a core network policy.</p>"}))
    GetCoreNetworkPolicyResponse.type = Types::GetCoreNetworkPolicyResponse
    GetCoreNetworkRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkRequest.type = Types::GetCoreNetworkRequest
    GetCoreNetworkResponse.add_member(:core_network, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetwork, location_name: 'CoreNetwork', traits: {"smithy.api#documentation" => "<p>Details about a core network.</p>"}))
    GetCoreNetworkResponse.type = Types::GetCoreNetworkResponse
    GetCustomerGatewayAssociationsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomerGatewayAssociationsRequest.add_member(:customer_gateway_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayArnList, location_name: 'CustomerGatewayArns', traits: {"smithy.api#documentation" => "<p>One or more customer gateway Amazon Resource Names (ARNs). The maximum is 10.</p>", "smithy.api#httpQuery" => "customerGatewayArns"}))
    GetCustomerGatewayAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetCustomerGatewayAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetCustomerGatewayAssociationsRequest.type = Types::GetCustomerGatewayAssociationsRequest
    GetCustomerGatewayAssociationsResponse.add_member(:customer_gateway_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerGatewayAssociationList, location_name: 'CustomerGatewayAssociations', traits: {"smithy.api#documentation" => "<p>The customer gateway associations.</p>"}))
    GetCustomerGatewayAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetCustomerGatewayAssociationsResponse.type = Types::GetCustomerGatewayAssociationsResponse
    GetDevicesRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevicesRequest.add_member(:device_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceIdList, location_name: 'DeviceIds', traits: {"smithy.api#documentation" => "<p>One or more device IDs. The maximum is 10.</p>", "smithy.api#httpQuery" => "deviceIds"}))
    GetDevicesRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>", "smithy.api#httpQuery" => "siteId"}))
    GetDevicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetDevicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetDevicesRequest.type = Types::GetDevicesRequest
    GetDevicesResponse.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceList, location_name: 'Devices', traits: {"smithy.api#documentation" => "<p>The devices.</p>"}))
    GetDevicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetDevicesResponse.type = Types::GetDevicesResponse
    GetDirectConnectGatewayAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the Direct Connect gateway attachment that you want to see details about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDirectConnectGatewayAttachmentRequest.type = Types::GetDirectConnectGatewayAttachmentRequest
    GetDirectConnectGatewayAttachmentResponse.add_member(:direct_connect_gateway_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachment, location_name: 'DirectConnectGatewayAttachment', traits: {"smithy.api#documentation" => "<p>Shows details about the Direct Connect gateway attachment. </p>"}))
    GetDirectConnectGatewayAttachmentResponse.type = Types::GetDirectConnectGatewayAttachmentResponse
    GetLinkAssociationsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkAssociationsRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#httpQuery" => "deviceId"}))
    GetLinkAssociationsRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>", "smithy.api#httpQuery" => "linkId"}))
    GetLinkAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetLinkAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetLinkAssociationsRequest.type = Types::GetLinkAssociationsRequest
    GetLinkAssociationsResponse.add_member(:link_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAssociationList, location_name: 'LinkAssociations', traits: {"smithy.api#documentation" => "<p>The link associations.</p>"}))
    GetLinkAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetLinkAssociationsResponse.type = Types::GetLinkAssociationsResponse
    GetLinksRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinksRequest.add_member(:link_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkIdList, location_name: 'LinkIds', traits: {"smithy.api#documentation" => "<p>One or more link IDs. The maximum is 10.</p>", "smithy.api#httpQuery" => "linkIds"}))
    GetLinksRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>", "smithy.api#httpQuery" => "siteId"}))
    GetLinksRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The link type.</p>", "smithy.api#httpQuery" => "type"}))
    GetLinksRequest.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Provider', traits: {"smithy.api#documentation" => "<p>The link provider.</p>", "smithy.api#httpQuery" => "provider"}))
    GetLinksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetLinksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetLinksRequest.type = Types::GetLinksRequest
    GetLinksResponse.add_member(:links, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkList, location_name: 'Links', traits: {"smithy.api#documentation" => "<p>The links.</p>"}))
    GetLinksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetLinksResponse.type = Types::GetLinksResponse
    GetNetworkResourceCountsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkResourceCountsRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>\n         <p>The following are the supported resource types for Direct Connect:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>dxcon</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-vif</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Network Manager:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connection</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>core-network</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>device</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>link</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>peering</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>site</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Amazon VPC:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>customer-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-route-table</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>vpn-connection</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "resourceType"}))
    GetNetworkResourceCountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetNetworkResourceCountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetNetworkResourceCountsRequest.type = Types::GetNetworkResourceCountsRequest
    GetNetworkResourceCountsResponse.add_member(:network_resource_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceCountList, location_name: 'NetworkResourceCounts', traits: {"smithy.api#documentation" => "<p>The count of resources.</p>"}))
    GetNetworkResourceCountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetNetworkResourceCountsResponse.type = Types::GetNetworkResourceCountsResponse
    GetNetworkResourceRelationshipsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkResourceRelationshipsRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpQuery" => "coreNetworkId"}))
    GetNetworkResourceRelationshipsRequest.add_member(:registered_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RegisteredGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the registered gateway.</p>", "smithy.api#httpQuery" => "registeredGatewayArn"}))
    GetNetworkResourceRelationshipsRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#httpQuery" => "awsRegion"}))
    GetNetworkResourceRelationshipsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>", "smithy.api#httpQuery" => "accountId"}))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>\n         <p>The following are the supported resource types for Direct Connect:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>dxcon</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-vif</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Network Manager:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connection</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>core-network</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>device</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>link</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>peering</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>site</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Amazon VPC:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>customer-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-route-table</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>vpn-connection</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "resourceType"}))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the gateway.</p>", "smithy.api#httpQuery" => "resourceArn"}))
    GetNetworkResourceRelationshipsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetNetworkResourceRelationshipsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetNetworkResourceRelationshipsRequest.type = Types::GetNetworkResourceRelationshipsRequest
    GetNetworkResourceRelationshipsResponse.add_member(:relationships, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipList, location_name: 'Relationships', traits: {"smithy.api#documentation" => "<p>The resource relationships.</p>"}))
    GetNetworkResourceRelationshipsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetNetworkResourceRelationshipsResponse.type = Types::GetNetworkResourceRelationshipsResponse
    GetNetworkResourcesRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkResourcesRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpQuery" => "coreNetworkId"}))
    GetNetworkResourcesRequest.add_member(:registered_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RegisteredGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the gateway.</p>", "smithy.api#httpQuery" => "registeredGatewayArn"}))
    GetNetworkResourcesRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#httpQuery" => "awsRegion"}))
    GetNetworkResourcesRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>", "smithy.api#httpQuery" => "accountId"}))
    GetNetworkResourcesRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>\n         <p>The following are the supported resource types for Direct Connect:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>dxcon</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-vif</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Network Manager:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connection</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>core-network</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>device</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>link</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>peering</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>site</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Amazon VPC:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>customer-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-route-table</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>vpn-connection</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "resourceType"}))
    GetNetworkResourcesRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn"}))
    GetNetworkResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetNetworkResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetNetworkResourcesRequest.type = Types::GetNetworkResourcesRequest
    GetNetworkResourcesResponse.add_member(:network_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceList, location_name: 'NetworkResources', traits: {"smithy.api#documentation" => "<p>The network resources.</p>"}))
    GetNetworkResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetNetworkResourcesResponse.type = Types::GetNetworkResourcesResponse
    GetNetworkRoutesRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkRoutesRequest.add_member(:route_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteTableIdentifier, location_name: 'RouteTableIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the route table.</p>", "smithy.api#required" => {}}))
    GetNetworkRoutesRequest.add_member(:exact_cidr_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'ExactCidrMatches', traits: {"smithy.api#documentation" => "<p>An exact CIDR block.</p>"}))
    GetNetworkRoutesRequest.add_member(:longest_prefix_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'LongestPrefixMatches', traits: {"smithy.api#documentation" => "<p>The most specific route that matches the traffic (longest prefix match).</p>"}))
    GetNetworkRoutesRequest.add_member(:subnet_of_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'SubnetOfMatches', traits: {"smithy.api#documentation" => "<p>The routes with a subnet that match the specified CIDR filter.</p>"}))
    GetNetworkRoutesRequest.add_member(:supernet_of_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'SupernetOfMatches', traits: {"smithy.api#documentation" => "<p>The routes with a CIDR that encompasses the CIDR filter. Example: If you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.</p>"}))
    GetNetworkRoutesRequest.add_member(:prefix_list_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'PrefixListIds', traits: {"smithy.api#documentation" => "<p>The IDs of the prefix lists.</p>"}))
    GetNetworkRoutesRequest.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteStateList, location_name: 'States', traits: {"smithy.api#documentation" => "<p>The route states.</p>"}))
    GetNetworkRoutesRequest.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteTypeList, location_name: 'Types', traits: {"smithy.api#documentation" => "<p>The route types.</p>"}))
    GetNetworkRoutesRequest.add_member(:destination_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterMap, location_name: 'DestinationFilters', traits: {"smithy.api#documentation" => "<p>Filter by route table destination. Possible Values: TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p>"}))
    GetNetworkRoutesRequest.type = Types::GetNetworkRoutesRequest
    GetNetworkRoutesResponse.add_member(:route_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RouteTableArn', traits: {"smithy.api#documentation" => "<p>The ARN of the route table.</p>"}))
    GetNetworkRoutesResponse.add_member(:core_network_segment_edge, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkSegmentEdgeIdentifier, location_name: 'CoreNetworkSegmentEdge', traits: {"smithy.api#documentation" => "<p>Describes a core network segment edge.</p>"}))
    GetNetworkRoutesResponse.add_member(:route_table_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteTableType, location_name: 'RouteTableType', traits: {"smithy.api#documentation" => "<p>The route table type.</p>"}))
    GetNetworkRoutesResponse.add_member(:route_table_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'RouteTableTimestamp', traits: {"smithy.api#documentation" => "<p>The route table creation time.</p>"}))
    GetNetworkRoutesResponse.add_member(:network_routes, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkRouteList, location_name: 'NetworkRoutes', traits: {"smithy.api#documentation" => "<p>The network routes.</p>"}))
    GetNetworkRoutesResponse.type = Types::GetNetworkRoutesResponse
    GetNetworkTelemetryRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkTelemetryRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpQuery" => "coreNetworkId"}))
    GetNetworkTelemetryRequest.add_member(:registered_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RegisteredGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the gateway.</p>", "smithy.api#httpQuery" => "registeredGatewayArn"}))
    GetNetworkTelemetryRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#httpQuery" => "awsRegion"}))
    GetNetworkTelemetryRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>", "smithy.api#httpQuery" => "accountId"}))
    GetNetworkTelemetryRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type. The following are the supported resource types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>vpn-connection</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "resourceType"}))
    GetNetworkTelemetryRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn"}))
    GetNetworkTelemetryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetNetworkTelemetryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetNetworkTelemetryRequest.type = Types::GetNetworkTelemetryRequest
    GetNetworkTelemetryResponse.add_member(:network_telemetry, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTelemetryList, location_name: 'NetworkTelemetry', traits: {"smithy.api#documentation" => "<p>The network telemetry.</p>"}))
    GetNetworkTelemetryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetNetworkTelemetryResponse.type = Types::GetNetworkTelemetryResponse
    GetResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonResourcePolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The resource policy document.</p>"}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetRouteAnalysisRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteAnalysisRequest.add_member(:route_analysis_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'RouteAnalysisId', traits: {"smithy.api#documentation" => "<p>The ID of the route analysis.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteAnalysisRequest.type = Types::GetRouteAnalysisRequest
    GetRouteAnalysisResponse.add_member(:route_analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysis, location_name: 'RouteAnalysis', traits: {"smithy.api#documentation" => "<p>The route analysis.</p>"}))
    GetRouteAnalysisResponse.type = Types::GetRouteAnalysisResponse
    GetSiteToSiteVpnAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSiteToSiteVpnAttachmentRequest.type = Types::GetSiteToSiteVpnAttachmentRequest
    GetSiteToSiteVpnAttachmentResponse.add_member(:site_to_site_vpn_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteToSiteVpnAttachment, location_name: 'SiteToSiteVpnAttachment', traits: {"smithy.api#documentation" => "<p>Describes the site-to-site attachment.</p>"}))
    GetSiteToSiteVpnAttachmentResponse.type = Types::GetSiteToSiteVpnAttachmentResponse
    GetSitesRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSitesRequest.add_member(:site_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteIdList, location_name: 'SiteIds', traits: {"smithy.api#documentation" => "<p>One or more site IDs. The maximum is 10.</p>", "smithy.api#httpQuery" => "siteIds"}))
    GetSitesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetSitesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetSitesRequest.type = Types::GetSitesRequest
    GetSitesResponse.add_member(:sites, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteList, location_name: 'Sites', traits: {"smithy.api#documentation" => "<p>The sites.</p>"}))
    GetSitesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetSitesResponse.type = Types::GetSitesResponse
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:transit_gateway_connect_peer_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArnList, location_name: 'TransitGatewayConnectPeerArns', traits: {"smithy.api#documentation" => "<p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>", "smithy.api#httpQuery" => "transitGatewayConnectPeerArns"}))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetTransitGatewayConnectPeerAssociationsRequest.type = Types::GetTransitGatewayConnectPeerAssociationsRequest
    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:transit_gateway_connect_peer_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociationList, location_name: 'TransitGatewayConnectPeerAssociations', traits: {"smithy.api#documentation" => "<p>Information about the transit gateway Connect peer associations.</p>"}))
    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use for the next page of results.</p>"}))
    GetTransitGatewayConnectPeerAssociationsResponse.type = Types::GetTransitGatewayConnectPeerAssociationsResponse
    GetTransitGatewayPeeringRequest.add_member(:peering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringId, location_name: 'PeeringId', traits: {"smithy.api#documentation" => "<p>The ID of the peering request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayPeeringRequest.type = Types::GetTransitGatewayPeeringRequest
    GetTransitGatewayPeeringResponse.add_member(:transit_gateway_peering, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayPeering, location_name: 'TransitGatewayPeering', traits: {"smithy.api#documentation" => "<p>Returns information about a transit gateway peering. </p>"}))
    GetTransitGatewayPeeringResponse.type = Types::GetTransitGatewayPeeringResponse
    GetTransitGatewayRegistrationsRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayRegistrationsRequest.add_member(:transit_gateway_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArnList, location_name: 'TransitGatewayArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is\n            10.</p>", "smithy.api#httpQuery" => "transitGatewayArns"}))
    GetTransitGatewayRegistrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetTransitGatewayRegistrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetTransitGatewayRegistrationsRequest.type = Types::GetTransitGatewayRegistrationsRequest
    GetTransitGatewayRegistrationsResponse.add_member(:transit_gateway_registrations, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRegistrationList, location_name: 'TransitGatewayRegistrations', traits: {"smithy.api#documentation" => "<p>The transit gateway registrations.</p>"}))
    GetTransitGatewayRegistrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    GetTransitGatewayRegistrationsResponse.type = Types::GetTransitGatewayRegistrationsResponse
    GetTransitGatewayRouteTableAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the transit gateway route table attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayRouteTableAttachmentRequest.type = Types::GetTransitGatewayRouteTableAttachmentRequest
    GetTransitGatewayRouteTableAttachmentResponse.add_member(:transit_gateway_route_table_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRouteTableAttachment, location_name: 'TransitGatewayRouteTableAttachment', traits: {"smithy.api#documentation" => "<p>Returns information about the transit gateway route table attachment.</p>"}))
    GetTransitGatewayRouteTableAttachmentResponse.type = Types::GetTransitGatewayRouteTableAttachmentResponse
    GetVpcAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcAttachmentRequest.type = Types::GetVpcAttachmentRequest
    GetVpcAttachmentResponse.add_member(:vpc_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcAttachment, location_name: 'VpcAttachment', traits: {"smithy.api#documentation" => "<p>Returns details about a VPC attachment.</p>"}))
    GetVpcAttachmentResponse.type = Types::GetVpcAttachmentResponse
    GlobalNetwork.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    GlobalNetwork.add_member(:global_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkArn, location_name: 'GlobalNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the global network.</p>"}))
    GlobalNetwork.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the global network.</p>"}))
    GlobalNetwork.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the global network was created.</p>"}))
    GlobalNetwork.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the global network.</p>"}))
    GlobalNetwork.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the global network.</p>"}))
    GlobalNetwork.type = Types::GlobalNetwork
    GlobalNetworkIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId)
    GlobalNetworkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetwork)
    GlobalNetworkState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    GlobalNetworkState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    GlobalNetworkState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    GlobalNetworkState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Indicates when to retry the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Link.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    Link.add_member(:link_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkArn, location_name: 'LinkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the link.</p>"}))
    Link.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    Link.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>"}))
    Link.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the link.</p>"}))
    Link.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the link.</p>"}))
    Link.add_member(:bandwidth, Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'Bandwidth', traits: {"smithy.api#documentation" => "<p>The bandwidth for the link.</p>"}))
    Link.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Provider', traits: {"smithy.api#documentation" => "<p>The provider of the link.</p>"}))
    Link.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the link was created.</p>"}))
    Link.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the link.</p>"}))
    Link.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the link.</p>"}))
    Link.type = Types::Link
    LinkAssociation.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    LinkAssociation.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device ID for the link association.</p>"}))
    LinkAssociation.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    LinkAssociation.add_member(:link_association_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAssociationState, location_name: 'LinkAssociationState', traits: {"smithy.api#documentation" => "<p>The state of the association.</p>"}))
    LinkAssociation.type = Types::LinkAssociation
    LinkAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAssociation)
    LinkAssociationState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    LinkAssociationState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LinkAssociationState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    LinkAssociationState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    LinkIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId)
    LinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Link)
    LinkState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    LinkState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LinkState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    LinkState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ListAttachmentsRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpQuery" => "coreNetworkId"}))
    ListAttachmentsRequest.add_member(:attachment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentType, location_name: 'AttachmentType', traits: {"smithy.api#documentation" => "<p>The type of attachment.</p>", "smithy.api#httpQuery" => "attachmentType"}))
    ListAttachmentsRequest.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The Region where the edge is located.</p>", "smithy.api#httpQuery" => "edgeLocation"}))
    ListAttachmentsRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the attachment.</p>", "smithy.api#httpQuery" => "state"}))
    ListAttachmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAttachmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAttachmentsRequest.type = Types::ListAttachmentsRequest
    ListAttachmentsResponse.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentList, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p>Describes the list of attachments.</p>"}))
    ListAttachmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListAttachmentsResponse.type = Types::ListAttachmentsResponse
    ListConnectPeersRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpQuery" => "coreNetworkId"}))
    ListConnectPeersRequest.add_member(:connect_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'ConnectAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>", "smithy.api#httpQuery" => "connectAttachmentId"}))
    ListConnectPeersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConnectPeersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConnectPeersRequest.type = Types::ListConnectPeersRequest
    ListConnectPeersResponse.add_member(:connect_peers, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPeerSummaryList, location_name: 'ConnectPeers', traits: {"smithy.api#documentation" => "<p>Describes the Connect peers.</p>"}))
    ListConnectPeersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListConnectPeersResponse.type = Types::ListConnectPeersResponse
    ListCoreNetworkPolicyVersionsRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCoreNetworkPolicyVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCoreNetworkPolicyVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCoreNetworkPolicyVersionsRequest.type = Types::ListCoreNetworkPolicyVersionsRequest
    ListCoreNetworkPolicyVersionsResponse.add_member(:core_network_policy_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyVersionList, location_name: 'CoreNetworkPolicyVersions', traits: {"smithy.api#documentation" => "<p>Describes core network policy versions.</p>"}))
    ListCoreNetworkPolicyVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListCoreNetworkPolicyVersionsResponse.type = Types::ListCoreNetworkPolicyVersionsResponse
    ListCoreNetworksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCoreNetworksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCoreNetworksRequest.type = Types::ListCoreNetworksRequest
    ListCoreNetworksResponse.add_member(:core_networks, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkSummaryList, location_name: 'CoreNetworks', traits: {"smithy.api#documentation" => "<p>Describes the list of core networks.</p>"}))
    ListCoreNetworksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListCoreNetworksResponse.type = Types::ListCoreNetworksResponse
    ListOrganizationServiceAccessStatusRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListOrganizationServiceAccessStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListOrganizationServiceAccessStatusRequest.type = Types::ListOrganizationServiceAccessStatusRequest
    ListOrganizationServiceAccessStatusResponse.add_member(:organization_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: 'OrganizationStatus', traits: {"smithy.api#documentation" => "<p>Displays the status of an Amazon Web Services Organization.</p>"}))
    ListOrganizationServiceAccessStatusResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListOrganizationServiceAccessStatusResponse.type = Types::ListOrganizationServiceAccessStatusResponse
    ListPeeringsRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpQuery" => "coreNetworkId"}))
    ListPeeringsRequest.add_member(:peering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringType, location_name: 'PeeringType', traits: {"smithy.api#documentation" => "<p>Returns a list of a peering requests.</p>", "smithy.api#httpQuery" => "peeringType"}))
    ListPeeringsRequest.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>Returns a list edge locations for the </p>", "smithy.api#httpQuery" => "edgeLocation"}))
    ListPeeringsRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Returns a list of the peering request states.</p>", "smithy.api#httpQuery" => "state"}))
    ListPeeringsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPeeringsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPeeringsRequest.type = Types::ListPeeringsRequest
    ListPeeringsResponse.add_member(:peerings, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringList, location_name: 'Peerings', traits: {"smithy.api#documentation" => "<p>Lists the transit gateway peerings for the <code>ListPeerings</code> request.</p>"}))
    ListPeeringsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListPeeringsResponse.type = Types::ListPeeringsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>The list of tags.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Location.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The physical address.</p>"}))
    Location.add_member(:latitude, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Latitude', traits: {"smithy.api#documentation" => "<p>The latitude.</p>"}))
    Location.add_member(:longitude, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Longitude', traits: {"smithy.api#documentation" => "<p>The longitude.</p>"}))
    Location.type = Types::Location
    NetworkFunctionGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the network function group.</p>"}))
    NetworkFunctionGroup.type = Types::NetworkFunctionGroup
    NetworkFunctionGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFunctionGroup)
    NetworkResource.add_member(:registered_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RegisteredGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the gateway.</p>"}))
    NetworkResource.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    NetworkResource.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>"}))
    NetworkResource.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>"}))
    NetworkResource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>\n         <p>The following are the supported resource types for Direct Connect:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>dxcon</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>dx-vif</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Network Manager:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connection</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>core-network</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>device</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>link</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>peering</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>site</code>\n               </p>\n            </li>\n         </ul>\n         <p>The following are the supported resource types for Amazon VPC:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>customer-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-attachment</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-connect-peer</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>transit-gateway-route-table</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>vpn-connection</code>\n               </p>\n            </li>\n         </ul>"}))
    NetworkResource.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    NetworkResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    NetworkResource.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>"}))
    NetworkResource.add_member(:definition_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'DefinitionTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the resource definition was retrieved.</p>"}))
    NetworkResource.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags.</p>"}))
    NetworkResource.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The resource metadata.</p>"}))
    NetworkResource.type = Types::NetworkResource
    NetworkResourceCount.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    NetworkResourceCount.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>The resource count.</p>"}))
    NetworkResourceCount.type = Types::NetworkResourceCount
    NetworkResourceCountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceCount)
    NetworkResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResource)
    NetworkResourceMetadataMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString)
    NetworkResourceMetadataMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString)
    NetworkResourceSummary.add_member(:registered_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RegisteredGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the gateway.</p>"}))
    NetworkResourceSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    NetworkResourceSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    NetworkResourceSummary.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>"}))
    NetworkResourceSummary.add_member(:name_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'NameTag', traits: {"smithy.api#documentation" => "<p>The value for the Name tag.</p>"}))
    NetworkResourceSummary.add_member(:is_middlebox, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMiddlebox', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether this is a middlebox appliance.</p>"}))
    NetworkResourceSummary.type = Types::NetworkResourceSummary
    NetworkRoute.add_member(:destination_cidr_block, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'DestinationCidrBlock', traits: {"smithy.api#documentation" => "<p>A unique identifier for the route, such as a CIDR block.</p>"}))
    NetworkRoute.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkRouteDestinationList, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>The destinations.</p>"}))
    NetworkRoute.add_member(:prefix_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'PrefixListId', traits: {"smithy.api#documentation" => "<p>The ID of the prefix list.</p>"}))
    NetworkRoute.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The route state. The possible values are <code>active</code> and <code>blackhole</code>.</p>"}))
    NetworkRoute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The route type. The possible values are <code>propagated</code> and <code>static</code>.</p>"}))
    NetworkRoute.type = Types::NetworkRoute
    NetworkRouteDestination.add_member(:core_network_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'CoreNetworkAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of a core network attachment.</p>"}))
    NetworkRouteDestination.add_member(:transit_gateway_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: 'TransitGatewayAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the transit gateway attachment.</p>"}))
    NetworkRouteDestination.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The name of the segment.</p>"}))
    NetworkRouteDestination.add_member(:network_function_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'NetworkFunctionGroupName', traits: {"smithy.api#documentation" => "<p>The network function group name associated with the destination.</p>"}))
    NetworkRouteDestination.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The edge location for the network destination.</p>"}))
    NetworkRouteDestination.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    NetworkRouteDestination.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    NetworkRouteDestination.type = Types::NetworkRouteDestination
    NetworkRouteDestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkRouteDestination)
    NetworkRouteList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkRoute)
    NetworkTelemetry.add_member(:registered_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RegisteredGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the gateway.</p>"}))
    NetworkTelemetry.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>"}))
    NetworkTelemetry.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>"}))
    NetworkTelemetry.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>"}))
    NetworkTelemetry.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    NetworkTelemetry.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    NetworkTelemetry.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    NetworkTelemetry.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address.</p>"}))
    NetworkTelemetry.add_member(:health, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionHealth, location_name: 'Health', traits: {"smithy.api#documentation" => "<p>The connection health.</p>"}))
    NetworkTelemetry.type = Types::NetworkTelemetry
    NetworkTelemetryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTelemetry)
    OrganizationStatus.add_member(:organization_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#documentation" => "<p>The ID of an Amazon Web Services Organization.</p>"}))
    OrganizationStatus.add_member(:organization_aws_service_access_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationAwsServiceAccessStatus, location_name: 'OrganizationAwsServiceAccessStatus', traits: {"smithy.api#documentation" => "<p>The status  of the organization's AWS service access. This will be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    OrganizationStatus.add_member(:slr_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SLRDeploymentStatus, location_name: 'SLRDeploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of the SLR deployment for the account. This will be either <code>SUCCEEDED</code> or <code>IN_PROGRESS</code>.</p>"}))
    OrganizationStatus.add_member(:account_status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatusList, location_name: 'AccountStatusList', traits: {"smithy.api#documentation" => "<p>The current service-linked role (SLR) deployment status for an Amazon Web Services Organization's accounts. This will be either <code>SUCCEEDED</code> or <code>IN_PROGRESS</code>.</p>", "smithy.api#xmlName" => "OrganizationStatus"}))
    OrganizationStatus.type = Types::OrganizationStatus
    PathComponent.add_member(:sequence, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Sequence', traits: {"smithy.api#documentation" => "<p>The sequence number in the path. The destination is 0.</p>"}))
    PathComponent.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceSummary, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource.</p>"}))
    PathComponent.add_member(:destination_cidr_block, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'DestinationCidrBlock', traits: {"smithy.api#documentation" => "<p>The destination CIDR block in the route table.</p>"}))
    PathComponent.type = Types::PathComponent
    PathComponentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathComponent)
    Peering.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the core network for the peering request.</p>"}))
    Peering.add_member(:core_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: 'CoreNetworkArn', traits: {"smithy.api#documentation" => "<p>The ARN of a core network.</p>"}))
    Peering.add_member(:peering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringId, location_name: 'PeeringId', traits: {"smithy.api#documentation" => "<p>The ID of the peering attachment. </p>"}))
    Peering.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the account owner.</p>"}))
    Peering.add_member(:peering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringType, location_name: 'PeeringType', traits: {"smithy.api#documentation" => "<p>The type of peering. This will be <code>TRANSIT_GATEWAY</code>.</p>"}))
    Peering.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the peering connection. </p>"}))
    Peering.add_member(:edge_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: 'EdgeLocation', traits: {"smithy.api#documentation" => "<p>The edge location for the peer.</p>"}))
    Peering.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN of the peer.</p>"}))
    Peering.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags associated with the peering.</p>"}))
    Peering.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the attachment peer was created.</p>"}))
    Peering.add_member(:last_modification_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringErrorList, location_name: 'LastModificationErrors', traits: {"smithy.api#documentation" => "<p>Describes the error associated with the Connect peer request.</p>"}))
    Peering.type = Types::Peering
    PeeringError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The error code for the peering request.</p>"}))
    PeeringError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message associated with the error <code>code</code>.</p>"}))
    PeeringError.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the requested peering resource.</p>"}))
    PeeringError.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the Peering request.</p>"}))
    PeeringError.add_member(:missing_permissions_context, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsErrorContext, location_name: 'MissingPermissionsContext', traits: {"smithy.api#documentation" => "<p>Provides additional information about missing permissions for the peering\n            error.</p>"}))
    PeeringError.type = Types::PeeringError
    PeeringErrorCode.add_member(:transit_gateway_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_NOT_FOUND', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_NOT_FOUND"}))
    PeeringErrorCode.add_member(:transit_gateway_peers_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED"}))
    PeeringErrorCode.add_member(:missing_required_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_REQUIRED_PERMISSIONS', traits: {"smithy.api#enumValue" => "MISSING_PERMISSIONS"}))
    PeeringErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    PeeringErrorCode.add_member(:edge_location_peer_duplicate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE_LOCATION_PEER_DUPLICATE', traits: {"smithy.api#enumValue" => "EDGE_LOCATION_PEER_DUPLICATE"}))
    PeeringErrorCode.add_member(:invalid_transit_gateway_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TRANSIT_GATEWAY_STATE', traits: {"smithy.api#enumValue" => "INVALID_TRANSIT_GATEWAY_STATE"}))
    PeeringErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringError)
    PeeringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Peering)
    PeeringState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    PeeringState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PeeringState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PeeringState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PeeringType.add_member(:transit_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY"}))
    PermissionsErrorContext.add_member(:missing_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'MissingPermission', traits: {"smithy.api#documentation" => "<p>The missing permissions.</p>"}))
    PermissionsErrorContext.type = Types::PermissionsErrorContext
    ProposedNetworkFunctionGroupChange.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of proposed changes to the key-value tags associated with the network function group.</p>"}))
    ProposedNetworkFunctionGroupChange.add_member(:attachment_policy_rule_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AttachmentPolicyRuleNumber', traits: {"smithy.api#documentation" => "<p>The proposed new attachment policy rule number for the network function group.</p>"}))
    ProposedNetworkFunctionGroupChange.add_member(:network_function_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'NetworkFunctionGroupName', traits: {"smithy.api#documentation" => "<p>The proposed name change for the network function group name.</p>"}))
    ProposedNetworkFunctionGroupChange.type = Types::ProposedNetworkFunctionGroupChange
    ProposedSegmentChange.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags that changed for the segment.</p>"}))
    ProposedSegmentChange.add_member(:attachment_policy_rule_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AttachmentPolicyRuleNumber', traits: {"smithy.api#documentation" => "<p>The rule number in the policy document that applies to this change.</p>"}))
    ProposedSegmentChange.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The name of the segment to change.</p>"}))
    ProposedSegmentChange.type = Types::ProposedSegmentChange
    PutCoreNetworkPolicyRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutCoreNetworkPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonCoreNetworkPolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The policy document.</p>", "smithy.api#required" => {}}))
    PutCoreNetworkPolicyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>a core network policy description.</p>"}))
    PutCoreNetworkPolicyRequest.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'LatestVersionId', traits: {"smithy.api#documentation" => "<p>The ID of a core network policy. </p>"}))
    PutCoreNetworkPolicyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token associated with the request.</p>", "smithy.api#idempotencyToken" => {}}))
    PutCoreNetworkPolicyRequest.type = Types::PutCoreNetworkPolicyRequest
    PutCoreNetworkPolicyResponse.add_member(:core_network_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: 'CoreNetworkPolicy', traits: {"smithy.api#documentation" => "<p>Describes the changed core network policy.</p>"}))
    PutCoreNetworkPolicyResponse.type = Types::PutCoreNetworkPolicyResponse
    PutResourcePolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonResourcePolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON resource policy document.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource policy. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ReasonContextMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonContextKey)
    ReasonContextMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonContextValue)
    RegisterTransitGatewayRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterTransitGatewayRequest.add_member(:transit_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: 'TransitGatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the transit gateway.</p>", "smithy.api#required" => {}}))
    RegisterTransitGatewayRequest.type = Types::RegisterTransitGatewayRequest
    RegisterTransitGatewayResponse.add_member(:transit_gateway_registration, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: 'TransitGatewayRegistration', traits: {"smithy.api#documentation" => "<p>Information about the transit gateway registration.</p>"}))
    RegisterTransitGatewayResponse.type = Types::RegisterTransitGatewayResponse
    RejectAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectAttachmentRequest.type = Types::RejectAttachmentRequest
    RejectAttachmentResponse.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment', traits: {"smithy.api#documentation" => "<p>Describes the rejected attachment request.</p>"}))
    RejectAttachmentResponse.type = Types::RejectAttachmentResponse
    Relationship.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'From', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    Relationship.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'To', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    Relationship.type = Types::Relationship
    RelationshipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Relationship)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContextMap, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>The specified resource could not be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreCoreNetworkPolicyVersionRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreCoreNetworkPolicyVersionRequest.add_member(:policy_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PolicyVersionId', traits: {"smithy.api#documentation" => "<p>The ID of the policy version to restore.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreCoreNetworkPolicyVersionRequest.type = Types::RestoreCoreNetworkPolicyVersionRequest
    RestoreCoreNetworkPolicyVersionResponse.add_member(:core_network_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: 'CoreNetworkPolicy', traits: {"smithy.api#documentation" => "<p>Describes the restored core network policy.</p>"}))
    RestoreCoreNetworkPolicyVersionResponse.type = Types::RestoreCoreNetworkPolicyVersionResponse
    RouteAnalysis.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    RouteAnalysis.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the AWS account that created the route analysis.</p>"}))
    RouteAnalysis.add_member(:route_analysis_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'RouteAnalysisId', traits: {"smithy.api#documentation" => "<p>The ID of the route analysis.</p>"}))
    RouteAnalysis.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the analysis started.</p>"}))
    RouteAnalysis.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the route analysis.</p>"}))
    RouteAnalysis.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptions, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source.</p>"}))
    RouteAnalysis.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptions, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination.</p>"}))
    RouteAnalysis.add_member(:include_return_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeReturnPath', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to analyze the return path. The return path is not analyzed if the forward path\n            analysis does not succeed.</p>"}))
    RouteAnalysis.add_member(:use_middleboxes, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseMiddleboxes', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to include the location of middlebox appliances in the route analysis.</p>"}))
    RouteAnalysis.add_member(:forward_path, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisPath, location_name: 'ForwardPath', traits: {"smithy.api#documentation" => "<p>The forward path.</p>"}))
    RouteAnalysis.add_member(:return_path, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisPath, location_name: 'ReturnPath', traits: {"smithy.api#documentation" => "<p>The return path.</p>"}))
    RouteAnalysis.type = Types::RouteAnalysis
    RouteAnalysisCompletion.add_member(:result_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisCompletionResultCode, location_name: 'ResultCode', traits: {"smithy.api#documentation" => "<p>The result of the analysis. If the status is <code>NOT_CONNECTED</code>, check the \n            reason code.</p>"}))
    RouteAnalysisCompletion.add_member(:reason_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisCompletionReasonCode, location_name: 'ReasonCode', traits: {"smithy.api#documentation" => "<p>The reason code. Available only if a connection is not found.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND</code> - Found a black hole route with the destination CIDR block.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CYCLIC_PATH_DETECTED</code> - Found the same resource multiple times while traversing the path.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE_ROUTE_FOR_DESTINATION_FOUND</code> - Found an inactive route with the destination CIDR block.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MAX_HOPS_EXCEEDED</code> - Analysis exceeded 64 hops without finding the destination.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ROUTE_NOT_FOUND</code> - Cannot find a route table with the destination CIDR block.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TGW_ATTACH_ARN_NO_MATCH</code> - Found an attachment, but not with the correct destination ARN.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TGW_ATTACH_NOT_FOUND</code> - Cannot find an attachment.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TGW_ATTACH_NOT_IN_TGW</code> - Found an attachment, but not to the correct transit gateway.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TGW_ATTACH_STABLE_ROUTE_TABLE_NOT_FOUND</code> - The state of the route table association is not associated.</p>\n            </li>\n         </ul>"}))
    RouteAnalysisCompletion.add_member(:reason_context, Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonContextMap, location_name: 'ReasonContext', traits: {"smithy.api#documentation" => "<p>Additional information about the path. Available only if a connection is not found.</p>"}))
    RouteAnalysisCompletion.type = Types::RouteAnalysisCompletion
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment_not_in_transit_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY"}))
    RouteAnalysisCompletionReasonCode.add_member(:cyclic_path_detected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CYCLIC_PATH_DETECTED', traits: {"smithy.api#enumValue" => "CYCLIC_PATH_DETECTED"}))
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment_stable_route_table_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:route_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE_NOT_FOUND', traits: {"smithy.api#enumValue" => "ROUTE_NOT_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:blackhole_route_for_destination_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND', traits: {"smithy.api#enumValue" => "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:inactive_route_for_destination_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE_ROUTE_FOR_DESTINATION_FOUND', traits: {"smithy.api#enumValue" => "INACTIVE_ROUTE_FOR_DESTINATION_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_ATTACHMENT', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH"}))
    RouteAnalysisCompletionReasonCode.add_member(:max_hops_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_HOPS_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_HOPS_EXCEEDED"}))
    RouteAnalysisCompletionReasonCode.add_member(:possible_middlebox, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSSIBLE_MIDDLEBOX', traits: {"smithy.api#enumValue" => "POSSIBLE_MIDDLEBOX"}))
    RouteAnalysisCompletionReasonCode.add_member(:no_destination_arn_provided, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_DESTINATION_ARN_PROVIDED', traits: {"smithy.api#enumValue" => "NO_DESTINATION_ARN_PROVIDED"}))
    RouteAnalysisCompletionResultCode.add_member(:connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    RouteAnalysisCompletionResultCode.add_member(:not_connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONNECTED', traits: {"smithy.api#enumValue" => "NOT_CONNECTED"}))
    RouteAnalysisEndpointOptions.add_member(:transit_gateway_attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentArn, location_name: 'TransitGatewayAttachmentArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway attachment.</p>"}))
    RouteAnalysisEndpointOptions.add_member(:transit_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: 'TransitGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway.</p>"}))
    RouteAnalysisEndpointOptions.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address.</p>"}))
    RouteAnalysisEndpointOptions.type = Types::RouteAnalysisEndpointOptions
    RouteAnalysisEndpointOptionsSpecification.add_member(:transit_gateway_attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentArn, location_name: 'TransitGatewayAttachmentArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway attachment.</p>"}))
    RouteAnalysisEndpointOptionsSpecification.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address.</p>"}))
    RouteAnalysisEndpointOptionsSpecification.type = Types::RouteAnalysisEndpointOptionsSpecification
    RouteAnalysisPath.add_member(:completion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisCompletion, location_name: 'CompletionStatus', traits: {"smithy.api#documentation" => "<p>The status of the analysis at completion.</p>"}))
    RouteAnalysisPath.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathComponentList, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The route analysis path.</p>"}))
    RouteAnalysisPath.type = Types::RouteAnalysisPath
    RouteAnalysisStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'running', traits: {"smithy.api#enumValue" => "RUNNING"}))
    RouteAnalysisStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'completed', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RouteAnalysisStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    RouteState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RouteState.add_member(:blackhole, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLACKHOLE', traits: {"smithy.api#enumValue" => "BLACKHOLE"}))
    RouteStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState)
    RouteTableIdentifier.add_member(:transit_gateway_route_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRouteTableArn, location_name: 'TransitGatewayRouteTableArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway route table for the attachment request. For example, <code>\"TransitGatewayRouteTableArn\": \"arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456\"</code>.</p>"}))
    RouteTableIdentifier.add_member(:core_network_segment_edge, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkSegmentEdgeIdentifier, location_name: 'CoreNetworkSegmentEdge', traits: {"smithy.api#documentation" => "<p>The segment edge in a core network.</p>"}))
    RouteTableIdentifier.add_member(:core_network_network_function_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkNetworkFunctionGroupIdentifier, location_name: 'CoreNetworkNetworkFunctionGroup', traits: {"smithy.api#documentation" => "<p>The route table identifier associated with the network function group.</p>"}))
    RouteTableIdentifier.type = Types::RouteTableIdentifier
    RouteTableType.add_member(:transit_gateway_route_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIT_GATEWAY_ROUTE_TABLE', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ROUTE_TABLE"}))
    RouteTableType.add_member(:core_network_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE_NETWORK_SEGMENT', traits: {"smithy.api#enumValue" => "CORE_NETWORK_SEGMENT"}))
    RouteTableType.add_member(:network_function_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_FUNCTION_GROUP', traits: {"smithy.api#enumValue" => "NETWORK_FUNCTION_GROUP"}))
    RouteType.add_member(:propagated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPAGATED', traits: {"smithy.api#enumValue" => "PROPAGATED"}))
    RouteType.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    RouteTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RouteType)
    SegmentActionServiceInsertion.add_member(:send_via, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_VIA', traits: {"smithy.api#enumValue" => "send-via"}))
    SegmentActionServiceInsertion.add_member(:send_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_TO', traits: {"smithy.api#enumValue" => "send-to"}))
    SendViaMode.add_member(:dual_hop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_HOP', traits: {"smithy.api#enumValue" => "dual-hop"}))
    SendViaMode.add_member(:single_hop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_HOP', traits: {"smithy.api#enumValue" => "single-hop"}))
    ServiceInsertionAction.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentActionServiceInsertion, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action the service insertion takes for traffic. \n            <code>send-via</code> sends east-west traffic between attachments. \n            <code>send-to</code> sends north-south traffic to the \n            security appliance, and then from that to either the Internet or to an on-premesis \n            location.  </p>"}))
    ServiceInsertionAction.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SendViaMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Describes the mode packets take for the <code>send-via</code> action. This is not used when the action is <code>send-to</code>. <code>dual-hop</code> packets traverse attachments in both the source to the destination core network edges. This mode requires that an inspection attachment must be present in all Regions of the service insertion-enabled segments. \n            For <code>single-hop</code>, packets traverse a single intermediate inserted attachment. You can use <code>EdgeOverride</code> to specify a specific edge to use. </p>"}))
    ServiceInsertionAction.add_member(:when_sent_to, Smithy::Schema::Shapes::ShapeRef.new(shape: WhenSentTo, location_name: 'WhenSentTo', traits: {"smithy.api#documentation" => "<p>The list of destination segments if the service insertion action is <code>send-via</code>.</p>"}))
    ServiceInsertionAction.add_member(:via, Smithy::Schema::Shapes::ShapeRef.new(shape: Via, location_name: 'Via', traits: {"smithy.api#documentation" => "<p>The list of network function groups and any edge overrides for the chosen service\n            insertion action. Used for both <code>send-to</code> or <code>send-via</code>.</p>"}))
    ServiceInsertionAction.type = Types::ServiceInsertionAction
    ServiceInsertionActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInsertionAction)
    ServiceInsertionSegments.add_member(:send_via, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'SendVia', traits: {"smithy.api#documentation" => "<p>The list of segments associated with the <code>send-via</code> action.</p>"}))
    ServiceInsertionSegments.add_member(:send_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: 'SendTo', traits: {"smithy.api#documentation" => "<p>The list of segments associated with the <code>send-to</code> action.</p>"}))
    ServiceInsertionSegments.type = Types::ServiceInsertionSegments
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The error message.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    ServiceQuotaExceededException.add_member(:limit_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'LimitCode', traits: {"smithy.api#documentation" => "<p>The limit code.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Site.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>"}))
    Site.add_member(:site_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteArn, location_name: 'SiteArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the site.</p>"}))
    Site.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    Site.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the site.</p>"}))
    Site.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location of the site.</p>"}))
    Site.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the site was created.</p>"}))
    Site.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the site.</p>"}))
    Site.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the site.</p>"}))
    Site.type = Types::Site
    SiteIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId)
    SiteList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Site)
    SiteState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    SiteState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SiteState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    SiteState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    SiteToSiteVpnAttachment.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment', traits: {"smithy.api#documentation" => "<p>Provides details about a site-to-site VPN attachment.</p>"}))
    SiteToSiteVpnAttachment.add_member(:vpn_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VpnConnectionArn, location_name: 'VpnConnectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the site-to-site VPN attachment. </p>"}))
    SiteToSiteVpnAttachment.type = Types::SiteToSiteVpnAttachment
    StartOrganizationServiceAccessUpdateRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to take for the update request. This can be either <code>ENABLE</code> or <code>DISABLE</code>.</p>", "smithy.api#required" => {}}))
    StartOrganizationServiceAccessUpdateRequest.type = Types::StartOrganizationServiceAccessUpdateRequest
    StartOrganizationServiceAccessUpdateResponse.add_member(:organization_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: 'OrganizationStatus', traits: {"smithy.api#documentation" => "<p>The status of the service access update request for an Amazon Web Services Organization.</p>"}))
    StartOrganizationServiceAccessUpdateResponse.type = Types::StartOrganizationServiceAccessUpdateResponse
    StartRouteAnalysisRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartRouteAnalysisRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptionsSpecification, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source from which traffic originates.</p>", "smithy.api#required" => {}}))
    StartRouteAnalysisRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptionsSpecification, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination.</p>", "smithy.api#required" => {}}))
    StartRouteAnalysisRequest.add_member(:include_return_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeReturnPath', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to analyze the return path. The default is <code>false</code>.</p>"}))
    StartRouteAnalysisRequest.add_member(:use_middleboxes, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseMiddleboxes', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether to include the location of middlebox appliances in the route analysis.\n            The default is <code>false</code>.</p>"}))
    StartRouteAnalysisRequest.type = Types::StartRouteAnalysisRequest
    StartRouteAnalysisResponse.add_member(:route_analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteAnalysis, location_name: 'RouteAnalysis', traits: {"smithy.api#documentation" => "<p>The route analysis.</p>"}))
    StartRouteAnalysisResponse.type = Types::StartRouteAnalysisResponse
    SubnetArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArn)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the specified resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Indicates when to retry the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TransitGatewayArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn)
    TransitGatewayConnectPeerArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn)
    TransitGatewayConnectPeerAssociation.add_member(:transit_gateway_connect_peer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn, location_name: 'TransitGatewayConnectPeerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>"}))
    TransitGatewayConnectPeerAssociation.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    TransitGatewayConnectPeerAssociation.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>"}))
    TransitGatewayConnectPeerAssociation.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>"}))
    TransitGatewayConnectPeerAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the association.</p>"}))
    TransitGatewayConnectPeerAssociation.type = Types::TransitGatewayConnectPeerAssociation
    TransitGatewayConnectPeerAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation)
    TransitGatewayConnectPeerAssociationState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    TransitGatewayConnectPeerAssociationState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TransitGatewayConnectPeerAssociationState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    TransitGatewayConnectPeerAssociationState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    TransitGatewayPeering.add_member(:peering, Smithy::Schema::Shapes::ShapeRef.new(shape: Peering, location_name: 'Peering', traits: {"smithy.api#documentation" => "<p>Describes a transit gateway peer connection.</p>"}))
    TransitGatewayPeering.add_member(:transit_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: 'TransitGatewayArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway.</p>"}))
    TransitGatewayPeering.add_member(:transit_gateway_peering_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayPeeringAttachmentId, location_name: 'TransitGatewayPeeringAttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the transit gateway peering attachment.</p>"}))
    TransitGatewayPeering.type = Types::TransitGatewayPeering
    TransitGatewayRegistration.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>"}))
    TransitGatewayRegistration.add_member(:transit_gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: 'TransitGatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the transit gateway.</p>"}))
    TransitGatewayRegistration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRegistrationStateReason, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the transit gateway registration.</p>"}))
    TransitGatewayRegistration.type = Types::TransitGatewayRegistration
    TransitGatewayRegistrationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRegistration)
    TransitGatewayRegistrationState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    TransitGatewayRegistrationState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TransitGatewayRegistrationState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    TransitGatewayRegistrationState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    TransitGatewayRegistrationState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    TransitGatewayRegistrationStateReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRegistrationState, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The code for the state reason.</p>"}))
    TransitGatewayRegistrationStateReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message for the state reason.</p>"}))
    TransitGatewayRegistrationStateReason.type = Types::TransitGatewayRegistrationStateReason
    TransitGatewayRouteTableAttachment.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment'))
    TransitGatewayRouteTableAttachment.add_member(:peering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PeeringId, location_name: 'PeeringId', traits: {"smithy.api#documentation" => "<p>The ID of the peering attachment.</p>"}))
    TransitGatewayRouteTableAttachment.add_member(:transit_gateway_route_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayRouteTableArn, location_name: 'TransitGatewayRouteTableArn', traits: {"smithy.api#documentation" => "<p>The ARN of the transit gateway attachment route table. For example, <code>\"TransitGatewayRouteTableArn\": \"arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456\"</code>.</p>"}))
    TransitGatewayRouteTableAttachment.type = Types::TransitGatewayRouteTableAttachment
    TunnelProtocol.add_member(:gre, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRE', traits: {"smithy.api#enumValue" => "GRE"}))
    TunnelProtocol.add_member(:no_encap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ENCAP', traits: {"smithy.api#enumValue" => "NO_ENCAP"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to remove from the specified resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectionRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the connection.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link for the first device in the connection.</p>"}))
    UpdateConnectionRequest.add_member(:connected_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'ConnectedLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link for the second device in the connection.</p>"}))
    UpdateConnectionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the connection.</p>\n         <p>Length Constraints: Maximum length of 256 characters.</p>"}))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>Information about the connection.</p>"}))
    UpdateConnectionResponse.type = Types::UpdateConnectionResponse
    UpdateCoreNetworkRequest.add_member(:core_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: 'CoreNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of a core network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCoreNetworkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the update.</p>"}))
    UpdateCoreNetworkRequest.type = Types::UpdateCoreNetworkRequest
    UpdateCoreNetworkResponse.add_member(:core_network, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetwork, location_name: 'CoreNetwork', traits: {"smithy.api#documentation" => "<p>Returns information about a core network update.</p>"}))
    UpdateCoreNetworkResponse.type = Types::UpdateCoreNetworkResponse
    UpdateDeviceRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceRequest.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceRequest.add_member(:aws_location, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSLocation, location_name: 'AWSLocation', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>"}))
    UpdateDeviceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the device.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    UpdateDeviceRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the device.</p>"}))
    UpdateDeviceRequest.add_member(:vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Vendor', traits: {"smithy.api#documentation" => "<p>The vendor of the device.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    UpdateDeviceRequest.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Model', traits: {"smithy.api#documentation" => "<p>The model of the device.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    UpdateDeviceRequest.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'SerialNumber', traits: {"smithy.api#documentation" => "<p>The serial number of the device.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    UpdateDeviceRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location'))
    UpdateDeviceRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of the site.</p>"}))
    UpdateDeviceRequest.type = Types::UpdateDeviceRequest
    UpdateDeviceResponse.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'Device', traits: {"smithy.api#documentation" => "<p>Information about the device.</p>"}))
    UpdateDeviceResponse.type = Types::UpdateDeviceResponse
    UpdateDirectConnectGatewayAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the Direct Connect gateway attachment for the updated edge locations. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDirectConnectGatewayAttachmentRequest.add_member(:edge_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: 'EdgeLocations', traits: {"smithy.api#documentation" => "<p>One or more edge locations to update for the Direct Connect gateway attachment. The updated array of edge locations overwrites the previous array of locations. <code>EdgeLocations</code> is only used for Direct Connect gateway attachments.</p>"}))
    UpdateDirectConnectGatewayAttachmentRequest.type = Types::UpdateDirectConnectGatewayAttachmentRequest
    UpdateDirectConnectGatewayAttachmentResponse.add_member(:direct_connect_gateway_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachment, location_name: 'DirectConnectGatewayAttachment', traits: {"smithy.api#documentation" => "<p>Returns details of the Direct Connect gateway attachment with the updated edge locations.</p>"}))
    UpdateDirectConnectGatewayAttachmentResponse.type = Types::UpdateDirectConnectGatewayAttachmentResponse
    UpdateGlobalNetworkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of your global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGlobalNetworkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the global network.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    UpdateGlobalNetworkRequest.type = Types::UpdateGlobalNetworkRequest
    UpdateGlobalNetworkResponse.add_member(:global_network, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: 'GlobalNetwork', traits: {"smithy.api#documentation" => "<p>Information about the global network object.</p>"}))
    UpdateGlobalNetworkResponse.type = Types::UpdateGlobalNetworkResponse
    UpdateLinkRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The ID of the link.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the link.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    UpdateLinkRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the link.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    UpdateLinkRequest.add_member(:bandwidth, Smithy::Schema::Shapes::ShapeRef.new(shape: Bandwidth, location_name: 'Bandwidth', traits: {"smithy.api#documentation" => "<p>The upload and download speed in Mbps. </p>"}))
    UpdateLinkRequest.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Provider', traits: {"smithy.api#documentation" => "<p>The provider of the link.</p>\n         <p>Constraints: Maximum length of 128 characters.</p>"}))
    UpdateLinkRequest.type = Types::UpdateLinkRequest
    UpdateLinkResponse.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: Link, location_name: 'Link', traits: {"smithy.api#documentation" => "<p>Information about the link.</p>"}))
    UpdateLinkResponse.type = Types::UpdateLinkResponse
    UpdateNetworkResourceMetadataRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkResourceMetadataRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkResourceMetadataRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The resource metadata.</p>", "smithy.api#required" => {}}))
    UpdateNetworkResourceMetadataRequest.type = Types::UpdateNetworkResourceMetadataRequest
    UpdateNetworkResourceMetadataResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    UpdateNetworkResourceMetadataResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The updated resource metadata.</p>"}))
    UpdateNetworkResourceMetadataResponse.type = Types::UpdateNetworkResourceMetadataResponse
    UpdateSiteRequest.add_member(:global_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: 'GlobalNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the global network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#documentation" => "<p>The ID of your site.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of your site.</p>\n         <p>Constraints: Maximum length of 256 characters.</p>"}))
    UpdateSiteRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The site location:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Address</code>: The physical address of the site.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Latitude</code>: The latitude of the site. </p>\n            </li>\n            <li>\n               <p>\n                  <code>Longitude</code>: The longitude of the site.</p>\n            </li>\n         </ul>"}))
    UpdateSiteRequest.type = Types::UpdateSiteRequest
    UpdateSiteResponse.add_member(:site, Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site', traits: {"smithy.api#documentation" => "<p>Information about the site.</p>"}))
    UpdateSiteResponse.type = Types::UpdateSiteResponse
    UpdateVpcAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcAttachmentRequest.add_member(:add_subnet_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArnList, location_name: 'AddSubnetArns', traits: {"smithy.api#documentation" => "<p>Adds a subnet ARN to the VPC attachment.</p>"}))
    UpdateVpcAttachmentRequest.add_member(:remove_subnet_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArnList, location_name: 'RemoveSubnetArns', traits: {"smithy.api#documentation" => "<p>Removes a subnet ARN from the attachment.</p>"}))
    UpdateVpcAttachmentRequest.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Additional options for updating the VPC attachment. </p>"}))
    UpdateVpcAttachmentRequest.type = Types::UpdateVpcAttachmentRequest
    UpdateVpcAttachmentResponse.add_member(:vpc_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcAttachment, location_name: 'VpcAttachment', traits: {"smithy.api#documentation" => "<p>Describes the updated VPC attachment.</p>"}))
    UpdateVpcAttachmentResponse.type = Types::UpdateVpcAttachmentResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the error.</p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>The fields that caused the error, if applicable.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message for the field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UnknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "Other"}))
    Via.add_member(:network_function_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFunctionGroupList, location_name: 'NetworkFunctionGroups', traits: {"smithy.api#documentation" => "<p>The list of network function groups associated with the service insertion action.</p>"}))
    Via.add_member(:with_edge_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: WithEdgeOverridesList, location_name: 'WithEdgeOverrides', traits: {"smithy.api#documentation" => "<p>Describes any edge overrides. An edge override is a specific edge to be used for traffic.</p>"}))
    Via.type = Types::Via
    VpcAttachment.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'Attachment', traits: {"smithy.api#documentation" => "<p>Provides details about the VPC attachment.</p>"}))
    VpcAttachment.add_member(:subnet_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetArnList, location_name: 'SubnetArns', traits: {"smithy.api#documentation" => "<p>The subnet ARNs.</p>"}))
    VpcAttachment.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Provides details about the VPC attachment.</p>"}))
    VpcAttachment.type = Types::VpcAttachment
    VpcOptions.add_member(:ipv6_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Ipv6Support', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether IPv6 is supported.</p>"}))
    VpcOptions.add_member(:appliance_mode_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplianceModeSupport', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether appliance mode is supported.  If enabled, traffic flow between a source and destination use the same Availability Zone for the VPC attachment for the lifetime of that flow. The default value is <code>false</code>.</p>"}))
    VpcOptions.add_member(:dns_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DnsSupport', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether DNS is supported.</p>"}))
    VpcOptions.add_member(:security_group_referencing_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SecurityGroupReferencingSupport', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether security group referencing is enabled for this VPC attachment. The default is <code>true</code>. However, at the core network policy-level the default is set to <code>false</code>.</p>"}))
    VpcOptions.type = Types::VpcOptions
    WhenSentTo.add_member(:when_sent_to_segments_list, Smithy::Schema::Shapes::ShapeRef.new(shape: WhenSentToSegmentsList, location_name: 'WhenSentToSegmentsList', traits: {"smithy.api#documentation" => "<p>The list of destination segments when the service insertion action is <code>send-to</code>.</p>"}))
    WhenSentTo.type = Types::WhenSentTo
    WhenSentToSegmentsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConstrainedString)
    WithEdgeOverridesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeOverride)

    NetworkManager = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networkmanager#NetworkManager"
      service.name = "NetworkManager"
      service.version = "2019-07-05"
      service.traits = {"aws.api#service" => {"sdkId" => "NetworkManager", "arnNamespace" => "networkmanager", "cloudFormationName" => "NetworkManager", "cloudTrailEventSource" => "networkmanager.amazonaws.com", "endpointPrefix" => "networkmanager"}, "aws.auth#sigv4" => {"name" => "networkmanager"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Network Manager"}
      service.add_operation(:accept_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AcceptAttachment"
        operation.name = "AcceptAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/attachments/{AttachmentId}/accept", "code" => 200}}
      end)
      service.add_operation(:associate_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateConnectPeer"
        operation.name = "AssociateConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/connect-peer-associations", "code" => 200}}
      end)
      service.add_operation(:associate_customer_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateCustomerGateway"
        operation.name = "AssociateCustomerGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateCustomerGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateCustomerGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/customer-gateway-associations", "code" => 200}}
      end)
      service.add_operation(:associate_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateLink"
        operation.name = "AssociateLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLinkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/link-associations", "code" => 200}}
      end)
      service.add_operation(:associate_transit_gateway_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateTransitGatewayConnectPeer"
        operation.name = "AssociateTransitGatewayConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTransitGatewayConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTransitGatewayConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations", "code" => 200}}
      end)
      service.add_operation(:create_connect_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateConnectAttachment"
        operation.name = "CreateConnectAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connect-attachments", "code" => 200}}
      end)
      service.add_operation(:create_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateConnectPeer"
        operation.name = "CreateConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connect-peers", "code" => 200}}
      end)
      service.add_operation(:create_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/connections", "code" => 200}}
      end)
      service.add_operation(:create_core_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateCoreNetwork"
        operation.name = "CreateCoreNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCoreNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCoreNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks", "code" => 200}}
      end)
      service.add_operation(:create_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateDevice"
        operation.name = "CreateDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/devices", "code" => 200}}
      end)
      service.add_operation(:create_direct_connect_gateway_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateDirectConnectGatewayAttachment"
        operation.name = "CreateDirectConnectGatewayAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/direct-connect-gateway-attachments", "code" => 200}}
      end)
      service.add_operation(:create_global_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateGlobalNetwork"
        operation.name = "CreateGlobalNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks", "code" => 200}}
      end)
      service.add_operation(:create_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateLink"
        operation.name = "CreateLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLinkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/links", "code" => 200}}
      end)
      service.add_operation(:create_site, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateSite"
        operation.name = "CreateSite"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSiteRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSiteResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/sites", "code" => 200}}
      end)
      service.add_operation(:create_site_to_site_vpn_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateSiteToSiteVpnAttachment"
        operation.name = "CreateSiteToSiteVpnAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSiteToSiteVpnAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSiteToSiteVpnAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/site-to-site-vpn-attachments", "code" => 200}}
      end)
      service.add_operation(:create_transit_gateway_peering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateTransitGatewayPeering"
        operation.name = "CreateTransitGatewayPeering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTransitGatewayPeeringRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTransitGatewayPeeringResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/transit-gateway-peerings", "code" => 200}}
      end)
      service.add_operation(:create_transit_gateway_route_table_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateTransitGatewayRouteTableAttachment"
        operation.name = "CreateTransitGatewayRouteTableAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTransitGatewayRouteTableAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTransitGatewayRouteTableAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/transit-gateway-route-table-attachments", "code" => 200}}
      end)
      service.add_operation(:create_vpc_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateVpcAttachment"
        operation.name = "CreateVpcAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vpc-attachments", "code" => 200}}
      end)
      service.add_operation(:delete_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteAttachment"
        operation.name = "DeleteAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteConnectPeer"
        operation.name = "DeleteConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/connect-peers/{ConnectPeerId}", "code" => 200}}
      end)
      service.add_operation(:delete_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_core_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteCoreNetwork"
        operation.name = "DeleteCoreNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/core-networks/{CoreNetworkId}", "code" => 200}}
      end)
      service.add_operation(:delete_core_network_policy_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteCoreNetworkPolicyVersion"
        operation.name = "DeleteCoreNetworkPolicyVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreNetworkPolicyVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreNetworkPolicyVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}", "code" => 200}}
      end)
      service.add_operation(:delete_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteDevice"
        operation.name = "DeleteDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:delete_global_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteGlobalNetwork"
        operation.name = "DeleteGlobalNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}", "code" => 200}}
      end)
      service.add_operation(:delete_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteLink"
        operation.name = "DeleteLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLinkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/links/{LinkId}", "code" => 200}}
      end)
      service.add_operation(:delete_peering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeletePeering"
        operation.name = "DeletePeering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePeeringRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePeeringResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/peerings/{PeeringId}", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/resource-policy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:delete_site, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteSite"
        operation.name = "DeleteSite"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSiteRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSiteResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:deregister_transit_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeregisterTransitGateway"
        operation.name = "DeregisterTransitGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterTransitGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterTransitGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-registrations/{TransitGatewayArn}", "code" => 200}}
      end)
      service.add_operation(:describe_global_networks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DescribeGlobalNetworks"
        operation.name = "DescribeGlobalNetworks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalNetworksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalNetworksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks", "code" => 200}}
        operation[:paginator] = Paginators::DescribeGlobalNetworks.new
      end)
      service.add_operation(:disassociate_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateConnectPeer"
        operation.name = "DisassociateConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/connect-peer-associations/{ConnectPeerId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_customer_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateCustomerGateway"
        operation.name = "DisassociateCustomerGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateCustomerGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateCustomerGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/customer-gateway-associations/{CustomerGatewayArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateLink"
        operation.name = "DisassociateLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLinkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/link-associations", "code" => 200}}
      end)
      service.add_operation(:disassociate_transit_gateway_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateTransitGatewayConnectPeer"
        operation.name = "DisassociateTransitGatewayConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTransitGatewayConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTransitGatewayConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations/{TransitGatewayConnectPeerArn}", "code" => 200}}
      end)
      service.add_operation(:execute_core_network_change_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ExecuteCoreNetworkChangeSet"
        operation.name = "ExecuteCoreNetworkChangeSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteCoreNetworkChangeSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteCoreNetworkChangeSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}/execute", "code" => 200}}
      end)
      service.add_operation(:get_connect_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnectAttachment"
        operation.name = "GetConnectAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connect-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_connect_peer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnectPeer"
        operation.name = "GetConnectPeer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectPeerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectPeerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connect-peers/{ConnectPeerId}", "code" => 200}}
      end)
      service.add_operation(:get_connect_peer_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnectPeerAssociations"
        operation.name = "GetConnectPeerAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectPeerAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectPeerAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/connect-peer-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetConnectPeerAssociations.new
      end)
      service.add_operation(:get_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnections"
        operation.name = "GetConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/connections", "code" => 200}}
        operation[:paginator] = Paginators::GetConnections.new
      end)
      service.add_operation(:get_core_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetwork"
        operation.name = "GetCoreNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}", "code" => 200}}
      end)
      service.add_operation(:get_core_network_change_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetworkChangeEvents"
        operation.name = "GetCoreNetworkChangeEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkChangeEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkChangeEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-change-events/{PolicyVersionId}", "code" => 200}}
        operation[:paginator] = Paginators::GetCoreNetworkChangeEvents.new
      end)
      service.add_operation(:get_core_network_change_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetworkChangeSet"
        operation.name = "GetCoreNetworkChangeSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkChangeSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkChangeSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}", "code" => 200}}
        operation[:paginator] = Paginators::GetCoreNetworkChangeSet.new
      end)
      service.add_operation(:get_core_network_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetworkPolicy"
        operation.name = "GetCoreNetworkPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreNetworkPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy", "code" => 200}}
      end)
      service.add_operation(:get_customer_gateway_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCustomerGatewayAssociations"
        operation.name = "GetCustomerGatewayAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomerGatewayAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomerGatewayAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/customer-gateway-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetCustomerGatewayAssociations.new
      end)
      service.add_operation(:get_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetDevices"
        operation.name = "GetDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/devices", "code" => 200}}
        operation[:paginator] = Paginators::GetDevices.new
      end)
      service.add_operation(:get_direct_connect_gateway_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetDirectConnectGatewayAttachment"
        operation.name = "GetDirectConnectGatewayAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectConnectGatewayAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectConnectGatewayAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/direct-connect-gateway-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_link_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetLinkAssociations"
        operation.name = "GetLinkAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/link-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetLinkAssociations.new
      end)
      service.add_operation(:get_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetLinks"
        operation.name = "GetLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/links", "code" => 200}}
        operation[:paginator] = Paginators::GetLinks.new
      end)
      service.add_operation(:get_network_resource_counts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkResourceCounts"
        operation.name = "GetNetworkResourceCounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkResourceCountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkResourceCountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-resource-count", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkResourceCounts.new
      end)
      service.add_operation(:get_network_resource_relationships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkResourceRelationships"
        operation.name = "GetNetworkResourceRelationships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkResourceRelationshipsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkResourceRelationshipsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-resource-relationships", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkResourceRelationships.new
      end)
      service.add_operation(:get_network_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkResources"
        operation.name = "GetNetworkResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-resources", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkResources.new
      end)
      service.add_operation(:get_network_routes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkRoutes"
        operation.name = "GetNetworkRoutes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkRoutesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkRoutesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/network-routes", "code" => 200}}
      end)
      service.add_operation(:get_network_telemetry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkTelemetry"
        operation.name = "GetNetworkTelemetry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkTelemetryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkTelemetryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-telemetry", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkTelemetry.new
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-policy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:get_route_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetRouteAnalysis"
        operation.name = "GetRouteAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRouteAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRouteAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/route-analyses/{RouteAnalysisId}", "code" => 200}}
      end)
      service.add_operation(:get_site_to_site_vpn_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetSiteToSiteVpnAttachment"
        operation.name = "GetSiteToSiteVpnAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSiteToSiteVpnAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSiteToSiteVpnAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/site-to-site-vpn-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_sites, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetSites"
        operation.name = "GetSites"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSitesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSitesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/sites", "code" => 200}}
        operation[:paginator] = Paginators::GetSites.new
      end)
      service.add_operation(:get_transit_gateway_connect_peer_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayConnectPeerAssociations"
        operation.name = "GetTransitGatewayConnectPeerAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayConnectPeerAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayConnectPeerAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetTransitGatewayConnectPeerAssociations.new
      end)
      service.add_operation(:get_transit_gateway_peering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayPeering"
        operation.name = "GetTransitGatewayPeering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayPeeringRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayPeeringResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/transit-gateway-peerings/{PeeringId}", "code" => 200}}
      end)
      service.add_operation(:get_transit_gateway_registrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayRegistrations"
        operation.name = "GetTransitGatewayRegistrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayRegistrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayRegistrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-registrations", "code" => 200}}
        operation[:paginator] = Paginators::GetTransitGatewayRegistrations.new
      end)
      service.add_operation(:get_transit_gateway_route_table_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayRouteTableAttachment"
        operation.name = "GetTransitGatewayRouteTableAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayRouteTableAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransitGatewayRouteTableAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/transit-gateway-route-table-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_vpc_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetVpcAttachment"
        operation.name = "GetVpcAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vpc-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:list_attachments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListAttachments"
        operation.name = "ListAttachments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/attachments", "code" => 200}}
        operation[:paginator] = Paginators::ListAttachments.new
      end)
      service.add_operation(:list_connect_peers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListConnectPeers"
        operation.name = "ListConnectPeers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectPeersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectPeersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connect-peers", "code" => 200}}
        operation[:paginator] = Paginators::ListConnectPeers.new
      end)
      service.add_operation(:list_core_network_policy_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListCoreNetworkPolicyVersions"
        operation.name = "ListCoreNetworkPolicyVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreNetworkPolicyVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreNetworkPolicyVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy-versions", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreNetworkPolicyVersions.new
      end)
      service.add_operation(:list_core_networks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListCoreNetworks"
        operation.name = "ListCoreNetworks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreNetworksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreNetworksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreNetworks.new
      end)
      service.add_operation(:list_organization_service_access_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListOrganizationServiceAccessStatus"
        operation.name = "ListOrganizationServiceAccessStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationServiceAccessStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationServiceAccessStatusResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/organizations/service-access", "code" => 200}}
      end)
      service.add_operation(:list_peerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListPeerings"
        operation.name = "ListPeerings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPeeringsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPeeringsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/peerings", "code" => 200}}
        operation[:paginator] = Paginators::ListPeerings.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_core_network_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#PutCoreNetworkPolicy"
        operation.name = "PutCoreNetworkPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCoreNetworkPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCoreNetworkPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CoreNetworkPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resource-policy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_transit_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#RegisterTransitGateway"
        operation.name = "RegisterTransitGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterTransitGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterTransitGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-registrations", "code" => 200}}
      end)
      service.add_operation(:reject_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#RejectAttachment"
        operation.name = "RejectAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/attachments/{AttachmentId}/reject", "code" => 200}}
      end)
      service.add_operation(:restore_core_network_policy_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#RestoreCoreNetworkPolicyVersion"
        operation.name = "RestoreCoreNetworkPolicyVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreCoreNetworkPolicyVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreCoreNetworkPolicyVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}/restore", "code" => 200}}
      end)
      service.add_operation(:start_organization_service_access_update, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#StartOrganizationServiceAccessUpdate"
        operation.name = "StartOrganizationServiceAccessUpdate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartOrganizationServiceAccessUpdateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartOrganizationServiceAccessUpdateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organizations/service-access", "code" => 200}}
      end)
      service.add_operation(:start_route_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#StartRouteAnalysis"
        operation.name = "StartRouteAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRouteAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRouteAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/route-analyses", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:update_core_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateCoreNetwork"
        operation.name = "UpdateCoreNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCoreNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCoreNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/core-networks/{CoreNetworkId}", "code" => 200}}
      end)
      service.add_operation(:update_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateDevice"
        operation.name = "UpdateDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:update_direct_connect_gateway_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateDirectConnectGatewayAttachment"
        operation.name = "UpdateDirectConnectGatewayAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/direct-connect-gateway-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:update_global_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateGlobalNetwork"
        operation.name = "UpdateGlobalNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}", "code" => 200}}
      end)
      service.add_operation(:update_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateLink"
        operation.name = "UpdateLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/links/{LinkId}", "code" => 200}}
      end)
      service.add_operation(:update_network_resource_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateNetworkResourceMetadata"
        operation.name = "UpdateNetworkResourceMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkResourceMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkResourceMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/network-resources/{ResourceArn}/metadata", "code" => 200}}
      end)
      service.add_operation(:update_site, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateSite"
        operation.name = "UpdateSite"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:update_vpc_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateVpcAttachment"
        operation.name = "UpdateVpcAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/vpc-attachments/{AttachmentId}", "code" => 200}}
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
