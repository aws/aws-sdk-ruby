# frozen_string_literal: true

# This is generated code!

module Aws::NetworkManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    AWSLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AWSLocation", name: "AWSLocation")
    AcceptAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AcceptAttachmentRequest", name: "AcceptAttachmentRequest")
    AcceptAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AcceptAttachmentResponse", name: "AcceptAttachmentResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AccountStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AccountStatus", name: "AccountStatus")
    AccountStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#AccountStatusList", name: "AccountStatusList")
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#Action", name: "Action", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssociateConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateConnectPeerRequest", name: "AssociateConnectPeerRequest")
    AssociateConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateConnectPeerResponse", name: "AssociateConnectPeerResponse")
    AssociateCustomerGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateCustomerGatewayRequest", name: "AssociateCustomerGatewayRequest")
    AssociateCustomerGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateCustomerGatewayResponse", name: "AssociateCustomerGatewayResponse")
    AssociateLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateLinkRequest", name: "AssociateLinkRequest")
    AssociateLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateLinkResponse", name: "AssociateLinkResponse")
    AssociateTransitGatewayConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateTransitGatewayConnectPeerRequest", name: "AssociateTransitGatewayConnectPeerRequest")
    AssociateTransitGatewayConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AssociateTransitGatewayConnectPeerResponse", name: "AssociateTransitGatewayConnectPeerResponse")
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Attachment", name: "Attachment")
    AttachmentError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#AttachmentError", name: "AttachmentError")
    AttachmentErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#AttachmentErrorCode", name: "AttachmentErrorCode")
    AttachmentErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#AttachmentErrorList", name: "AttachmentErrorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#AttachmentId", name: "AttachmentId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^attachment-([0-9a-f]{8,17})$"})
    AttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#AttachmentList", name: "AttachmentList")
    AttachmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#AttachmentState", name: "AttachmentState")
    AttachmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#AttachmentType", name: "AttachmentType")
    Bandwidth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Bandwidth", name: "Bandwidth")
    BgpOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#BgpOptions", name: "BgpOptions")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networkmanager#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ChangeAction", name: "ChangeAction")
    ChangeSetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ChangeSetState", name: "ChangeSetState")
    ChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ChangeStatus", name: "ChangeStatus")
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ChangeType", name: "ChangeType")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectAttachment", name: "ConnectAttachment")
    ConnectAttachmentOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectAttachmentOptions", name: "ConnectAttachmentOptions")
    ConnectPeer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectPeer", name: "ConnectPeer")
    ConnectPeerAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectPeerAssociation", name: "ConnectPeerAssociation")
    ConnectPeerAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectPeerAssociationList", name: "ConnectPeerAssociationList")
    ConnectPeerAssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ConnectPeerAssociationState", name: "ConnectPeerAssociationState")
    ConnectPeerBgpConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectPeerBgpConfiguration", name: "ConnectPeerBgpConfiguration")
    ConnectPeerBgpConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectPeerBgpConfigurationList", name: "ConnectPeerBgpConfigurationList")
    ConnectPeerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectPeerConfiguration", name: "ConnectPeerConfiguration")
    ConnectPeerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectPeerError", name: "ConnectPeerError")
    ConnectPeerErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ConnectPeerErrorCode", name: "ConnectPeerErrorCode")
    ConnectPeerErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectPeerErrorList", name: "ConnectPeerErrorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConnectPeerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ConnectPeerId", name: "ConnectPeerId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^connect-peer-([0-9a-f]{8,17})$"})
    ConnectPeerIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectPeerIdList", name: "ConnectPeerIdList")
    ConnectPeerState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ConnectPeerState", name: "ConnectPeerState")
    ConnectPeerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectPeerSummary", name: "ConnectPeerSummary")
    ConnectPeerSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectPeerSummaryList", name: "ConnectPeerSummaryList")
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Connection", name: "Connection")
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ConnectionHealth", name: "ConnectionHealth")
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ConnectionId", name: "ConnectionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectionIdList", name: "ConnectionIdList")
    ConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConnectionList", name: "ConnectionList")
    ConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ConnectionState", name: "ConnectionState")
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ConnectionStatus", name: "ConnectionStatus")
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ConnectionType", name: "ConnectionType")
    ConstrainedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ConstrainedString", name: "ConstrainedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConstrainedStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ConstrainedStringList", name: "ConstrainedStringList")
    CoreNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetwork", name: "CoreNetwork")
    CoreNetworkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#CoreNetworkArn", name: "CoreNetworkArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CoreNetworkChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkChange", name: "CoreNetworkChange")
    CoreNetworkChangeEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkChangeEvent", name: "CoreNetworkChangeEvent")
    CoreNetworkChangeEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkChangeEventList", name: "CoreNetworkChangeEventList")
    CoreNetworkChangeEventValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkChangeEventValues", name: "CoreNetworkChangeEventValues")
    CoreNetworkChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkChangeList", name: "CoreNetworkChangeList")
    CoreNetworkChangeValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkChangeValues", name: "CoreNetworkChangeValues")
    CoreNetworkEdge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkEdge", name: "CoreNetworkEdge")
    CoreNetworkEdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkEdgeList", name: "CoreNetworkEdgeList")
    CoreNetworkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#CoreNetworkId", name: "CoreNetworkId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^core-network-([0-9a-f]{8,17})$"})
    CoreNetworkNetworkFunctionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkNetworkFunctionGroup", name: "CoreNetworkNetworkFunctionGroup")
    CoreNetworkNetworkFunctionGroupIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkNetworkFunctionGroupIdentifier", name: "CoreNetworkNetworkFunctionGroupIdentifier")
    CoreNetworkNetworkFunctionGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkNetworkFunctionGroupList", name: "CoreNetworkNetworkFunctionGroupList")
    CoreNetworkPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicy", name: "CoreNetworkPolicy")
    CoreNetworkPolicyAlias = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyAlias", name: "CoreNetworkPolicyAlias")
    CoreNetworkPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyDocument", name: "CoreNetworkPolicyDocument", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CoreNetworkPolicyError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyError", name: "CoreNetworkPolicyError")
    CoreNetworkPolicyErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyErrorList", name: "CoreNetworkPolicyErrorList")
    CoreNetworkPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyException", name: "CoreNetworkPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CoreNetworkPolicyVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyVersion", name: "CoreNetworkPolicyVersion")
    CoreNetworkPolicyVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkPolicyVersionList", name: "CoreNetworkPolicyVersionList")
    CoreNetworkSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkSegment", name: "CoreNetworkSegment")
    CoreNetworkSegmentEdgeIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkSegmentEdgeIdentifier", name: "CoreNetworkSegmentEdgeIdentifier")
    CoreNetworkSegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkSegmentList", name: "CoreNetworkSegmentList")
    CoreNetworkState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#CoreNetworkState", name: "CoreNetworkState")
    CoreNetworkSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CoreNetworkSummary", name: "CoreNetworkSummary")
    CoreNetworkSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CoreNetworkSummaryList", name: "CoreNetworkSummaryList")
    CreateConnectAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateConnectAttachmentRequest", name: "CreateConnectAttachmentRequest")
    CreateConnectAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateConnectAttachmentResponse", name: "CreateConnectAttachmentResponse")
    CreateConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateConnectPeerRequest", name: "CreateConnectPeerRequest")
    CreateConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateConnectPeerResponse", name: "CreateConnectPeerResponse")
    CreateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateConnectionRequest", name: "CreateConnectionRequest")
    CreateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateConnectionResponse", name: "CreateConnectionResponse")
    CreateCoreNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateCoreNetworkRequest", name: "CreateCoreNetworkRequest")
    CreateCoreNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateCoreNetworkResponse", name: "CreateCoreNetworkResponse")
    CreateDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateDeviceRequest", name: "CreateDeviceRequest")
    CreateDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateDeviceResponse", name: "CreateDeviceResponse")
    CreateDirectConnectGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateDirectConnectGatewayAttachmentRequest", name: "CreateDirectConnectGatewayAttachmentRequest")
    CreateDirectConnectGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateDirectConnectGatewayAttachmentResponse", name: "CreateDirectConnectGatewayAttachmentResponse")
    CreateGlobalNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateGlobalNetworkRequest", name: "CreateGlobalNetworkRequest")
    CreateGlobalNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateGlobalNetworkResponse", name: "CreateGlobalNetworkResponse")
    CreateLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateLinkRequest", name: "CreateLinkRequest")
    CreateLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateLinkResponse", name: "CreateLinkResponse")
    CreateSiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateSiteRequest", name: "CreateSiteRequest")
    CreateSiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateSiteResponse", name: "CreateSiteResponse")
    CreateSiteToSiteVpnAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateSiteToSiteVpnAttachmentRequest", name: "CreateSiteToSiteVpnAttachmentRequest")
    CreateSiteToSiteVpnAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateSiteToSiteVpnAttachmentResponse", name: "CreateSiteToSiteVpnAttachmentResponse")
    CreateTransitGatewayPeeringRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateTransitGatewayPeeringRequest", name: "CreateTransitGatewayPeeringRequest")
    CreateTransitGatewayPeeringResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateTransitGatewayPeeringResponse", name: "CreateTransitGatewayPeeringResponse")
    CreateTransitGatewayRouteTableAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateTransitGatewayRouteTableAttachmentRequest", name: "CreateTransitGatewayRouteTableAttachmentRequest")
    CreateTransitGatewayRouteTableAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateTransitGatewayRouteTableAttachmentResponse", name: "CreateTransitGatewayRouteTableAttachmentResponse")
    CreateVpcAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateVpcAttachmentRequest", name: "CreateVpcAttachmentRequest")
    CreateVpcAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CreateVpcAttachmentResponse", name: "CreateVpcAttachmentResponse")
    CustomerGatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#CustomerGatewayArn", name: "CustomerGatewayArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CustomerGatewayArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CustomerGatewayArnList", name: "CustomerGatewayArnList")
    CustomerGatewayAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#CustomerGatewayAssociation", name: "CustomerGatewayAssociation")
    CustomerGatewayAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#CustomerGatewayAssociationList", name: "CustomerGatewayAssociationList")
    CustomerGatewayAssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#CustomerGatewayAssociationState", name: "CustomerGatewayAssociationState")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkmanager#DateTime", name: "DateTime")
    DeleteAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteAttachmentRequest", name: "DeleteAttachmentRequest")
    DeleteAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteAttachmentResponse", name: "DeleteAttachmentResponse")
    DeleteConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteConnectPeerRequest", name: "DeleteConnectPeerRequest")
    DeleteConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteConnectPeerResponse", name: "DeleteConnectPeerResponse")
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    DeleteConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteConnectionResponse", name: "DeleteConnectionResponse")
    DeleteCoreNetworkPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteCoreNetworkPolicyVersionRequest", name: "DeleteCoreNetworkPolicyVersionRequest")
    DeleteCoreNetworkPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteCoreNetworkPolicyVersionResponse", name: "DeleteCoreNetworkPolicyVersionResponse")
    DeleteCoreNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteCoreNetworkRequest", name: "DeleteCoreNetworkRequest")
    DeleteCoreNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteCoreNetworkResponse", name: "DeleteCoreNetworkResponse")
    DeleteDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteDeviceRequest", name: "DeleteDeviceRequest")
    DeleteDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteDeviceResponse", name: "DeleteDeviceResponse")
    DeleteGlobalNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteGlobalNetworkRequest", name: "DeleteGlobalNetworkRequest")
    DeleteGlobalNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteGlobalNetworkResponse", name: "DeleteGlobalNetworkResponse")
    DeleteLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteLinkRequest", name: "DeleteLinkRequest")
    DeleteLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteLinkResponse", name: "DeleteLinkResponse")
    DeletePeeringRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeletePeeringRequest", name: "DeletePeeringRequest")
    DeletePeeringResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeletePeeringResponse", name: "DeletePeeringResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteSiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteSiteRequest", name: "DeleteSiteRequest")
    DeleteSiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeleteSiteResponse", name: "DeleteSiteResponse")
    DeregisterTransitGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeregisterTransitGatewayRequest", name: "DeregisterTransitGatewayRequest")
    DeregisterTransitGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DeregisterTransitGatewayResponse", name: "DeregisterTransitGatewayResponse")
    DescribeGlobalNetworksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DescribeGlobalNetworksRequest", name: "DescribeGlobalNetworksRequest")
    DescribeGlobalNetworksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DescribeGlobalNetworksResponse", name: "DescribeGlobalNetworksResponse")
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Device", name: "Device")
    DeviceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#DeviceArn", name: "DeviceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#DeviceId", name: "DeviceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DeviceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#DeviceIdList", name: "DeviceIdList")
    DeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#DeviceList", name: "DeviceList")
    DeviceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#DeviceState", name: "DeviceState")
    DirectConnectGatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#DirectConnectGatewayArn", name: "DirectConnectGatewayArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:directconnect::[^:]{0,63}:dx-gateway\\/[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$"})
    DirectConnectGatewayAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DirectConnectGatewayAttachment", name: "DirectConnectGatewayAttachment")
    DisassociateConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateConnectPeerRequest", name: "DisassociateConnectPeerRequest")
    DisassociateConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateConnectPeerResponse", name: "DisassociateConnectPeerResponse")
    DisassociateCustomerGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateCustomerGatewayRequest", name: "DisassociateCustomerGatewayRequest")
    DisassociateCustomerGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateCustomerGatewayResponse", name: "DisassociateCustomerGatewayResponse")
    DisassociateLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateLinkRequest", name: "DisassociateLinkRequest")
    DisassociateLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateLinkResponse", name: "DisassociateLinkResponse")
    DisassociateTransitGatewayConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateTransitGatewayConnectPeerRequest", name: "DisassociateTransitGatewayConnectPeerRequest")
    DisassociateTransitGatewayConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#DisassociateTransitGatewayConnectPeerResponse", name: "DisassociateTransitGatewayConnectPeerResponse")
    EdgeOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#EdgeOverride", name: "EdgeOverride")
    EdgeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#EdgeSet", name: "EdgeSet")
    EdgeSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#EdgeSetList", name: "EdgeSetList")
    ExceptionContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ExceptionContextKey", name: "ExceptionContextKey")
    ExceptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkmanager#ExceptionContextMap", name: "ExceptionContextMap")
    ExceptionContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ExceptionContextValue", name: "ExceptionContextValue")
    ExecuteCoreNetworkChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ExecuteCoreNetworkChangeSetRequest", name: "ExecuteCoreNetworkChangeSetRequest")
    ExecuteCoreNetworkChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ExecuteCoreNetworkChangeSetResponse", name: "ExecuteCoreNetworkChangeSetResponse")
    ExternalRegionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ExternalRegionCode", name: "ExternalRegionCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ExternalRegionCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ExternalRegionCodeList", name: "ExternalRegionCodeList")
    FilterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkmanager#FilterMap", name: "FilterMap")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\.-]*$"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?-]*$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#FilterValues", name: "FilterValues")
    GetConnectAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectAttachmentRequest", name: "GetConnectAttachmentRequest")
    GetConnectAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectAttachmentResponse", name: "GetConnectAttachmentResponse")
    GetConnectPeerAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectPeerAssociationsRequest", name: "GetConnectPeerAssociationsRequest")
    GetConnectPeerAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectPeerAssociationsResponse", name: "GetConnectPeerAssociationsResponse")
    GetConnectPeerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectPeerRequest", name: "GetConnectPeerRequest")
    GetConnectPeerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectPeerResponse", name: "GetConnectPeerResponse")
    GetConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectionsRequest", name: "GetConnectionsRequest")
    GetConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetConnectionsResponse", name: "GetConnectionsResponse")
    GetCoreNetworkChangeEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkChangeEventsRequest", name: "GetCoreNetworkChangeEventsRequest")
    GetCoreNetworkChangeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkChangeEventsResponse", name: "GetCoreNetworkChangeEventsResponse")
    GetCoreNetworkChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkChangeSetRequest", name: "GetCoreNetworkChangeSetRequest")
    GetCoreNetworkChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkChangeSetResponse", name: "GetCoreNetworkChangeSetResponse")
    GetCoreNetworkPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkPolicyRequest", name: "GetCoreNetworkPolicyRequest")
    GetCoreNetworkPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkPolicyResponse", name: "GetCoreNetworkPolicyResponse")
    GetCoreNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkRequest", name: "GetCoreNetworkRequest")
    GetCoreNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCoreNetworkResponse", name: "GetCoreNetworkResponse")
    GetCustomerGatewayAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCustomerGatewayAssociationsRequest", name: "GetCustomerGatewayAssociationsRequest")
    GetCustomerGatewayAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetCustomerGatewayAssociationsResponse", name: "GetCustomerGatewayAssociationsResponse")
    GetDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetDevicesRequest", name: "GetDevicesRequest")
    GetDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetDevicesResponse", name: "GetDevicesResponse")
    GetDirectConnectGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetDirectConnectGatewayAttachmentRequest", name: "GetDirectConnectGatewayAttachmentRequest")
    GetDirectConnectGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetDirectConnectGatewayAttachmentResponse", name: "GetDirectConnectGatewayAttachmentResponse")
    GetLinkAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetLinkAssociationsRequest", name: "GetLinkAssociationsRequest")
    GetLinkAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetLinkAssociationsResponse", name: "GetLinkAssociationsResponse")
    GetLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetLinksRequest", name: "GetLinksRequest")
    GetLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetLinksResponse", name: "GetLinksResponse")
    GetNetworkResourceCountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkResourceCountsRequest", name: "GetNetworkResourceCountsRequest")
    GetNetworkResourceCountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkResourceCountsResponse", name: "GetNetworkResourceCountsResponse")
    GetNetworkResourceRelationshipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkResourceRelationshipsRequest", name: "GetNetworkResourceRelationshipsRequest")
    GetNetworkResourceRelationshipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkResourceRelationshipsResponse", name: "GetNetworkResourceRelationshipsResponse")
    GetNetworkResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkResourcesRequest", name: "GetNetworkResourcesRequest")
    GetNetworkResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkResourcesResponse", name: "GetNetworkResourcesResponse")
    GetNetworkRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkRoutesRequest", name: "GetNetworkRoutesRequest")
    GetNetworkRoutesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkRoutesResponse", name: "GetNetworkRoutesResponse")
    GetNetworkTelemetryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkTelemetryRequest", name: "GetNetworkTelemetryRequest")
    GetNetworkTelemetryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetNetworkTelemetryResponse", name: "GetNetworkTelemetryResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GetRouteAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetRouteAnalysisRequest", name: "GetRouteAnalysisRequest")
    GetRouteAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetRouteAnalysisResponse", name: "GetRouteAnalysisResponse")
    GetSiteToSiteVpnAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetSiteToSiteVpnAttachmentRequest", name: "GetSiteToSiteVpnAttachmentRequest")
    GetSiteToSiteVpnAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetSiteToSiteVpnAttachmentResponse", name: "GetSiteToSiteVpnAttachmentResponse")
    GetSitesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetSitesRequest", name: "GetSitesRequest")
    GetSitesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetSitesResponse", name: "GetSitesResponse")
    GetTransitGatewayConnectPeerAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayConnectPeerAssociationsRequest", name: "GetTransitGatewayConnectPeerAssociationsRequest")
    GetTransitGatewayConnectPeerAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayConnectPeerAssociationsResponse", name: "GetTransitGatewayConnectPeerAssociationsResponse")
    GetTransitGatewayPeeringRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayPeeringRequest", name: "GetTransitGatewayPeeringRequest")
    GetTransitGatewayPeeringResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayPeeringResponse", name: "GetTransitGatewayPeeringResponse")
    GetTransitGatewayRegistrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayRegistrationsRequest", name: "GetTransitGatewayRegistrationsRequest")
    GetTransitGatewayRegistrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayRegistrationsResponse", name: "GetTransitGatewayRegistrationsResponse")
    GetTransitGatewayRouteTableAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayRouteTableAttachmentRequest", name: "GetTransitGatewayRouteTableAttachmentRequest")
    GetTransitGatewayRouteTableAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetTransitGatewayRouteTableAttachmentResponse", name: "GetTransitGatewayRouteTableAttachmentResponse")
    GetVpcAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetVpcAttachmentRequest", name: "GetVpcAttachmentRequest")
    GetVpcAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GetVpcAttachmentResponse", name: "GetVpcAttachmentResponse")
    GlobalNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#GlobalNetwork", name: "GlobalNetwork")
    GlobalNetworkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#GlobalNetworkArn", name: "GlobalNetworkArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GlobalNetworkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#GlobalNetworkId", name: "GlobalNetworkId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GlobalNetworkIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#GlobalNetworkIdList", name: "GlobalNetworkIdList")
    GlobalNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#GlobalNetworkList", name: "GlobalNetworkList")
    GlobalNetworkState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#GlobalNetworkState", name: "GlobalNetworkState")
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#IPAddress", name: "IPAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkmanager#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Link = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Link", name: "Link")
    LinkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#LinkArn", name: "LinkArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    LinkAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#LinkAssociation", name: "LinkAssociation")
    LinkAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#LinkAssociationList", name: "LinkAssociationList")
    LinkAssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#LinkAssociationState", name: "LinkAssociationState")
    LinkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#LinkId", name: "LinkId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    LinkIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#LinkIdList", name: "LinkIdList")
    LinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#LinkList", name: "LinkList")
    LinkState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#LinkState", name: "LinkState")
    ListAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListAttachmentsRequest", name: "ListAttachmentsRequest")
    ListAttachmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListAttachmentsResponse", name: "ListAttachmentsResponse")
    ListConnectPeersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListConnectPeersRequest", name: "ListConnectPeersRequest")
    ListConnectPeersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListConnectPeersResponse", name: "ListConnectPeersResponse")
    ListCoreNetworkPolicyVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListCoreNetworkPolicyVersionsRequest", name: "ListCoreNetworkPolicyVersionsRequest")
    ListCoreNetworkPolicyVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListCoreNetworkPolicyVersionsResponse", name: "ListCoreNetworkPolicyVersionsResponse")
    ListCoreNetworksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListCoreNetworksRequest", name: "ListCoreNetworksRequest")
    ListCoreNetworksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListCoreNetworksResponse", name: "ListCoreNetworksResponse")
    ListOrganizationServiceAccessStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListOrganizationServiceAccessStatusRequest", name: "ListOrganizationServiceAccessStatusRequest")
    ListOrganizationServiceAccessStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListOrganizationServiceAccessStatusResponse", name: "ListOrganizationServiceAccessStatusResponse")
    ListPeeringsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListPeeringsRequest", name: "ListPeeringsRequest")
    ListPeeringsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListPeeringsResponse", name: "ListPeeringsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Location", name: "Location", traits: {"smithy.api#sensitive" => {}})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkmanager#Long", name: "Long")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkmanager#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    NetworkFunctionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkFunctionGroup", name: "NetworkFunctionGroup")
    NetworkFunctionGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#NetworkFunctionGroupList", name: "NetworkFunctionGroupList")
    NetworkFunctionGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#NetworkFunctionGroupName", name: "NetworkFunctionGroupName", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    NetworkResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkResource", name: "NetworkResource")
    NetworkResourceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkResourceCount", name: "NetworkResourceCount")
    NetworkResourceCountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#NetworkResourceCountList", name: "NetworkResourceCountList")
    NetworkResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#NetworkResourceList", name: "NetworkResourceList")
    NetworkResourceMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkmanager#NetworkResourceMetadataMap", name: "NetworkResourceMetadataMap")
    NetworkResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkResourceSummary", name: "NetworkResourceSummary")
    NetworkRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkRoute", name: "NetworkRoute")
    NetworkRouteDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkRouteDestination", name: "NetworkRouteDestination")
    NetworkRouteDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#NetworkRouteDestinationList", name: "NetworkRouteDestinationList")
    NetworkRouteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#NetworkRouteList", name: "NetworkRouteList")
    NetworkTelemetry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#NetworkTelemetry", name: "NetworkTelemetry")
    NetworkTelemetryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#NetworkTelemetryList", name: "NetworkTelemetryList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    OrganizationAwsServiceAccessStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#OrganizationAwsServiceAccessStatus", name: "OrganizationAwsServiceAccessStatus", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#OrganizationId", name: "OrganizationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^o-([0-9a-f]{8,17})$"})
    OrganizationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#OrganizationStatus", name: "OrganizationStatus")
    PathComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PathComponent", name: "PathComponent")
    PathComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#PathComponentList", name: "PathComponentList")
    Peering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Peering", name: "Peering")
    PeeringError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PeeringError", name: "PeeringError")
    PeeringErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#PeeringErrorCode", name: "PeeringErrorCode")
    PeeringErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#PeeringErrorList", name: "PeeringErrorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    PeeringId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#PeeringId", name: "PeeringId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^peering-([0-9a-f]{8,17})$"})
    PeeringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#PeeringList", name: "PeeringList")
    PeeringState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#PeeringState", name: "PeeringState")
    PeeringType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#PeeringType", name: "PeeringType")
    PermissionsErrorContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PermissionsErrorContext", name: "PermissionsErrorContext")
    ProposedNetworkFunctionGroupChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ProposedNetworkFunctionGroupChange", name: "ProposedNetworkFunctionGroupChange")
    ProposedSegmentChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ProposedSegmentChange", name: "ProposedSegmentChange")
    PutCoreNetworkPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PutCoreNetworkPolicyRequest", name: "PutCoreNetworkPolicyRequest")
    PutCoreNetworkPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PutCoreNetworkPolicyResponse", name: "PutCoreNetworkPolicyResponse")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    ReasonContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ReasonContextKey", name: "ReasonContextKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ReasonContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkmanager#ReasonContextMap", name: "ReasonContextMap")
    ReasonContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ReasonContextValue", name: "ReasonContextValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    RegisterTransitGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RegisterTransitGatewayRequest", name: "RegisterTransitGatewayRequest")
    RegisterTransitGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RegisterTransitGatewayResponse", name: "RegisterTransitGatewayResponse")
    RejectAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RejectAttachmentRequest", name: "RejectAttachmentRequest")
    RejectAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RejectAttachmentResponse", name: "RejectAttachmentResponse")
    Relationship = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Relationship", name: "Relationship")
    RelationshipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#RelationshipList", name: "RelationshipList")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreCoreNetworkPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RestoreCoreNetworkPolicyVersionRequest", name: "RestoreCoreNetworkPolicyVersionRequest")
    RestoreCoreNetworkPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RestoreCoreNetworkPolicyVersionResponse", name: "RestoreCoreNetworkPolicyVersionResponse")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkmanager#RetryAfterSeconds", name: "RetryAfterSeconds")
    RouteAnalysis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RouteAnalysis", name: "RouteAnalysis")
    RouteAnalysisCompletion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisCompletion", name: "RouteAnalysisCompletion")
    RouteAnalysisCompletionReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisCompletionReasonCode", name: "RouteAnalysisCompletionReasonCode")
    RouteAnalysisCompletionResultCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisCompletionResultCode", name: "RouteAnalysisCompletionResultCode")
    RouteAnalysisEndpointOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisEndpointOptions", name: "RouteAnalysisEndpointOptions")
    RouteAnalysisEndpointOptionsSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisEndpointOptionsSpecification", name: "RouteAnalysisEndpointOptionsSpecification")
    RouteAnalysisPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisPath", name: "RouteAnalysisPath")
    RouteAnalysisStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#RouteAnalysisStatus", name: "RouteAnalysisStatus")
    RouteState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#RouteState", name: "RouteState")
    RouteStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#RouteStateList", name: "RouteStateList")
    RouteTableIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#RouteTableIdentifier", name: "RouteTableIdentifier")
    RouteTableType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#RouteTableType", name: "RouteTableType")
    RouteType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#RouteType", name: "RouteType")
    RouteTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#RouteTypeList", name: "RouteTypeList")
    SLRDeploymentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#SLRDeploymentStatus", name: "SLRDeploymentStatus", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SegmentActionServiceInsertion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#SegmentActionServiceInsertion", name: "SegmentActionServiceInsertion")
    SendViaMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#SendViaMode", name: "SendViaMode")
    ServerSideString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#ServerSideString", name: "ServerSideString", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ServiceInsertionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ServiceInsertionAction", name: "ServiceInsertionAction")
    ServiceInsertionActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ServiceInsertionActionList", name: "ServiceInsertionActionList")
    ServiceInsertionSegments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ServiceInsertionSegments", name: "ServiceInsertionSegments")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Site = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Site", name: "Site")
    SiteArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#SiteArn", name: "SiteArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SiteId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#SiteId", name: "SiteId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SiteIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#SiteIdList", name: "SiteIdList")
    SiteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#SiteList", name: "SiteList")
    SiteState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#SiteState", name: "SiteState")
    SiteToSiteVpnAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#SiteToSiteVpnAttachment", name: "SiteToSiteVpnAttachment")
    StartOrganizationServiceAccessUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#StartOrganizationServiceAccessUpdateRequest", name: "StartOrganizationServiceAccessUpdateRequest")
    StartOrganizationServiceAccessUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#StartOrganizationServiceAccessUpdateResponse", name: "StartOrganizationServiceAccessUpdateResponse")
    StartRouteAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#StartRouteAnalysisRequest", name: "StartRouteAnalysisRequest")
    StartRouteAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#StartRouteAnalysisResponse", name: "StartRouteAnalysisResponse")
    SubnetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#SubnetArn", name: "SubnetArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:subnet\\/subnet-[0-9a-f]{8,17}$|^$"})
    SubnetArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#SubnetArnList", name: "SubnetArnList")
    SynthesizedJsonCoreNetworkPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#SynthesizedJsonCoreNetworkPolicyDocument", name: "SynthesizedJsonCoreNetworkPolicyDocument", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#mediaType" => "application/json", "smithy.api#pattern" => "^[\\s\\S]*$"})
    SynthesizedJsonResourcePolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#SynthesizedJsonResourcePolicyDocument", name: "SynthesizedJsonResourcePolicyDocument", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#mediaType" => "application/json", "smithy.api#pattern" => "^[\\s\\S]*$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransitGatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TransitGatewayArn", name: "TransitGatewayArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#TransitGatewayArnList", name: "TransitGatewayArnList")
    TransitGatewayAttachmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TransitGatewayAttachmentArn", name: "TransitGatewayAttachmentArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayAttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TransitGatewayAttachmentId", name: "TransitGatewayAttachmentId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayConnectPeerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TransitGatewayConnectPeerArn", name: "TransitGatewayConnectPeerArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayConnectPeerArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#TransitGatewayConnectPeerArnList", name: "TransitGatewayConnectPeerArnList")
    TransitGatewayConnectPeerAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TransitGatewayConnectPeerAssociation", name: "TransitGatewayConnectPeerAssociation")
    TransitGatewayConnectPeerAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#TransitGatewayConnectPeerAssociationList", name: "TransitGatewayConnectPeerAssociationList")
    TransitGatewayConnectPeerAssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#TransitGatewayConnectPeerAssociationState", name: "TransitGatewayConnectPeerAssociationState")
    TransitGatewayPeering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TransitGatewayPeering", name: "TransitGatewayPeering")
    TransitGatewayPeeringAttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TransitGatewayPeeringAttachmentId", name: "TransitGatewayPeeringAttachmentId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^tgw-attach-([0-9a-f]{8,17})$"})
    TransitGatewayRegistration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TransitGatewayRegistration", name: "TransitGatewayRegistration")
    TransitGatewayRegistrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#TransitGatewayRegistrationList", name: "TransitGatewayRegistrationList")
    TransitGatewayRegistrationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#TransitGatewayRegistrationState", name: "TransitGatewayRegistrationState")
    TransitGatewayRegistrationStateReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TransitGatewayRegistrationStateReason", name: "TransitGatewayRegistrationStateReason")
    TransitGatewayRouteTableArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#TransitGatewayRouteTableArn", name: "TransitGatewayRouteTableArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TransitGatewayRouteTableAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#TransitGatewayRouteTableAttachment", name: "TransitGatewayRouteTableAttachment")
    TunnelProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#TunnelProtocol", name: "TunnelProtocol")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateConnectionRequest", name: "UpdateConnectionRequest")
    UpdateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateConnectionResponse", name: "UpdateConnectionResponse")
    UpdateCoreNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateCoreNetworkRequest", name: "UpdateCoreNetworkRequest")
    UpdateCoreNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateCoreNetworkResponse", name: "UpdateCoreNetworkResponse")
    UpdateDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateDeviceRequest", name: "UpdateDeviceRequest")
    UpdateDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateDeviceResponse", name: "UpdateDeviceResponse")
    UpdateDirectConnectGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateDirectConnectGatewayAttachmentRequest", name: "UpdateDirectConnectGatewayAttachmentRequest")
    UpdateDirectConnectGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateDirectConnectGatewayAttachmentResponse", name: "UpdateDirectConnectGatewayAttachmentResponse")
    UpdateGlobalNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateGlobalNetworkRequest", name: "UpdateGlobalNetworkRequest")
    UpdateGlobalNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateGlobalNetworkResponse", name: "UpdateGlobalNetworkResponse")
    UpdateLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateLinkRequest", name: "UpdateLinkRequest")
    UpdateLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateLinkResponse", name: "UpdateLinkResponse")
    UpdateNetworkResourceMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateNetworkResourceMetadataRequest", name: "UpdateNetworkResourceMetadataRequest")
    UpdateNetworkResourceMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateNetworkResourceMetadataResponse", name: "UpdateNetworkResourceMetadataResponse")
    UpdateSiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateSiteRequest", name: "UpdateSiteRequest")
    UpdateSiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateSiteResponse", name: "UpdateSiteResponse")
    UpdateVpcAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateVpcAttachmentRequest", name: "UpdateVpcAttachmentRequest")
    UpdateVpcAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#UpdateVpcAttachmentResponse", name: "UpdateVpcAttachmentResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkmanager#ValidationExceptionReason", name: "ValidationExceptionReason")
    Via = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#Via", name: "Via")
    VpcArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#VpcArn", name: "VpcArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:vpc\\/vpc-[0-9a-f]{8,17}$"})
    VpcAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#VpcAttachment", name: "VpcAttachment")
    VpcOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#VpcOptions", name: "VpcOptions")
    VpnConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkmanager#VpnConnectionArn", name: "VpnConnectionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:vpn-connection\\/vpn-[0-9a-f]{8,17}$"})
    WhenSentTo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkmanager#WhenSentTo", name: "WhenSentTo")
    WhenSentToSegmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#WhenSentToSegmentsList", name: "WhenSentToSegmentsList")
    WithEdgeOverridesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkmanager#WithEdgeOverridesList", name: "WithEdgeOverridesList")

    AWSLocation.add_member(:zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Zone"))
    AWSLocation.add_member(:subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, name: "SubnetArn"))
    AWSLocation.type = Types::AWSLocation
    AcceptAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptAttachmentRequest.type = Types::AcceptAttachmentRequest
    AcceptAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    AcceptAttachmentResponse.type = Types::AcceptAttachmentResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AccountStatus.add_member(:slr_deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SLRDeploymentStatus, name: "SLRDeploymentStatus"))
    AccountStatus.type = Types::AccountStatus
    AccountStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStatus, name: "member"))
    AssociateConnectPeerRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateConnectPeerRequest.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId", traits: {"smithy.api#required" => {}}))
    AssociateConnectPeerRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#required" => {}}))
    AssociateConnectPeerRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    AssociateConnectPeerRequest.type = Types::AssociateConnectPeerRequest
    AssociateConnectPeerResponse.add_member(:connect_peer_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerAssociation, name: "ConnectPeerAssociation"))
    AssociateConnectPeerResponse.type = Types::AssociateConnectPeerResponse
    AssociateCustomerGatewayRequest.add_member(:customer_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayArn, name: "CustomerGatewayArn", traits: {"smithy.api#required" => {}}))
    AssociateCustomerGatewayRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateCustomerGatewayRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#required" => {}}))
    AssociateCustomerGatewayRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    AssociateCustomerGatewayRequest.type = Types::AssociateCustomerGatewayRequest
    AssociateCustomerGatewayResponse.add_member(:customer_gateway_association, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayAssociation, name: "CustomerGatewayAssociation"))
    AssociateCustomerGatewayResponse.type = Types::AssociateCustomerGatewayResponse
    AssociateLinkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLinkRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#required" => {}}))
    AssociateLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId", traits: {"smithy.api#required" => {}}))
    AssociateLinkRequest.type = Types::AssociateLinkRequest
    AssociateLinkResponse.add_member(:link_association, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAssociation, name: "LinkAssociation"))
    AssociateLinkResponse.type = Types::AssociateLinkResponse
    AssociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerArn, name: "TransitGatewayConnectPeerArn", traits: {"smithy.api#required" => {}}))
    AssociateTransitGatewayConnectPeerRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#required" => {}}))
    AssociateTransitGatewayConnectPeerRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    AssociateTransitGatewayConnectPeerRequest.type = Types::AssociateTransitGatewayConnectPeerRequest
    AssociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerAssociation, name: "TransitGatewayConnectPeerAssociation"))
    AssociateTransitGatewayConnectPeerResponse.type = Types::AssociateTransitGatewayConnectPeerResponse
    Attachment.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    Attachment.add_member(:core_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkArn, name: "CoreNetworkArn"))
    Attachment.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId"))
    Attachment.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccountId"))
    Attachment.add_member(:attachment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentType, name: "AttachmentType"))
    Attachment.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentState, name: "State"))
    Attachment.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    Attachment.add_member(:edge_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCodeList, name: "EdgeLocations"))
    Attachment.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    Attachment.add_member(:attachment_policy_rule_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AttachmentPolicyRuleNumber"))
    Attachment.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SegmentName"))
    Attachment.add_member(:network_function_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFunctionGroupName, name: "NetworkFunctionGroupName"))
    Attachment.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Attachment.add_member(:proposed_segment_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ProposedSegmentChange, name: "ProposedSegmentChange"))
    Attachment.add_member(:proposed_network_function_group_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ProposedNetworkFunctionGroupChange, name: "ProposedNetworkFunctionGroupChange"))
    Attachment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    Attachment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt"))
    Attachment.add_member(:last_modification_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentErrorList, name: "LastModificationErrors"))
    Attachment.type = Types::Attachment
    AttachmentError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentErrorCode, name: "Code"))
    AttachmentError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message"))
    AttachmentError.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    AttachmentError.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "RequestId"))
    AttachmentError.type = Types::AttachmentError
    AttachmentErrorCode.add_member(:vpc_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_NOT_FOUND", traits: {"smithy.api#enumValue" => "VPC_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:subnet_duplicated_in_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", traits: {"smithy.api#enumValue" => "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE"}))
    AttachmentErrorCode.add_member(:subnet_no_free_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NO_FREE_ADDRESSES", traits: {"smithy.api#enumValue" => "SUBNET_NO_FREE_ADDRESSES"}))
    AttachmentErrorCode.add_member(:subnet_unsupported_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", traits: {"smithy.api#enumValue" => "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE"}))
    AttachmentErrorCode.add_member(:subnet_no_ipv6_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NO_IPV6_CIDRS", traits: {"smithy.api#enumValue" => "SUBNET_NO_IPV6_CIDRS"}))
    AttachmentErrorCode.add_member(:vpn_connection_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPN_CONNECTION_NOT_FOUND", traits: {"smithy.api#enumValue" => "VPN_CONNECTION_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:maximum_no_encap_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED"}))
    AttachmentErrorCode.add_member(:direct_connect_gateway_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_CONNECT_GATEWAY_NOT_FOUND", traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY_NOT_FOUND"}))
    AttachmentErrorCode.add_member(:direct_connect_gateway_existing_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS"}))
    AttachmentErrorCode.add_member(:direct_connect_gateway_no_private_vif, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF"}))
    AttachmentErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentError, name: "member"))
    AttachmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "member"))
    AttachmentState.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    AttachmentState.add_member(:pending_attachment_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ATTACHMENT_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_ATTACHMENT_ACCEPTANCE"}))
    AttachmentState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AttachmentState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AttachmentState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AttachmentState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AttachmentState.add_member(:pending_network_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_NETWORK_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_NETWORK_UPDATE"}))
    AttachmentState.add_member(:pending_tag_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_TAG_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_TAG_ACCEPTANCE"}))
    AttachmentState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AttachmentType.add_member(:connect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECT", traits: {"smithy.api#enumValue" => "CONNECT"}))
    AttachmentType.add_member(:site_to_site_vpn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SITE_TO_SITE_VPN", traits: {"smithy.api#enumValue" => "SITE_TO_SITE_VPN"}))
    AttachmentType.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC", traits: {"smithy.api#enumValue" => "VPC"}))
    AttachmentType.add_member(:direct_connect_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_CONNECT_GATEWAY", traits: {"smithy.api#enumValue" => "DIRECT_CONNECT_GATEWAY"}))
    AttachmentType.add_member(:transit_gateway_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_ROUTE_TABLE", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ROUTE_TABLE"}))
    Bandwidth.add_member(:upload_speed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "UploadSpeed"))
    Bandwidth.add_member(:download_speed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DownloadSpeed"))
    Bandwidth.type = Types::Bandwidth
    BgpOptions.add_member(:peer_asn, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "PeerAsn"))
    BgpOptions.type = Types::BgpOptions
    ChangeAction.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    ChangeAction.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFY", traits: {"smithy.api#enumValue" => "MODIFY"}))
    ChangeAction.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    ChangeSetState.add_member(:pending_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_GENERATION", traits: {"smithy.api#enumValue" => "PENDING_GENERATION"}))
    ChangeSetState.add_member(:failed_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_GENERATION", traits: {"smithy.api#enumValue" => "FAILED_GENERATION"}))
    ChangeSetState.add_member(:ready_to_execute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY_TO_EXECUTE", traits: {"smithy.api#enumValue" => "READY_TO_EXECUTE"}))
    ChangeSetState.add_member(:executing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTING", traits: {"smithy.api#enumValue" => "EXECUTING"}))
    ChangeSetState.add_member(:execution_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_SUCCEEDED", traits: {"smithy.api#enumValue" => "EXECUTION_SUCCEEDED"}))
    ChangeSetState.add_member(:out_of_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_DATE", traits: {"smithy.api#enumValue" => "OUT_OF_DATE"}))
    ChangeStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ChangeStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChangeStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ChangeStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeType.add_member(:core_network_segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE_NETWORK_SEGMENT", traits: {"smithy.api#enumValue" => "CORE_NETWORK_SEGMENT"}))
    ChangeType.add_member(:network_function_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_FUNCTION_GROUP", traits: {"smithy.api#enumValue" => "NETWORK_FUNCTION_GROUP"}))
    ChangeType.add_member(:core_network_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE_NETWORK_EDGE", traits: {"smithy.api#enumValue" => "CORE_NETWORK_EDGE"}))
    ChangeType.add_member(:attachment_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT_MAPPING", traits: {"smithy.api#enumValue" => "ATTACHMENT_MAPPING"}))
    ChangeType.add_member(:attachment_route_propagation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT_ROUTE_PROPAGATION", traits: {"smithy.api#enumValue" => "ATTACHMENT_ROUTE_PROPAGATION"}))
    ChangeType.add_member(:attachment_route_static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT_ROUTE_STATIC", traits: {"smithy.api#enumValue" => "ATTACHMENT_ROUTE_STATIC"}))
    ChangeType.add_member(:core_network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE_NETWORK_CONFIGURATION", traits: {"smithy.api#enumValue" => "CORE_NETWORK_CONFIGURATION"}))
    ChangeType.add_member(:segments_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEGMENTS_CONFIGURATION", traits: {"smithy.api#enumValue" => "SEGMENTS_CONFIGURATION"}))
    ChangeType.add_member(:segment_actions_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEGMENT_ACTIONS_CONFIGURATION", traits: {"smithy.api#enumValue" => "SEGMENT_ACTIONS_CONFIGURATION"}))
    ChangeType.add_member(:attachment_policies_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT_POLICIES_CONFIGURATION", traits: {"smithy.api#enumValue" => "ATTACHMENT_POLICIES_CONFIGURATION"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectAttachment.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    ConnectAttachment.add_member(:transport_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "TransportAttachmentId"))
    ConnectAttachment.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectAttachmentOptions, name: "Options"))
    ConnectAttachment.type = Types::ConnectAttachment
    ConnectAttachmentOptions.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TunnelProtocol, name: "Protocol"))
    ConnectAttachmentOptions.type = Types::ConnectAttachmentOptions
    ConnectPeer.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    ConnectPeer.add_member(:connect_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "ConnectAttachmentId"))
    ConnectPeer.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId"))
    ConnectPeer.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    ConnectPeer.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerState, name: "State"))
    ConnectPeer.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    ConnectPeer.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerConfiguration, name: "Configuration"))
    ConnectPeer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ConnectPeer.add_member(:subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, name: "SubnetArn"))
    ConnectPeer.add_member(:last_modification_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerErrorList, name: "LastModificationErrors"))
    ConnectPeer.type = Types::ConnectPeer
    ConnectPeerAssociation.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId"))
    ConnectPeerAssociation.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    ConnectPeerAssociation.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    ConnectPeerAssociation.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    ConnectPeerAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerAssociationState, name: "State"))
    ConnectPeerAssociation.type = Types::ConnectPeerAssociation
    ConnectPeerAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerAssociation, name: "member"))
    ConnectPeerAssociationState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectPeerAssociationState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectPeerAssociationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectPeerAssociationState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectPeerBgpConfiguration.add_member(:core_network_asn, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CoreNetworkAsn"))
    ConnectPeerBgpConfiguration.add_member(:peer_asn, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "PeerAsn"))
    ConnectPeerBgpConfiguration.add_member(:core_network_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "CoreNetworkAddress"))
    ConnectPeerBgpConfiguration.add_member(:peer_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "PeerAddress"))
    ConnectPeerBgpConfiguration.type = Types::ConnectPeerBgpConfiguration
    ConnectPeerBgpConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerBgpConfiguration, name: "member"))
    ConnectPeerConfiguration.add_member(:core_network_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "CoreNetworkAddress"))
    ConnectPeerConfiguration.add_member(:peer_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "PeerAddress"))
    ConnectPeerConfiguration.add_member(:inside_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "InsideCidrBlocks"))
    ConnectPeerConfiguration.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TunnelProtocol, name: "Protocol"))
    ConnectPeerConfiguration.add_member(:bgp_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerBgpConfigurationList, name: "BgpConfigurations"))
    ConnectPeerConfiguration.type = Types::ConnectPeerConfiguration
    ConnectPeerError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerErrorCode, name: "Code"))
    ConnectPeerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message"))
    ConnectPeerError.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    ConnectPeerError.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "RequestId"))
    ConnectPeerError.type = Types::ConnectPeerError
    ConnectPeerErrorCode.add_member(:edge_location_no_free_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE_LOCATION_NO_FREE_IPS", traits: {"smithy.api#enumValue" => "EDGE_LOCATION_NO_FREE_IPS"}))
    ConnectPeerErrorCode.add_member(:edge_location_peer_duplicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE_LOCATION_PEER_DUPLICATE", traits: {"smithy.api#enumValue" => "EDGE_LOCATION_PEER_DUPLICATE"}))
    ConnectPeerErrorCode.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    ConnectPeerErrorCode.add_member(:ip_outside_subnet_cidr_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_OUTSIDE_SUBNET_CIDR_RANGE", traits: {"smithy.api#enumValue" => "IP_OUTSIDE_SUBNET_CIDR_RANGE"}))
    ConnectPeerErrorCode.add_member(:invalid_inside_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INSIDE_CIDR_BLOCK", traits: {"smithy.api#enumValue" => "INVALID_INSIDE_CIDR_BLOCK"}))
    ConnectPeerErrorCode.add_member(:no_associated_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ASSOCIATED_CIDR_BLOCK", traits: {"smithy.api#enumValue" => "NO_ASSOCIATED_CIDR_BLOCK"}))
    ConnectPeerErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerError, name: "member"))
    ConnectPeerIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "member"))
    ConnectPeerState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectPeerState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ConnectPeerState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectPeerState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectPeerSummary.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    ConnectPeerSummary.add_member(:connect_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "ConnectAttachmentId"))
    ConnectPeerSummary.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId"))
    ConnectPeerSummary.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    ConnectPeerSummary.add_member(:connect_peer_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerState, name: "ConnectPeerState"))
    ConnectPeerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    ConnectPeerSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ConnectPeerSummary.add_member(:subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, name: "SubnetArn"))
    ConnectPeerSummary.type = Types::ConnectPeerSummary
    ConnectPeerSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerSummary, name: "member"))
    Connection.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    Connection.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    Connection.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    Connection.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    Connection.add_member(:connected_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "ConnectedDeviceId"))
    Connection.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    Connection.add_member(:connected_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "ConnectedLinkId"))
    Connection.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    Connection.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    Connection.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, name: "State"))
    Connection.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Connection.type = Types::Connection
    ConnectionHealth.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "Type"))
    ConnectionHealth.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, name: "Status"))
    ConnectionHealth.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "Timestamp"))
    ConnectionHealth.type = Types::ConnectionHealth
    ConnectionIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "member"))
    ConnectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "member"))
    ConnectionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectionState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectionState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ConnectionStatus.add_member(:up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UP", traits: {"smithy.api#enumValue" => "UP"}))
    ConnectionStatus.add_member(:down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWN", traits: {"smithy.api#enumValue" => "DOWN"}))
    ConnectionType.add_member(:bgp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BGP", traits: {"smithy.api#enumValue" => "BGP"}))
    ConnectionType.add_member(:ipsec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPSEC", traits: {"smithy.api#enumValue" => "IPSEC"}))
    ConstrainedStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "member"))
    CoreNetwork.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    CoreNetwork.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    CoreNetwork.add_member(:core_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkArn, name: "CoreNetworkArn"))
    CoreNetwork.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CoreNetwork.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    CoreNetwork.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkState, name: "State"))
    CoreNetwork.add_member(:segments, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkSegmentList, name: "Segments"))
    CoreNetwork.add_member(:network_function_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkNetworkFunctionGroupList, name: "NetworkFunctionGroups"))
    CoreNetwork.add_member(:edges, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkEdgeList, name: "Edges"))
    CoreNetwork.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CoreNetwork.type = Types::CoreNetwork
    CoreNetworkChange.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "Type"))
    CoreNetworkChange.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action"))
    CoreNetworkChange.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Identifier"))
    CoreNetworkChange.add_member(:previous_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChangeValues, name: "PreviousValues"))
    CoreNetworkChange.add_member(:new_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChangeValues, name: "NewValues"))
    CoreNetworkChange.add_member(:identifier_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "IdentifierPath"))
    CoreNetworkChange.type = Types::CoreNetworkChange
    CoreNetworkChangeEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "Type"))
    CoreNetworkChangeEvent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action"))
    CoreNetworkChangeEvent.add_member(:identifier_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "IdentifierPath"))
    CoreNetworkChangeEvent.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EventTime"))
    CoreNetworkChangeEvent.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeStatus, name: "Status"))
    CoreNetworkChangeEvent.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChangeEventValues, name: "Values"))
    CoreNetworkChangeEvent.type = Types::CoreNetworkChangeEvent
    CoreNetworkChangeEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChangeEvent, name: "member"))
    CoreNetworkChangeEventValues.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    CoreNetworkChangeEventValues.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SegmentName"))
    CoreNetworkChangeEventValues.add_member(:network_function_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "NetworkFunctionGroupName"))
    CoreNetworkChangeEventValues.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId"))
    CoreNetworkChangeEventValues.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Cidr"))
    CoreNetworkChangeEventValues.type = Types::CoreNetworkChangeEventValues
    CoreNetworkChangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChange, name: "member"))
    CoreNetworkChangeValues.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SegmentName"))
    CoreNetworkChangeValues.add_member(:network_function_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "NetworkFunctionGroupName"))
    CoreNetworkChangeValues.add_member(:edge_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCodeList, name: "EdgeLocations"))
    CoreNetworkChangeValues.add_member(:asn, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Asn"))
    CoreNetworkChangeValues.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Cidr"))
    CoreNetworkChangeValues.add_member(:destination_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "DestinationIdentifier"))
    CoreNetworkChangeValues.add_member(:inside_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "InsideCidrBlocks"))
    CoreNetworkChangeValues.add_member(:shared_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "SharedSegments"))
    CoreNetworkChangeValues.add_member(:service_insertion_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceInsertionActionList, name: "ServiceInsertionActions"))
    CoreNetworkChangeValues.add_member(:vpn_ecmp_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VpnEcmpSupport", traits: {"smithy.api#default" => false}))
    CoreNetworkChangeValues.add_member(:dns_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DnsSupport", traits: {"smithy.api#default" => false}))
    CoreNetworkChangeValues.add_member(:security_group_referencing_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SecurityGroupReferencingSupport", traits: {"smithy.api#default" => false}))
    CoreNetworkChangeValues.type = Types::CoreNetworkChangeValues
    CoreNetworkEdge.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    CoreNetworkEdge.add_member(:asn, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Asn"))
    CoreNetworkEdge.add_member(:inside_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "InsideCidrBlocks"))
    CoreNetworkEdge.type = Types::CoreNetworkEdge
    CoreNetworkEdgeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkEdge, name: "member"))
    CoreNetworkNetworkFunctionGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Name"))
    CoreNetworkNetworkFunctionGroup.add_member(:edge_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCodeList, name: "EdgeLocations"))
    CoreNetworkNetworkFunctionGroup.add_member(:segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceInsertionSegments, name: "Segments"))
    CoreNetworkNetworkFunctionGroup.type = Types::CoreNetworkNetworkFunctionGroup
    CoreNetworkNetworkFunctionGroupIdentifier.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    CoreNetworkNetworkFunctionGroupIdentifier.add_member(:network_function_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "NetworkFunctionGroupName"))
    CoreNetworkNetworkFunctionGroupIdentifier.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    CoreNetworkNetworkFunctionGroupIdentifier.type = Types::CoreNetworkNetworkFunctionGroupIdentifier
    CoreNetworkNetworkFunctionGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkNetworkFunctionGroup, name: "member"))
    CoreNetworkPolicy.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    CoreNetworkPolicy.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId"))
    CoreNetworkPolicy.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyAlias, name: "Alias"))
    CoreNetworkPolicy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CoreNetworkPolicy.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    CoreNetworkPolicy.add_member(:change_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetState, name: "ChangeSetState"))
    CoreNetworkPolicy.add_member(:policy_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyErrorList, name: "PolicyErrors"))
    CoreNetworkPolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonCoreNetworkPolicyDocument, name: "PolicyDocument"))
    CoreNetworkPolicy.type = Types::CoreNetworkPolicy
    CoreNetworkPolicyAlias.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    CoreNetworkPolicyAlias.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    CoreNetworkPolicyError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    CoreNetworkPolicyError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    CoreNetworkPolicyError.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Path"))
    CoreNetworkPolicyError.type = Types::CoreNetworkPolicyError
    CoreNetworkPolicyErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyError, name: "member"))
    CoreNetworkPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    CoreNetworkPolicyException.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyErrorList, name: "Errors"))
    CoreNetworkPolicyException.type = Types::CoreNetworkPolicyException
    CoreNetworkPolicyVersion.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    CoreNetworkPolicyVersion.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId"))
    CoreNetworkPolicyVersion.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyAlias, name: "Alias"))
    CoreNetworkPolicyVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CoreNetworkPolicyVersion.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    CoreNetworkPolicyVersion.add_member(:change_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetState, name: "ChangeSetState"))
    CoreNetworkPolicyVersion.type = Types::CoreNetworkPolicyVersion
    CoreNetworkPolicyVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyVersion, name: "member"))
    CoreNetworkSegment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Name"))
    CoreNetworkSegment.add_member(:edge_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCodeList, name: "EdgeLocations"))
    CoreNetworkSegment.add_member(:shared_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "SharedSegments"))
    CoreNetworkSegment.type = Types::CoreNetworkSegment
    CoreNetworkSegmentEdgeIdentifier.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    CoreNetworkSegmentEdgeIdentifier.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SegmentName"))
    CoreNetworkSegmentEdgeIdentifier.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    CoreNetworkSegmentEdgeIdentifier.type = Types::CoreNetworkSegmentEdgeIdentifier
    CoreNetworkSegmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkSegment, name: "member"))
    CoreNetworkState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    CoreNetworkState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    CoreNetworkState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CoreNetworkState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    CoreNetworkSummary.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    CoreNetworkSummary.add_member(:core_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkArn, name: "CoreNetworkArn"))
    CoreNetworkSummary.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    CoreNetworkSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccountId"))
    CoreNetworkSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkState, name: "State"))
    CoreNetworkSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CoreNetworkSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CoreNetworkSummary.type = Types::CoreNetworkSummary
    CoreNetworkSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkSummary, name: "member"))
    CreateConnectAttachmentRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation", traits: {"smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:transport_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "TransportAttachmentId", traits: {"smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectAttachmentOptions, name: "Options", traits: {"smithy.api#required" => {}}))
    CreateConnectAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConnectAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConnectAttachmentRequest.type = Types::CreateConnectAttachmentRequest
    CreateConnectAttachmentResponse.add_member(:connect_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectAttachment, name: "ConnectAttachment"))
    CreateConnectAttachmentResponse.type = Types::CreateConnectAttachmentResponse
    CreateConnectPeerRequest.add_member(:connect_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "ConnectAttachmentId", traits: {"smithy.api#required" => {}}))
    CreateConnectPeerRequest.add_member(:core_network_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "CoreNetworkAddress"))
    CreateConnectPeerRequest.add_member(:peer_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "PeerAddress", traits: {"smithy.api#required" => {}}))
    CreateConnectPeerRequest.add_member(:bgp_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BgpOptions, name: "BgpOptions"))
    CreateConnectPeerRequest.add_member(:inside_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "InsideCidrBlocks"))
    CreateConnectPeerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConnectPeerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConnectPeerRequest.add_member(:subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, name: "SubnetArn"))
    CreateConnectPeerRequest.type = Types::CreateConnectPeerRequest
    CreateConnectPeerResponse.add_member(:connect_peer, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeer, name: "ConnectPeer"))
    CreateConnectPeerResponse.type = Types::CreateConnectPeerResponse
    CreateConnectionRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:connected_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "ConnectedDeviceId", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    CreateConnectionRequest.add_member(:connected_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "ConnectedLinkId"))
    CreateConnectionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CreateConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection"))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateCoreNetworkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#required" => {}}))
    CreateCoreNetworkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CreateCoreNetworkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCoreNetworkRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyDocument, name: "PolicyDocument"))
    CreateCoreNetworkRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCoreNetworkRequest.type = Types::CreateCoreNetworkRequest
    CreateCoreNetworkResponse.add_member(:core_network, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetwork, name: "CoreNetwork"))
    CreateCoreNetworkResponse.type = Types::CreateCoreNetworkResponse
    CreateDeviceRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeviceRequest.add_member(:aws_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSLocation, name: "AWSLocation"))
    CreateDeviceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CreateDeviceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type"))
    CreateDeviceRequest.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Vendor"))
    CreateDeviceRequest.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Model"))
    CreateDeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SerialNumber"))
    CreateDeviceRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    CreateDeviceRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    CreateDeviceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDeviceRequest.type = Types::CreateDeviceRequest
    CreateDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "Device"))
    CreateDeviceResponse.type = Types::CreateDeviceResponse
    CreateDirectConnectGatewayAttachmentRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:direct_connect_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectConnectGatewayArn, name: "DirectConnectGatewayArn", traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:edge_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCodeList, name: "EdgeLocations", traits: {"smithy.api#required" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDirectConnectGatewayAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDirectConnectGatewayAttachmentRequest.type = Types::CreateDirectConnectGatewayAttachmentRequest
    CreateDirectConnectGatewayAttachmentResponse.add_member(:direct_connect_gateway_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectConnectGatewayAttachment, name: "DirectConnectGatewayAttachment"))
    CreateDirectConnectGatewayAttachmentResponse.type = Types::CreateDirectConnectGatewayAttachmentResponse
    CreateGlobalNetworkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CreateGlobalNetworkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateGlobalNetworkRequest.type = Types::CreateGlobalNetworkRequest
    CreateGlobalNetworkResponse.add_member(:global_network, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetwork, name: "GlobalNetwork"))
    CreateGlobalNetworkResponse.type = Types::CreateGlobalNetworkResponse
    CreateLinkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CreateLinkRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type"))
    CreateLinkRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: Bandwidth, name: "Bandwidth", traits: {"smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Provider"))
    CreateLinkRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateLinkRequest.type = Types::CreateLinkRequest
    CreateLinkResponse.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: Link, name: "Link"))
    CreateLinkResponse.type = Types::CreateLinkResponse
    CreateSiteRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSiteRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    CreateSiteRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    CreateSiteRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSiteRequest.type = Types::CreateSiteRequest
    CreateSiteResponse.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    CreateSiteResponse.type = Types::CreateSiteResponse
    CreateSiteToSiteVpnAttachmentRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#required" => {}}))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:vpn_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpnConnectionArn, name: "VpnConnectionArn", traits: {"smithy.api#required" => {}}))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSiteToSiteVpnAttachmentRequest.type = Types::CreateSiteToSiteVpnAttachmentRequest
    CreateSiteToSiteVpnAttachmentResponse.add_member(:site_to_site_vpn_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteToSiteVpnAttachment, name: "SiteToSiteVpnAttachment"))
    CreateSiteToSiteVpnAttachmentResponse.type = Types::CreateSiteToSiteVpnAttachmentResponse
    CreateTransitGatewayPeeringRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#required" => {}}))
    CreateTransitGatewayPeeringRequest.add_member(:transit_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "TransitGatewayArn", traits: {"smithy.api#required" => {}}))
    CreateTransitGatewayPeeringRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTransitGatewayPeeringRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTransitGatewayPeeringRequest.type = Types::CreateTransitGatewayPeeringRequest
    CreateTransitGatewayPeeringResponse.add_member(:transit_gateway_peering, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayPeering, name: "TransitGatewayPeering"))
    CreateTransitGatewayPeeringResponse.type = Types::CreateTransitGatewayPeeringResponse
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:peering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringId, name: "PeeringId", traits: {"smithy.api#required" => {}}))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:transit_gateway_route_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRouteTableArn, name: "TransitGatewayRouteTableArn", traits: {"smithy.api#required" => {}}))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTransitGatewayRouteTableAttachmentRequest.type = Types::CreateTransitGatewayRouteTableAttachmentRequest
    CreateTransitGatewayRouteTableAttachmentResponse.add_member(:transit_gateway_route_table_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRouteTableAttachment, name: "TransitGatewayRouteTableAttachment"))
    CreateTransitGatewayRouteTableAttachmentResponse.type = Types::CreateTransitGatewayRouteTableAttachmentResponse
    CreateVpcAttachmentRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#required" => {}}))
    CreateVpcAttachmentRequest.add_member(:vpc_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcArn, name: "VpcArn", traits: {"smithy.api#required" => {}}))
    CreateVpcAttachmentRequest.add_member(:subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArnList, name: "SubnetArns", traits: {"smithy.api#required" => {}}))
    CreateVpcAttachmentRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOptions, name: "Options"))
    CreateVpcAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateVpcAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVpcAttachmentRequest.type = Types::CreateVpcAttachmentRequest
    CreateVpcAttachmentResponse.add_member(:vpc_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcAttachment, name: "VpcAttachment"))
    CreateVpcAttachmentResponse.type = Types::CreateVpcAttachmentResponse
    CustomerGatewayArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayArn, name: "member"))
    CustomerGatewayAssociation.add_member(:customer_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayArn, name: "CustomerGatewayArn"))
    CustomerGatewayAssociation.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    CustomerGatewayAssociation.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    CustomerGatewayAssociation.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    CustomerGatewayAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayAssociationState, name: "State"))
    CustomerGatewayAssociation.type = Types::CustomerGatewayAssociation
    CustomerGatewayAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayAssociation, name: "member"))
    CustomerGatewayAssociationState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    CustomerGatewayAssociationState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CustomerGatewayAssociationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    CustomerGatewayAssociationState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "DELETED"}))
    DeleteAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.type = Types::DeleteAttachmentRequest
    DeleteAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    DeleteAttachmentResponse.type = Types::DeleteAttachmentResponse
    DeleteConnectPeerRequest.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectPeerRequest.type = Types::DeleteConnectPeerRequest
    DeleteConnectPeerResponse.add_member(:connect_peer, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeer, name: "ConnectPeer"))
    DeleteConnectPeerResponse.type = Types::DeleteConnectPeerResponse
    DeleteConnectionRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection"))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteCoreNetworkPolicyVersionRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreNetworkPolicyVersionRequest.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreNetworkPolicyVersionRequest.type = Types::DeleteCoreNetworkPolicyVersionRequest
    DeleteCoreNetworkPolicyVersionResponse.add_member(:core_network_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicy, name: "CoreNetworkPolicy"))
    DeleteCoreNetworkPolicyVersionResponse.type = Types::DeleteCoreNetworkPolicyVersionResponse
    DeleteCoreNetworkRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreNetworkRequest.type = Types::DeleteCoreNetworkRequest
    DeleteCoreNetworkResponse.add_member(:core_network, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetwork, name: "CoreNetwork"))
    DeleteCoreNetworkResponse.type = Types::DeleteCoreNetworkResponse
    DeleteDeviceRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceRequest.type = Types::DeleteDeviceRequest
    DeleteDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "Device"))
    DeleteDeviceResponse.type = Types::DeleteDeviceResponse
    DeleteGlobalNetworkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGlobalNetworkRequest.type = Types::DeleteGlobalNetworkRequest
    DeleteGlobalNetworkResponse.add_member(:global_network, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetwork, name: "GlobalNetwork"))
    DeleteGlobalNetworkResponse.type = Types::DeleteGlobalNetworkResponse
    DeleteLinkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRequest.type = Types::DeleteLinkRequest
    DeleteLinkResponse.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: Link, name: "Link"))
    DeleteLinkResponse.type = Types::DeleteLinkResponse
    DeletePeeringRequest.add_member(:peering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringId, name: "PeeringId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePeeringRequest.type = Types::DeletePeeringRequest
    DeletePeeringResponse.add_member(:peering, ::Smithy::Schema::Shapes::MemberShape.new(target: Peering, name: "Peering"))
    DeletePeeringResponse.type = Types::DeletePeeringResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteSiteRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSiteRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSiteRequest.type = Types::DeleteSiteRequest
    DeleteSiteResponse.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    DeleteSiteResponse.type = Types::DeleteSiteResponse
    DeregisterTransitGatewayRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterTransitGatewayRequest.add_member(:transit_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "TransitGatewayArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterTransitGatewayRequest.type = Types::DeregisterTransitGatewayRequest
    DeregisterTransitGatewayResponse.add_member(:transit_gateway_registration, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRegistration, name: "TransitGatewayRegistration"))
    DeregisterTransitGatewayResponse.type = Types::DeregisterTransitGatewayResponse
    DescribeGlobalNetworksRequest.add_member(:global_network_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkIdList, name: "GlobalNetworkIds", traits: {"smithy.api#httpQuery" => "globalNetworkIds"}))
    DescribeGlobalNetworksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeGlobalNetworksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeGlobalNetworksRequest.type = Types::DescribeGlobalNetworksRequest
    DescribeGlobalNetworksResponse.add_member(:global_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkList, name: "GlobalNetworks"))
    DescribeGlobalNetworksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeGlobalNetworksResponse.type = Types::DescribeGlobalNetworksResponse
    Device.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    Device.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "DeviceArn"))
    Device.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    Device.add_member(:aws_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSLocation, name: "AWSLocation"))
    Device.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    Device.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type"))
    Device.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Vendor"))
    Device.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Model"))
    Device.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SerialNumber"))
    Device.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    Device.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    Device.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    Device.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceState, name: "State"))
    Device.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Device.type = Types::Device
    DeviceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "member"))
    DeviceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "member"))
    DeviceState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    DeviceState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DeviceState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    DeviceState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DirectConnectGatewayAttachment.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    DirectConnectGatewayAttachment.add_member(:direct_connect_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectConnectGatewayArn, name: "DirectConnectGatewayArn"))
    DirectConnectGatewayAttachment.type = Types::DirectConnectGatewayAttachment
    DisassociateConnectPeerRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateConnectPeerRequest.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateConnectPeerRequest.type = Types::DisassociateConnectPeerRequest
    DisassociateConnectPeerResponse.add_member(:connect_peer_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerAssociation, name: "ConnectPeerAssociation"))
    DisassociateConnectPeerResponse.type = Types::DisassociateConnectPeerResponse
    DisassociateCustomerGatewayRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateCustomerGatewayRequest.add_member(:customer_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayArn, name: "CustomerGatewayArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateCustomerGatewayRequest.type = Types::DisassociateCustomerGatewayRequest
    DisassociateCustomerGatewayResponse.add_member(:customer_gateway_association, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayAssociation, name: "CustomerGatewayAssociation"))
    DisassociateCustomerGatewayResponse.type = Types::DisassociateCustomerGatewayResponse
    DisassociateLinkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLinkRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpQuery" => "deviceId", "smithy.api#required" => {}}))
    DisassociateLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId", traits: {"smithy.api#httpQuery" => "linkId", "smithy.api#required" => {}}))
    DisassociateLinkRequest.type = Types::DisassociateLinkRequest
    DisassociateLinkResponse.add_member(:link_association, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAssociation, name: "LinkAssociation"))
    DisassociateLinkResponse.type = Types::DisassociateLinkResponse
    DisassociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerArn, name: "TransitGatewayConnectPeerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTransitGatewayConnectPeerRequest.type = Types::DisassociateTransitGatewayConnectPeerRequest
    DisassociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerAssociation, name: "TransitGatewayConnectPeerAssociation"))
    DisassociateTransitGatewayConnectPeerResponse.type = Types::DisassociateTransitGatewayConnectPeerResponse
    EdgeOverride.add_member(:edge_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeSetList, name: "EdgeSets"))
    EdgeOverride.add_member(:use_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "UseEdge"))
    EdgeOverride.type = Types::EdgeOverride
    EdgeSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "member"))
    EdgeSetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeSet, name: "member"))
    ExceptionContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContextKey, name: "key"))
    ExceptionContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContextValue, name: "value"))
    ExecuteCoreNetworkChangeSetRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExecuteCoreNetworkChangeSetRequest.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExecuteCoreNetworkChangeSetRequest.type = Types::ExecuteCoreNetworkChangeSetRequest
    ExecuteCoreNetworkChangeSetResponse.type = Types::ExecuteCoreNetworkChangeSetResponse
    ExternalRegionCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "member"))
    FilterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "key"))
    FilterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "value"))
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    GetConnectAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectAttachmentRequest.type = Types::GetConnectAttachmentRequest
    GetConnectAttachmentResponse.add_member(:connect_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectAttachment, name: "ConnectAttachment"))
    GetConnectAttachmentResponse.type = Types::GetConnectAttachmentResponse
    GetConnectPeerAssociationsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectPeerAssociationsRequest.add_member(:connect_peer_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerIdList, name: "ConnectPeerIds", traits: {"smithy.api#httpQuery" => "connectPeerIds"}))
    GetConnectPeerAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetConnectPeerAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetConnectPeerAssociationsRequest.type = Types::GetConnectPeerAssociationsRequest
    GetConnectPeerAssociationsResponse.add_member(:connect_peer_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerAssociationList, name: "ConnectPeerAssociations"))
    GetConnectPeerAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConnectPeerAssociationsResponse.type = Types::GetConnectPeerAssociationsResponse
    GetConnectPeerRequest.add_member(:connect_peer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerId, name: "ConnectPeerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectPeerRequest.type = Types::GetConnectPeerRequest
    GetConnectPeerResponse.add_member(:connect_peer, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeer, name: "ConnectPeer"))
    GetConnectPeerResponse.type = Types::GetConnectPeerResponse
    GetConnectionsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionsRequest.add_member(:connection_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionIdList, name: "ConnectionIds", traits: {"smithy.api#httpQuery" => "connectionIds"}))
    GetConnectionsRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpQuery" => "deviceId"}))
    GetConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetConnectionsRequest.type = Types::GetConnectionsRequest
    GetConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionList, name: "Connections"))
    GetConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConnectionsResponse.type = Types::GetConnectionsResponse
    GetCoreNetworkChangeEventsRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeEventsRequest.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetCoreNetworkChangeEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetCoreNetworkChangeEventsRequest.type = Types::GetCoreNetworkChangeEventsRequest
    GetCoreNetworkChangeEventsResponse.add_member(:core_network_change_events, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChangeEventList, name: "CoreNetworkChangeEvents"))
    GetCoreNetworkChangeEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetCoreNetworkChangeEventsResponse.type = Types::GetCoreNetworkChangeEventsResponse
    GetCoreNetworkChangeSetRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeSetRequest.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkChangeSetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetCoreNetworkChangeSetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetCoreNetworkChangeSetRequest.type = Types::GetCoreNetworkChangeSetRequest
    GetCoreNetworkChangeSetResponse.add_member(:core_network_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkChangeList, name: "CoreNetworkChanges"))
    GetCoreNetworkChangeSetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetCoreNetworkChangeSetResponse.type = Types::GetCoreNetworkChangeSetResponse
    GetCoreNetworkPolicyRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkPolicyRequest.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId", traits: {"smithy.api#httpQuery" => "policyVersionId"}))
    GetCoreNetworkPolicyRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyAlias, name: "Alias", traits: {"smithy.api#httpQuery" => "alias"}))
    GetCoreNetworkPolicyRequest.type = Types::GetCoreNetworkPolicyRequest
    GetCoreNetworkPolicyResponse.add_member(:core_network_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicy, name: "CoreNetworkPolicy"))
    GetCoreNetworkPolicyResponse.type = Types::GetCoreNetworkPolicyResponse
    GetCoreNetworkRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreNetworkRequest.type = Types::GetCoreNetworkRequest
    GetCoreNetworkResponse.add_member(:core_network, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetwork, name: "CoreNetwork"))
    GetCoreNetworkResponse.type = Types::GetCoreNetworkResponse
    GetCustomerGatewayAssociationsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomerGatewayAssociationsRequest.add_member(:customer_gateway_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayArnList, name: "CustomerGatewayArns", traits: {"smithy.api#httpQuery" => "customerGatewayArns"}))
    GetCustomerGatewayAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetCustomerGatewayAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetCustomerGatewayAssociationsRequest.type = Types::GetCustomerGatewayAssociationsRequest
    GetCustomerGatewayAssociationsResponse.add_member(:customer_gateway_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerGatewayAssociationList, name: "CustomerGatewayAssociations"))
    GetCustomerGatewayAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetCustomerGatewayAssociationsResponse.type = Types::GetCustomerGatewayAssociationsResponse
    GetDevicesRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevicesRequest.add_member(:device_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceIdList, name: "DeviceIds", traits: {"smithy.api#httpQuery" => "deviceIds"}))
    GetDevicesRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpQuery" => "siteId"}))
    GetDevicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDevicesRequest.type = Types::GetDevicesRequest
    GetDevicesResponse.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceList, name: "Devices"))
    GetDevicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetDevicesResponse.type = Types::GetDevicesResponse
    GetDirectConnectGatewayAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDirectConnectGatewayAttachmentRequest.type = Types::GetDirectConnectGatewayAttachmentRequest
    GetDirectConnectGatewayAttachmentResponse.add_member(:direct_connect_gateway_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectConnectGatewayAttachment, name: "DirectConnectGatewayAttachment"))
    GetDirectConnectGatewayAttachmentResponse.type = Types::GetDirectConnectGatewayAttachmentResponse
    GetLinkAssociationsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkAssociationsRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpQuery" => "deviceId"}))
    GetLinkAssociationsRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId", traits: {"smithy.api#httpQuery" => "linkId"}))
    GetLinkAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetLinkAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetLinkAssociationsRequest.type = Types::GetLinkAssociationsRequest
    GetLinkAssociationsResponse.add_member(:link_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAssociationList, name: "LinkAssociations"))
    GetLinkAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetLinkAssociationsResponse.type = Types::GetLinkAssociationsResponse
    GetLinksRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinksRequest.add_member(:link_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkIdList, name: "LinkIds", traits: {"smithy.api#httpQuery" => "linkIds"}))
    GetLinksRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpQuery" => "siteId"}))
    GetLinksRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type", traits: {"smithy.api#httpQuery" => "type"}))
    GetLinksRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Provider", traits: {"smithy.api#httpQuery" => "provider"}))
    GetLinksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetLinksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetLinksRequest.type = Types::GetLinksRequest
    GetLinksResponse.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkList, name: "Links"))
    GetLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetLinksResponse.type = Types::GetLinksResponse
    GetNetworkResourceCountsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkResourceCountsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    GetNetworkResourceCountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetNetworkResourceCountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetNetworkResourceCountsRequest.type = Types::GetNetworkResourceCountsRequest
    GetNetworkResourceCountsResponse.add_member(:network_resource_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceCountList, name: "NetworkResourceCounts"))
    GetNetworkResourceCountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetNetworkResourceCountsResponse.type = Types::GetNetworkResourceCountsResponse
    GetNetworkResourceRelationshipsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkResourceRelationshipsRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpQuery" => "coreNetworkId"}))
    GetNetworkResourceRelationshipsRequest.add_member(:registered_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RegisteredGatewayArn", traits: {"smithy.api#httpQuery" => "registeredGatewayArn"}))
    GetNetworkResourceRelationshipsRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "AwsRegion", traits: {"smithy.api#httpQuery" => "awsRegion"}))
    GetNetworkResourceRelationshipsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    GetNetworkResourceRelationshipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetNetworkResourceRelationshipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetNetworkResourceRelationshipsRequest.type = Types::GetNetworkResourceRelationshipsRequest
    GetNetworkResourceRelationshipsResponse.add_member(:relationships, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipList, name: "Relationships"))
    GetNetworkResourceRelationshipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetNetworkResourceRelationshipsResponse.type = Types::GetNetworkResourceRelationshipsResponse
    GetNetworkResourcesRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkResourcesRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpQuery" => "coreNetworkId"}))
    GetNetworkResourcesRequest.add_member(:registered_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RegisteredGatewayArn", traits: {"smithy.api#httpQuery" => "registeredGatewayArn"}))
    GetNetworkResourcesRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "AwsRegion", traits: {"smithy.api#httpQuery" => "awsRegion"}))
    GetNetworkResourcesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    GetNetworkResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    GetNetworkResourcesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    GetNetworkResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetNetworkResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetNetworkResourcesRequest.type = Types::GetNetworkResourcesRequest
    GetNetworkResourcesResponse.add_member(:network_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceList, name: "NetworkResources"))
    GetNetworkResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetNetworkResourcesResponse.type = Types::GetNetworkResourcesResponse
    GetNetworkRoutesRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkRoutesRequest.add_member(:route_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIdentifier, name: "RouteTableIdentifier", traits: {"smithy.api#required" => {}}))
    GetNetworkRoutesRequest.add_member(:exact_cidr_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "ExactCidrMatches"))
    GetNetworkRoutesRequest.add_member(:longest_prefix_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "LongestPrefixMatches"))
    GetNetworkRoutesRequest.add_member(:subnet_of_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "SubnetOfMatches"))
    GetNetworkRoutesRequest.add_member(:supernet_of_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "SupernetOfMatches"))
    GetNetworkRoutesRequest.add_member(:prefix_list_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "PrefixListIds"))
    GetNetworkRoutesRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteStateList, name: "States"))
    GetNetworkRoutesRequest.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTypeList, name: "Types"))
    GetNetworkRoutesRequest.add_member(:destination_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterMap, name: "DestinationFilters"))
    GetNetworkRoutesRequest.type = Types::GetNetworkRoutesRequest
    GetNetworkRoutesResponse.add_member(:route_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RouteTableArn"))
    GetNetworkRoutesResponse.add_member(:core_network_segment_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkSegmentEdgeIdentifier, name: "CoreNetworkSegmentEdge"))
    GetNetworkRoutesResponse.add_member(:route_table_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableType, name: "RouteTableType"))
    GetNetworkRoutesResponse.add_member(:route_table_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "RouteTableTimestamp"))
    GetNetworkRoutesResponse.add_member(:network_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkRouteList, name: "NetworkRoutes"))
    GetNetworkRoutesResponse.type = Types::GetNetworkRoutesResponse
    GetNetworkTelemetryRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkTelemetryRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpQuery" => "coreNetworkId"}))
    GetNetworkTelemetryRequest.add_member(:registered_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RegisteredGatewayArn", traits: {"smithy.api#httpQuery" => "registeredGatewayArn"}))
    GetNetworkTelemetryRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "AwsRegion", traits: {"smithy.api#httpQuery" => "awsRegion"}))
    GetNetworkTelemetryRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    GetNetworkTelemetryRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    GetNetworkTelemetryRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    GetNetworkTelemetryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetNetworkTelemetryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetNetworkTelemetryRequest.type = Types::GetNetworkTelemetryRequest
    GetNetworkTelemetryResponse.add_member(:network_telemetry, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTelemetryList, name: "NetworkTelemetry"))
    GetNetworkTelemetryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetNetworkTelemetryResponse.type = Types::GetNetworkTelemetryResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonResourcePolicyDocument, name: "PolicyDocument"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetRouteAnalysisRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteAnalysisRequest.add_member(:route_analysis_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "RouteAnalysisId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteAnalysisRequest.type = Types::GetRouteAnalysisRequest
    GetRouteAnalysisResponse.add_member(:route_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysis, name: "RouteAnalysis"))
    GetRouteAnalysisResponse.type = Types::GetRouteAnalysisResponse
    GetSiteToSiteVpnAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSiteToSiteVpnAttachmentRequest.type = Types::GetSiteToSiteVpnAttachmentRequest
    GetSiteToSiteVpnAttachmentResponse.add_member(:site_to_site_vpn_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteToSiteVpnAttachment, name: "SiteToSiteVpnAttachment"))
    GetSiteToSiteVpnAttachmentResponse.type = Types::GetSiteToSiteVpnAttachmentResponse
    GetSitesRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSitesRequest.add_member(:site_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteIdList, name: "SiteIds", traits: {"smithy.api#httpQuery" => "siteIds"}))
    GetSitesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetSitesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetSitesRequest.type = Types::GetSitesRequest
    GetSitesResponse.add_member(:sites, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteList, name: "Sites"))
    GetSitesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetSitesResponse.type = Types::GetSitesResponse
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:transit_gateway_connect_peer_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerArnList, name: "TransitGatewayConnectPeerArns", traits: {"smithy.api#httpQuery" => "transitGatewayConnectPeerArns"}))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetTransitGatewayConnectPeerAssociationsRequest.type = Types::GetTransitGatewayConnectPeerAssociationsRequest
    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:transit_gateway_connect_peer_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerAssociationList, name: "TransitGatewayConnectPeerAssociations"))
    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetTransitGatewayConnectPeerAssociationsResponse.type = Types::GetTransitGatewayConnectPeerAssociationsResponse
    GetTransitGatewayPeeringRequest.add_member(:peering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringId, name: "PeeringId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayPeeringRequest.type = Types::GetTransitGatewayPeeringRequest
    GetTransitGatewayPeeringResponse.add_member(:transit_gateway_peering, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayPeering, name: "TransitGatewayPeering"))
    GetTransitGatewayPeeringResponse.type = Types::GetTransitGatewayPeeringResponse
    GetTransitGatewayRegistrationsRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayRegistrationsRequest.add_member(:transit_gateway_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArnList, name: "TransitGatewayArns", traits: {"smithy.api#httpQuery" => "transitGatewayArns"}))
    GetTransitGatewayRegistrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetTransitGatewayRegistrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetTransitGatewayRegistrationsRequest.type = Types::GetTransitGatewayRegistrationsRequest
    GetTransitGatewayRegistrationsResponse.add_member(:transit_gateway_registrations, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRegistrationList, name: "TransitGatewayRegistrations"))
    GetTransitGatewayRegistrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetTransitGatewayRegistrationsResponse.type = Types::GetTransitGatewayRegistrationsResponse
    GetTransitGatewayRouteTableAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransitGatewayRouteTableAttachmentRequest.type = Types::GetTransitGatewayRouteTableAttachmentRequest
    GetTransitGatewayRouteTableAttachmentResponse.add_member(:transit_gateway_route_table_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRouteTableAttachment, name: "TransitGatewayRouteTableAttachment"))
    GetTransitGatewayRouteTableAttachmentResponse.type = Types::GetTransitGatewayRouteTableAttachmentResponse
    GetVpcAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcAttachmentRequest.type = Types::GetVpcAttachmentRequest
    GetVpcAttachmentResponse.add_member(:vpc_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcAttachment, name: "VpcAttachment"))
    GetVpcAttachmentResponse.type = Types::GetVpcAttachmentResponse
    GlobalNetwork.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    GlobalNetwork.add_member(:global_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkArn, name: "GlobalNetworkArn"))
    GlobalNetwork.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    GlobalNetwork.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    GlobalNetwork.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkState, name: "State"))
    GlobalNetwork.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GlobalNetwork.type = Types::GlobalNetwork
    GlobalNetworkIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "member"))
    GlobalNetworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetwork, name: "member"))
    GlobalNetworkState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    GlobalNetworkState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    GlobalNetworkState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    GlobalNetworkState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Link.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    Link.add_member(:link_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkArn, name: "LinkArn"))
    Link.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    Link.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    Link.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    Link.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type"))
    Link.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: Bandwidth, name: "Bandwidth"))
    Link.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Provider"))
    Link.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    Link.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkState, name: "State"))
    Link.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Link.type = Types::Link
    LinkAssociation.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    LinkAssociation.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    LinkAssociation.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    LinkAssociation.add_member(:link_association_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAssociationState, name: "LinkAssociationState"))
    LinkAssociation.type = Types::LinkAssociation
    LinkAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAssociation, name: "member"))
    LinkAssociationState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    LinkAssociationState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LinkAssociationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    LinkAssociationState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "DELETED"}))
    LinkIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "member"))
    LinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Link, name: "member"))
    LinkState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    LinkState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LinkState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    LinkState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ListAttachmentsRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpQuery" => "coreNetworkId"}))
    ListAttachmentsRequest.add_member(:attachment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentType, name: "AttachmentType", traits: {"smithy.api#httpQuery" => "attachmentType"}))
    ListAttachmentsRequest.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation", traits: {"smithy.api#httpQuery" => "edgeLocation"}))
    ListAttachmentsRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentState, name: "State", traits: {"smithy.api#httpQuery" => "state"}))
    ListAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAttachmentsRequest.type = Types::ListAttachmentsRequest
    ListAttachmentsResponse.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentList, name: "Attachments"))
    ListAttachmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAttachmentsResponse.type = Types::ListAttachmentsResponse
    ListConnectPeersRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpQuery" => "coreNetworkId"}))
    ListConnectPeersRequest.add_member(:connect_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "ConnectAttachmentId", traits: {"smithy.api#httpQuery" => "connectAttachmentId"}))
    ListConnectPeersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConnectPeersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConnectPeersRequest.type = Types::ListConnectPeersRequest
    ListConnectPeersResponse.add_member(:connect_peers, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPeerSummaryList, name: "ConnectPeers"))
    ListConnectPeersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectPeersResponse.type = Types::ListConnectPeersResponse
    ListCoreNetworkPolicyVersionsRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCoreNetworkPolicyVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCoreNetworkPolicyVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCoreNetworkPolicyVersionsRequest.type = Types::ListCoreNetworkPolicyVersionsRequest
    ListCoreNetworkPolicyVersionsResponse.add_member(:core_network_policy_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicyVersionList, name: "CoreNetworkPolicyVersions"))
    ListCoreNetworkPolicyVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCoreNetworkPolicyVersionsResponse.type = Types::ListCoreNetworkPolicyVersionsResponse
    ListCoreNetworksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCoreNetworksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCoreNetworksRequest.type = Types::ListCoreNetworksRequest
    ListCoreNetworksResponse.add_member(:core_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkSummaryList, name: "CoreNetworks"))
    ListCoreNetworksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCoreNetworksResponse.type = Types::ListCoreNetworksResponse
    ListOrganizationServiceAccessStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListOrganizationServiceAccessStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOrganizationServiceAccessStatusRequest.type = Types::ListOrganizationServiceAccessStatusRequest
    ListOrganizationServiceAccessStatusResponse.add_member(:organization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationStatus, name: "OrganizationStatus"))
    ListOrganizationServiceAccessStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOrganizationServiceAccessStatusResponse.type = Types::ListOrganizationServiceAccessStatusResponse
    ListPeeringsRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpQuery" => "coreNetworkId"}))
    ListPeeringsRequest.add_member(:peering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringType, name: "PeeringType", traits: {"smithy.api#httpQuery" => "peeringType"}))
    ListPeeringsRequest.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation", traits: {"smithy.api#httpQuery" => "edgeLocation"}))
    ListPeeringsRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringState, name: "State", traits: {"smithy.api#httpQuery" => "state"}))
    ListPeeringsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPeeringsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPeeringsRequest.type = Types::ListPeeringsRequest
    ListPeeringsResponse.add_member(:peerings, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringList, name: "Peerings"))
    ListPeeringsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPeeringsResponse.type = Types::ListPeeringsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Location.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Address"))
    Location.add_member(:latitude, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Latitude"))
    Location.add_member(:longitude, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Longitude"))
    Location.type = Types::Location
    NetworkFunctionGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Name"))
    NetworkFunctionGroup.type = Types::NetworkFunctionGroup
    NetworkFunctionGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFunctionGroup, name: "member"))
    NetworkResource.add_member(:registered_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RegisteredGatewayArn"))
    NetworkResource.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    NetworkResource.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "AwsRegion"))
    NetworkResource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId"))
    NetworkResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType"))
    NetworkResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceId"))
    NetworkResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    NetworkResource.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Definition"))
    NetworkResource.add_member(:definition_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "DefinitionTimestamp"))
    NetworkResource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    NetworkResource.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceMetadataMap, name: "Metadata"))
    NetworkResource.type = Types::NetworkResource
    NetworkResourceCount.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType"))
    NetworkResourceCount.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count"))
    NetworkResourceCount.type = Types::NetworkResourceCount
    NetworkResourceCountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceCount, name: "member"))
    NetworkResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResource, name: "member"))
    NetworkResourceMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "key"))
    NetworkResourceMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "value"))
    NetworkResourceSummary.add_member(:registered_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RegisteredGatewayArn"))
    NetworkResourceSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    NetworkResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType"))
    NetworkResourceSummary.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Definition"))
    NetworkResourceSummary.add_member(:name_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "NameTag"))
    NetworkResourceSummary.add_member(:is_middlebox, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsMiddlebox", traits: {"smithy.api#default" => false}))
    NetworkResourceSummary.type = Types::NetworkResourceSummary
    NetworkRoute.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "DestinationCidrBlock"))
    NetworkRoute.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkRouteDestinationList, name: "Destinations"))
    NetworkRoute.add_member(:prefix_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "PrefixListId"))
    NetworkRoute.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "State"))
    NetworkRoute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "Type"))
    NetworkRoute.type = Types::NetworkRoute
    NetworkRouteDestination.add_member(:core_network_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "CoreNetworkAttachmentId"))
    NetworkRouteDestination.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId"))
    NetworkRouteDestination.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SegmentName"))
    NetworkRouteDestination.add_member(:network_function_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "NetworkFunctionGroupName"))
    NetworkRouteDestination.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    NetworkRouteDestination.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType"))
    NetworkRouteDestination.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceId"))
    NetworkRouteDestination.type = Types::NetworkRouteDestination
    NetworkRouteDestinationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkRouteDestination, name: "member"))
    NetworkRouteList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkRoute, name: "member"))
    NetworkTelemetry.add_member(:registered_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RegisteredGatewayArn"))
    NetworkTelemetry.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    NetworkTelemetry.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "AwsRegion"))
    NetworkTelemetry.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId"))
    NetworkTelemetry.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceType"))
    NetworkTelemetry.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "ResourceId"))
    NetworkTelemetry.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    NetworkTelemetry.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Address"))
    NetworkTelemetry.add_member(:health, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionHealth, name: "Health"))
    NetworkTelemetry.type = Types::NetworkTelemetry
    NetworkTelemetryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTelemetry, name: "member"))
    OrganizationStatus.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "OrganizationId"))
    OrganizationStatus.add_member(:organization_aws_service_access_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAwsServiceAccessStatus, name: "OrganizationAwsServiceAccessStatus"))
    OrganizationStatus.add_member(:slr_deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SLRDeploymentStatus, name: "SLRDeploymentStatus"))
    OrganizationStatus.add_member(:account_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStatusList, name: "AccountStatusList", traits: {"smithy.api#xmlName" => "OrganizationStatus"}))
    OrganizationStatus.type = Types::OrganizationStatus
    PathComponent.add_member(:sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Sequence"))
    PathComponent.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceSummary, name: "Resource"))
    PathComponent.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "DestinationCidrBlock"))
    PathComponent.type = Types::PathComponent
    PathComponentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathComponent, name: "member"))
    Peering.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId"))
    Peering.add_member(:core_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkArn, name: "CoreNetworkArn"))
    Peering.add_member(:peering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringId, name: "PeeringId"))
    Peering.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccountId"))
    Peering.add_member(:peering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringType, name: "PeeringType"))
    Peering.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringState, name: "State"))
    Peering.add_member(:edge_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCode, name: "EdgeLocation"))
    Peering.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    Peering.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Peering.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    Peering.add_member(:last_modification_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringErrorList, name: "LastModificationErrors"))
    Peering.type = Types::Peering
    PeeringError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringErrorCode, name: "Code"))
    PeeringError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message"))
    PeeringError.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    PeeringError.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "RequestId"))
    PeeringError.add_member(:missing_permissions_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsErrorContext, name: "MissingPermissionsContext"))
    PeeringError.type = Types::PeeringError
    PeeringErrorCode.add_member(:transit_gateway_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_NOT_FOUND", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_NOT_FOUND"}))
    PeeringErrorCode.add_member(:transit_gateway_peers_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED"}))
    PeeringErrorCode.add_member(:missing_required_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REQUIRED_PERMISSIONS", traits: {"smithy.api#enumValue" => "MISSING_PERMISSIONS"}))
    PeeringErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    PeeringErrorCode.add_member(:edge_location_peer_duplicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE_LOCATION_PEER_DUPLICATE", traits: {"smithy.api#enumValue" => "EDGE_LOCATION_PEER_DUPLICATE"}))
    PeeringErrorCode.add_member(:invalid_transit_gateway_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TRANSIT_GATEWAY_STATE", traits: {"smithy.api#enumValue" => "INVALID_TRANSIT_GATEWAY_STATE"}))
    PeeringErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringError, name: "member"))
    PeeringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Peering, name: "member"))
    PeeringState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    PeeringState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PeeringState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PeeringState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    PeeringType.add_member(:transit_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY"}))
    PermissionsErrorContext.add_member(:missing_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "MissingPermission"))
    PermissionsErrorContext.type = Types::PermissionsErrorContext
    ProposedNetworkFunctionGroupChange.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ProposedNetworkFunctionGroupChange.add_member(:attachment_policy_rule_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AttachmentPolicyRuleNumber"))
    ProposedNetworkFunctionGroupChange.add_member(:network_function_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "NetworkFunctionGroupName"))
    ProposedNetworkFunctionGroupChange.type = Types::ProposedNetworkFunctionGroupChange
    ProposedSegmentChange.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ProposedSegmentChange.add_member(:attachment_policy_rule_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AttachmentPolicyRuleNumber"))
    ProposedSegmentChange.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SegmentName"))
    ProposedSegmentChange.type = Types::ProposedSegmentChange
    PutCoreNetworkPolicyRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutCoreNetworkPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonCoreNetworkPolicyDocument, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutCoreNetworkPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    PutCoreNetworkPolicyRequest.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "LatestVersionId"))
    PutCoreNetworkPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutCoreNetworkPolicyRequest.type = Types::PutCoreNetworkPolicyRequest
    PutCoreNetworkPolicyResponse.add_member(:core_network_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicy, name: "CoreNetworkPolicy"))
    PutCoreNetworkPolicyResponse.type = Types::PutCoreNetworkPolicyResponse
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonResourcePolicyDocument, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ReasonContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonContextKey, name: "key"))
    ReasonContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonContextValue, name: "value"))
    RegisterTransitGatewayRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterTransitGatewayRequest.add_member(:transit_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "TransitGatewayArn", traits: {"smithy.api#required" => {}}))
    RegisterTransitGatewayRequest.type = Types::RegisterTransitGatewayRequest
    RegisterTransitGatewayResponse.add_member(:transit_gateway_registration, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRegistration, name: "TransitGatewayRegistration"))
    RegisterTransitGatewayResponse.type = Types::RegisterTransitGatewayResponse
    RejectAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectAttachmentRequest.type = Types::RejectAttachmentRequest
    RejectAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    RejectAttachmentResponse.type = Types::RejectAttachmentResponse
    Relationship.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "From"))
    Relationship.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "To"))
    Relationship.type = Types::Relationship
    RelationshipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Relationship, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContextMap, name: "Context"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreCoreNetworkPolicyVersionRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreCoreNetworkPolicyVersionRequest.add_member(:policy_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PolicyVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreCoreNetworkPolicyVersionRequest.type = Types::RestoreCoreNetworkPolicyVersionRequest
    RestoreCoreNetworkPolicyVersionResponse.add_member(:core_network_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkPolicy, name: "CoreNetworkPolicy"))
    RestoreCoreNetworkPolicyVersionResponse.type = Types::RestoreCoreNetworkPolicyVersionResponse
    RouteAnalysis.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    RouteAnalysis.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccountId"))
    RouteAnalysis.add_member(:route_analysis_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "RouteAnalysisId"))
    RouteAnalysis.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTimestamp"))
    RouteAnalysis.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisStatus, name: "Status"))
    RouteAnalysis.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisEndpointOptions, name: "Source"))
    RouteAnalysis.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisEndpointOptions, name: "Destination"))
    RouteAnalysis.add_member(:include_return_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeReturnPath", traits: {"smithy.api#default" => false}))
    RouteAnalysis.add_member(:use_middleboxes, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseMiddleboxes", traits: {"smithy.api#default" => false}))
    RouteAnalysis.add_member(:forward_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisPath, name: "ForwardPath"))
    RouteAnalysis.add_member(:return_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisPath, name: "ReturnPath"))
    RouteAnalysis.type = Types::RouteAnalysis
    RouteAnalysisCompletion.add_member(:result_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisCompletionResultCode, name: "ResultCode"))
    RouteAnalysisCompletion.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisCompletionReasonCode, name: "ReasonCode"))
    RouteAnalysisCompletion.add_member(:reason_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonContextMap, name: "ReasonContext"))
    RouteAnalysisCompletion.type = Types::RouteAnalysisCompletion
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment_not_in_transit_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY"}))
    RouteAnalysisCompletionReasonCode.add_member(:cyclic_path_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CYCLIC_PATH_DETECTED", traits: {"smithy.api#enumValue" => "CYCLIC_PATH_DETECTED"}))
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment_stable_route_table_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:route_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE_NOT_FOUND", traits: {"smithy.api#enumValue" => "ROUTE_NOT_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:blackhole_route_for_destination_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", traits: {"smithy.api#enumValue" => "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:inactive_route_for_destination_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", traits: {"smithy.api#enumValue" => "INACTIVE_ROUTE_FOR_DESTINATION_FOUND"}))
    RouteAnalysisCompletionReasonCode.add_member(:transit_gateway_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_ATTACHMENT", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH"}))
    RouteAnalysisCompletionReasonCode.add_member(:max_hops_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_HOPS_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_HOPS_EXCEEDED"}))
    RouteAnalysisCompletionReasonCode.add_member(:possible_middlebox, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSSIBLE_MIDDLEBOX", traits: {"smithy.api#enumValue" => "POSSIBLE_MIDDLEBOX"}))
    RouteAnalysisCompletionReasonCode.add_member(:no_destination_arn_provided, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_DESTINATION_ARN_PROVIDED", traits: {"smithy.api#enumValue" => "NO_DESTINATION_ARN_PROVIDED"}))
    RouteAnalysisCompletionResultCode.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    RouteAnalysisCompletionResultCode.add_member(:not_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONNECTED", traits: {"smithy.api#enumValue" => "NOT_CONNECTED"}))
    RouteAnalysisEndpointOptions.add_member(:transit_gateway_attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentArn, name: "TransitGatewayAttachmentArn"))
    RouteAnalysisEndpointOptions.add_member(:transit_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "TransitGatewayArn"))
    RouteAnalysisEndpointOptions.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "IpAddress"))
    RouteAnalysisEndpointOptions.type = Types::RouteAnalysisEndpointOptions
    RouteAnalysisEndpointOptionsSpecification.add_member(:transit_gateway_attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentArn, name: "TransitGatewayAttachmentArn"))
    RouteAnalysisEndpointOptionsSpecification.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "IpAddress"))
    RouteAnalysisEndpointOptionsSpecification.type = Types::RouteAnalysisEndpointOptionsSpecification
    RouteAnalysisPath.add_member(:completion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisCompletion, name: "CompletionStatus"))
    RouteAnalysisPath.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathComponentList, name: "Path"))
    RouteAnalysisPath.type = Types::RouteAnalysisPath
    RouteAnalysisStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "running", traits: {"smithy.api#enumValue" => "RUNNING"}))
    RouteAnalysisStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "completed", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RouteAnalysisStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    RouteState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RouteState.add_member(:blackhole, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLACKHOLE", traits: {"smithy.api#enumValue" => "BLACKHOLE"}))
    RouteStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "member"))
    RouteTableIdentifier.add_member(:transit_gateway_route_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRouteTableArn, name: "TransitGatewayRouteTableArn"))
    RouteTableIdentifier.add_member(:core_network_segment_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkSegmentEdgeIdentifier, name: "CoreNetworkSegmentEdge"))
    RouteTableIdentifier.add_member(:core_network_network_function_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkNetworkFunctionGroupIdentifier, name: "CoreNetworkNetworkFunctionGroup"))
    RouteTableIdentifier.type = Types::RouteTableIdentifier
    RouteTableType.add_member(:transit_gateway_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT_GATEWAY_ROUTE_TABLE", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY_ROUTE_TABLE"}))
    RouteTableType.add_member(:core_network_segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE_NETWORK_SEGMENT", traits: {"smithy.api#enumValue" => "CORE_NETWORK_SEGMENT"}))
    RouteTableType.add_member(:network_function_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_FUNCTION_GROUP", traits: {"smithy.api#enumValue" => "NETWORK_FUNCTION_GROUP"}))
    RouteType.add_member(:propagated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPAGATED", traits: {"smithy.api#enumValue" => "PROPAGATED"}))
    RouteType.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATIC", traits: {"smithy.api#enumValue" => "STATIC"}))
    RouteTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "member"))
    SegmentActionServiceInsertion.add_member(:send_via, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND_VIA", traits: {"smithy.api#enumValue" => "send-via"}))
    SegmentActionServiceInsertion.add_member(:send_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND_TO", traits: {"smithy.api#enumValue" => "send-to"}))
    SendViaMode.add_member(:dual_hop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_HOP", traits: {"smithy.api#enumValue" => "dual-hop"}))
    SendViaMode.add_member(:single_hop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_HOP", traits: {"smithy.api#enumValue" => "single-hop"}))
    ServiceInsertionAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentActionServiceInsertion, name: "Action"))
    ServiceInsertionAction.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SendViaMode, name: "Mode"))
    ServiceInsertionAction.add_member(:when_sent_to, ::Smithy::Schema::Shapes::MemberShape.new(target: WhenSentTo, name: "WhenSentTo"))
    ServiceInsertionAction.add_member(:via, ::Smithy::Schema::Shapes::MemberShape.new(target: Via, name: "Via"))
    ServiceInsertionAction.type = Types::ServiceInsertionAction
    ServiceInsertionActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceInsertionAction, name: "member"))
    ServiceInsertionSegments.add_member(:send_via, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "SendVia"))
    ServiceInsertionSegments.add_member(:send_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedStringList, name: "SendTo"))
    ServiceInsertionSegments.type = Types::ServiceInsertionSegments
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:limit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "LimitCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Site.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    Site.add_member(:site_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteArn, name: "SiteArn"))
    Site.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    Site.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    Site.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    Site.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    Site.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteState, name: "State"))
    Site.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Site.type = Types::Site
    SiteIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "member"))
    SiteList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "member"))
    SiteState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    SiteState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SiteState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    SiteState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    SiteToSiteVpnAttachment.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    SiteToSiteVpnAttachment.add_member(:vpn_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpnConnectionArn, name: "VpnConnectionArn"))
    SiteToSiteVpnAttachment.type = Types::SiteToSiteVpnAttachment
    StartOrganizationServiceAccessUpdateRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}}))
    StartOrganizationServiceAccessUpdateRequest.type = Types::StartOrganizationServiceAccessUpdateRequest
    StartOrganizationServiceAccessUpdateResponse.add_member(:organization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationStatus, name: "OrganizationStatus"))
    StartOrganizationServiceAccessUpdateResponse.type = Types::StartOrganizationServiceAccessUpdateResponse
    StartRouteAnalysisRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartRouteAnalysisRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisEndpointOptionsSpecification, name: "Source", traits: {"smithy.api#required" => {}}))
    StartRouteAnalysisRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysisEndpointOptionsSpecification, name: "Destination", traits: {"smithy.api#required" => {}}))
    StartRouteAnalysisRequest.add_member(:include_return_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeReturnPath", traits: {"smithy.api#default" => false}))
    StartRouteAnalysisRequest.add_member(:use_middleboxes, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseMiddleboxes", traits: {"smithy.api#default" => false}))
    StartRouteAnalysisRequest.type = Types::StartRouteAnalysisRequest
    StartRouteAnalysisResponse.add_member(:route_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteAnalysis, name: "RouteAnalysis"))
    StartRouteAnalysisResponse.type = Types::StartRouteAnalysisResponse
    SubnetArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TransitGatewayArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "member"))
    TransitGatewayConnectPeerArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerArn, name: "member"))
    TransitGatewayConnectPeerAssociation.add_member(:transit_gateway_connect_peer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerArn, name: "TransitGatewayConnectPeerArn"))
    TransitGatewayConnectPeerAssociation.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    TransitGatewayConnectPeerAssociation.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    TransitGatewayConnectPeerAssociation.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    TransitGatewayConnectPeerAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerAssociationState, name: "State"))
    TransitGatewayConnectPeerAssociation.type = Types::TransitGatewayConnectPeerAssociation
    TransitGatewayConnectPeerAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayConnectPeerAssociation, name: "member"))
    TransitGatewayConnectPeerAssociationState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    TransitGatewayConnectPeerAssociationState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TransitGatewayConnectPeerAssociationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    TransitGatewayConnectPeerAssociationState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "DELETED"}))
    TransitGatewayPeering.add_member(:peering, ::Smithy::Schema::Shapes::MemberShape.new(target: Peering, name: "Peering"))
    TransitGatewayPeering.add_member(:transit_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "TransitGatewayArn"))
    TransitGatewayPeering.add_member(:transit_gateway_peering_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayPeeringAttachmentId, name: "TransitGatewayPeeringAttachmentId"))
    TransitGatewayPeering.type = Types::TransitGatewayPeering
    TransitGatewayRegistration.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId"))
    TransitGatewayRegistration.add_member(:transit_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayArn, name: "TransitGatewayArn"))
    TransitGatewayRegistration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRegistrationStateReason, name: "State"))
    TransitGatewayRegistration.type = Types::TransitGatewayRegistration
    TransitGatewayRegistrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRegistration, name: "member"))
    TransitGatewayRegistrationState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    TransitGatewayRegistrationState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TransitGatewayRegistrationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    TransitGatewayRegistrationState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "DELETED"}))
    TransitGatewayRegistrationState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    TransitGatewayRegistrationStateReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRegistrationState, name: "Code"))
    TransitGatewayRegistrationStateReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Message"))
    TransitGatewayRegistrationStateReason.type = Types::TransitGatewayRegistrationStateReason
    TransitGatewayRouteTableAttachment.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    TransitGatewayRouteTableAttachment.add_member(:peering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeringId, name: "PeeringId"))
    TransitGatewayRouteTableAttachment.add_member(:transit_gateway_route_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayRouteTableArn, name: "TransitGatewayRouteTableArn"))
    TransitGatewayRouteTableAttachment.type = Types::TransitGatewayRouteTableAttachment
    TunnelProtocol.add_member(:gre, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRE", traits: {"smithy.api#enumValue" => "GRE"}))
    TunnelProtocol.add_member(:no_encap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ENCAP", traits: {"smithy.api#enumValue" => "NO_ENCAP"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectionRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectionRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId"))
    UpdateConnectionRequest.add_member(:connected_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "ConnectedLinkId"))
    UpdateConnectionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    UpdateConnectionRequest.type = Types::UpdateConnectionRequest
    UpdateConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection"))
    UpdateConnectionResponse.type = Types::UpdateConnectionResponse
    UpdateCoreNetworkRequest.add_member(:core_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetworkId, name: "CoreNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCoreNetworkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    UpdateCoreNetworkRequest.type = Types::UpdateCoreNetworkRequest
    UpdateCoreNetworkResponse.add_member(:core_network, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreNetwork, name: "CoreNetwork"))
    UpdateCoreNetworkResponse.type = Types::UpdateCoreNetworkResponse
    UpdateDeviceRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceRequest.add_member(:aws_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSLocation, name: "AWSLocation"))
    UpdateDeviceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    UpdateDeviceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type"))
    UpdateDeviceRequest.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Vendor"))
    UpdateDeviceRequest.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Model"))
    UpdateDeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "SerialNumber"))
    UpdateDeviceRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    UpdateDeviceRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    UpdateDeviceRequest.type = Types::UpdateDeviceRequest
    UpdateDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "Device"))
    UpdateDeviceResponse.type = Types::UpdateDeviceResponse
    UpdateDirectConnectGatewayAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDirectConnectGatewayAttachmentRequest.add_member(:edge_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalRegionCodeList, name: "EdgeLocations"))
    UpdateDirectConnectGatewayAttachmentRequest.type = Types::UpdateDirectConnectGatewayAttachmentRequest
    UpdateDirectConnectGatewayAttachmentResponse.add_member(:direct_connect_gateway_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectConnectGatewayAttachment, name: "DirectConnectGatewayAttachment"))
    UpdateDirectConnectGatewayAttachmentResponse.type = Types::UpdateDirectConnectGatewayAttachmentResponse
    UpdateGlobalNetworkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGlobalNetworkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    UpdateGlobalNetworkRequest.type = Types::UpdateGlobalNetworkRequest
    UpdateGlobalNetworkResponse.add_member(:global_network, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetwork, name: "GlobalNetwork"))
    UpdateGlobalNetworkResponse.type = Types::UpdateGlobalNetworkResponse
    UpdateLinkRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "LinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    UpdateLinkRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Type"))
    UpdateLinkRequest.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: Bandwidth, name: "Bandwidth"))
    UpdateLinkRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Provider"))
    UpdateLinkRequest.type = Types::UpdateLinkRequest
    UpdateLinkResponse.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: Link, name: "Link"))
    UpdateLinkResponse.type = Types::UpdateLinkResponse
    UpdateNetworkResourceMetadataRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkResourceMetadataRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkResourceMetadataRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceMetadataMap, name: "Metadata", traits: {"smithy.api#required" => {}}))
    UpdateNetworkResourceMetadataRequest.type = Types::UpdateNetworkResourceMetadataRequest
    UpdateNetworkResourceMetadataResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    UpdateNetworkResourceMetadataResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkResourceMetadataMap, name: "Metadata"))
    UpdateNetworkResourceMetadataResponse.type = Types::UpdateNetworkResourceMetadataResponse
    UpdateSiteRequest.add_member(:global_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNetworkId, name: "GlobalNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteRequest.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "Description"))
    UpdateSiteRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    UpdateSiteRequest.type = Types::UpdateSiteRequest
    UpdateSiteResponse.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    UpdateSiteResponse.type = Types::UpdateSiteResponse
    UpdateVpcAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcAttachmentRequest.add_member(:add_subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArnList, name: "AddSubnetArns"))
    UpdateVpcAttachmentRequest.add_member(:remove_subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArnList, name: "RemoveSubnetArns"))
    UpdateVpcAttachmentRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOptions, name: "Options"))
    UpdateVpcAttachmentRequest.type = Types::UpdateVpcAttachmentRequest
    UpdateVpcAttachmentResponse.add_member(:vpc_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcAttachment, name: "VpcAttachment"))
    UpdateVpcAttachmentResponse.type = Types::UpdateVpcAttachmentResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideString, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UnknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    Via.add_member(:network_function_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFunctionGroupList, name: "NetworkFunctionGroups"))
    Via.add_member(:with_edge_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: WithEdgeOverridesList, name: "WithEdgeOverrides"))
    Via.type = Types::Via
    VpcAttachment.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    VpcAttachment.add_member(:subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArnList, name: "SubnetArns"))
    VpcAttachment.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOptions, name: "Options"))
    VpcAttachment.type = Types::VpcAttachment
    VpcOptions.add_member(:ipv6_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Ipv6Support", traits: {"smithy.api#default" => false}))
    VpcOptions.add_member(:appliance_mode_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplianceModeSupport", traits: {"smithy.api#default" => false}))
    VpcOptions.add_member(:dns_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DnsSupport", traits: {"smithy.api#default" => false}))
    VpcOptions.add_member(:security_group_referencing_support, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SecurityGroupReferencingSupport", traits: {"smithy.api#default" => false}))
    VpcOptions.type = Types::VpcOptions
    WhenSentTo.add_member(:when_sent_to_segments_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WhenSentToSegmentsList, name: "WhenSentToSegmentsList"))
    WhenSentTo.type = Types::WhenSentTo
    WhenSentToSegmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstrainedString, name: "member"))
    WithEdgeOverridesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeOverride, name: "member"))

    NetworkManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networkmanager#NetworkManager"
      service.name = "NetworkManager"
      service.version = "2019-07-05"
      service.traits = {"aws.api#service" => {"sdkId" => "NetworkManager", "arnNamespace" => "networkmanager", "cloudFormationName" => "NetworkManager", "cloudTrailEventSource" => "networkmanager.amazonaws.com", "endpointPrefix" => "networkmanager"}, "aws.auth#sigv4" => {"name" => "networkmanager"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Network Manager"}
      service.add_operation(:accept_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AcceptAttachment"
        operation.name = "AcceptAttachment"
        operation.input = AcceptAttachmentRequest
        operation.output = AcceptAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/attachments/{AttachmentId}/accept", "code" => 200}}
      end)
      service.add_operation(:associate_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateConnectPeer"
        operation.name = "AssociateConnectPeer"
        operation.input = AssociateConnectPeerRequest
        operation.output = AssociateConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/connect-peer-associations", "code" => 200}}
      end)
      service.add_operation(:associate_customer_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateCustomerGateway"
        operation.name = "AssociateCustomerGateway"
        operation.input = AssociateCustomerGatewayRequest
        operation.output = AssociateCustomerGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/customer-gateway-associations", "code" => 200}}
      end)
      service.add_operation(:associate_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateLink"
        operation.name = "AssociateLink"
        operation.input = AssociateLinkRequest
        operation.output = AssociateLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/link-associations", "code" => 200}}
      end)
      service.add_operation(:associate_transit_gateway_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#AssociateTransitGatewayConnectPeer"
        operation.name = "AssociateTransitGatewayConnectPeer"
        operation.input = AssociateTransitGatewayConnectPeerRequest
        operation.output = AssociateTransitGatewayConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations", "code" => 200}}
      end)
      service.add_operation(:create_connect_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateConnectAttachment"
        operation.name = "CreateConnectAttachment"
        operation.input = CreateConnectAttachmentRequest
        operation.output = CreateConnectAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connect-attachments", "code" => 200}}
      end)
      service.add_operation(:create_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateConnectPeer"
        operation.name = "CreateConnectPeer"
        operation.input = CreateConnectPeerRequest
        operation.output = CreateConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connect-peers", "code" => 200}}
      end)
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = CreateConnectionRequest
        operation.output = CreateConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/connections", "code" => 200}}
      end)
      service.add_operation(:create_core_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateCoreNetwork"
        operation.name = "CreateCoreNetwork"
        operation.input = CreateCoreNetworkRequest
        operation.output = CreateCoreNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << CoreNetworkPolicyException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks", "code" => 200}}
      end)
      service.add_operation(:create_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateDevice"
        operation.name = "CreateDevice"
        operation.input = CreateDeviceRequest
        operation.output = CreateDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/devices", "code" => 200}}
      end)
      service.add_operation(:create_direct_connect_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateDirectConnectGatewayAttachment"
        operation.name = "CreateDirectConnectGatewayAttachment"
        operation.input = CreateDirectConnectGatewayAttachmentRequest
        operation.output = CreateDirectConnectGatewayAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/direct-connect-gateway-attachments", "code" => 200}}
      end)
      service.add_operation(:create_global_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateGlobalNetwork"
        operation.name = "CreateGlobalNetwork"
        operation.input = CreateGlobalNetworkRequest
        operation.output = CreateGlobalNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks", "code" => 200}}
      end)
      service.add_operation(:create_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateLink"
        operation.name = "CreateLink"
        operation.input = CreateLinkRequest
        operation.output = CreateLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/links", "code" => 200}}
      end)
      service.add_operation(:create_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateSite"
        operation.name = "CreateSite"
        operation.input = CreateSiteRequest
        operation.output = CreateSiteResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/sites", "code" => 200}}
      end)
      service.add_operation(:create_site_to_site_vpn_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateSiteToSiteVpnAttachment"
        operation.name = "CreateSiteToSiteVpnAttachment"
        operation.input = CreateSiteToSiteVpnAttachmentRequest
        operation.output = CreateSiteToSiteVpnAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/site-to-site-vpn-attachments", "code" => 200}}
      end)
      service.add_operation(:create_transit_gateway_peering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateTransitGatewayPeering"
        operation.name = "CreateTransitGatewayPeering"
        operation.input = CreateTransitGatewayPeeringRequest
        operation.output = CreateTransitGatewayPeeringResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/transit-gateway-peerings", "code" => 200}}
      end)
      service.add_operation(:create_transit_gateway_route_table_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateTransitGatewayRouteTableAttachment"
        operation.name = "CreateTransitGatewayRouteTableAttachment"
        operation.input = CreateTransitGatewayRouteTableAttachmentRequest
        operation.output = CreateTransitGatewayRouteTableAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/transit-gateway-route-table-attachments", "code" => 200}}
      end)
      service.add_operation(:create_vpc_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#CreateVpcAttachment"
        operation.name = "CreateVpcAttachment"
        operation.input = CreateVpcAttachmentRequest
        operation.output = CreateVpcAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vpc-attachments", "code" => 200}}
      end)
      service.add_operation(:delete_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteAttachment"
        operation.name = "DeleteAttachment"
        operation.input = DeleteAttachmentRequest
        operation.output = DeleteAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteConnectPeer"
        operation.name = "DeleteConnectPeer"
        operation.input = DeleteConnectPeerRequest
        operation.output = DeleteConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/connect-peers/{ConnectPeerId}", "code" => 200}}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionRequest
        operation.output = DeleteConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_core_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteCoreNetwork"
        operation.name = "DeleteCoreNetwork"
        operation.input = DeleteCoreNetworkRequest
        operation.output = DeleteCoreNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/core-networks/{CoreNetworkId}", "code" => 200}}
      end)
      service.add_operation(:delete_core_network_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteCoreNetworkPolicyVersion"
        operation.name = "DeleteCoreNetworkPolicyVersion"
        operation.input = DeleteCoreNetworkPolicyVersionRequest
        operation.output = DeleteCoreNetworkPolicyVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}", "code" => 200}}
      end)
      service.add_operation(:delete_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteDevice"
        operation.name = "DeleteDevice"
        operation.input = DeleteDeviceRequest
        operation.output = DeleteDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:delete_global_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteGlobalNetwork"
        operation.name = "DeleteGlobalNetwork"
        operation.input = DeleteGlobalNetworkRequest
        operation.output = DeleteGlobalNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}", "code" => 200}}
      end)
      service.add_operation(:delete_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteLink"
        operation.name = "DeleteLink"
        operation.input = DeleteLinkRequest
        operation.output = DeleteLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/links/{LinkId}", "code" => 200}}
      end)
      service.add_operation(:delete_peering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeletePeering"
        operation.name = "DeletePeering"
        operation.input = DeletePeeringRequest
        operation.output = DeletePeeringResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/peerings/{PeeringId}", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/resource-policy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:delete_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeleteSite"
        operation.name = "DeleteSite"
        operation.input = DeleteSiteRequest
        operation.output = DeleteSiteResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:deregister_transit_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DeregisterTransitGateway"
        operation.name = "DeregisterTransitGateway"
        operation.input = DeregisterTransitGatewayRequest
        operation.output = DeregisterTransitGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-registrations/{TransitGatewayArn}", "code" => 200}}
      end)
      service.add_operation(:describe_global_networks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DescribeGlobalNetworks"
        operation.name = "DescribeGlobalNetworks"
        operation.input = DescribeGlobalNetworksRequest
        operation.output = DescribeGlobalNetworksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks", "code" => 200}}
        operation[:paginator] = Paginators::DescribeGlobalNetworks.new
      end)
      service.add_operation(:disassociate_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateConnectPeer"
        operation.name = "DisassociateConnectPeer"
        operation.input = DisassociateConnectPeerRequest
        operation.output = DisassociateConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/connect-peer-associations/{ConnectPeerId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_customer_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateCustomerGateway"
        operation.name = "DisassociateCustomerGateway"
        operation.input = DisassociateCustomerGatewayRequest
        operation.output = DisassociateCustomerGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/customer-gateway-associations/{CustomerGatewayArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateLink"
        operation.name = "DisassociateLink"
        operation.input = DisassociateLinkRequest
        operation.output = DisassociateLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/link-associations", "code" => 200}}
      end)
      service.add_operation(:disassociate_transit_gateway_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#DisassociateTransitGatewayConnectPeer"
        operation.name = "DisassociateTransitGatewayConnectPeer"
        operation.input = DisassociateTransitGatewayConnectPeerRequest
        operation.output = DisassociateTransitGatewayConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations/{TransitGatewayConnectPeerArn}", "code" => 200}}
      end)
      service.add_operation(:execute_core_network_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ExecuteCoreNetworkChangeSet"
        operation.name = "ExecuteCoreNetworkChangeSet"
        operation.input = ExecuteCoreNetworkChangeSetRequest
        operation.output = ExecuteCoreNetworkChangeSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}/execute", "code" => 200}}
      end)
      service.add_operation(:get_connect_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnectAttachment"
        operation.name = "GetConnectAttachment"
        operation.input = GetConnectAttachmentRequest
        operation.output = GetConnectAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connect-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_connect_peer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnectPeer"
        operation.name = "GetConnectPeer"
        operation.input = GetConnectPeerRequest
        operation.output = GetConnectPeerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connect-peers/{ConnectPeerId}", "code" => 200}}
      end)
      service.add_operation(:get_connect_peer_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnectPeerAssociations"
        operation.name = "GetConnectPeerAssociations"
        operation.input = GetConnectPeerAssociationsRequest
        operation.output = GetConnectPeerAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/connect-peer-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetConnectPeerAssociations.new
      end)
      service.add_operation(:get_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetConnections"
        operation.name = "GetConnections"
        operation.input = GetConnectionsRequest
        operation.output = GetConnectionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/connections", "code" => 200}}
        operation[:paginator] = Paginators::GetConnections.new
      end)
      service.add_operation(:get_core_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetwork"
        operation.name = "GetCoreNetwork"
        operation.input = GetCoreNetworkRequest
        operation.output = GetCoreNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}", "code" => 200}}
      end)
      service.add_operation(:get_core_network_change_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetworkChangeEvents"
        operation.name = "GetCoreNetworkChangeEvents"
        operation.input = GetCoreNetworkChangeEventsRequest
        operation.output = GetCoreNetworkChangeEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-change-events/{PolicyVersionId}", "code" => 200}}
        operation[:paginator] = Paginators::GetCoreNetworkChangeEvents.new
      end)
      service.add_operation(:get_core_network_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetworkChangeSet"
        operation.name = "GetCoreNetworkChangeSet"
        operation.input = GetCoreNetworkChangeSetRequest
        operation.output = GetCoreNetworkChangeSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}", "code" => 200}}
        operation[:paginator] = Paginators::GetCoreNetworkChangeSet.new
      end)
      service.add_operation(:get_core_network_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCoreNetworkPolicy"
        operation.name = "GetCoreNetworkPolicy"
        operation.input = GetCoreNetworkPolicyRequest
        operation.output = GetCoreNetworkPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy", "code" => 200}}
      end)
      service.add_operation(:get_customer_gateway_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetCustomerGatewayAssociations"
        operation.name = "GetCustomerGatewayAssociations"
        operation.input = GetCustomerGatewayAssociationsRequest
        operation.output = GetCustomerGatewayAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/customer-gateway-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetCustomerGatewayAssociations.new
      end)
      service.add_operation(:get_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetDevices"
        operation.name = "GetDevices"
        operation.input = GetDevicesRequest
        operation.output = GetDevicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/devices", "code" => 200}}
        operation[:paginator] = Paginators::GetDevices.new
      end)
      service.add_operation(:get_direct_connect_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetDirectConnectGatewayAttachment"
        operation.name = "GetDirectConnectGatewayAttachment"
        operation.input = GetDirectConnectGatewayAttachmentRequest
        operation.output = GetDirectConnectGatewayAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/direct-connect-gateway-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_link_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetLinkAssociations"
        operation.name = "GetLinkAssociations"
        operation.input = GetLinkAssociationsRequest
        operation.output = GetLinkAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/link-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetLinkAssociations.new
      end)
      service.add_operation(:get_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetLinks"
        operation.name = "GetLinks"
        operation.input = GetLinksRequest
        operation.output = GetLinksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/links", "code" => 200}}
        operation[:paginator] = Paginators::GetLinks.new
      end)
      service.add_operation(:get_network_resource_counts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkResourceCounts"
        operation.name = "GetNetworkResourceCounts"
        operation.input = GetNetworkResourceCountsRequest
        operation.output = GetNetworkResourceCountsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-resource-count", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkResourceCounts.new
      end)
      service.add_operation(:get_network_resource_relationships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkResourceRelationships"
        operation.name = "GetNetworkResourceRelationships"
        operation.input = GetNetworkResourceRelationshipsRequest
        operation.output = GetNetworkResourceRelationshipsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-resource-relationships", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkResourceRelationships.new
      end)
      service.add_operation(:get_network_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkResources"
        operation.name = "GetNetworkResources"
        operation.input = GetNetworkResourcesRequest
        operation.output = GetNetworkResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-resources", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkResources.new
      end)
      service.add_operation(:get_network_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkRoutes"
        operation.name = "GetNetworkRoutes"
        operation.input = GetNetworkRoutesRequest
        operation.output = GetNetworkRoutesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/network-routes", "code" => 200}}
      end)
      service.add_operation(:get_network_telemetry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetNetworkTelemetry"
        operation.name = "GetNetworkTelemetry"
        operation.input = GetNetworkTelemetryRequest
        operation.output = GetNetworkTelemetryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/network-telemetry", "code" => 200}}
        operation[:paginator] = Paginators::GetNetworkTelemetry.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-policy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:get_route_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetRouteAnalysis"
        operation.name = "GetRouteAnalysis"
        operation.input = GetRouteAnalysisRequest
        operation.output = GetRouteAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/route-analyses/{RouteAnalysisId}", "code" => 200}}
      end)
      service.add_operation(:get_site_to_site_vpn_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetSiteToSiteVpnAttachment"
        operation.name = "GetSiteToSiteVpnAttachment"
        operation.input = GetSiteToSiteVpnAttachmentRequest
        operation.output = GetSiteToSiteVpnAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/site-to-site-vpn-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_sites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetSites"
        operation.name = "GetSites"
        operation.input = GetSitesRequest
        operation.output = GetSitesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/sites", "code" => 200}}
        operation[:paginator] = Paginators::GetSites.new
      end)
      service.add_operation(:get_transit_gateway_connect_peer_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayConnectPeerAssociations"
        operation.name = "GetTransitGatewayConnectPeerAssociations"
        operation.input = GetTransitGatewayConnectPeerAssociationsRequest
        operation.output = GetTransitGatewayConnectPeerAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations", "code" => 200}}
        operation[:paginator] = Paginators::GetTransitGatewayConnectPeerAssociations.new
      end)
      service.add_operation(:get_transit_gateway_peering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayPeering"
        operation.name = "GetTransitGatewayPeering"
        operation.input = GetTransitGatewayPeeringRequest
        operation.output = GetTransitGatewayPeeringResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/transit-gateway-peerings/{PeeringId}", "code" => 200}}
      end)
      service.add_operation(:get_transit_gateway_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayRegistrations"
        operation.name = "GetTransitGatewayRegistrations"
        operation.input = GetTransitGatewayRegistrationsRequest
        operation.output = GetTransitGatewayRegistrationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-registrations", "code" => 200}}
        operation[:paginator] = Paginators::GetTransitGatewayRegistrations.new
      end)
      service.add_operation(:get_transit_gateway_route_table_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetTransitGatewayRouteTableAttachment"
        operation.name = "GetTransitGatewayRouteTableAttachment"
        operation.input = GetTransitGatewayRouteTableAttachmentRequest
        operation.output = GetTransitGatewayRouteTableAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/transit-gateway-route-table-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:get_vpc_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#GetVpcAttachment"
        operation.name = "GetVpcAttachment"
        operation.input = GetVpcAttachmentRequest
        operation.output = GetVpcAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vpc-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:list_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListAttachments"
        operation.name = "ListAttachments"
        operation.input = ListAttachmentsRequest
        operation.output = ListAttachmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/attachments", "code" => 200}}
        operation[:paginator] = Paginators::ListAttachments.new
      end)
      service.add_operation(:list_connect_peers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListConnectPeers"
        operation.name = "ListConnectPeers"
        operation.input = ListConnectPeersRequest
        operation.output = ListConnectPeersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connect-peers", "code" => 200}}
        operation[:paginator] = Paginators::ListConnectPeers.new
      end)
      service.add_operation(:list_core_network_policy_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListCoreNetworkPolicyVersions"
        operation.name = "ListCoreNetworkPolicyVersions"
        operation.input = ListCoreNetworkPolicyVersionsRequest
        operation.output = ListCoreNetworkPolicyVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy-versions", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreNetworkPolicyVersions.new
      end)
      service.add_operation(:list_core_networks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListCoreNetworks"
        operation.name = "ListCoreNetworks"
        operation.input = ListCoreNetworksRequest
        operation.output = ListCoreNetworksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/core-networks", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreNetworks.new
      end)
      service.add_operation(:list_organization_service_access_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListOrganizationServiceAccessStatus"
        operation.name = "ListOrganizationServiceAccessStatus"
        operation.input = ListOrganizationServiceAccessStatusRequest
        operation.output = ListOrganizationServiceAccessStatusResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/organizations/service-access", "code" => 200}}
      end)
      service.add_operation(:list_peerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListPeerings"
        operation.name = "ListPeerings"
        operation.input = ListPeeringsRequest
        operation.output = ListPeeringsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/peerings", "code" => 200}}
        operation[:paginator] = Paginators::ListPeerings.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_core_network_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#PutCoreNetworkPolicy"
        operation.name = "PutCoreNetworkPolicy"
        operation.input = PutCoreNetworkPolicyRequest
        operation.output = PutCoreNetworkPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << CoreNetworkPolicyException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resource-policy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_transit_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#RegisterTransitGateway"
        operation.name = "RegisterTransitGateway"
        operation.input = RegisterTransitGatewayRequest
        operation.output = RegisterTransitGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/transit-gateway-registrations", "code" => 200}}
      end)
      service.add_operation(:reject_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#RejectAttachment"
        operation.name = "RejectAttachment"
        operation.input = RejectAttachmentRequest
        operation.output = RejectAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/attachments/{AttachmentId}/reject", "code" => 200}}
      end)
      service.add_operation(:restore_core_network_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#RestoreCoreNetworkPolicyVersion"
        operation.name = "RestoreCoreNetworkPolicyVersion"
        operation.input = RestoreCoreNetworkPolicyVersionRequest
        operation.output = RestoreCoreNetworkPolicyVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}/restore", "code" => 200}}
      end)
      service.add_operation(:start_organization_service_access_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#StartOrganizationServiceAccessUpdate"
        operation.name = "StartOrganizationServiceAccessUpdate"
        operation.input = StartOrganizationServiceAccessUpdateRequest
        operation.output = StartOrganizationServiceAccessUpdateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/organizations/service-access", "code" => 200}}
      end)
      service.add_operation(:start_route_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#StartRouteAnalysis"
        operation.name = "StartRouteAnalysis"
        operation.input = StartRouteAnalysisRequest
        operation.output = StartRouteAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/global-networks/{GlobalNetworkId}/route-analyses", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateConnection"
        operation.name = "UpdateConnection"
        operation.input = UpdateConnectionRequest
        operation.output = UpdateConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:update_core_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateCoreNetwork"
        operation.name = "UpdateCoreNetwork"
        operation.input = UpdateCoreNetworkRequest
        operation.output = UpdateCoreNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/core-networks/{CoreNetworkId}", "code" => 200}}
      end)
      service.add_operation(:update_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateDevice"
        operation.name = "UpdateDevice"
        operation.input = UpdateDeviceRequest
        operation.output = UpdateDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:update_direct_connect_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateDirectConnectGatewayAttachment"
        operation.name = "UpdateDirectConnectGatewayAttachment"
        operation.input = UpdateDirectConnectGatewayAttachmentRequest
        operation.output = UpdateDirectConnectGatewayAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/direct-connect-gateway-attachments/{AttachmentId}", "code" => 200}}
      end)
      service.add_operation(:update_global_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateGlobalNetwork"
        operation.name = "UpdateGlobalNetwork"
        operation.input = UpdateGlobalNetworkRequest
        operation.output = UpdateGlobalNetworkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}", "code" => 200}}
      end)
      service.add_operation(:update_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateLink"
        operation.name = "UpdateLink"
        operation.input = UpdateLinkRequest
        operation.output = UpdateLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/links/{LinkId}", "code" => 200}}
      end)
      service.add_operation(:update_network_resource_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateNetworkResourceMetadata"
        operation.name = "UpdateNetworkResourceMetadata"
        operation.input = UpdateNetworkResourceMetadataRequest
        operation.output = UpdateNetworkResourceMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/network-resources/{ResourceArn}/metadata", "code" => 200}}
      end)
      service.add_operation(:update_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateSite"
        operation.name = "UpdateSite"
        operation.input = UpdateSiteRequest
        operation.output = UpdateSiteResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-networks/{GlobalNetworkId}/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:update_vpc_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmanager#UpdateVpcAttachment"
        operation.name = "UpdateVpcAttachment"
        operation.input = UpdateVpcAttachmentRequest
        operation.output = UpdateVpcAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/vpc-attachments/{AttachmentId}", "code" => 200}}
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
