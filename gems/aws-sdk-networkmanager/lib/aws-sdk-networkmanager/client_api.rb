# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AWSLocation = Shapes::StructureShape.new(name: 'AWSLocation')
    AcceptAttachmentRequest = Shapes::StructureShape.new(name: 'AcceptAttachmentRequest')
    AcceptAttachmentResponse = Shapes::StructureShape.new(name: 'AcceptAttachmentResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountStatus = Shapes::StructureShape.new(name: 'AccountStatus')
    AccountStatusList = Shapes::ListShape.new(name: 'AccountStatusList')
    Action = Shapes::StringShape.new(name: 'Action')
    AssociateConnectPeerRequest = Shapes::StructureShape.new(name: 'AssociateConnectPeerRequest')
    AssociateConnectPeerResponse = Shapes::StructureShape.new(name: 'AssociateConnectPeerResponse')
    AssociateCustomerGatewayRequest = Shapes::StructureShape.new(name: 'AssociateCustomerGatewayRequest')
    AssociateCustomerGatewayResponse = Shapes::StructureShape.new(name: 'AssociateCustomerGatewayResponse')
    AssociateLinkRequest = Shapes::StructureShape.new(name: 'AssociateLinkRequest')
    AssociateLinkResponse = Shapes::StructureShape.new(name: 'AssociateLinkResponse')
    AssociateTransitGatewayConnectPeerRequest = Shapes::StructureShape.new(name: 'AssociateTransitGatewayConnectPeerRequest')
    AssociateTransitGatewayConnectPeerResponse = Shapes::StructureShape.new(name: 'AssociateTransitGatewayConnectPeerResponse')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentId = Shapes::StringShape.new(name: 'AttachmentId')
    AttachmentList = Shapes::ListShape.new(name: 'AttachmentList')
    AttachmentState = Shapes::StringShape.new(name: 'AttachmentState')
    AttachmentType = Shapes::StringShape.new(name: 'AttachmentType')
    Bandwidth = Shapes::StructureShape.new(name: 'Bandwidth')
    BgpOptions = Shapes::StructureShape.new(name: 'BgpOptions')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    ChangeSetState = Shapes::StringShape.new(name: 'ChangeSetState')
    ChangeStatus = Shapes::StringShape.new(name: 'ChangeStatus')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectAttachment = Shapes::StructureShape.new(name: 'ConnectAttachment')
    ConnectAttachmentOptions = Shapes::StructureShape.new(name: 'ConnectAttachmentOptions')
    ConnectPeer = Shapes::StructureShape.new(name: 'ConnectPeer')
    ConnectPeerAssociation = Shapes::StructureShape.new(name: 'ConnectPeerAssociation')
    ConnectPeerAssociationList = Shapes::ListShape.new(name: 'ConnectPeerAssociationList')
    ConnectPeerAssociationState = Shapes::StringShape.new(name: 'ConnectPeerAssociationState')
    ConnectPeerBgpConfiguration = Shapes::StructureShape.new(name: 'ConnectPeerBgpConfiguration')
    ConnectPeerBgpConfigurationList = Shapes::ListShape.new(name: 'ConnectPeerBgpConfigurationList')
    ConnectPeerConfiguration = Shapes::StructureShape.new(name: 'ConnectPeerConfiguration')
    ConnectPeerId = Shapes::StringShape.new(name: 'ConnectPeerId')
    ConnectPeerIdList = Shapes::ListShape.new(name: 'ConnectPeerIdList')
    ConnectPeerState = Shapes::StringShape.new(name: 'ConnectPeerState')
    ConnectPeerSummary = Shapes::StructureShape.new(name: 'ConnectPeerSummary')
    ConnectPeerSummaryList = Shapes::ListShape.new(name: 'ConnectPeerSummaryList')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ConnectionHealth = Shapes::StructureShape.new(name: 'ConnectionHealth')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionIdList = Shapes::ListShape.new(name: 'ConnectionIdList')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConstrainedString = Shapes::StringShape.new(name: 'ConstrainedString')
    ConstrainedStringList = Shapes::ListShape.new(name: 'ConstrainedStringList')
    CoreNetwork = Shapes::StructureShape.new(name: 'CoreNetwork')
    CoreNetworkArn = Shapes::StringShape.new(name: 'CoreNetworkArn')
    CoreNetworkChange = Shapes::StructureShape.new(name: 'CoreNetworkChange')
    CoreNetworkChangeEvent = Shapes::StructureShape.new(name: 'CoreNetworkChangeEvent')
    CoreNetworkChangeEventList = Shapes::ListShape.new(name: 'CoreNetworkChangeEventList')
    CoreNetworkChangeEventValues = Shapes::StructureShape.new(name: 'CoreNetworkChangeEventValues')
    CoreNetworkChangeList = Shapes::ListShape.new(name: 'CoreNetworkChangeList')
    CoreNetworkChangeValues = Shapes::StructureShape.new(name: 'CoreNetworkChangeValues')
    CoreNetworkEdge = Shapes::StructureShape.new(name: 'CoreNetworkEdge')
    CoreNetworkEdgeList = Shapes::ListShape.new(name: 'CoreNetworkEdgeList')
    CoreNetworkId = Shapes::StringShape.new(name: 'CoreNetworkId')
    CoreNetworkPolicy = Shapes::StructureShape.new(name: 'CoreNetworkPolicy')
    CoreNetworkPolicyAlias = Shapes::StringShape.new(name: 'CoreNetworkPolicyAlias')
    CoreNetworkPolicyDocument = Shapes::StringShape.new(name: 'CoreNetworkPolicyDocument')
    CoreNetworkPolicyError = Shapes::StructureShape.new(name: 'CoreNetworkPolicyError')
    CoreNetworkPolicyErrorList = Shapes::ListShape.new(name: 'CoreNetworkPolicyErrorList')
    CoreNetworkPolicyException = Shapes::StructureShape.new(name: 'CoreNetworkPolicyException')
    CoreNetworkPolicyVersion = Shapes::StructureShape.new(name: 'CoreNetworkPolicyVersion')
    CoreNetworkPolicyVersionList = Shapes::ListShape.new(name: 'CoreNetworkPolicyVersionList')
    CoreNetworkSegment = Shapes::StructureShape.new(name: 'CoreNetworkSegment')
    CoreNetworkSegmentEdgeIdentifier = Shapes::StructureShape.new(name: 'CoreNetworkSegmentEdgeIdentifier')
    CoreNetworkSegmentList = Shapes::ListShape.new(name: 'CoreNetworkSegmentList')
    CoreNetworkState = Shapes::StringShape.new(name: 'CoreNetworkState')
    CoreNetworkSummary = Shapes::StructureShape.new(name: 'CoreNetworkSummary')
    CoreNetworkSummaryList = Shapes::ListShape.new(name: 'CoreNetworkSummaryList')
    CreateConnectAttachmentRequest = Shapes::StructureShape.new(name: 'CreateConnectAttachmentRequest')
    CreateConnectAttachmentResponse = Shapes::StructureShape.new(name: 'CreateConnectAttachmentResponse')
    CreateConnectPeerRequest = Shapes::StructureShape.new(name: 'CreateConnectPeerRequest')
    CreateConnectPeerResponse = Shapes::StructureShape.new(name: 'CreateConnectPeerResponse')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    CreateCoreNetworkRequest = Shapes::StructureShape.new(name: 'CreateCoreNetworkRequest')
    CreateCoreNetworkResponse = Shapes::StructureShape.new(name: 'CreateCoreNetworkResponse')
    CreateDeviceRequest = Shapes::StructureShape.new(name: 'CreateDeviceRequest')
    CreateDeviceResponse = Shapes::StructureShape.new(name: 'CreateDeviceResponse')
    CreateGlobalNetworkRequest = Shapes::StructureShape.new(name: 'CreateGlobalNetworkRequest')
    CreateGlobalNetworkResponse = Shapes::StructureShape.new(name: 'CreateGlobalNetworkResponse')
    CreateLinkRequest = Shapes::StructureShape.new(name: 'CreateLinkRequest')
    CreateLinkResponse = Shapes::StructureShape.new(name: 'CreateLinkResponse')
    CreateSiteRequest = Shapes::StructureShape.new(name: 'CreateSiteRequest')
    CreateSiteResponse = Shapes::StructureShape.new(name: 'CreateSiteResponse')
    CreateSiteToSiteVpnAttachmentRequest = Shapes::StructureShape.new(name: 'CreateSiteToSiteVpnAttachmentRequest')
    CreateSiteToSiteVpnAttachmentResponse = Shapes::StructureShape.new(name: 'CreateSiteToSiteVpnAttachmentResponse')
    CreateTransitGatewayPeeringRequest = Shapes::StructureShape.new(name: 'CreateTransitGatewayPeeringRequest')
    CreateTransitGatewayPeeringResponse = Shapes::StructureShape.new(name: 'CreateTransitGatewayPeeringResponse')
    CreateTransitGatewayRouteTableAttachmentRequest = Shapes::StructureShape.new(name: 'CreateTransitGatewayRouteTableAttachmentRequest')
    CreateTransitGatewayRouteTableAttachmentResponse = Shapes::StructureShape.new(name: 'CreateTransitGatewayRouteTableAttachmentResponse')
    CreateVpcAttachmentRequest = Shapes::StructureShape.new(name: 'CreateVpcAttachmentRequest')
    CreateVpcAttachmentResponse = Shapes::StructureShape.new(name: 'CreateVpcAttachmentResponse')
    CustomerGatewayArn = Shapes::StringShape.new(name: 'CustomerGatewayArn')
    CustomerGatewayArnList = Shapes::ListShape.new(name: 'CustomerGatewayArnList')
    CustomerGatewayAssociation = Shapes::StructureShape.new(name: 'CustomerGatewayAssociation')
    CustomerGatewayAssociationList = Shapes::ListShape.new(name: 'CustomerGatewayAssociationList')
    CustomerGatewayAssociationState = Shapes::StringShape.new(name: 'CustomerGatewayAssociationState')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteAttachmentRequest = Shapes::StructureShape.new(name: 'DeleteAttachmentRequest')
    DeleteAttachmentResponse = Shapes::StructureShape.new(name: 'DeleteAttachmentResponse')
    DeleteConnectPeerRequest = Shapes::StructureShape.new(name: 'DeleteConnectPeerRequest')
    DeleteConnectPeerResponse = Shapes::StructureShape.new(name: 'DeleteConnectPeerResponse')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteCoreNetworkPolicyVersionRequest = Shapes::StructureShape.new(name: 'DeleteCoreNetworkPolicyVersionRequest')
    DeleteCoreNetworkPolicyVersionResponse = Shapes::StructureShape.new(name: 'DeleteCoreNetworkPolicyVersionResponse')
    DeleteCoreNetworkRequest = Shapes::StructureShape.new(name: 'DeleteCoreNetworkRequest')
    DeleteCoreNetworkResponse = Shapes::StructureShape.new(name: 'DeleteCoreNetworkResponse')
    DeleteDeviceRequest = Shapes::StructureShape.new(name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Shapes::StructureShape.new(name: 'DeleteDeviceResponse')
    DeleteGlobalNetworkRequest = Shapes::StructureShape.new(name: 'DeleteGlobalNetworkRequest')
    DeleteGlobalNetworkResponse = Shapes::StructureShape.new(name: 'DeleteGlobalNetworkResponse')
    DeleteLinkRequest = Shapes::StructureShape.new(name: 'DeleteLinkRequest')
    DeleteLinkResponse = Shapes::StructureShape.new(name: 'DeleteLinkResponse')
    DeletePeeringRequest = Shapes::StructureShape.new(name: 'DeletePeeringRequest')
    DeletePeeringResponse = Shapes::StructureShape.new(name: 'DeletePeeringResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteSiteRequest = Shapes::StructureShape.new(name: 'DeleteSiteRequest')
    DeleteSiteResponse = Shapes::StructureShape.new(name: 'DeleteSiteResponse')
    DeregisterTransitGatewayRequest = Shapes::StructureShape.new(name: 'DeregisterTransitGatewayRequest')
    DeregisterTransitGatewayResponse = Shapes::StructureShape.new(name: 'DeregisterTransitGatewayResponse')
    DescribeGlobalNetworksRequest = Shapes::StructureShape.new(name: 'DescribeGlobalNetworksRequest')
    DescribeGlobalNetworksResponse = Shapes::StructureShape.new(name: 'DescribeGlobalNetworksResponse')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceArn = Shapes::StringShape.new(name: 'DeviceArn')
    DeviceId = Shapes::StringShape.new(name: 'DeviceId')
    DeviceIdList = Shapes::ListShape.new(name: 'DeviceIdList')
    DeviceList = Shapes::ListShape.new(name: 'DeviceList')
    DeviceState = Shapes::StringShape.new(name: 'DeviceState')
    DisassociateConnectPeerRequest = Shapes::StructureShape.new(name: 'DisassociateConnectPeerRequest')
    DisassociateConnectPeerResponse = Shapes::StructureShape.new(name: 'DisassociateConnectPeerResponse')
    DisassociateCustomerGatewayRequest = Shapes::StructureShape.new(name: 'DisassociateCustomerGatewayRequest')
    DisassociateCustomerGatewayResponse = Shapes::StructureShape.new(name: 'DisassociateCustomerGatewayResponse')
    DisassociateLinkRequest = Shapes::StructureShape.new(name: 'DisassociateLinkRequest')
    DisassociateLinkResponse = Shapes::StructureShape.new(name: 'DisassociateLinkResponse')
    DisassociateTransitGatewayConnectPeerRequest = Shapes::StructureShape.new(name: 'DisassociateTransitGatewayConnectPeerRequest')
    DisassociateTransitGatewayConnectPeerResponse = Shapes::StructureShape.new(name: 'DisassociateTransitGatewayConnectPeerResponse')
    ExceptionContextKey = Shapes::StringShape.new(name: 'ExceptionContextKey')
    ExceptionContextMap = Shapes::MapShape.new(name: 'ExceptionContextMap')
    ExceptionContextValue = Shapes::StringShape.new(name: 'ExceptionContextValue')
    ExecuteCoreNetworkChangeSetRequest = Shapes::StructureShape.new(name: 'ExecuteCoreNetworkChangeSetRequest')
    ExecuteCoreNetworkChangeSetResponse = Shapes::StructureShape.new(name: 'ExecuteCoreNetworkChangeSetResponse')
    ExternalRegionCode = Shapes::StringShape.new(name: 'ExternalRegionCode')
    ExternalRegionCodeList = Shapes::ListShape.new(name: 'ExternalRegionCodeList')
    FilterMap = Shapes::MapShape.new(name: 'FilterMap')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    GetConnectAttachmentRequest = Shapes::StructureShape.new(name: 'GetConnectAttachmentRequest')
    GetConnectAttachmentResponse = Shapes::StructureShape.new(name: 'GetConnectAttachmentResponse')
    GetConnectPeerAssociationsRequest = Shapes::StructureShape.new(name: 'GetConnectPeerAssociationsRequest')
    GetConnectPeerAssociationsResponse = Shapes::StructureShape.new(name: 'GetConnectPeerAssociationsResponse')
    GetConnectPeerRequest = Shapes::StructureShape.new(name: 'GetConnectPeerRequest')
    GetConnectPeerResponse = Shapes::StructureShape.new(name: 'GetConnectPeerResponse')
    GetConnectionsRequest = Shapes::StructureShape.new(name: 'GetConnectionsRequest')
    GetConnectionsResponse = Shapes::StructureShape.new(name: 'GetConnectionsResponse')
    GetCoreNetworkChangeEventsRequest = Shapes::StructureShape.new(name: 'GetCoreNetworkChangeEventsRequest')
    GetCoreNetworkChangeEventsResponse = Shapes::StructureShape.new(name: 'GetCoreNetworkChangeEventsResponse')
    GetCoreNetworkChangeSetRequest = Shapes::StructureShape.new(name: 'GetCoreNetworkChangeSetRequest')
    GetCoreNetworkChangeSetResponse = Shapes::StructureShape.new(name: 'GetCoreNetworkChangeSetResponse')
    GetCoreNetworkPolicyRequest = Shapes::StructureShape.new(name: 'GetCoreNetworkPolicyRequest')
    GetCoreNetworkPolicyResponse = Shapes::StructureShape.new(name: 'GetCoreNetworkPolicyResponse')
    GetCoreNetworkRequest = Shapes::StructureShape.new(name: 'GetCoreNetworkRequest')
    GetCoreNetworkResponse = Shapes::StructureShape.new(name: 'GetCoreNetworkResponse')
    GetCustomerGatewayAssociationsRequest = Shapes::StructureShape.new(name: 'GetCustomerGatewayAssociationsRequest')
    GetCustomerGatewayAssociationsResponse = Shapes::StructureShape.new(name: 'GetCustomerGatewayAssociationsResponse')
    GetDevicesRequest = Shapes::StructureShape.new(name: 'GetDevicesRequest')
    GetDevicesResponse = Shapes::StructureShape.new(name: 'GetDevicesResponse')
    GetLinkAssociationsRequest = Shapes::StructureShape.new(name: 'GetLinkAssociationsRequest')
    GetLinkAssociationsResponse = Shapes::StructureShape.new(name: 'GetLinkAssociationsResponse')
    GetLinksRequest = Shapes::StructureShape.new(name: 'GetLinksRequest')
    GetLinksResponse = Shapes::StructureShape.new(name: 'GetLinksResponse')
    GetNetworkResourceCountsRequest = Shapes::StructureShape.new(name: 'GetNetworkResourceCountsRequest')
    GetNetworkResourceCountsResponse = Shapes::StructureShape.new(name: 'GetNetworkResourceCountsResponse')
    GetNetworkResourceRelationshipsRequest = Shapes::StructureShape.new(name: 'GetNetworkResourceRelationshipsRequest')
    GetNetworkResourceRelationshipsResponse = Shapes::StructureShape.new(name: 'GetNetworkResourceRelationshipsResponse')
    GetNetworkResourcesRequest = Shapes::StructureShape.new(name: 'GetNetworkResourcesRequest')
    GetNetworkResourcesResponse = Shapes::StructureShape.new(name: 'GetNetworkResourcesResponse')
    GetNetworkRoutesRequest = Shapes::StructureShape.new(name: 'GetNetworkRoutesRequest')
    GetNetworkRoutesResponse = Shapes::StructureShape.new(name: 'GetNetworkRoutesResponse')
    GetNetworkTelemetryRequest = Shapes::StructureShape.new(name: 'GetNetworkTelemetryRequest')
    GetNetworkTelemetryResponse = Shapes::StructureShape.new(name: 'GetNetworkTelemetryResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetRouteAnalysisRequest = Shapes::StructureShape.new(name: 'GetRouteAnalysisRequest')
    GetRouteAnalysisResponse = Shapes::StructureShape.new(name: 'GetRouteAnalysisResponse')
    GetSiteToSiteVpnAttachmentRequest = Shapes::StructureShape.new(name: 'GetSiteToSiteVpnAttachmentRequest')
    GetSiteToSiteVpnAttachmentResponse = Shapes::StructureShape.new(name: 'GetSiteToSiteVpnAttachmentResponse')
    GetSitesRequest = Shapes::StructureShape.new(name: 'GetSitesRequest')
    GetSitesResponse = Shapes::StructureShape.new(name: 'GetSitesResponse')
    GetTransitGatewayConnectPeerAssociationsRequest = Shapes::StructureShape.new(name: 'GetTransitGatewayConnectPeerAssociationsRequest')
    GetTransitGatewayConnectPeerAssociationsResponse = Shapes::StructureShape.new(name: 'GetTransitGatewayConnectPeerAssociationsResponse')
    GetTransitGatewayPeeringRequest = Shapes::StructureShape.new(name: 'GetTransitGatewayPeeringRequest')
    GetTransitGatewayPeeringResponse = Shapes::StructureShape.new(name: 'GetTransitGatewayPeeringResponse')
    GetTransitGatewayRegistrationsRequest = Shapes::StructureShape.new(name: 'GetTransitGatewayRegistrationsRequest')
    GetTransitGatewayRegistrationsResponse = Shapes::StructureShape.new(name: 'GetTransitGatewayRegistrationsResponse')
    GetTransitGatewayRouteTableAttachmentRequest = Shapes::StructureShape.new(name: 'GetTransitGatewayRouteTableAttachmentRequest')
    GetTransitGatewayRouteTableAttachmentResponse = Shapes::StructureShape.new(name: 'GetTransitGatewayRouteTableAttachmentResponse')
    GetVpcAttachmentRequest = Shapes::StructureShape.new(name: 'GetVpcAttachmentRequest')
    GetVpcAttachmentResponse = Shapes::StructureShape.new(name: 'GetVpcAttachmentResponse')
    GlobalNetwork = Shapes::StructureShape.new(name: 'GlobalNetwork')
    GlobalNetworkArn = Shapes::StringShape.new(name: 'GlobalNetworkArn')
    GlobalNetworkId = Shapes::StringShape.new(name: 'GlobalNetworkId')
    GlobalNetworkIdList = Shapes::ListShape.new(name: 'GlobalNetworkIdList')
    GlobalNetworkList = Shapes::ListShape.new(name: 'GlobalNetworkList')
    GlobalNetworkState = Shapes::StringShape.new(name: 'GlobalNetworkState')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Link = Shapes::StructureShape.new(name: 'Link')
    LinkArn = Shapes::StringShape.new(name: 'LinkArn')
    LinkAssociation = Shapes::StructureShape.new(name: 'LinkAssociation')
    LinkAssociationList = Shapes::ListShape.new(name: 'LinkAssociationList')
    LinkAssociationState = Shapes::StringShape.new(name: 'LinkAssociationState')
    LinkId = Shapes::StringShape.new(name: 'LinkId')
    LinkIdList = Shapes::ListShape.new(name: 'LinkIdList')
    LinkList = Shapes::ListShape.new(name: 'LinkList')
    LinkState = Shapes::StringShape.new(name: 'LinkState')
    ListAttachmentsRequest = Shapes::StructureShape.new(name: 'ListAttachmentsRequest')
    ListAttachmentsResponse = Shapes::StructureShape.new(name: 'ListAttachmentsResponse')
    ListConnectPeersRequest = Shapes::StructureShape.new(name: 'ListConnectPeersRequest')
    ListConnectPeersResponse = Shapes::StructureShape.new(name: 'ListConnectPeersResponse')
    ListCoreNetworkPolicyVersionsRequest = Shapes::StructureShape.new(name: 'ListCoreNetworkPolicyVersionsRequest')
    ListCoreNetworkPolicyVersionsResponse = Shapes::StructureShape.new(name: 'ListCoreNetworkPolicyVersionsResponse')
    ListCoreNetworksRequest = Shapes::StructureShape.new(name: 'ListCoreNetworksRequest')
    ListCoreNetworksResponse = Shapes::StructureShape.new(name: 'ListCoreNetworksResponse')
    ListOrganizationServiceAccessStatusRequest = Shapes::StructureShape.new(name: 'ListOrganizationServiceAccessStatusRequest')
    ListOrganizationServiceAccessStatusResponse = Shapes::StructureShape.new(name: 'ListOrganizationServiceAccessStatusResponse')
    ListPeeringsRequest = Shapes::StructureShape.new(name: 'ListPeeringsRequest')
    ListPeeringsResponse = Shapes::StructureShape.new(name: 'ListPeeringsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Location = Shapes::StructureShape.new(name: 'Location')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkResource = Shapes::StructureShape.new(name: 'NetworkResource')
    NetworkResourceCount = Shapes::StructureShape.new(name: 'NetworkResourceCount')
    NetworkResourceCountList = Shapes::ListShape.new(name: 'NetworkResourceCountList')
    NetworkResourceList = Shapes::ListShape.new(name: 'NetworkResourceList')
    NetworkResourceMetadataMap = Shapes::MapShape.new(name: 'NetworkResourceMetadataMap')
    NetworkResourceSummary = Shapes::StructureShape.new(name: 'NetworkResourceSummary')
    NetworkRoute = Shapes::StructureShape.new(name: 'NetworkRoute')
    NetworkRouteDestination = Shapes::StructureShape.new(name: 'NetworkRouteDestination')
    NetworkRouteDestinationList = Shapes::ListShape.new(name: 'NetworkRouteDestinationList')
    NetworkRouteList = Shapes::ListShape.new(name: 'NetworkRouteList')
    NetworkTelemetry = Shapes::StructureShape.new(name: 'NetworkTelemetry')
    NetworkTelemetryList = Shapes::ListShape.new(name: 'NetworkTelemetryList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrganizationAwsServiceAccessStatus = Shapes::StringShape.new(name: 'OrganizationAwsServiceAccessStatus')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    OrganizationStatus = Shapes::StructureShape.new(name: 'OrganizationStatus')
    PathComponent = Shapes::StructureShape.new(name: 'PathComponent')
    PathComponentList = Shapes::ListShape.new(name: 'PathComponentList')
    Peering = Shapes::StructureShape.new(name: 'Peering')
    PeeringId = Shapes::StringShape.new(name: 'PeeringId')
    PeeringList = Shapes::ListShape.new(name: 'PeeringList')
    PeeringState = Shapes::StringShape.new(name: 'PeeringState')
    PeeringType = Shapes::StringShape.new(name: 'PeeringType')
    ProposedSegmentChange = Shapes::StructureShape.new(name: 'ProposedSegmentChange')
    PutCoreNetworkPolicyRequest = Shapes::StructureShape.new(name: 'PutCoreNetworkPolicyRequest')
    PutCoreNetworkPolicyResponse = Shapes::StructureShape.new(name: 'PutCoreNetworkPolicyResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    ReasonContextKey = Shapes::StringShape.new(name: 'ReasonContextKey')
    ReasonContextMap = Shapes::MapShape.new(name: 'ReasonContextMap')
    ReasonContextValue = Shapes::StringShape.new(name: 'ReasonContextValue')
    RegisterTransitGatewayRequest = Shapes::StructureShape.new(name: 'RegisterTransitGatewayRequest')
    RegisterTransitGatewayResponse = Shapes::StructureShape.new(name: 'RegisterTransitGatewayResponse')
    RejectAttachmentRequest = Shapes::StructureShape.new(name: 'RejectAttachmentRequest')
    RejectAttachmentResponse = Shapes::StructureShape.new(name: 'RejectAttachmentResponse')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipList = Shapes::ListShape.new(name: 'RelationshipList')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicyDocument = Shapes::StringShape.new(name: 'ResourcePolicyDocument')
    RestoreCoreNetworkPolicyVersionRequest = Shapes::StructureShape.new(name: 'RestoreCoreNetworkPolicyVersionRequest')
    RestoreCoreNetworkPolicyVersionResponse = Shapes::StructureShape.new(name: 'RestoreCoreNetworkPolicyVersionResponse')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RouteAnalysis = Shapes::StructureShape.new(name: 'RouteAnalysis')
    RouteAnalysisCompletion = Shapes::StructureShape.new(name: 'RouteAnalysisCompletion')
    RouteAnalysisCompletionReasonCode = Shapes::StringShape.new(name: 'RouteAnalysisCompletionReasonCode')
    RouteAnalysisCompletionResultCode = Shapes::StringShape.new(name: 'RouteAnalysisCompletionResultCode')
    RouteAnalysisEndpointOptions = Shapes::StructureShape.new(name: 'RouteAnalysisEndpointOptions')
    RouteAnalysisEndpointOptionsSpecification = Shapes::StructureShape.new(name: 'RouteAnalysisEndpointOptionsSpecification')
    RouteAnalysisPath = Shapes::StructureShape.new(name: 'RouteAnalysisPath')
    RouteAnalysisStatus = Shapes::StringShape.new(name: 'RouteAnalysisStatus')
    RouteState = Shapes::StringShape.new(name: 'RouteState')
    RouteStateList = Shapes::ListShape.new(name: 'RouteStateList')
    RouteTableIdentifier = Shapes::StructureShape.new(name: 'RouteTableIdentifier')
    RouteTableType = Shapes::StringShape.new(name: 'RouteTableType')
    RouteType = Shapes::StringShape.new(name: 'RouteType')
    RouteTypeList = Shapes::ListShape.new(name: 'RouteTypeList')
    SLRDeploymentStatus = Shapes::StringShape.new(name: 'SLRDeploymentStatus')
    ServerSideString = Shapes::StringShape.new(name: 'ServerSideString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteArn = Shapes::StringShape.new(name: 'SiteArn')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    SiteIdList = Shapes::ListShape.new(name: 'SiteIdList')
    SiteList = Shapes::ListShape.new(name: 'SiteList')
    SiteState = Shapes::StringShape.new(name: 'SiteState')
    SiteToSiteVpnAttachment = Shapes::StructureShape.new(name: 'SiteToSiteVpnAttachment')
    StartOrganizationServiceAccessUpdateRequest = Shapes::StructureShape.new(name: 'StartOrganizationServiceAccessUpdateRequest')
    StartOrganizationServiceAccessUpdateResponse = Shapes::StructureShape.new(name: 'StartOrganizationServiceAccessUpdateResponse')
    StartRouteAnalysisRequest = Shapes::StructureShape.new(name: 'StartRouteAnalysisRequest')
    StartRouteAnalysisResponse = Shapes::StructureShape.new(name: 'StartRouteAnalysisResponse')
    SubnetArn = Shapes::StringShape.new(name: 'SubnetArn')
    SubnetArnList = Shapes::ListShape.new(name: 'SubnetArnList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TransitGatewayArn = Shapes::StringShape.new(name: 'TransitGatewayArn')
    TransitGatewayArnList = Shapes::ListShape.new(name: 'TransitGatewayArnList')
    TransitGatewayAttachmentArn = Shapes::StringShape.new(name: 'TransitGatewayAttachmentArn')
    TransitGatewayAttachmentId = Shapes::StringShape.new(name: 'TransitGatewayAttachmentId')
    TransitGatewayConnectPeerArn = Shapes::StringShape.new(name: 'TransitGatewayConnectPeerArn')
    TransitGatewayConnectPeerArnList = Shapes::ListShape.new(name: 'TransitGatewayConnectPeerArnList')
    TransitGatewayConnectPeerAssociation = Shapes::StructureShape.new(name: 'TransitGatewayConnectPeerAssociation')
    TransitGatewayConnectPeerAssociationList = Shapes::ListShape.new(name: 'TransitGatewayConnectPeerAssociationList')
    TransitGatewayConnectPeerAssociationState = Shapes::StringShape.new(name: 'TransitGatewayConnectPeerAssociationState')
    TransitGatewayPeering = Shapes::StructureShape.new(name: 'TransitGatewayPeering')
    TransitGatewayPeeringAttachmentId = Shapes::StringShape.new(name: 'TransitGatewayPeeringAttachmentId')
    TransitGatewayRegistration = Shapes::StructureShape.new(name: 'TransitGatewayRegistration')
    TransitGatewayRegistrationList = Shapes::ListShape.new(name: 'TransitGatewayRegistrationList')
    TransitGatewayRegistrationState = Shapes::StringShape.new(name: 'TransitGatewayRegistrationState')
    TransitGatewayRegistrationStateReason = Shapes::StructureShape.new(name: 'TransitGatewayRegistrationStateReason')
    TransitGatewayRouteTableArn = Shapes::StringShape.new(name: 'TransitGatewayRouteTableArn')
    TransitGatewayRouteTableAttachment = Shapes::StructureShape.new(name: 'TransitGatewayRouteTableAttachment')
    TunnelProtocol = Shapes::StringShape.new(name: 'TunnelProtocol')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')
    UpdateCoreNetworkRequest = Shapes::StructureShape.new(name: 'UpdateCoreNetworkRequest')
    UpdateCoreNetworkResponse = Shapes::StructureShape.new(name: 'UpdateCoreNetworkResponse')
    UpdateDeviceRequest = Shapes::StructureShape.new(name: 'UpdateDeviceRequest')
    UpdateDeviceResponse = Shapes::StructureShape.new(name: 'UpdateDeviceResponse')
    UpdateGlobalNetworkRequest = Shapes::StructureShape.new(name: 'UpdateGlobalNetworkRequest')
    UpdateGlobalNetworkResponse = Shapes::StructureShape.new(name: 'UpdateGlobalNetworkResponse')
    UpdateLinkRequest = Shapes::StructureShape.new(name: 'UpdateLinkRequest')
    UpdateLinkResponse = Shapes::StructureShape.new(name: 'UpdateLinkResponse')
    UpdateNetworkResourceMetadataRequest = Shapes::StructureShape.new(name: 'UpdateNetworkResourceMetadataRequest')
    UpdateNetworkResourceMetadataResponse = Shapes::StructureShape.new(name: 'UpdateNetworkResourceMetadataResponse')
    UpdateSiteRequest = Shapes::StructureShape.new(name: 'UpdateSiteRequest')
    UpdateSiteResponse = Shapes::StructureShape.new(name: 'UpdateSiteResponse')
    UpdateVpcAttachmentRequest = Shapes::StructureShape.new(name: 'UpdateVpcAttachmentRequest')
    UpdateVpcAttachmentResponse = Shapes::StructureShape.new(name: 'UpdateVpcAttachmentResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcArn = Shapes::StringShape.new(name: 'VpcArn')
    VpcAttachment = Shapes::StructureShape.new(name: 'VpcAttachment')
    VpcOptions = Shapes::StructureShape.new(name: 'VpcOptions')
    VpnConnectionArn = Shapes::StringShape.new(name: 'VpnConnectionArn')

    AWSLocation.add_member(:zone, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Zone"))
    AWSLocation.add_member(:subnet_arn, Shapes::ShapeRef.new(shape: SubnetArn, location_name: "SubnetArn"))
    AWSLocation.struct_class = Types::AWSLocation

    AcceptAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    AcceptAttachmentRequest.struct_class = Types::AcceptAttachmentRequest

    AcceptAttachmentResponse.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    AcceptAttachmentResponse.struct_class = Types::AcceptAttachmentResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountStatus.add_member(:slr_deployment_status, Shapes::ShapeRef.new(shape: SLRDeploymentStatus, location_name: "SLRDeploymentStatus"))
    AccountStatus.struct_class = Types::AccountStatus

    AccountStatusList.member = Shapes::ShapeRef.new(shape: AccountStatus)

    AssociateConnectPeerRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateConnectPeerRequest.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, required: true, location_name: "ConnectPeerId"))
    AssociateConnectPeerRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "DeviceId"))
    AssociateConnectPeerRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    AssociateConnectPeerRequest.struct_class = Types::AssociateConnectPeerRequest

    AssociateConnectPeerResponse.add_member(:connect_peer_association, Shapes::ShapeRef.new(shape: ConnectPeerAssociation, location_name: "ConnectPeerAssociation"))
    AssociateConnectPeerResponse.struct_class = Types::AssociateConnectPeerResponse

    AssociateCustomerGatewayRequest.add_member(:customer_gateway_arn, Shapes::ShapeRef.new(shape: CustomerGatewayArn, required: true, location_name: "CustomerGatewayArn"))
    AssociateCustomerGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateCustomerGatewayRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "DeviceId"))
    AssociateCustomerGatewayRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    AssociateCustomerGatewayRequest.struct_class = Types::AssociateCustomerGatewayRequest

    AssociateCustomerGatewayResponse.add_member(:customer_gateway_association, Shapes::ShapeRef.new(shape: CustomerGatewayAssociation, location_name: "CustomerGatewayAssociation"))
    AssociateCustomerGatewayResponse.struct_class = Types::AssociateCustomerGatewayResponse

    AssociateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateLinkRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "DeviceId"))
    AssociateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "LinkId"))
    AssociateLinkRequest.struct_class = Types::AssociateLinkRequest

    AssociateLinkResponse.add_member(:link_association, Shapes::ShapeRef.new(shape: LinkAssociation, location_name: "LinkAssociation"))
    AssociateLinkResponse.struct_class = Types::AssociateLinkResponse

    AssociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn, required: true, location_name: "TransitGatewayConnectPeerArn"))
    AssociateTransitGatewayConnectPeerRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "DeviceId"))
    AssociateTransitGatewayConnectPeerRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    AssociateTransitGatewayConnectPeerRequest.struct_class = Types::AssociateTransitGatewayConnectPeerRequest

    AssociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation, location_name: "TransitGatewayConnectPeerAssociation"))
    AssociateTransitGatewayConnectPeerResponse.struct_class = Types::AssociateTransitGatewayConnectPeerResponse

    Attachment.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    Attachment.add_member(:core_network_arn, Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: "CoreNetworkArn"))
    Attachment.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "AttachmentId"))
    Attachment.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerAccountId"))
    Attachment.add_member(:attachment_type, Shapes::ShapeRef.new(shape: AttachmentType, location_name: "AttachmentType"))
    Attachment.add_member(:state, Shapes::ShapeRef.new(shape: AttachmentState, location_name: "State"))
    Attachment.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    Attachment.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    Attachment.add_member(:attachment_policy_rule_number, Shapes::ShapeRef.new(shape: Integer, location_name: "AttachmentPolicyRuleNumber"))
    Attachment.add_member(:segment_name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SegmentName"))
    Attachment.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Attachment.add_member(:proposed_segment_change, Shapes::ShapeRef.new(shape: ProposedSegmentChange, location_name: "ProposedSegmentChange"))
    Attachment.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Attachment.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "UpdatedAt"))
    Attachment.struct_class = Types::Attachment

    AttachmentList.member = Shapes::ShapeRef.new(shape: Attachment)

    Bandwidth.add_member(:upload_speed, Shapes::ShapeRef.new(shape: Integer, location_name: "UploadSpeed"))
    Bandwidth.add_member(:download_speed, Shapes::ShapeRef.new(shape: Integer, location_name: "DownloadSpeed"))
    Bandwidth.struct_class = Types::Bandwidth

    BgpOptions.add_member(:peer_asn, Shapes::ShapeRef.new(shape: Long, location_name: "PeerAsn"))
    BgpOptions.struct_class = Types::BgpOptions

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConnectAttachment.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    ConnectAttachment.add_member(:transport_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "TransportAttachmentId"))
    ConnectAttachment.add_member(:options, Shapes::ShapeRef.new(shape: ConnectAttachmentOptions, location_name: "Options"))
    ConnectAttachment.struct_class = Types::ConnectAttachment

    ConnectAttachmentOptions.add_member(:protocol, Shapes::ShapeRef.new(shape: TunnelProtocol, location_name: "Protocol"))
    ConnectAttachmentOptions.struct_class = Types::ConnectAttachmentOptions

    ConnectPeer.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    ConnectPeer.add_member(:connect_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "ConnectAttachmentId"))
    ConnectPeer.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: "ConnectPeerId"))
    ConnectPeer.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    ConnectPeer.add_member(:state, Shapes::ShapeRef.new(shape: ConnectPeerState, location_name: "State"))
    ConnectPeer.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    ConnectPeer.add_member(:configuration, Shapes::ShapeRef.new(shape: ConnectPeerConfiguration, location_name: "Configuration"))
    ConnectPeer.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ConnectPeer.struct_class = Types::ConnectPeer

    ConnectPeerAssociation.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: "ConnectPeerId"))
    ConnectPeerAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    ConnectPeerAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    ConnectPeerAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    ConnectPeerAssociation.add_member(:state, Shapes::ShapeRef.new(shape: ConnectPeerAssociationState, location_name: "State"))
    ConnectPeerAssociation.struct_class = Types::ConnectPeerAssociation

    ConnectPeerAssociationList.member = Shapes::ShapeRef.new(shape: ConnectPeerAssociation)

    ConnectPeerBgpConfiguration.add_member(:core_network_asn, Shapes::ShapeRef.new(shape: Long, location_name: "CoreNetworkAsn"))
    ConnectPeerBgpConfiguration.add_member(:peer_asn, Shapes::ShapeRef.new(shape: Long, location_name: "PeerAsn"))
    ConnectPeerBgpConfiguration.add_member(:core_network_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "CoreNetworkAddress"))
    ConnectPeerBgpConfiguration.add_member(:peer_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "PeerAddress"))
    ConnectPeerBgpConfiguration.struct_class = Types::ConnectPeerBgpConfiguration

    ConnectPeerBgpConfigurationList.member = Shapes::ShapeRef.new(shape: ConnectPeerBgpConfiguration)

    ConnectPeerConfiguration.add_member(:core_network_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "CoreNetworkAddress"))
    ConnectPeerConfiguration.add_member(:peer_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "PeerAddress"))
    ConnectPeerConfiguration.add_member(:inside_cidr_blocks, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "InsideCidrBlocks"))
    ConnectPeerConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: TunnelProtocol, location_name: "Protocol"))
    ConnectPeerConfiguration.add_member(:bgp_configurations, Shapes::ShapeRef.new(shape: ConnectPeerBgpConfigurationList, location_name: "BgpConfigurations"))
    ConnectPeerConfiguration.struct_class = Types::ConnectPeerConfiguration

    ConnectPeerIdList.member = Shapes::ShapeRef.new(shape: ConnectPeerId)

    ConnectPeerSummary.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    ConnectPeerSummary.add_member(:connect_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "ConnectAttachmentId"))
    ConnectPeerSummary.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, location_name: "ConnectPeerId"))
    ConnectPeerSummary.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    ConnectPeerSummary.add_member(:connect_peer_state, Shapes::ShapeRef.new(shape: ConnectPeerState, location_name: "ConnectPeerState"))
    ConnectPeerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    ConnectPeerSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ConnectPeerSummary.struct_class = Types::ConnectPeerSummary

    ConnectPeerSummaryList.member = Shapes::ShapeRef.new(shape: ConnectPeerSummary)

    Connection.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    Connection.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    Connection.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    Connection.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    Connection.add_member(:connected_device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "ConnectedDeviceId"))
    Connection.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    Connection.add_member(:connected_link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "ConnectedLinkId"))
    Connection.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    Connection.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Connection.add_member(:state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "State"))
    Connection.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Connection.struct_class = Types::Connection

    ConnectionHealth.add_member(:type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "Type"))
    ConnectionHealth.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    ConnectionHealth.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "Timestamp"))
    ConnectionHealth.struct_class = Types::ConnectionHealth

    ConnectionIdList.member = Shapes::ShapeRef.new(shape: ConnectionId)

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    ConstrainedStringList.member = Shapes::ShapeRef.new(shape: ConstrainedString)

    CoreNetwork.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    CoreNetwork.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    CoreNetwork.add_member(:core_network_arn, Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: "CoreNetworkArn"))
    CoreNetwork.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CoreNetwork.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    CoreNetwork.add_member(:state, Shapes::ShapeRef.new(shape: CoreNetworkState, location_name: "State"))
    CoreNetwork.add_member(:segments, Shapes::ShapeRef.new(shape: CoreNetworkSegmentList, location_name: "Segments"))
    CoreNetwork.add_member(:edges, Shapes::ShapeRef.new(shape: CoreNetworkEdgeList, location_name: "Edges"))
    CoreNetwork.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CoreNetwork.struct_class = Types::CoreNetwork

    CoreNetworkChange.add_member(:type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "Type"))
    CoreNetworkChange.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action"))
    CoreNetworkChange.add_member(:identifier, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Identifier"))
    CoreNetworkChange.add_member(:previous_values, Shapes::ShapeRef.new(shape: CoreNetworkChangeValues, location_name: "PreviousValues"))
    CoreNetworkChange.add_member(:new_values, Shapes::ShapeRef.new(shape: CoreNetworkChangeValues, location_name: "NewValues"))
    CoreNetworkChange.add_member(:identifier_path, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "IdentifierPath"))
    CoreNetworkChange.struct_class = Types::CoreNetworkChange

    CoreNetworkChangeEvent.add_member(:type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "Type"))
    CoreNetworkChangeEvent.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action"))
    CoreNetworkChangeEvent.add_member(:identifier_path, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "IdentifierPath"))
    CoreNetworkChangeEvent.add_member(:event_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EventTime"))
    CoreNetworkChangeEvent.add_member(:status, Shapes::ShapeRef.new(shape: ChangeStatus, location_name: "Status"))
    CoreNetworkChangeEvent.add_member(:values, Shapes::ShapeRef.new(shape: CoreNetworkChangeEventValues, location_name: "Values"))
    CoreNetworkChangeEvent.struct_class = Types::CoreNetworkChangeEvent

    CoreNetworkChangeEventList.member = Shapes::ShapeRef.new(shape: CoreNetworkChangeEvent)

    CoreNetworkChangeEventValues.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    CoreNetworkChangeEventValues.add_member(:segment_name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SegmentName"))
    CoreNetworkChangeEventValues.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "AttachmentId"))
    CoreNetworkChangeEventValues.add_member(:cidr, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Cidr"))
    CoreNetworkChangeEventValues.struct_class = Types::CoreNetworkChangeEventValues

    CoreNetworkChangeList.member = Shapes::ShapeRef.new(shape: CoreNetworkChange)

    CoreNetworkChangeValues.add_member(:segment_name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SegmentName"))
    CoreNetworkChangeValues.add_member(:edge_locations, Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: "EdgeLocations"))
    CoreNetworkChangeValues.add_member(:asn, Shapes::ShapeRef.new(shape: Long, location_name: "Asn"))
    CoreNetworkChangeValues.add_member(:cidr, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Cidr"))
    CoreNetworkChangeValues.add_member(:destination_identifier, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "DestinationIdentifier"))
    CoreNetworkChangeValues.add_member(:inside_cidr_blocks, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "InsideCidrBlocks"))
    CoreNetworkChangeValues.add_member(:shared_segments, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "SharedSegments"))
    CoreNetworkChangeValues.struct_class = Types::CoreNetworkChangeValues

    CoreNetworkEdge.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    CoreNetworkEdge.add_member(:asn, Shapes::ShapeRef.new(shape: Long, location_name: "Asn"))
    CoreNetworkEdge.add_member(:inside_cidr_blocks, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "InsideCidrBlocks"))
    CoreNetworkEdge.struct_class = Types::CoreNetworkEdge

    CoreNetworkEdgeList.member = Shapes::ShapeRef.new(shape: CoreNetworkEdge)

    CoreNetworkPolicy.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    CoreNetworkPolicy.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, location_name: "PolicyVersionId"))
    CoreNetworkPolicy.add_member(:alias, Shapes::ShapeRef.new(shape: CoreNetworkPolicyAlias, location_name: "Alias"))
    CoreNetworkPolicy.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CoreNetworkPolicy.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    CoreNetworkPolicy.add_member(:change_set_state, Shapes::ShapeRef.new(shape: ChangeSetState, location_name: "ChangeSetState"))
    CoreNetworkPolicy.add_member(:policy_errors, Shapes::ShapeRef.new(shape: CoreNetworkPolicyErrorList, location_name: "PolicyErrors"))
    CoreNetworkPolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: CoreNetworkPolicyDocument, location_name: "PolicyDocument", metadata: {"jsonvalue"=>true}))
    CoreNetworkPolicy.struct_class = Types::CoreNetworkPolicy

    CoreNetworkPolicyError.add_member(:error_code, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "ErrorCode"))
    CoreNetworkPolicyError.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    CoreNetworkPolicyError.add_member(:path, Shapes::ShapeRef.new(shape: ServerSideString, location_name: "Path"))
    CoreNetworkPolicyError.struct_class = Types::CoreNetworkPolicyError

    CoreNetworkPolicyErrorList.member = Shapes::ShapeRef.new(shape: CoreNetworkPolicyError)

    CoreNetworkPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    CoreNetworkPolicyException.add_member(:errors, Shapes::ShapeRef.new(shape: CoreNetworkPolicyErrorList, location_name: "Errors"))
    CoreNetworkPolicyException.struct_class = Types::CoreNetworkPolicyException

    CoreNetworkPolicyVersion.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    CoreNetworkPolicyVersion.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, location_name: "PolicyVersionId"))
    CoreNetworkPolicyVersion.add_member(:alias, Shapes::ShapeRef.new(shape: CoreNetworkPolicyAlias, location_name: "Alias"))
    CoreNetworkPolicyVersion.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CoreNetworkPolicyVersion.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    CoreNetworkPolicyVersion.add_member(:change_set_state, Shapes::ShapeRef.new(shape: ChangeSetState, location_name: "ChangeSetState"))
    CoreNetworkPolicyVersion.struct_class = Types::CoreNetworkPolicyVersion

    CoreNetworkPolicyVersionList.member = Shapes::ShapeRef.new(shape: CoreNetworkPolicyVersion)

    CoreNetworkSegment.add_member(:name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Name"))
    CoreNetworkSegment.add_member(:edge_locations, Shapes::ShapeRef.new(shape: ExternalRegionCodeList, location_name: "EdgeLocations"))
    CoreNetworkSegment.add_member(:shared_segments, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "SharedSegments"))
    CoreNetworkSegment.struct_class = Types::CoreNetworkSegment

    CoreNetworkSegmentEdgeIdentifier.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    CoreNetworkSegmentEdgeIdentifier.add_member(:segment_name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SegmentName"))
    CoreNetworkSegmentEdgeIdentifier.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    CoreNetworkSegmentEdgeIdentifier.struct_class = Types::CoreNetworkSegmentEdgeIdentifier

    CoreNetworkSegmentList.member = Shapes::ShapeRef.new(shape: CoreNetworkSegment)

    CoreNetworkSummary.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    CoreNetworkSummary.add_member(:core_network_arn, Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: "CoreNetworkArn"))
    CoreNetworkSummary.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    CoreNetworkSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerAccountId"))
    CoreNetworkSummary.add_member(:state, Shapes::ShapeRef.new(shape: CoreNetworkState, location_name: "State"))
    CoreNetworkSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CoreNetworkSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CoreNetworkSummary.struct_class = Types::CoreNetworkSummary

    CoreNetworkSummaryList.member = Shapes::ShapeRef.new(shape: CoreNetworkSummary)

    CreateConnectAttachmentRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location_name: "CoreNetworkId"))
    CreateConnectAttachmentRequest.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, required: true, location_name: "EdgeLocation"))
    CreateConnectAttachmentRequest.add_member(:transport_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location_name: "TransportAttachmentId"))
    CreateConnectAttachmentRequest.add_member(:options, Shapes::ShapeRef.new(shape: ConnectAttachmentOptions, required: true, location_name: "Options"))
    CreateConnectAttachmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectAttachmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateConnectAttachmentRequest.struct_class = Types::CreateConnectAttachmentRequest

    CreateConnectAttachmentResponse.add_member(:connect_attachment, Shapes::ShapeRef.new(shape: ConnectAttachment, location_name: "ConnectAttachment"))
    CreateConnectAttachmentResponse.struct_class = Types::CreateConnectAttachmentResponse

    CreateConnectPeerRequest.add_member(:connect_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location_name: "ConnectAttachmentId"))
    CreateConnectPeerRequest.add_member(:core_network_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "CoreNetworkAddress"))
    CreateConnectPeerRequest.add_member(:peer_address, Shapes::ShapeRef.new(shape: IPAddress, required: true, location_name: "PeerAddress"))
    CreateConnectPeerRequest.add_member(:bgp_options, Shapes::ShapeRef.new(shape: BgpOptions, location_name: "BgpOptions"))
    CreateConnectPeerRequest.add_member(:inside_cidr_blocks, Shapes::ShapeRef.new(shape: ConstrainedStringList, required: true, location_name: "InsideCidrBlocks"))
    CreateConnectPeerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectPeerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateConnectPeerRequest.struct_class = Types::CreateConnectPeerRequest

    CreateConnectPeerResponse.add_member(:connect_peer, Shapes::ShapeRef.new(shape: ConnectPeer, location_name: "ConnectPeer"))
    CreateConnectPeerResponse.struct_class = Types::CreateConnectPeerResponse

    CreateConnectionRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateConnectionRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "DeviceId"))
    CreateConnectionRequest.add_member(:connected_device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "ConnectedDeviceId"))
    CreateConnectionRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    CreateConnectionRequest.add_member(:connected_link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "ConnectedLinkId"))
    CreateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CreateConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    CreateCoreNetworkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location_name: "GlobalNetworkId"))
    CreateCoreNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CreateCoreNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCoreNetworkRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: CoreNetworkPolicyDocument, location_name: "PolicyDocument"))
    CreateCoreNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateCoreNetworkRequest.struct_class = Types::CreateCoreNetworkRequest

    CreateCoreNetworkResponse.add_member(:core_network, Shapes::ShapeRef.new(shape: CoreNetwork, location_name: "CoreNetwork"))
    CreateCoreNetworkResponse.struct_class = Types::CreateCoreNetworkResponse

    CreateDeviceRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateDeviceRequest.add_member(:aws_location, Shapes::ShapeRef.new(shape: AWSLocation, location_name: "AWSLocation"))
    CreateDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CreateDeviceRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Type"))
    CreateDeviceRequest.add_member(:vendor, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Vendor"))
    CreateDeviceRequest.add_member(:model, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Model"))
    CreateDeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SerialNumber"))
    CreateDeviceRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    CreateDeviceRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    CreateDeviceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDeviceRequest.struct_class = Types::CreateDeviceRequest

    CreateDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    CreateDeviceResponse.struct_class = Types::CreateDeviceResponse

    CreateGlobalNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CreateGlobalNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateGlobalNetworkRequest.struct_class = Types::CreateGlobalNetworkRequest

    CreateGlobalNetworkResponse.add_member(:global_network, Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: "GlobalNetwork"))
    CreateGlobalNetworkResponse.struct_class = Types::CreateGlobalNetworkResponse

    CreateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateLinkRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CreateLinkRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Type"))
    CreateLinkRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "Bandwidth"))
    CreateLinkRequest.add_member(:provider, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Provider"))
    CreateLinkRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "SiteId"))
    CreateLinkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLinkRequest.struct_class = Types::CreateLinkRequest

    CreateLinkResponse.add_member(:link, Shapes::ShapeRef.new(shape: Link, location_name: "Link"))
    CreateLinkResponse.struct_class = Types::CreateLinkResponse

    CreateSiteRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    CreateSiteRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    CreateSiteRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSiteRequest.struct_class = Types::CreateSiteRequest

    CreateSiteResponse.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    CreateSiteResponse.struct_class = Types::CreateSiteResponse

    CreateSiteToSiteVpnAttachmentRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location_name: "CoreNetworkId"))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:vpn_connection_arn, Shapes::ShapeRef.new(shape: VpnConnectionArn, required: true, location_name: "VpnConnectionArn"))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSiteToSiteVpnAttachmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateSiteToSiteVpnAttachmentRequest.struct_class = Types::CreateSiteToSiteVpnAttachmentRequest

    CreateSiteToSiteVpnAttachmentResponse.add_member(:site_to_site_vpn_attachment, Shapes::ShapeRef.new(shape: SiteToSiteVpnAttachment, location_name: "SiteToSiteVpnAttachment"))
    CreateSiteToSiteVpnAttachmentResponse.struct_class = Types::CreateSiteToSiteVpnAttachmentResponse

    CreateTransitGatewayPeeringRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location_name: "CoreNetworkId"))
    CreateTransitGatewayPeeringRequest.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: TransitGatewayArn, required: true, location_name: "TransitGatewayArn"))
    CreateTransitGatewayPeeringRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTransitGatewayPeeringRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateTransitGatewayPeeringRequest.struct_class = Types::CreateTransitGatewayPeeringRequest

    CreateTransitGatewayPeeringResponse.add_member(:transit_gateway_peering, Shapes::ShapeRef.new(shape: TransitGatewayPeering, location_name: "TransitGatewayPeering"))
    CreateTransitGatewayPeeringResponse.struct_class = Types::CreateTransitGatewayPeeringResponse

    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:peering_id, Shapes::ShapeRef.new(shape: PeeringId, required: true, location_name: "PeeringId"))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:transit_gateway_route_table_arn, Shapes::ShapeRef.new(shape: TransitGatewayRouteTableArn, required: true, location_name: "TransitGatewayRouteTableArn"))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTransitGatewayRouteTableAttachmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateTransitGatewayRouteTableAttachmentRequest.struct_class = Types::CreateTransitGatewayRouteTableAttachmentRequest

    CreateTransitGatewayRouteTableAttachmentResponse.add_member(:transit_gateway_route_table_attachment, Shapes::ShapeRef.new(shape: TransitGatewayRouteTableAttachment, location_name: "TransitGatewayRouteTableAttachment"))
    CreateTransitGatewayRouteTableAttachmentResponse.struct_class = Types::CreateTransitGatewayRouteTableAttachmentResponse

    CreateVpcAttachmentRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location_name: "CoreNetworkId"))
    CreateVpcAttachmentRequest.add_member(:vpc_arn, Shapes::ShapeRef.new(shape: VpcArn, required: true, location_name: "VpcArn"))
    CreateVpcAttachmentRequest.add_member(:subnet_arns, Shapes::ShapeRef.new(shape: SubnetArnList, required: true, location_name: "SubnetArns"))
    CreateVpcAttachmentRequest.add_member(:options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "Options"))
    CreateVpcAttachmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVpcAttachmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateVpcAttachmentRequest.struct_class = Types::CreateVpcAttachmentRequest

    CreateVpcAttachmentResponse.add_member(:vpc_attachment, Shapes::ShapeRef.new(shape: VpcAttachment, location_name: "VpcAttachment"))
    CreateVpcAttachmentResponse.struct_class = Types::CreateVpcAttachmentResponse

    CustomerGatewayArnList.member = Shapes::ShapeRef.new(shape: CustomerGatewayArn)

    CustomerGatewayAssociation.add_member(:customer_gateway_arn, Shapes::ShapeRef.new(shape: CustomerGatewayArn, location_name: "CustomerGatewayArn"))
    CustomerGatewayAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    CustomerGatewayAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    CustomerGatewayAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    CustomerGatewayAssociation.add_member(:state, Shapes::ShapeRef.new(shape: CustomerGatewayAssociationState, location_name: "State"))
    CustomerGatewayAssociation.struct_class = Types::CustomerGatewayAssociation

    CustomerGatewayAssociationList.member = Shapes::ShapeRef.new(shape: CustomerGatewayAssociation)

    DeleteAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    DeleteAttachmentRequest.struct_class = Types::DeleteAttachmentRequest

    DeleteAttachmentResponse.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    DeleteAttachmentResponse.struct_class = Types::DeleteAttachmentResponse

    DeleteConnectPeerRequest.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, required: true, location: "uri", location_name: "connectPeerId"))
    DeleteConnectPeerRequest.struct_class = Types::DeleteConnectPeerRequest

    DeleteConnectPeerResponse.add_member(:connect_peer, Shapes::ShapeRef.new(shape: ConnectPeer, location_name: "ConnectPeer"))
    DeleteConnectPeerResponse.struct_class = Types::DeleteConnectPeerResponse

    DeleteConnectionRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "connectionId"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteCoreNetworkPolicyVersionRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    DeleteCoreNetworkPolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "policyVersionId"))
    DeleteCoreNetworkPolicyVersionRequest.struct_class = Types::DeleteCoreNetworkPolicyVersionRequest

    DeleteCoreNetworkPolicyVersionResponse.add_member(:core_network_policy, Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: "CoreNetworkPolicy"))
    DeleteCoreNetworkPolicyVersionResponse.struct_class = Types::DeleteCoreNetworkPolicyVersionResponse

    DeleteCoreNetworkRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    DeleteCoreNetworkRequest.struct_class = Types::DeleteCoreNetworkRequest

    DeleteCoreNetworkResponse.add_member(:core_network, Shapes::ShapeRef.new(shape: CoreNetwork, location_name: "CoreNetwork"))
    DeleteCoreNetworkResponse.struct_class = Types::DeleteCoreNetworkResponse

    DeleteDeviceRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "deviceId"))
    DeleteDeviceRequest.struct_class = Types::DeleteDeviceRequest

    DeleteDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    DeleteDeviceResponse.struct_class = Types::DeleteDeviceResponse

    DeleteGlobalNetworkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteGlobalNetworkRequest.struct_class = Types::DeleteGlobalNetworkRequest

    DeleteGlobalNetworkResponse.add_member(:global_network, Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: "GlobalNetwork"))
    DeleteGlobalNetworkResponse.struct_class = Types::DeleteGlobalNetworkResponse

    DeleteLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    DeleteLinkRequest.struct_class = Types::DeleteLinkRequest

    DeleteLinkResponse.add_member(:link, Shapes::ShapeRef.new(shape: Link, location_name: "Link"))
    DeleteLinkResponse.struct_class = Types::DeleteLinkResponse

    DeletePeeringRequest.add_member(:peering_id, Shapes::ShapeRef.new(shape: PeeringId, required: true, location: "uri", location_name: "peeringId"))
    DeletePeeringRequest.struct_class = Types::DeletePeeringRequest

    DeletePeeringResponse.add_member(:peering, Shapes::ShapeRef.new(shape: Peering, location_name: "Peering"))
    DeletePeeringResponse.struct_class = Types::DeletePeeringResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteSiteRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteSiteRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "siteId"))
    DeleteSiteRequest.struct_class = Types::DeleteSiteRequest

    DeleteSiteResponse.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    DeleteSiteResponse.struct_class = Types::DeleteSiteResponse

    DeregisterTransitGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DeregisterTransitGatewayRequest.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: TransitGatewayArn, required: true, location: "uri", location_name: "transitGatewayArn"))
    DeregisterTransitGatewayRequest.struct_class = Types::DeregisterTransitGatewayRequest

    DeregisterTransitGatewayResponse.add_member(:transit_gateway_registration, Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: "TransitGatewayRegistration"))
    DeregisterTransitGatewayResponse.struct_class = Types::DeregisterTransitGatewayResponse

    DescribeGlobalNetworksRequest.add_member(:global_network_ids, Shapes::ShapeRef.new(shape: GlobalNetworkIdList, location: "querystring", location_name: "globalNetworkIds"))
    DescribeGlobalNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeGlobalNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    DescribeGlobalNetworksRequest.struct_class = Types::DescribeGlobalNetworksRequest

    DescribeGlobalNetworksResponse.add_member(:global_networks, Shapes::ShapeRef.new(shape: GlobalNetworkList, location_name: "GlobalNetworks"))
    DescribeGlobalNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeGlobalNetworksResponse.struct_class = Types::DescribeGlobalNetworksResponse

    Device.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    Device.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, location_name: "DeviceArn"))
    Device.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    Device.add_member(:aws_location, Shapes::ShapeRef.new(shape: AWSLocation, location_name: "AWSLocation"))
    Device.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    Device.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Type"))
    Device.add_member(:vendor, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Vendor"))
    Device.add_member(:model, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Model"))
    Device.add_member(:serial_number, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SerialNumber"))
    Device.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    Device.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Device.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Device.add_member(:state, Shapes::ShapeRef.new(shape: DeviceState, location_name: "State"))
    Device.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Device.struct_class = Types::Device

    DeviceIdList.member = Shapes::ShapeRef.new(shape: DeviceId)

    DeviceList.member = Shapes::ShapeRef.new(shape: Device)

    DisassociateConnectPeerRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateConnectPeerRequest.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, required: true, location: "uri", location_name: "connectPeerId"))
    DisassociateConnectPeerRequest.struct_class = Types::DisassociateConnectPeerRequest

    DisassociateConnectPeerResponse.add_member(:connect_peer_association, Shapes::ShapeRef.new(shape: ConnectPeerAssociation, location_name: "ConnectPeerAssociation"))
    DisassociateConnectPeerResponse.struct_class = Types::DisassociateConnectPeerResponse

    DisassociateCustomerGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateCustomerGatewayRequest.add_member(:customer_gateway_arn, Shapes::ShapeRef.new(shape: CustomerGatewayArn, required: true, location: "uri", location_name: "customerGatewayArn"))
    DisassociateCustomerGatewayRequest.struct_class = Types::DisassociateCustomerGatewayRequest

    DisassociateCustomerGatewayResponse.add_member(:customer_gateway_association, Shapes::ShapeRef.new(shape: CustomerGatewayAssociation, location_name: "CustomerGatewayAssociation"))
    DisassociateCustomerGatewayResponse.struct_class = Types::DisassociateCustomerGatewayResponse

    DisassociateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateLinkRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "querystring", location_name: "deviceId"))
    DisassociateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "querystring", location_name: "linkId"))
    DisassociateLinkRequest.struct_class = Types::DisassociateLinkRequest

    DisassociateLinkResponse.add_member(:link_association, Shapes::ShapeRef.new(shape: LinkAssociation, location_name: "LinkAssociation"))
    DisassociateLinkResponse.struct_class = Types::DisassociateLinkResponse

    DisassociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn, required: true, location: "uri", location_name: "transitGatewayConnectPeerArn"))
    DisassociateTransitGatewayConnectPeerRequest.struct_class = Types::DisassociateTransitGatewayConnectPeerRequest

    DisassociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation, location_name: "TransitGatewayConnectPeerAssociation"))
    DisassociateTransitGatewayConnectPeerResponse.struct_class = Types::DisassociateTransitGatewayConnectPeerResponse

    ExceptionContextMap.key = Shapes::ShapeRef.new(shape: ExceptionContextKey)
    ExceptionContextMap.value = Shapes::ShapeRef.new(shape: ExceptionContextValue)

    ExecuteCoreNetworkChangeSetRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    ExecuteCoreNetworkChangeSetRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "policyVersionId"))
    ExecuteCoreNetworkChangeSetRequest.struct_class = Types::ExecuteCoreNetworkChangeSetRequest

    ExecuteCoreNetworkChangeSetResponse.struct_class = Types::ExecuteCoreNetworkChangeSetResponse

    ExternalRegionCodeList.member = Shapes::ShapeRef.new(shape: ExternalRegionCode)

    FilterMap.key = Shapes::ShapeRef.new(shape: FilterName)
    FilterMap.value = Shapes::ShapeRef.new(shape: FilterValues)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetConnectAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    GetConnectAttachmentRequest.struct_class = Types::GetConnectAttachmentRequest

    GetConnectAttachmentResponse.add_member(:connect_attachment, Shapes::ShapeRef.new(shape: ConnectAttachment, location_name: "ConnectAttachment"))
    GetConnectAttachmentResponse.struct_class = Types::GetConnectAttachmentResponse

    GetConnectPeerAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetConnectPeerAssociationsRequest.add_member(:connect_peer_ids, Shapes::ShapeRef.new(shape: ConnectPeerIdList, location: "querystring", location_name: "connectPeerIds"))
    GetConnectPeerAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetConnectPeerAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetConnectPeerAssociationsRequest.struct_class = Types::GetConnectPeerAssociationsRequest

    GetConnectPeerAssociationsResponse.add_member(:connect_peer_associations, Shapes::ShapeRef.new(shape: ConnectPeerAssociationList, location_name: "ConnectPeerAssociations"))
    GetConnectPeerAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConnectPeerAssociationsResponse.struct_class = Types::GetConnectPeerAssociationsResponse

    GetConnectPeerRequest.add_member(:connect_peer_id, Shapes::ShapeRef.new(shape: ConnectPeerId, required: true, location: "uri", location_name: "connectPeerId"))
    GetConnectPeerRequest.struct_class = Types::GetConnectPeerRequest

    GetConnectPeerResponse.add_member(:connect_peer, Shapes::ShapeRef.new(shape: ConnectPeer, location_name: "ConnectPeer"))
    GetConnectPeerResponse.struct_class = Types::GetConnectPeerResponse

    GetConnectionsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetConnectionsRequest.add_member(:connection_ids, Shapes::ShapeRef.new(shape: ConnectionIdList, location: "querystring", location_name: "connectionIds"))
    GetConnectionsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location: "querystring", location_name: "deviceId"))
    GetConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetConnectionsRequest.struct_class = Types::GetConnectionsRequest

    GetConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    GetConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConnectionsResponse.struct_class = Types::GetConnectionsResponse

    GetCoreNetworkChangeEventsRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    GetCoreNetworkChangeEventsRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "policyVersionId"))
    GetCoreNetworkChangeEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetCoreNetworkChangeEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetCoreNetworkChangeEventsRequest.struct_class = Types::GetCoreNetworkChangeEventsRequest

    GetCoreNetworkChangeEventsResponse.add_member(:core_network_change_events, Shapes::ShapeRef.new(shape: CoreNetworkChangeEventList, location_name: "CoreNetworkChangeEvents"))
    GetCoreNetworkChangeEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCoreNetworkChangeEventsResponse.struct_class = Types::GetCoreNetworkChangeEventsResponse

    GetCoreNetworkChangeSetRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    GetCoreNetworkChangeSetRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "policyVersionId"))
    GetCoreNetworkChangeSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetCoreNetworkChangeSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetCoreNetworkChangeSetRequest.struct_class = Types::GetCoreNetworkChangeSetRequest

    GetCoreNetworkChangeSetResponse.add_member(:core_network_changes, Shapes::ShapeRef.new(shape: CoreNetworkChangeList, location_name: "CoreNetworkChanges"))
    GetCoreNetworkChangeSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCoreNetworkChangeSetResponse.struct_class = Types::GetCoreNetworkChangeSetResponse

    GetCoreNetworkPolicyRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    GetCoreNetworkPolicyRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "policyVersionId"))
    GetCoreNetworkPolicyRequest.add_member(:alias, Shapes::ShapeRef.new(shape: CoreNetworkPolicyAlias, location: "querystring", location_name: "alias"))
    GetCoreNetworkPolicyRequest.struct_class = Types::GetCoreNetworkPolicyRequest

    GetCoreNetworkPolicyResponse.add_member(:core_network_policy, Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: "CoreNetworkPolicy"))
    GetCoreNetworkPolicyResponse.struct_class = Types::GetCoreNetworkPolicyResponse

    GetCoreNetworkRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    GetCoreNetworkRequest.struct_class = Types::GetCoreNetworkRequest

    GetCoreNetworkResponse.add_member(:core_network, Shapes::ShapeRef.new(shape: CoreNetwork, location_name: "CoreNetwork"))
    GetCoreNetworkResponse.struct_class = Types::GetCoreNetworkResponse

    GetCustomerGatewayAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetCustomerGatewayAssociationsRequest.add_member(:customer_gateway_arns, Shapes::ShapeRef.new(shape: CustomerGatewayArnList, location: "querystring", location_name: "customerGatewayArns"))
    GetCustomerGatewayAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetCustomerGatewayAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetCustomerGatewayAssociationsRequest.struct_class = Types::GetCustomerGatewayAssociationsRequest

    GetCustomerGatewayAssociationsResponse.add_member(:customer_gateway_associations, Shapes::ShapeRef.new(shape: CustomerGatewayAssociationList, location_name: "CustomerGatewayAssociations"))
    GetCustomerGatewayAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCustomerGatewayAssociationsResponse.struct_class = Types::GetCustomerGatewayAssociationsResponse

    GetDevicesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetDevicesRequest.add_member(:device_ids, Shapes::ShapeRef.new(shape: DeviceIdList, location: "querystring", location_name: "deviceIds"))
    GetDevicesRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location: "querystring", location_name: "siteId"))
    GetDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetDevicesRequest.struct_class = Types::GetDevicesRequest

    GetDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceList, location_name: "Devices"))
    GetDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetDevicesResponse.struct_class = Types::GetDevicesResponse

    GetLinkAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetLinkAssociationsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location: "querystring", location_name: "deviceId"))
    GetLinkAssociationsRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location: "querystring", location_name: "linkId"))
    GetLinkAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetLinkAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetLinkAssociationsRequest.struct_class = Types::GetLinkAssociationsRequest

    GetLinkAssociationsResponse.add_member(:link_associations, Shapes::ShapeRef.new(shape: LinkAssociationList, location_name: "LinkAssociations"))
    GetLinkAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetLinkAssociationsResponse.struct_class = Types::GetLinkAssociationsResponse

    GetLinksRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetLinksRequest.add_member(:link_ids, Shapes::ShapeRef.new(shape: LinkIdList, location: "querystring", location_name: "linkIds"))
    GetLinksRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location: "querystring", location_name: "siteId"))
    GetLinksRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location: "querystring", location_name: "type"))
    GetLinksRequest.add_member(:provider, Shapes::ShapeRef.new(shape: ConstrainedString, location: "querystring", location_name: "provider"))
    GetLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetLinksRequest.struct_class = Types::GetLinksRequest

    GetLinksResponse.add_member(:links, Shapes::ShapeRef.new(shape: LinkList, location_name: "Links"))
    GetLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetLinksResponse.struct_class = Types::GetLinksResponse

    GetNetworkResourceCountsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkResourceCountsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location: "querystring", location_name: "resourceType"))
    GetNetworkResourceCountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkResourceCountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetNetworkResourceCountsRequest.struct_class = Types::GetNetworkResourceCountsRequest

    GetNetworkResourceCountsResponse.add_member(:network_resource_counts, Shapes::ShapeRef.new(shape: NetworkResourceCountList, location_name: "NetworkResourceCounts"))
    GetNetworkResourceCountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetNetworkResourceCountsResponse.struct_class = Types::GetNetworkResourceCountsResponse

    GetNetworkResourceRelationshipsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkResourceRelationshipsRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location: "querystring", location_name: "coreNetworkId"))
    GetNetworkResourceRelationshipsRequest.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "registeredGatewayArn"))
    GetNetworkResourceRelationshipsRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: ExternalRegionCode, location: "querystring", location_name: "awsRegion"))
    GetNetworkResourceRelationshipsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location: "querystring", location_name: "accountId"))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location: "querystring", location_name: "resourceType"))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "resourceArn"))
    GetNetworkResourceRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkResourceRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetNetworkResourceRelationshipsRequest.struct_class = Types::GetNetworkResourceRelationshipsRequest

    GetNetworkResourceRelationshipsResponse.add_member(:relationships, Shapes::ShapeRef.new(shape: RelationshipList, location_name: "Relationships"))
    GetNetworkResourceRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetNetworkResourceRelationshipsResponse.struct_class = Types::GetNetworkResourceRelationshipsResponse

    GetNetworkResourcesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkResourcesRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location: "querystring", location_name: "coreNetworkId"))
    GetNetworkResourcesRequest.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "registeredGatewayArn"))
    GetNetworkResourcesRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: ExternalRegionCode, location: "querystring", location_name: "awsRegion"))
    GetNetworkResourcesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location: "querystring", location_name: "accountId"))
    GetNetworkResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location: "querystring", location_name: "resourceType"))
    GetNetworkResourcesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "resourceArn"))
    GetNetworkResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetNetworkResourcesRequest.struct_class = Types::GetNetworkResourcesRequest

    GetNetworkResourcesResponse.add_member(:network_resources, Shapes::ShapeRef.new(shape: NetworkResourceList, location_name: "NetworkResources"))
    GetNetworkResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetNetworkResourcesResponse.struct_class = Types::GetNetworkResourcesResponse

    GetNetworkRoutesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkRoutesRequest.add_member(:route_table_identifier, Shapes::ShapeRef.new(shape: RouteTableIdentifier, required: true, location_name: "RouteTableIdentifier"))
    GetNetworkRoutesRequest.add_member(:exact_cidr_matches, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "ExactCidrMatches"))
    GetNetworkRoutesRequest.add_member(:longest_prefix_matches, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "LongestPrefixMatches"))
    GetNetworkRoutesRequest.add_member(:subnet_of_matches, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "SubnetOfMatches"))
    GetNetworkRoutesRequest.add_member(:supernet_of_matches, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "SupernetOfMatches"))
    GetNetworkRoutesRequest.add_member(:prefix_list_ids, Shapes::ShapeRef.new(shape: ConstrainedStringList, location_name: "PrefixListIds"))
    GetNetworkRoutesRequest.add_member(:states, Shapes::ShapeRef.new(shape: RouteStateList, location_name: "States"))
    GetNetworkRoutesRequest.add_member(:types, Shapes::ShapeRef.new(shape: RouteTypeList, location_name: "Types"))
    GetNetworkRoutesRequest.add_member(:destination_filters, Shapes::ShapeRef.new(shape: FilterMap, location_name: "DestinationFilters"))
    GetNetworkRoutesRequest.struct_class = Types::GetNetworkRoutesRequest

    GetNetworkRoutesResponse.add_member(:route_table_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RouteTableArn"))
    GetNetworkRoutesResponse.add_member(:core_network_segment_edge, Shapes::ShapeRef.new(shape: CoreNetworkSegmentEdgeIdentifier, location_name: "CoreNetworkSegmentEdge"))
    GetNetworkRoutesResponse.add_member(:route_table_type, Shapes::ShapeRef.new(shape: RouteTableType, location_name: "RouteTableType"))
    GetNetworkRoutesResponse.add_member(:route_table_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "RouteTableTimestamp"))
    GetNetworkRoutesResponse.add_member(:network_routes, Shapes::ShapeRef.new(shape: NetworkRouteList, location_name: "NetworkRoutes"))
    GetNetworkRoutesResponse.struct_class = Types::GetNetworkRoutesResponse

    GetNetworkTelemetryRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkTelemetryRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location: "querystring", location_name: "coreNetworkId"))
    GetNetworkTelemetryRequest.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "registeredGatewayArn"))
    GetNetworkTelemetryRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: ExternalRegionCode, location: "querystring", location_name: "awsRegion"))
    GetNetworkTelemetryRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location: "querystring", location_name: "accountId"))
    GetNetworkTelemetryRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location: "querystring", location_name: "resourceType"))
    GetNetworkTelemetryRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "resourceArn"))
    GetNetworkTelemetryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkTelemetryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetNetworkTelemetryRequest.struct_class = Types::GetNetworkTelemetryRequest

    GetNetworkTelemetryResponse.add_member(:network_telemetry, Shapes::ShapeRef.new(shape: NetworkTelemetryList, location_name: "NetworkTelemetry"))
    GetNetworkTelemetryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetNetworkTelemetryResponse.struct_class = Types::GetNetworkTelemetryResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, location_name: "PolicyDocument", metadata: {"jsonvalue"=>true}))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetRouteAnalysisRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetRouteAnalysisRequest.add_member(:route_analysis_id, Shapes::ShapeRef.new(shape: ConstrainedString, required: true, location: "uri", location_name: "routeAnalysisId"))
    GetRouteAnalysisRequest.struct_class = Types::GetRouteAnalysisRequest

    GetRouteAnalysisResponse.add_member(:route_analysis, Shapes::ShapeRef.new(shape: RouteAnalysis, location_name: "RouteAnalysis"))
    GetRouteAnalysisResponse.struct_class = Types::GetRouteAnalysisResponse

    GetSiteToSiteVpnAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    GetSiteToSiteVpnAttachmentRequest.struct_class = Types::GetSiteToSiteVpnAttachmentRequest

    GetSiteToSiteVpnAttachmentResponse.add_member(:site_to_site_vpn_attachment, Shapes::ShapeRef.new(shape: SiteToSiteVpnAttachment, location_name: "SiteToSiteVpnAttachment"))
    GetSiteToSiteVpnAttachmentResponse.struct_class = Types::GetSiteToSiteVpnAttachmentResponse

    GetSitesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetSitesRequest.add_member(:site_ids, Shapes::ShapeRef.new(shape: SiteIdList, location: "querystring", location_name: "siteIds"))
    GetSitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetSitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetSitesRequest.struct_class = Types::GetSitesRequest

    GetSitesResponse.add_member(:sites, Shapes::ShapeRef.new(shape: SiteList, location_name: "Sites"))
    GetSitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetSitesResponse.struct_class = Types::GetSitesResponse

    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:transit_gateway_connect_peer_arns, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArnList, location: "querystring", location_name: "transitGatewayConnectPeerArns"))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetTransitGatewayConnectPeerAssociationsRequest.struct_class = Types::GetTransitGatewayConnectPeerAssociationsRequest

    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:transit_gateway_connect_peer_associations, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociationList, location_name: "TransitGatewayConnectPeerAssociations"))
    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetTransitGatewayConnectPeerAssociationsResponse.struct_class = Types::GetTransitGatewayConnectPeerAssociationsResponse

    GetTransitGatewayPeeringRequest.add_member(:peering_id, Shapes::ShapeRef.new(shape: PeeringId, required: true, location: "uri", location_name: "peeringId"))
    GetTransitGatewayPeeringRequest.struct_class = Types::GetTransitGatewayPeeringRequest

    GetTransitGatewayPeeringResponse.add_member(:transit_gateway_peering, Shapes::ShapeRef.new(shape: TransitGatewayPeering, location_name: "TransitGatewayPeering"))
    GetTransitGatewayPeeringResponse.struct_class = Types::GetTransitGatewayPeeringResponse

    GetTransitGatewayRegistrationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    GetTransitGatewayRegistrationsRequest.add_member(:transit_gateway_arns, Shapes::ShapeRef.new(shape: TransitGatewayArnList, location: "querystring", location_name: "transitGatewayArns"))
    GetTransitGatewayRegistrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetTransitGatewayRegistrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetTransitGatewayRegistrationsRequest.struct_class = Types::GetTransitGatewayRegistrationsRequest

    GetTransitGatewayRegistrationsResponse.add_member(:transit_gateway_registrations, Shapes::ShapeRef.new(shape: TransitGatewayRegistrationList, location_name: "TransitGatewayRegistrations"))
    GetTransitGatewayRegistrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetTransitGatewayRegistrationsResponse.struct_class = Types::GetTransitGatewayRegistrationsResponse

    GetTransitGatewayRouteTableAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    GetTransitGatewayRouteTableAttachmentRequest.struct_class = Types::GetTransitGatewayRouteTableAttachmentRequest

    GetTransitGatewayRouteTableAttachmentResponse.add_member(:transit_gateway_route_table_attachment, Shapes::ShapeRef.new(shape: TransitGatewayRouteTableAttachment, location_name: "TransitGatewayRouteTableAttachment"))
    GetTransitGatewayRouteTableAttachmentResponse.struct_class = Types::GetTransitGatewayRouteTableAttachmentResponse

    GetVpcAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    GetVpcAttachmentRequest.struct_class = Types::GetVpcAttachmentRequest

    GetVpcAttachmentResponse.add_member(:vpc_attachment, Shapes::ShapeRef.new(shape: VpcAttachment, location_name: "VpcAttachment"))
    GetVpcAttachmentResponse.struct_class = Types::GetVpcAttachmentResponse

    GlobalNetwork.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    GlobalNetwork.add_member(:global_network_arn, Shapes::ShapeRef.new(shape: GlobalNetworkArn, location_name: "GlobalNetworkArn"))
    GlobalNetwork.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    GlobalNetwork.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    GlobalNetwork.add_member(:state, Shapes::ShapeRef.new(shape: GlobalNetworkState, location_name: "State"))
    GlobalNetwork.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GlobalNetwork.struct_class = Types::GlobalNetwork

    GlobalNetworkIdList.member = Shapes::ShapeRef.new(shape: GlobalNetworkId)

    GlobalNetworkList.member = Shapes::ShapeRef.new(shape: GlobalNetwork)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    Link.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    Link.add_member(:link_arn, Shapes::ShapeRef.new(shape: LinkArn, location_name: "LinkArn"))
    Link.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    Link.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Link.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    Link.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Type"))
    Link.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "Bandwidth"))
    Link.add_member(:provider, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Provider"))
    Link.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Link.add_member(:state, Shapes::ShapeRef.new(shape: LinkState, location_name: "State"))
    Link.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Link.struct_class = Types::Link

    LinkAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    LinkAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    LinkAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    LinkAssociation.add_member(:link_association_state, Shapes::ShapeRef.new(shape: LinkAssociationState, location_name: "LinkAssociationState"))
    LinkAssociation.struct_class = Types::LinkAssociation

    LinkAssociationList.member = Shapes::ShapeRef.new(shape: LinkAssociation)

    LinkIdList.member = Shapes::ShapeRef.new(shape: LinkId)

    LinkList.member = Shapes::ShapeRef.new(shape: Link)

    ListAttachmentsRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location: "querystring", location_name: "coreNetworkId"))
    ListAttachmentsRequest.add_member(:attachment_type, Shapes::ShapeRef.new(shape: AttachmentType, location: "querystring", location_name: "attachmentType"))
    ListAttachmentsRequest.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location: "querystring", location_name: "edgeLocation"))
    ListAttachmentsRequest.add_member(:state, Shapes::ShapeRef.new(shape: AttachmentState, location: "querystring", location_name: "state"))
    ListAttachmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAttachmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAttachmentsRequest.struct_class = Types::ListAttachmentsRequest

    ListAttachmentsResponse.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentList, location_name: "Attachments"))
    ListAttachmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAttachmentsResponse.struct_class = Types::ListAttachmentsResponse

    ListConnectPeersRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location: "querystring", location_name: "coreNetworkId"))
    ListConnectPeersRequest.add_member(:connect_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location: "querystring", location_name: "connectAttachmentId"))
    ListConnectPeersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConnectPeersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConnectPeersRequest.struct_class = Types::ListConnectPeersRequest

    ListConnectPeersResponse.add_member(:connect_peers, Shapes::ShapeRef.new(shape: ConnectPeerSummaryList, location_name: "ConnectPeers"))
    ListConnectPeersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectPeersResponse.struct_class = Types::ListConnectPeersResponse

    ListCoreNetworkPolicyVersionsRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    ListCoreNetworkPolicyVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCoreNetworkPolicyVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCoreNetworkPolicyVersionsRequest.struct_class = Types::ListCoreNetworkPolicyVersionsRequest

    ListCoreNetworkPolicyVersionsResponse.add_member(:core_network_policy_versions, Shapes::ShapeRef.new(shape: CoreNetworkPolicyVersionList, location_name: "CoreNetworkPolicyVersions"))
    ListCoreNetworkPolicyVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCoreNetworkPolicyVersionsResponse.struct_class = Types::ListCoreNetworkPolicyVersionsResponse

    ListCoreNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCoreNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCoreNetworksRequest.struct_class = Types::ListCoreNetworksRequest

    ListCoreNetworksResponse.add_member(:core_networks, Shapes::ShapeRef.new(shape: CoreNetworkSummaryList, location_name: "CoreNetworks"))
    ListCoreNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCoreNetworksResponse.struct_class = Types::ListCoreNetworksResponse

    ListOrganizationServiceAccessStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOrganizationServiceAccessStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListOrganizationServiceAccessStatusRequest.struct_class = Types::ListOrganizationServiceAccessStatusRequest

    ListOrganizationServiceAccessStatusResponse.add_member(:organization_status, Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: "OrganizationStatus"))
    ListOrganizationServiceAccessStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOrganizationServiceAccessStatusResponse.struct_class = Types::ListOrganizationServiceAccessStatusResponse

    ListPeeringsRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location: "querystring", location_name: "coreNetworkId"))
    ListPeeringsRequest.add_member(:peering_type, Shapes::ShapeRef.new(shape: PeeringType, location: "querystring", location_name: "peeringType"))
    ListPeeringsRequest.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location: "querystring", location_name: "edgeLocation"))
    ListPeeringsRequest.add_member(:state, Shapes::ShapeRef.new(shape: PeeringState, location: "querystring", location_name: "state"))
    ListPeeringsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPeeringsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPeeringsRequest.struct_class = Types::ListPeeringsRequest

    ListPeeringsResponse.add_member(:peerings, Shapes::ShapeRef.new(shape: PeeringList, location_name: "Peerings"))
    ListPeeringsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPeeringsResponse.struct_class = Types::ListPeeringsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Location.add_member(:address, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Address"))
    Location.add_member(:latitude, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Latitude"))
    Location.add_member(:longitude, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Longitude"))
    Location.struct_class = Types::Location

    NetworkResource.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RegisteredGatewayArn"))
    NetworkResource.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    NetworkResource.add_member(:aws_region, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "AwsRegion"))
    NetworkResource.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AccountId"))
    NetworkResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceType"))
    NetworkResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceId"))
    NetworkResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    NetworkResource.add_member(:definition, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Definition"))
    NetworkResource.add_member(:definition_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "DefinitionTimestamp"))
    NetworkResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    NetworkResource.add_member(:metadata, Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: "Metadata"))
    NetworkResource.struct_class = Types::NetworkResource

    NetworkResourceCount.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceType"))
    NetworkResourceCount.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    NetworkResourceCount.struct_class = Types::NetworkResourceCount

    NetworkResourceCountList.member = Shapes::ShapeRef.new(shape: NetworkResourceCount)

    NetworkResourceList.member = Shapes::ShapeRef.new(shape: NetworkResource)

    NetworkResourceMetadataMap.key = Shapes::ShapeRef.new(shape: ConstrainedString)
    NetworkResourceMetadataMap.value = Shapes::ShapeRef.new(shape: ConstrainedString)

    NetworkResourceSummary.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RegisteredGatewayArn"))
    NetworkResourceSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    NetworkResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceType"))
    NetworkResourceSummary.add_member(:definition, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Definition"))
    NetworkResourceSummary.add_member(:name_tag, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "NameTag"))
    NetworkResourceSummary.add_member(:is_middlebox, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMiddlebox"))
    NetworkResourceSummary.struct_class = Types::NetworkResourceSummary

    NetworkRoute.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "DestinationCidrBlock"))
    NetworkRoute.add_member(:destinations, Shapes::ShapeRef.new(shape: NetworkRouteDestinationList, location_name: "Destinations"))
    NetworkRoute.add_member(:prefix_list_id, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "PrefixListId"))
    NetworkRoute.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    NetworkRoute.add_member(:type, Shapes::ShapeRef.new(shape: RouteType, location_name: "Type"))
    NetworkRoute.struct_class = Types::NetworkRoute

    NetworkRouteDestination.add_member(:core_network_attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "CoreNetworkAttachmentId"))
    NetworkRouteDestination.add_member(:transit_gateway_attachment_id, Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId"))
    NetworkRouteDestination.add_member(:segment_name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SegmentName"))
    NetworkRouteDestination.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    NetworkRouteDestination.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceType"))
    NetworkRouteDestination.add_member(:resource_id, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceId"))
    NetworkRouteDestination.struct_class = Types::NetworkRouteDestination

    NetworkRouteDestinationList.member = Shapes::ShapeRef.new(shape: NetworkRouteDestination)

    NetworkRouteList.member = Shapes::ShapeRef.new(shape: NetworkRoute)

    NetworkTelemetry.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RegisteredGatewayArn"))
    NetworkTelemetry.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    NetworkTelemetry.add_member(:aws_region, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "AwsRegion"))
    NetworkTelemetry.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AccountId"))
    NetworkTelemetry.add_member(:resource_type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceType"))
    NetworkTelemetry.add_member(:resource_id, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "ResourceId"))
    NetworkTelemetry.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    NetworkTelemetry.add_member(:address, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Address"))
    NetworkTelemetry.add_member(:health, Shapes::ShapeRef.new(shape: ConnectionHealth, location_name: "Health"))
    NetworkTelemetry.struct_class = Types::NetworkTelemetry

    NetworkTelemetryList.member = Shapes::ShapeRef.new(shape: NetworkTelemetry)

    OrganizationStatus.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "OrganizationId"))
    OrganizationStatus.add_member(:organization_aws_service_access_status, Shapes::ShapeRef.new(shape: OrganizationAwsServiceAccessStatus, location_name: "OrganizationAwsServiceAccessStatus"))
    OrganizationStatus.add_member(:slr_deployment_status, Shapes::ShapeRef.new(shape: SLRDeploymentStatus, location_name: "SLRDeploymentStatus"))
    OrganizationStatus.add_member(:account_status_list, Shapes::ShapeRef.new(shape: AccountStatusList, location_name: "AccountStatusList"))
    OrganizationStatus.struct_class = Types::OrganizationStatus

    PathComponent.add_member(:sequence, Shapes::ShapeRef.new(shape: Integer, location_name: "Sequence"))
    PathComponent.add_member(:resource, Shapes::ShapeRef.new(shape: NetworkResourceSummary, location_name: "Resource"))
    PathComponent.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "DestinationCidrBlock"))
    PathComponent.struct_class = Types::PathComponent

    PathComponentList.member = Shapes::ShapeRef.new(shape: PathComponent)

    Peering.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, location_name: "CoreNetworkId"))
    Peering.add_member(:core_network_arn, Shapes::ShapeRef.new(shape: CoreNetworkArn, location_name: "CoreNetworkArn"))
    Peering.add_member(:peering_id, Shapes::ShapeRef.new(shape: PeeringId, location_name: "PeeringId"))
    Peering.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerAccountId"))
    Peering.add_member(:peering_type, Shapes::ShapeRef.new(shape: PeeringType, location_name: "PeeringType"))
    Peering.add_member(:state, Shapes::ShapeRef.new(shape: PeeringState, location_name: "State"))
    Peering.add_member(:edge_location, Shapes::ShapeRef.new(shape: ExternalRegionCode, location_name: "EdgeLocation"))
    Peering.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    Peering.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Peering.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Peering.struct_class = Types::Peering

    PeeringList.member = Shapes::ShapeRef.new(shape: Peering)

    ProposedSegmentChange.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ProposedSegmentChange.add_member(:attachment_policy_rule_number, Shapes::ShapeRef.new(shape: Integer, location_name: "AttachmentPolicyRuleNumber"))
    ProposedSegmentChange.add_member(:segment_name, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SegmentName"))
    ProposedSegmentChange.struct_class = Types::ProposedSegmentChange

    PutCoreNetworkPolicyRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    PutCoreNetworkPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: CoreNetworkPolicyDocument, required: true, location_name: "PolicyDocument", metadata: {"jsonvalue"=>true}))
    PutCoreNetworkPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    PutCoreNetworkPolicyRequest.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: Integer, location_name: "LatestVersionId"))
    PutCoreNetworkPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    PutCoreNetworkPolicyRequest.struct_class = Types::PutCoreNetworkPolicyRequest

    PutCoreNetworkPolicyResponse.add_member(:core_network_policy, Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: "CoreNetworkPolicy"))
    PutCoreNetworkPolicyResponse.struct_class = Types::PutCoreNetworkPolicyResponse

    PutResourcePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "PolicyDocument", metadata: {"jsonvalue"=>true}))
    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    ReasonContextMap.key = Shapes::ShapeRef.new(shape: ReasonContextKey)
    ReasonContextMap.value = Shapes::ShapeRef.new(shape: ReasonContextValue)

    RegisterTransitGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    RegisterTransitGatewayRequest.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: TransitGatewayArn, required: true, location_name: "TransitGatewayArn"))
    RegisterTransitGatewayRequest.struct_class = Types::RegisterTransitGatewayRequest

    RegisterTransitGatewayResponse.add_member(:transit_gateway_registration, Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: "TransitGatewayRegistration"))
    RegisterTransitGatewayResponse.struct_class = Types::RegisterTransitGatewayResponse

    RejectAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    RejectAttachmentRequest.struct_class = Types::RejectAttachmentRequest

    RejectAttachmentResponse.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    RejectAttachmentResponse.struct_class = Types::RejectAttachmentResponse

    Relationship.add_member(:from, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "From"))
    Relationship.add_member(:to, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "To"))
    Relationship.struct_class = Types::Relationship

    RelationshipList.member = Shapes::ShapeRef.new(shape: Relationship)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContextMap, location_name: "Context"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreCoreNetworkPolicyVersionRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    RestoreCoreNetworkPolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "policyVersionId"))
    RestoreCoreNetworkPolicyVersionRequest.struct_class = Types::RestoreCoreNetworkPolicyVersionRequest

    RestoreCoreNetworkPolicyVersionResponse.add_member(:core_network_policy, Shapes::ShapeRef.new(shape: CoreNetworkPolicy, location_name: "CoreNetworkPolicy"))
    RestoreCoreNetworkPolicyVersionResponse.struct_class = Types::RestoreCoreNetworkPolicyVersionResponse

    RouteAnalysis.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    RouteAnalysis.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerAccountId"))
    RouteAnalysis.add_member(:route_analysis_id, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "RouteAnalysisId"))
    RouteAnalysis.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTimestamp"))
    RouteAnalysis.add_member(:status, Shapes::ShapeRef.new(shape: RouteAnalysisStatus, location_name: "Status"))
    RouteAnalysis.add_member(:source, Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptions, location_name: "Source"))
    RouteAnalysis.add_member(:destination, Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptions, location_name: "Destination"))
    RouteAnalysis.add_member(:include_return_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeReturnPath"))
    RouteAnalysis.add_member(:use_middleboxes, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseMiddleboxes"))
    RouteAnalysis.add_member(:forward_path, Shapes::ShapeRef.new(shape: RouteAnalysisPath, location_name: "ForwardPath"))
    RouteAnalysis.add_member(:return_path, Shapes::ShapeRef.new(shape: RouteAnalysisPath, location_name: "ReturnPath"))
    RouteAnalysis.struct_class = Types::RouteAnalysis

    RouteAnalysisCompletion.add_member(:result_code, Shapes::ShapeRef.new(shape: RouteAnalysisCompletionResultCode, location_name: "ResultCode"))
    RouteAnalysisCompletion.add_member(:reason_code, Shapes::ShapeRef.new(shape: RouteAnalysisCompletionReasonCode, location_name: "ReasonCode"))
    RouteAnalysisCompletion.add_member(:reason_context, Shapes::ShapeRef.new(shape: ReasonContextMap, location_name: "ReasonContext"))
    RouteAnalysisCompletion.struct_class = Types::RouteAnalysisCompletion

    RouteAnalysisEndpointOptions.add_member(:transit_gateway_attachment_arn, Shapes::ShapeRef.new(shape: TransitGatewayAttachmentArn, location_name: "TransitGatewayAttachmentArn"))
    RouteAnalysisEndpointOptions.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: "TransitGatewayArn"))
    RouteAnalysisEndpointOptions.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IpAddress"))
    RouteAnalysisEndpointOptions.struct_class = Types::RouteAnalysisEndpointOptions

    RouteAnalysisEndpointOptionsSpecification.add_member(:transit_gateway_attachment_arn, Shapes::ShapeRef.new(shape: TransitGatewayAttachmentArn, location_name: "TransitGatewayAttachmentArn"))
    RouteAnalysisEndpointOptionsSpecification.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IpAddress"))
    RouteAnalysisEndpointOptionsSpecification.struct_class = Types::RouteAnalysisEndpointOptionsSpecification

    RouteAnalysisPath.add_member(:completion_status, Shapes::ShapeRef.new(shape: RouteAnalysisCompletion, location_name: "CompletionStatus"))
    RouteAnalysisPath.add_member(:path, Shapes::ShapeRef.new(shape: PathComponentList, location_name: "Path"))
    RouteAnalysisPath.struct_class = Types::RouteAnalysisPath

    RouteStateList.member = Shapes::ShapeRef.new(shape: RouteState)

    RouteTableIdentifier.add_member(:transit_gateway_route_table_arn, Shapes::ShapeRef.new(shape: TransitGatewayRouteTableArn, location_name: "TransitGatewayRouteTableArn"))
    RouteTableIdentifier.add_member(:core_network_segment_edge, Shapes::ShapeRef.new(shape: CoreNetworkSegmentEdgeIdentifier, location_name: "CoreNetworkSegmentEdge"))
    RouteTableIdentifier.struct_class = Types::RouteTableIdentifier

    RouteTypeList.member = Shapes::ShapeRef.new(shape: RouteType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ServerSideString, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ServerSideString, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:limit_code, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "LimitCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Site.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Site.add_member(:site_arn, Shapes::ShapeRef.new(shape: SiteArn, location_name: "SiteArn"))
    Site.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    Site.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    Site.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    Site.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Site.add_member(:state, Shapes::ShapeRef.new(shape: SiteState, location_name: "State"))
    Site.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Site.struct_class = Types::Site

    SiteIdList.member = Shapes::ShapeRef.new(shape: SiteId)

    SiteList.member = Shapes::ShapeRef.new(shape: Site)

    SiteToSiteVpnAttachment.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    SiteToSiteVpnAttachment.add_member(:vpn_connection_arn, Shapes::ShapeRef.new(shape: VpnConnectionArn, location_name: "VpnConnectionArn"))
    SiteToSiteVpnAttachment.struct_class = Types::SiteToSiteVpnAttachment

    StartOrganizationServiceAccessUpdateRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    StartOrganizationServiceAccessUpdateRequest.struct_class = Types::StartOrganizationServiceAccessUpdateRequest

    StartOrganizationServiceAccessUpdateResponse.add_member(:organization_status, Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: "OrganizationStatus"))
    StartOrganizationServiceAccessUpdateResponse.struct_class = Types::StartOrganizationServiceAccessUpdateResponse

    StartRouteAnalysisRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    StartRouteAnalysisRequest.add_member(:source, Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptionsSpecification, required: true, location_name: "Source"))
    StartRouteAnalysisRequest.add_member(:destination, Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptionsSpecification, required: true, location_name: "Destination"))
    StartRouteAnalysisRequest.add_member(:include_return_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeReturnPath"))
    StartRouteAnalysisRequest.add_member(:use_middleboxes, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseMiddleboxes"))
    StartRouteAnalysisRequest.struct_class = Types::StartRouteAnalysisRequest

    StartRouteAnalysisResponse.add_member(:route_analysis, Shapes::ShapeRef.new(shape: RouteAnalysis, location_name: "RouteAnalysis"))
    StartRouteAnalysisResponse.struct_class = Types::StartRouteAnalysisResponse

    SubnetArnList.member = Shapes::ShapeRef.new(shape: SubnetArn)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TransitGatewayArnList.member = Shapes::ShapeRef.new(shape: TransitGatewayArn)

    TransitGatewayConnectPeerArnList.member = Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn)

    TransitGatewayConnectPeerAssociation.add_member(:transit_gateway_connect_peer_arn, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerArn, location_name: "TransitGatewayConnectPeerArn"))
    TransitGatewayConnectPeerAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    TransitGatewayConnectPeerAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    TransitGatewayConnectPeerAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    TransitGatewayConnectPeerAssociation.add_member(:state, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociationState, location_name: "State"))
    TransitGatewayConnectPeerAssociation.struct_class = Types::TransitGatewayConnectPeerAssociation

    TransitGatewayConnectPeerAssociationList.member = Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation)

    TransitGatewayPeering.add_member(:peering, Shapes::ShapeRef.new(shape: Peering, location_name: "Peering"))
    TransitGatewayPeering.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: "TransitGatewayArn"))
    TransitGatewayPeering.add_member(:transit_gateway_peering_attachment_id, Shapes::ShapeRef.new(shape: TransitGatewayPeeringAttachmentId, location_name: "TransitGatewayPeeringAttachmentId"))
    TransitGatewayPeering.struct_class = Types::TransitGatewayPeering

    TransitGatewayRegistration.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, location_name: "GlobalNetworkId"))
    TransitGatewayRegistration.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: TransitGatewayArn, location_name: "TransitGatewayArn"))
    TransitGatewayRegistration.add_member(:state, Shapes::ShapeRef.new(shape: TransitGatewayRegistrationStateReason, location_name: "State"))
    TransitGatewayRegistration.struct_class = Types::TransitGatewayRegistration

    TransitGatewayRegistrationList.member = Shapes::ShapeRef.new(shape: TransitGatewayRegistration)

    TransitGatewayRegistrationStateReason.add_member(:code, Shapes::ShapeRef.new(shape: TransitGatewayRegistrationState, location_name: "Code"))
    TransitGatewayRegistrationStateReason.add_member(:message, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Message"))
    TransitGatewayRegistrationStateReason.struct_class = Types::TransitGatewayRegistrationStateReason

    TransitGatewayRouteTableAttachment.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    TransitGatewayRouteTableAttachment.add_member(:peering_id, Shapes::ShapeRef.new(shape: PeeringId, location_name: "PeeringId"))
    TransitGatewayRouteTableAttachment.add_member(:transit_gateway_route_table_arn, Shapes::ShapeRef.new(shape: TransitGatewayRouteTableArn, location_name: "TransitGatewayRouteTableArn"))
    TransitGatewayRouteTableAttachment.struct_class = Types::TransitGatewayRouteTableAttachment

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectionRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "connectionId"))
    UpdateConnectionRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    UpdateConnectionRequest.add_member(:connected_link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "ConnectedLinkId"))
    UpdateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    UpdateConnectionRequest.struct_class = Types::UpdateConnectionRequest

    UpdateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    UpdateConnectionResponse.struct_class = Types::UpdateConnectionResponse

    UpdateCoreNetworkRequest.add_member(:core_network_id, Shapes::ShapeRef.new(shape: CoreNetworkId, required: true, location: "uri", location_name: "coreNetworkId"))
    UpdateCoreNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    UpdateCoreNetworkRequest.struct_class = Types::UpdateCoreNetworkRequest

    UpdateCoreNetworkResponse.add_member(:core_network, Shapes::ShapeRef.new(shape: CoreNetwork, location_name: "CoreNetwork"))
    UpdateCoreNetworkResponse.struct_class = Types::UpdateCoreNetworkResponse

    UpdateDeviceRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "deviceId"))
    UpdateDeviceRequest.add_member(:aws_location, Shapes::ShapeRef.new(shape: AWSLocation, location_name: "AWSLocation"))
    UpdateDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    UpdateDeviceRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Type"))
    UpdateDeviceRequest.add_member(:vendor, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Vendor"))
    UpdateDeviceRequest.add_member(:model, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Model"))
    UpdateDeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "SerialNumber"))
    UpdateDeviceRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    UpdateDeviceRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    UpdateDeviceRequest.struct_class = Types::UpdateDeviceRequest

    UpdateDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    UpdateDeviceResponse.struct_class = Types::UpdateDeviceResponse

    UpdateGlobalNetworkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateGlobalNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    UpdateGlobalNetworkRequest.struct_class = Types::UpdateGlobalNetworkRequest

    UpdateGlobalNetworkResponse.add_member(:global_network, Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: "GlobalNetwork"))
    UpdateGlobalNetworkResponse.struct_class = Types::UpdateGlobalNetworkResponse

    UpdateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    UpdateLinkRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    UpdateLinkRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Type"))
    UpdateLinkRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "Bandwidth"))
    UpdateLinkRequest.add_member(:provider, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Provider"))
    UpdateLinkRequest.struct_class = Types::UpdateLinkRequest

    UpdateLinkResponse.add_member(:link, Shapes::ShapeRef.new(shape: Link, location_name: "Link"))
    UpdateLinkResponse.struct_class = Types::UpdateLinkResponse

    UpdateNetworkResourceMetadataRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateNetworkResourceMetadataRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UpdateNetworkResourceMetadataRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, required: true, location_name: "Metadata"))
    UpdateNetworkResourceMetadataRequest.struct_class = Types::UpdateNetworkResourceMetadataRequest

    UpdateNetworkResourceMetadataResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    UpdateNetworkResourceMetadataResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: "Metadata"))
    UpdateNetworkResourceMetadataResponse.struct_class = Types::UpdateNetworkResourceMetadataResponse

    UpdateSiteRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: GlobalNetworkId, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateSiteRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "siteId"))
    UpdateSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConstrainedString, location_name: "Description"))
    UpdateSiteRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    UpdateSiteRequest.struct_class = Types::UpdateSiteRequest

    UpdateSiteResponse.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    UpdateSiteResponse.struct_class = Types::UpdateSiteResponse

    UpdateVpcAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    UpdateVpcAttachmentRequest.add_member(:add_subnet_arns, Shapes::ShapeRef.new(shape: SubnetArnList, location_name: "AddSubnetArns"))
    UpdateVpcAttachmentRequest.add_member(:remove_subnet_arns, Shapes::ShapeRef.new(shape: SubnetArnList, location_name: "RemoveSubnetArns"))
    UpdateVpcAttachmentRequest.add_member(:options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "Options"))
    UpdateVpcAttachmentRequest.struct_class = Types::UpdateVpcAttachmentRequest

    UpdateVpcAttachmentResponse.add_member(:vpc_attachment, Shapes::ShapeRef.new(shape: VpcAttachment, location_name: "VpcAttachment"))
    UpdateVpcAttachmentResponse.struct_class = Types::UpdateVpcAttachmentResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ServerSideString, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VpcAttachment.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    VpcAttachment.add_member(:subnet_arns, Shapes::ShapeRef.new(shape: SubnetArnList, location_name: "SubnetArns"))
    VpcAttachment.add_member(:options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "Options"))
    VpcAttachment.struct_class = Types::VpcAttachment

    VpcOptions.add_member(:ipv_6_support, Shapes::ShapeRef.new(shape: Boolean, location_name: "Ipv6Support"))
    VpcOptions.add_member(:appliance_mode_support, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplianceModeSupport"))
    VpcOptions.struct_class = Types::VpcOptions


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-07-05"

      api.metadata = {
        "apiVersion" => "2019-07-05",
        "endpointPrefix" => "networkmanager",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "NetworkManager",
        "serviceFullName" => "AWS Network Manager",
        "serviceId" => "NetworkManager",
        "signatureVersion" => "v4",
        "signingName" => "networkmanager",
        "uid" => "networkmanager-2019-07-05",
      }

      api.add_operation(:accept_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/attachments/{attachmentId}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateConnectPeer"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connect-peer-associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_customer_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateCustomerGateway"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/customer-gateway-associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateCustomerGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateCustomerGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateLink"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/link-associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_transit_gateway_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTransitGatewayConnectPeer"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/transit-gateway-connect-peer-associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateTransitGatewayConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTransitGatewayConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_connect_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/connect-attachments"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectPeer"
        o.http_method = "POST"
        o.http_request_uri = "/connect-peers"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connections"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_core_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCoreNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/core-networks"
        o.input = Shapes::ShapeRef.new(shape: CreateCoreNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCoreNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: CoreNetworkPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDevice"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/devices"
        o.input = Shapes::ShapeRef.new(shape: CreateDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_global_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlobalNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks"
        o.input = Shapes::ShapeRef.new(shape: CreateGlobalNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGlobalNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLink"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/links"
        o.input = Shapes::ShapeRef.new(shape: CreateLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSite"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/sites"
        o.input = Shapes::ShapeRef.new(shape: CreateSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_site_to_site_vpn_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSiteToSiteVpnAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/site-to-site-vpn-attachments"
        o.input = Shapes::ShapeRef.new(shape: CreateSiteToSiteVpnAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSiteToSiteVpnAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_transit_gateway_peering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTransitGatewayPeering"
        o.http_method = "POST"
        o.http_request_uri = "/transit-gateway-peerings"
        o.input = Shapes::ShapeRef.new(shape: CreateTransitGatewayPeeringRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTransitGatewayPeeringResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_transit_gateway_route_table_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTransitGatewayRouteTableAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/transit-gateway-route-table-attachments"
        o.input = Shapes::ShapeRef.new(shape: CreateTransitGatewayRouteTableAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTransitGatewayRouteTableAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_vpc_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/vpc-attachments"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttachment"
        o.http_method = "DELETE"
        o.http_request_uri = "/attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectPeer"
        o.http_method = "DELETE"
        o.http_request_uri = "/connect-peers/{connectPeerId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connections/{connectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_core_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCoreNetwork"
        o.http_method = "DELETE"
        o.http_request_uri = "/core-networks/{coreNetworkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCoreNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCoreNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_core_network_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCoreNetworkPolicyVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-policy-versions/{policyVersionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCoreNetworkPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCoreNetworkPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDevice"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/devices/{deviceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_global_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGlobalNetwork"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGlobalNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGlobalNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLink"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/links/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_peering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePeering"
        o.http_method = "DELETE"
        o.http_request_uri = "/peerings/{peeringId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePeeringRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePeeringResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/resource-policy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSite"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/sites/{siteId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_transit_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTransitGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTransitGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTransitGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_global_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGlobalNetworks"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks"
        o.input = Shapes::ShapeRef.new(shape: DescribeGlobalNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGlobalNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disassociate_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateConnectPeer"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connect-peer-associations/{connectPeerId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_customer_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateCustomerGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateCustomerGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateCustomerGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateLink"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/link-associations"
        o.input = Shapes::ShapeRef.new(shape: DisassociateLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_transit_gateway_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTransitGatewayConnectPeer"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-networks/{globalNetworkId}/transit-gateway-connect-peer-associations/{transitGatewayConnectPeerArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTransitGatewayConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTransitGatewayConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:execute_core_network_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteCoreNetworkChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-change-sets/{policyVersionId}/execute"
        o.input = Shapes::ShapeRef.new(shape: ExecuteCoreNetworkChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteCoreNetworkChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_connect_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectAttachment"
        o.http_method = "GET"
        o.http_request_uri = "/connect-attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connect_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectPeer"
        o.http_method = "GET"
        o.http_request_uri = "/connect-peers/{connectPeerId}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connect_peer_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectPeerAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connect-peer-associations"
        o.input = Shapes::ShapeRef.new(shape: GetConnectPeerAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectPeerAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnections"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connections"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_core_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreNetwork"
        o.http_method = "GET"
        o.http_request_uri = "/core-networks/{coreNetworkId}"
        o.input = Shapes::ShapeRef.new(shape: GetCoreNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_core_network_change_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreNetworkChangeEvents"
        o.http_method = "GET"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-change-events/{policyVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetCoreNetworkChangeEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreNetworkChangeEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_core_network_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreNetworkChangeSet"
        o.http_method = "GET"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-change-sets/{policyVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetCoreNetworkChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreNetworkChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_core_network_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreNetworkPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-policy"
        o.input = Shapes::ShapeRef.new(shape: GetCoreNetworkPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreNetworkPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_customer_gateway_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomerGatewayAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/customer-gateway-associations"
        o.input = Shapes::ShapeRef.new(shape: GetCustomerGatewayAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomerGatewayAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevices"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/devices"
        o.input = Shapes::ShapeRef.new(shape: GetDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_link_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLinkAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/link-associations"
        o.input = Shapes::ShapeRef.new(shape: GetLinkAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLinkAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLinks"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/links"
        o.input = Shapes::ShapeRef.new(shape: GetLinksRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLinksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_network_resource_counts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkResourceCounts"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/network-resource-count"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkResourceCountsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkResourceCountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_network_resource_relationships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkResourceRelationships"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/network-resource-relationships"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkResourceRelationshipsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkResourceRelationshipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_network_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkResources"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/network-resources"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_network_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkRoutes"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/network-routes"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkRoutesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_network_telemetry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkTelemetry"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/network-telemetry"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkTelemetryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkTelemetryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/resource-policy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_route_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouteAnalysis"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/route-analyses/{routeAnalysisId}"
        o.input = Shapes::ShapeRef.new(shape: GetRouteAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouteAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_site_to_site_vpn_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSiteToSiteVpnAttachment"
        o.http_method = "GET"
        o.http_request_uri = "/site-to-site-vpn-attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetSiteToSiteVpnAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSiteToSiteVpnAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_sites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSites"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/sites"
        o.input = Shapes::ShapeRef.new(shape: GetSitesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSitesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_transit_gateway_connect_peer_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransitGatewayConnectPeerAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/transit-gateway-connect-peer-associations"
        o.input = Shapes::ShapeRef.new(shape: GetTransitGatewayConnectPeerAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransitGatewayConnectPeerAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_transit_gateway_peering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransitGatewayPeering"
        o.http_method = "GET"
        o.http_request_uri = "/transit-gateway-peerings/{peeringId}"
        o.input = Shapes::ShapeRef.new(shape: GetTransitGatewayPeeringRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransitGatewayPeeringResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_transit_gateway_registrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransitGatewayRegistrations"
        o.http_method = "GET"
        o.http_request_uri = "/global-networks/{globalNetworkId}/transit-gateway-registrations"
        o.input = Shapes::ShapeRef.new(shape: GetTransitGatewayRegistrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransitGatewayRegistrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_transit_gateway_route_table_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransitGatewayRouteTableAttachment"
        o.http_method = "GET"
        o.http_request_uri = "/transit-gateway-route-table-attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetTransitGatewayRouteTableAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransitGatewayRouteTableAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_vpc_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVpcAttachment"
        o.http_method = "GET"
        o.http_request_uri = "/vpc-attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetVpcAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVpcAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_attachments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachments"
        o.http_method = "GET"
        o.http_request_uri = "/attachments"
        o.input = Shapes::ShapeRef.new(shape: ListAttachmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connect_peers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectPeers"
        o.http_method = "GET"
        o.http_request_uri = "/connect-peers"
        o.input = Shapes::ShapeRef.new(shape: ListConnectPeersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectPeersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_core_network_policy_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoreNetworkPolicyVersions"
        o.http_method = "GET"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-policy-versions"
        o.input = Shapes::ShapeRef.new(shape: ListCoreNetworkPolicyVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoreNetworkPolicyVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_core_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoreNetworks"
        o.http_method = "GET"
        o.http_request_uri = "/core-networks"
        o.input = Shapes::ShapeRef.new(shape: ListCoreNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoreNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_service_access_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationServiceAccessStatus"
        o.http_method = "GET"
        o.http_request_uri = "/organizations/service-access"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationServiceAccessStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationServiceAccessStatusResponse)
      end)

      api.add_operation(:list_peerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPeerings"
        o.http_method = "GET"
        o.http_request_uri = "/peerings"
        o.input = Shapes::ShapeRef.new(shape: ListPeeringsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPeeringsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_core_network_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutCoreNetworkPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-policy"
        o.input = Shapes::ShapeRef.new(shape: PutCoreNetworkPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutCoreNetworkPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: CoreNetworkPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/resource-policy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:register_transit_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTransitGateway"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/transit-gateway-registrations"
        o.input = Shapes::ShapeRef.new(shape: RegisterTransitGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTransitGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:reject_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/attachments/{attachmentId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:restore_core_network_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreCoreNetworkPolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/core-networks/{coreNetworkId}/core-network-policy-versions/{policyVersionId}/restore"
        o.input = Shapes::ShapeRef.new(shape: RestoreCoreNetworkPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreCoreNetworkPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_organization_service_access_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOrganizationServiceAccessUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/organizations/service-access"
        o.input = Shapes::ShapeRef.new(shape: StartOrganizationServiceAccessUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOrganizationServiceAccessUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_route_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRouteAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/global-networks/{globalNetworkId}/route-analyses"
        o.input = Shapes::ShapeRef.new(shape: StartRouteAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRouteAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnection"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-networks/{globalNetworkId}/connections/{connectionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_core_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCoreNetwork"
        o.http_method = "PATCH"
        o.http_request_uri = "/core-networks/{coreNetworkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCoreNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCoreNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevice"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-networks/{globalNetworkId}/devices/{deviceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_global_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalNetwork"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-networks/{globalNetworkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGlobalNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLink"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-networks/{globalNetworkId}/links/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_network_resource_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkResourceMetadata"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-networks/{globalNetworkId}/network-resources/{resourceArn}/metadata"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkResourceMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkResourceMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSite"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-networks/{globalNetworkId}/sites/{siteId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_vpc_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVpcAttachment"
        o.http_method = "PATCH"
        o.http_request_uri = "/vpc-attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVpcAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVpcAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
