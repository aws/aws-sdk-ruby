# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectConnect
  # @api private
  module ClientApi

    include Seahorse::Model

    ASN = Shapes::IntegerShape.new(name: 'ASN')
    AcceptDirectConnectGatewayAssociationProposalRequest = Shapes::StructureShape.new(name: 'AcceptDirectConnectGatewayAssociationProposalRequest')
    AcceptDirectConnectGatewayAssociationProposalResult = Shapes::StructureShape.new(name: 'AcceptDirectConnectGatewayAssociationProposalResult')
    AddressFamily = Shapes::StringShape.new(name: 'AddressFamily')
    AllocateConnectionOnInterconnectRequest = Shapes::StructureShape.new(name: 'AllocateConnectionOnInterconnectRequest')
    AllocateHostedConnectionRequest = Shapes::StructureShape.new(name: 'AllocateHostedConnectionRequest')
    AllocatePrivateVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'AllocatePrivateVirtualInterfaceRequest')
    AllocatePublicVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'AllocatePublicVirtualInterfaceRequest')
    AllocateTransitVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'AllocateTransitVirtualInterfaceRequest')
    AllocateTransitVirtualInterfaceResult = Shapes::StructureShape.new(name: 'AllocateTransitVirtualInterfaceResult')
    AmazonAddress = Shapes::StringShape.new(name: 'AmazonAddress')
    AssociateConnectionWithLagRequest = Shapes::StructureShape.new(name: 'AssociateConnectionWithLagRequest')
    AssociateHostedConnectionRequest = Shapes::StructureShape.new(name: 'AssociateHostedConnectionRequest')
    AssociateVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'AssociateVirtualInterfaceRequest')
    AssociatedGateway = Shapes::StructureShape.new(name: 'AssociatedGateway')
    AssociatedGatewayId = Shapes::StringShape.new(name: 'AssociatedGatewayId')
    AvailablePortSpeeds = Shapes::ListShape.new(name: 'AvailablePortSpeeds')
    AwsDevice = Shapes::StringShape.new(name: 'AwsDevice')
    AwsDeviceV2 = Shapes::StringShape.new(name: 'AwsDeviceV2')
    BGPAuthKey = Shapes::StringShape.new(name: 'BGPAuthKey')
    BGPPeer = Shapes::StructureShape.new(name: 'BGPPeer')
    BGPPeerId = Shapes::StringShape.new(name: 'BGPPeerId')
    BGPPeerIdList = Shapes::ListShape.new(name: 'BGPPeerIdList')
    BGPPeerList = Shapes::ListShape.new(name: 'BGPPeerList')
    BGPPeerState = Shapes::StringShape.new(name: 'BGPPeerState')
    BGPStatus = Shapes::StringShape.new(name: 'BGPStatus')
    Bandwidth = Shapes::StringShape.new(name: 'Bandwidth')
    BooleanFlag = Shapes::BooleanShape.new(name: 'BooleanFlag')
    CIDR = Shapes::StringShape.new(name: 'CIDR')
    ConfirmConnectionRequest = Shapes::StructureShape.new(name: 'ConfirmConnectionRequest')
    ConfirmConnectionResponse = Shapes::StructureShape.new(name: 'ConfirmConnectionResponse')
    ConfirmPrivateVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'ConfirmPrivateVirtualInterfaceRequest')
    ConfirmPrivateVirtualInterfaceResponse = Shapes::StructureShape.new(name: 'ConfirmPrivateVirtualInterfaceResponse')
    ConfirmPublicVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'ConfirmPublicVirtualInterfaceRequest')
    ConfirmPublicVirtualInterfaceResponse = Shapes::StructureShape.new(name: 'ConfirmPublicVirtualInterfaceResponse')
    ConfirmTransitVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'ConfirmTransitVirtualInterfaceRequest')
    ConfirmTransitVirtualInterfaceResponse = Shapes::StructureShape.new(name: 'ConfirmTransitVirtualInterfaceResponse')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    Connections = Shapes::StructureShape.new(name: 'Connections')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateBGPPeerRequest = Shapes::StructureShape.new(name: 'CreateBGPPeerRequest')
    CreateBGPPeerResponse = Shapes::StructureShape.new(name: 'CreateBGPPeerResponse')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateDirectConnectGatewayAssociationProposalRequest = Shapes::StructureShape.new(name: 'CreateDirectConnectGatewayAssociationProposalRequest')
    CreateDirectConnectGatewayAssociationProposalResult = Shapes::StructureShape.new(name: 'CreateDirectConnectGatewayAssociationProposalResult')
    CreateDirectConnectGatewayAssociationRequest = Shapes::StructureShape.new(name: 'CreateDirectConnectGatewayAssociationRequest')
    CreateDirectConnectGatewayAssociationResult = Shapes::StructureShape.new(name: 'CreateDirectConnectGatewayAssociationResult')
    CreateDirectConnectGatewayRequest = Shapes::StructureShape.new(name: 'CreateDirectConnectGatewayRequest')
    CreateDirectConnectGatewayResult = Shapes::StructureShape.new(name: 'CreateDirectConnectGatewayResult')
    CreateInterconnectRequest = Shapes::StructureShape.new(name: 'CreateInterconnectRequest')
    CreateLagRequest = Shapes::StructureShape.new(name: 'CreateLagRequest')
    CreatePrivateVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'CreatePrivateVirtualInterfaceRequest')
    CreatePublicVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'CreatePublicVirtualInterfaceRequest')
    CreateTransitVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'CreateTransitVirtualInterfaceRequest')
    CreateTransitVirtualInterfaceResult = Shapes::StructureShape.new(name: 'CreateTransitVirtualInterfaceResult')
    CustomerAddress = Shapes::StringShape.new(name: 'CustomerAddress')
    DeleteBGPPeerRequest = Shapes::StructureShape.new(name: 'DeleteBGPPeerRequest')
    DeleteBGPPeerResponse = Shapes::StructureShape.new(name: 'DeleteBGPPeerResponse')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteDirectConnectGatewayAssociationProposalRequest = Shapes::StructureShape.new(name: 'DeleteDirectConnectGatewayAssociationProposalRequest')
    DeleteDirectConnectGatewayAssociationProposalResult = Shapes::StructureShape.new(name: 'DeleteDirectConnectGatewayAssociationProposalResult')
    DeleteDirectConnectGatewayAssociationRequest = Shapes::StructureShape.new(name: 'DeleteDirectConnectGatewayAssociationRequest')
    DeleteDirectConnectGatewayAssociationResult = Shapes::StructureShape.new(name: 'DeleteDirectConnectGatewayAssociationResult')
    DeleteDirectConnectGatewayRequest = Shapes::StructureShape.new(name: 'DeleteDirectConnectGatewayRequest')
    DeleteDirectConnectGatewayResult = Shapes::StructureShape.new(name: 'DeleteDirectConnectGatewayResult')
    DeleteInterconnectRequest = Shapes::StructureShape.new(name: 'DeleteInterconnectRequest')
    DeleteInterconnectResponse = Shapes::StructureShape.new(name: 'DeleteInterconnectResponse')
    DeleteLagRequest = Shapes::StructureShape.new(name: 'DeleteLagRequest')
    DeleteVirtualInterfaceRequest = Shapes::StructureShape.new(name: 'DeleteVirtualInterfaceRequest')
    DeleteVirtualInterfaceResponse = Shapes::StructureShape.new(name: 'DeleteVirtualInterfaceResponse')
    DescribeConnectionLoaRequest = Shapes::StructureShape.new(name: 'DescribeConnectionLoaRequest')
    DescribeConnectionLoaResponse = Shapes::StructureShape.new(name: 'DescribeConnectionLoaResponse')
    DescribeConnectionsOnInterconnectRequest = Shapes::StructureShape.new(name: 'DescribeConnectionsOnInterconnectRequest')
    DescribeConnectionsRequest = Shapes::StructureShape.new(name: 'DescribeConnectionsRequest')
    DescribeDirectConnectGatewayAssociationProposalsRequest = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewayAssociationProposalsRequest')
    DescribeDirectConnectGatewayAssociationProposalsResult = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewayAssociationProposalsResult')
    DescribeDirectConnectGatewayAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewayAssociationsRequest')
    DescribeDirectConnectGatewayAssociationsResult = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewayAssociationsResult')
    DescribeDirectConnectGatewayAttachmentsRequest = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewayAttachmentsRequest')
    DescribeDirectConnectGatewayAttachmentsResult = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewayAttachmentsResult')
    DescribeDirectConnectGatewaysRequest = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewaysRequest')
    DescribeDirectConnectGatewaysResult = Shapes::StructureShape.new(name: 'DescribeDirectConnectGatewaysResult')
    DescribeHostedConnectionsRequest = Shapes::StructureShape.new(name: 'DescribeHostedConnectionsRequest')
    DescribeInterconnectLoaRequest = Shapes::StructureShape.new(name: 'DescribeInterconnectLoaRequest')
    DescribeInterconnectLoaResponse = Shapes::StructureShape.new(name: 'DescribeInterconnectLoaResponse')
    DescribeInterconnectsRequest = Shapes::StructureShape.new(name: 'DescribeInterconnectsRequest')
    DescribeLagsRequest = Shapes::StructureShape.new(name: 'DescribeLagsRequest')
    DescribeLoaRequest = Shapes::StructureShape.new(name: 'DescribeLoaRequest')
    DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
    DescribeTagsResponse = Shapes::StructureShape.new(name: 'DescribeTagsResponse')
    DescribeVirtualInterfacesRequest = Shapes::StructureShape.new(name: 'DescribeVirtualInterfacesRequest')
    DirectConnectClientException = Shapes::StructureShape.new(name: 'DirectConnectClientException')
    DirectConnectGateway = Shapes::StructureShape.new(name: 'DirectConnectGateway')
    DirectConnectGatewayAssociation = Shapes::StructureShape.new(name: 'DirectConnectGatewayAssociation')
    DirectConnectGatewayAssociationId = Shapes::StringShape.new(name: 'DirectConnectGatewayAssociationId')
    DirectConnectGatewayAssociationList = Shapes::ListShape.new(name: 'DirectConnectGatewayAssociationList')
    DirectConnectGatewayAssociationProposal = Shapes::StructureShape.new(name: 'DirectConnectGatewayAssociationProposal')
    DirectConnectGatewayAssociationProposalId = Shapes::StringShape.new(name: 'DirectConnectGatewayAssociationProposalId')
    DirectConnectGatewayAssociationProposalList = Shapes::ListShape.new(name: 'DirectConnectGatewayAssociationProposalList')
    DirectConnectGatewayAssociationProposalState = Shapes::StringShape.new(name: 'DirectConnectGatewayAssociationProposalState')
    DirectConnectGatewayAssociationState = Shapes::StringShape.new(name: 'DirectConnectGatewayAssociationState')
    DirectConnectGatewayAttachment = Shapes::StructureShape.new(name: 'DirectConnectGatewayAttachment')
    DirectConnectGatewayAttachmentList = Shapes::ListShape.new(name: 'DirectConnectGatewayAttachmentList')
    DirectConnectGatewayAttachmentState = Shapes::StringShape.new(name: 'DirectConnectGatewayAttachmentState')
    DirectConnectGatewayAttachmentType = Shapes::StringShape.new(name: 'DirectConnectGatewayAttachmentType')
    DirectConnectGatewayId = Shapes::StringShape.new(name: 'DirectConnectGatewayId')
    DirectConnectGatewayList = Shapes::ListShape.new(name: 'DirectConnectGatewayList')
    DirectConnectGatewayName = Shapes::StringShape.new(name: 'DirectConnectGatewayName')
    DirectConnectGatewayState = Shapes::StringShape.new(name: 'DirectConnectGatewayState')
    DirectConnectServerException = Shapes::StructureShape.new(name: 'DirectConnectServerException')
    DisassociateConnectionFromLagRequest = Shapes::StructureShape.new(name: 'DisassociateConnectionFromLagRequest')
    DuplicateTagKeysException = Shapes::StructureShape.new(name: 'DuplicateTagKeysException')
    EndTime = Shapes::TimestampShape.new(name: 'EndTime')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailureTestHistoryStatus = Shapes::StringShape.new(name: 'FailureTestHistoryStatus')
    GatewayIdToAssociate = Shapes::StringShape.new(name: 'GatewayIdToAssociate')
    GatewayIdentifier = Shapes::StringShape.new(name: 'GatewayIdentifier')
    GatewayType = Shapes::StringShape.new(name: 'GatewayType')
    HasLogicalRedundancy = Shapes::StringShape.new(name: 'HasLogicalRedundancy')
    Interconnect = Shapes::StructureShape.new(name: 'Interconnect')
    InterconnectId = Shapes::StringShape.new(name: 'InterconnectId')
    InterconnectList = Shapes::ListShape.new(name: 'InterconnectList')
    InterconnectName = Shapes::StringShape.new(name: 'InterconnectName')
    InterconnectState = Shapes::StringShape.new(name: 'InterconnectState')
    Interconnects = Shapes::StructureShape.new(name: 'Interconnects')
    JumboFrameCapable = Shapes::BooleanShape.new(name: 'JumboFrameCapable')
    Lag = Shapes::StructureShape.new(name: 'Lag')
    LagId = Shapes::StringShape.new(name: 'LagId')
    LagList = Shapes::ListShape.new(name: 'LagList')
    LagName = Shapes::StringShape.new(name: 'LagName')
    LagState = Shapes::StringShape.new(name: 'LagState')
    Lags = Shapes::StructureShape.new(name: 'Lags')
    ListVirtualInterfaceTestHistoryRequest = Shapes::StructureShape.new(name: 'ListVirtualInterfaceTestHistoryRequest')
    ListVirtualInterfaceTestHistoryResponse = Shapes::StructureShape.new(name: 'ListVirtualInterfaceTestHistoryResponse')
    Loa = Shapes::StructureShape.new(name: 'Loa')
    LoaContent = Shapes::BlobShape.new(name: 'LoaContent')
    LoaContentType = Shapes::StringShape.new(name: 'LoaContentType')
    LoaIssueTime = Shapes::TimestampShape.new(name: 'LoaIssueTime')
    Location = Shapes::StructureShape.new(name: 'Location')
    LocationCode = Shapes::StringShape.new(name: 'LocationCode')
    LocationList = Shapes::ListShape.new(name: 'LocationList')
    LocationName = Shapes::StringShape.new(name: 'LocationName')
    Locations = Shapes::StructureShape.new(name: 'Locations')
    LongAsn = Shapes::IntegerShape.new(name: 'LongAsn')
    MTU = Shapes::IntegerShape.new(name: 'MTU')
    MaxResultSetSize = Shapes::IntegerShape.new(name: 'MaxResultSetSize')
    NewBGPPeer = Shapes::StructureShape.new(name: 'NewBGPPeer')
    NewPrivateVirtualInterface = Shapes::StructureShape.new(name: 'NewPrivateVirtualInterface')
    NewPrivateVirtualInterfaceAllocation = Shapes::StructureShape.new(name: 'NewPrivateVirtualInterfaceAllocation')
    NewPublicVirtualInterface = Shapes::StructureShape.new(name: 'NewPublicVirtualInterface')
    NewPublicVirtualInterfaceAllocation = Shapes::StructureShape.new(name: 'NewPublicVirtualInterfaceAllocation')
    NewTransitVirtualInterface = Shapes::StructureShape.new(name: 'NewTransitVirtualInterface')
    NewTransitVirtualInterfaceAllocation = Shapes::StructureShape.new(name: 'NewTransitVirtualInterfaceAllocation')
    OwnerAccount = Shapes::StringShape.new(name: 'OwnerAccount')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartnerName = Shapes::StringShape.new(name: 'PartnerName')
    PortSpeed = Shapes::StringShape.new(name: 'PortSpeed')
    ProviderList = Shapes::ListShape.new(name: 'ProviderList')
    ProviderName = Shapes::StringShape.new(name: 'ProviderName')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    RouteFilterPrefix = Shapes::StructureShape.new(name: 'RouteFilterPrefix')
    RouteFilterPrefixList = Shapes::ListShape.new(name: 'RouteFilterPrefixList')
    RouterConfig = Shapes::StringShape.new(name: 'RouterConfig')
    StartBgpFailoverTestRequest = Shapes::StructureShape.new(name: 'StartBgpFailoverTestRequest')
    StartBgpFailoverTestResponse = Shapes::StructureShape.new(name: 'StartBgpFailoverTestResponse')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    StateChangeError = Shapes::StringShape.new(name: 'StateChangeError')
    StopBgpFailoverTestRequest = Shapes::StructureShape.new(name: 'StopBgpFailoverTestRequest')
    StopBgpFailoverTestResponse = Shapes::StructureShape.new(name: 'StopBgpFailoverTestResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestDuration = Shapes::IntegerShape.new(name: 'TestDuration')
    TestId = Shapes::StringShape.new(name: 'TestId')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDirectConnectGatewayAssociationRequest = Shapes::StructureShape.new(name: 'UpdateDirectConnectGatewayAssociationRequest')
    UpdateDirectConnectGatewayAssociationResult = Shapes::StructureShape.new(name: 'UpdateDirectConnectGatewayAssociationResult')
    UpdateLagRequest = Shapes::StructureShape.new(name: 'UpdateLagRequest')
    UpdateVirtualInterfaceAttributesRequest = Shapes::StructureShape.new(name: 'UpdateVirtualInterfaceAttributesRequest')
    VLAN = Shapes::IntegerShape.new(name: 'VLAN')
    VirtualGateway = Shapes::StructureShape.new(name: 'VirtualGateway')
    VirtualGatewayId = Shapes::StringShape.new(name: 'VirtualGatewayId')
    VirtualGatewayList = Shapes::ListShape.new(name: 'VirtualGatewayList')
    VirtualGatewayRegion = Shapes::StringShape.new(name: 'VirtualGatewayRegion')
    VirtualGatewayState = Shapes::StringShape.new(name: 'VirtualGatewayState')
    VirtualGateways = Shapes::StructureShape.new(name: 'VirtualGateways')
    VirtualInterface = Shapes::StructureShape.new(name: 'VirtualInterface')
    VirtualInterfaceId = Shapes::StringShape.new(name: 'VirtualInterfaceId')
    VirtualInterfaceList = Shapes::ListShape.new(name: 'VirtualInterfaceList')
    VirtualInterfaceName = Shapes::StringShape.new(name: 'VirtualInterfaceName')
    VirtualInterfaceRegion = Shapes::StringShape.new(name: 'VirtualInterfaceRegion')
    VirtualInterfaceState = Shapes::StringShape.new(name: 'VirtualInterfaceState')
    VirtualInterfaceTestHistory = Shapes::StructureShape.new(name: 'VirtualInterfaceTestHistory')
    VirtualInterfaceTestHistoryList = Shapes::ListShape.new(name: 'VirtualInterfaceTestHistoryList')
    VirtualInterfaceType = Shapes::StringShape.new(name: 'VirtualInterfaceType')
    VirtualInterfaces = Shapes::StructureShape.new(name: 'VirtualInterfaces')

    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, required: true, location_name: "directConnectGatewayId"))
    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:proposal_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, required: true, location_name: "proposalId"))
    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:associated_gateway_owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "associatedGatewayOwnerAccount"))
    AcceptDirectConnectGatewayAssociationProposalRequest.add_member(:override_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "overrideAllowedPrefixesToDirectConnectGateway"))
    AcceptDirectConnectGatewayAssociationProposalRequest.struct_class = Types::AcceptDirectConnectGatewayAssociationProposalRequest

    AcceptDirectConnectGatewayAssociationProposalResult.add_member(:direct_connect_gateway_association, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: "directConnectGatewayAssociation"))
    AcceptDirectConnectGatewayAssociationProposalResult.struct_class = Types::AcceptDirectConnectGatewayAssociationProposalResult

    AllocateConnectionOnInterconnectRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "bandwidth"))
    AllocateConnectionOnInterconnectRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "connectionName"))
    AllocateConnectionOnInterconnectRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "ownerAccount"))
    AllocateConnectionOnInterconnectRequest.add_member(:interconnect_id, Shapes::ShapeRef.new(shape: InterconnectId, required: true, location_name: "interconnectId"))
    AllocateConnectionOnInterconnectRequest.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, required: true, location_name: "vlan"))
    AllocateConnectionOnInterconnectRequest.struct_class = Types::AllocateConnectionOnInterconnectRequest

    AllocateHostedConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AllocateHostedConnectionRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "ownerAccount"))
    AllocateHostedConnectionRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "bandwidth"))
    AllocateHostedConnectionRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "connectionName"))
    AllocateHostedConnectionRequest.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, required: true, location_name: "vlan"))
    AllocateHostedConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    AllocateHostedConnectionRequest.struct_class = Types::AllocateHostedConnectionRequest

    AllocatePrivateVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AllocatePrivateVirtualInterfaceRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "ownerAccount"))
    AllocatePrivateVirtualInterfaceRequest.add_member(:new_private_virtual_interface_allocation, Shapes::ShapeRef.new(shape: NewPrivateVirtualInterfaceAllocation, required: true, location_name: "newPrivateVirtualInterfaceAllocation"))
    AllocatePrivateVirtualInterfaceRequest.struct_class = Types::AllocatePrivateVirtualInterfaceRequest

    AllocatePublicVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AllocatePublicVirtualInterfaceRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "ownerAccount"))
    AllocatePublicVirtualInterfaceRequest.add_member(:new_public_virtual_interface_allocation, Shapes::ShapeRef.new(shape: NewPublicVirtualInterfaceAllocation, required: true, location_name: "newPublicVirtualInterfaceAllocation"))
    AllocatePublicVirtualInterfaceRequest.struct_class = Types::AllocatePublicVirtualInterfaceRequest

    AllocateTransitVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AllocateTransitVirtualInterfaceRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "ownerAccount"))
    AllocateTransitVirtualInterfaceRequest.add_member(:new_transit_virtual_interface_allocation, Shapes::ShapeRef.new(shape: NewTransitVirtualInterfaceAllocation, required: true, location_name: "newTransitVirtualInterfaceAllocation"))
    AllocateTransitVirtualInterfaceRequest.struct_class = Types::AllocateTransitVirtualInterfaceRequest

    AllocateTransitVirtualInterfaceResult.add_member(:virtual_interface, Shapes::ShapeRef.new(shape: VirtualInterface, location_name: "virtualInterface"))
    AllocateTransitVirtualInterfaceResult.struct_class = Types::AllocateTransitVirtualInterfaceResult

    AssociateConnectionWithLagRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AssociateConnectionWithLagRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, required: true, location_name: "lagId"))
    AssociateConnectionWithLagRequest.struct_class = Types::AssociateConnectionWithLagRequest

    AssociateHostedConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AssociateHostedConnectionRequest.add_member(:parent_connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "parentConnectionId"))
    AssociateHostedConnectionRequest.struct_class = Types::AssociateHostedConnectionRequest

    AssociateVirtualInterfaceRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    AssociateVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    AssociateVirtualInterfaceRequest.struct_class = Types::AssociateVirtualInterfaceRequest

    AssociatedGateway.add_member(:id, Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: "id"))
    AssociatedGateway.add_member(:type, Shapes::ShapeRef.new(shape: GatewayType, location_name: "type"))
    AssociatedGateway.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    AssociatedGateway.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    AssociatedGateway.struct_class = Types::AssociatedGateway

    AvailablePortSpeeds.member = Shapes::ShapeRef.new(shape: PortSpeed)

    BGPPeer.add_member(:bgp_peer_id, Shapes::ShapeRef.new(shape: BGPPeerId, location_name: "bgpPeerId"))
    BGPPeer.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, location_name: "asn"))
    BGPPeer.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    BGPPeer.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    BGPPeer.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    BGPPeer.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    BGPPeer.add_member(:bgp_peer_state, Shapes::ShapeRef.new(shape: BGPPeerState, location_name: "bgpPeerState"))
    BGPPeer.add_member(:bgp_status, Shapes::ShapeRef.new(shape: BGPStatus, location_name: "bgpStatus"))
    BGPPeer.add_member(:aws_device_v2, Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: "awsDeviceV2"))
    BGPPeer.struct_class = Types::BGPPeer

    BGPPeerIdList.member = Shapes::ShapeRef.new(shape: BGPPeerId)

    BGPPeerList.member = Shapes::ShapeRef.new(shape: BGPPeer)

    ConfirmConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    ConfirmConnectionRequest.struct_class = Types::ConfirmConnectionRequest

    ConfirmConnectionResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "connectionState"))
    ConfirmConnectionResponse.struct_class = Types::ConfirmConnectionResponse

    ConfirmPrivateVirtualInterfaceRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    ConfirmPrivateVirtualInterfaceRequest.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    ConfirmPrivateVirtualInterfaceRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    ConfirmPrivateVirtualInterfaceRequest.struct_class = Types::ConfirmPrivateVirtualInterfaceRequest

    ConfirmPrivateVirtualInterfaceResponse.add_member(:virtual_interface_state, Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: "virtualInterfaceState"))
    ConfirmPrivateVirtualInterfaceResponse.struct_class = Types::ConfirmPrivateVirtualInterfaceResponse

    ConfirmPublicVirtualInterfaceRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    ConfirmPublicVirtualInterfaceRequest.struct_class = Types::ConfirmPublicVirtualInterfaceRequest

    ConfirmPublicVirtualInterfaceResponse.add_member(:virtual_interface_state, Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: "virtualInterfaceState"))
    ConfirmPublicVirtualInterfaceResponse.struct_class = Types::ConfirmPublicVirtualInterfaceResponse

    ConfirmTransitVirtualInterfaceRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    ConfirmTransitVirtualInterfaceRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, required: true, location_name: "directConnectGatewayId"))
    ConfirmTransitVirtualInterfaceRequest.struct_class = Types::ConfirmTransitVirtualInterfaceRequest

    ConfirmTransitVirtualInterfaceResponse.add_member(:virtual_interface_state, Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: "virtualInterfaceState"))
    ConfirmTransitVirtualInterfaceResponse.struct_class = Types::ConfirmTransitVirtualInterfaceResponse

    Connection.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    Connection.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "connectionId"))
    Connection.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "connectionName"))
    Connection.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "connectionState"))
    Connection.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    Connection.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, location_name: "location"))
    Connection.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "bandwidth"))
    Connection.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, location_name: "vlan"))
    Connection.add_member(:partner_name, Shapes::ShapeRef.new(shape: PartnerName, location_name: "partnerName"))
    Connection.add_member(:loa_issue_time, Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: "loaIssueTime"))
    Connection.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, location_name: "lagId"))
    Connection.add_member(:aws_device, Shapes::ShapeRef.new(shape: AwsDevice, deprecated: true, location_name: "awsDevice"))
    Connection.add_member(:jumbo_frame_capable, Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: "jumboFrameCapable"))
    Connection.add_member(:aws_device_v2, Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: "awsDeviceV2"))
    Connection.add_member(:has_logical_redundancy, Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: "hasLogicalRedundancy"))
    Connection.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Connection.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    Connection.struct_class = Types::Connection

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    Connections.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "connections"))
    Connections.struct_class = Types::Connections

    CreateBGPPeerRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    CreateBGPPeerRequest.add_member(:new_bgp_peer, Shapes::ShapeRef.new(shape: NewBGPPeer, location_name: "newBGPPeer"))
    CreateBGPPeerRequest.struct_class = Types::CreateBGPPeerRequest

    CreateBGPPeerResponse.add_member(:virtual_interface, Shapes::ShapeRef.new(shape: VirtualInterface, location_name: "virtualInterface"))
    CreateBGPPeerResponse.struct_class = Types::CreateBGPPeerResponse

    CreateConnectionRequest.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, required: true, location_name: "location"))
    CreateConnectionRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "bandwidth"))
    CreateConnectionRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "connectionName"))
    CreateConnectionRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, location_name: "lagId"))
    CreateConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateConnectionRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, required: true, location_name: "directConnectGatewayId"))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:direct_connect_gateway_owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, required: true, location_name: "directConnectGatewayOwnerAccount"))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayIdToAssociate, required: true, location_name: "gatewayId"))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:add_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "addAllowedPrefixesToDirectConnectGateway"))
    CreateDirectConnectGatewayAssociationProposalRequest.add_member(:remove_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "removeAllowedPrefixesToDirectConnectGateway"))
    CreateDirectConnectGatewayAssociationProposalRequest.struct_class = Types::CreateDirectConnectGatewayAssociationProposalRequest

    CreateDirectConnectGatewayAssociationProposalResult.add_member(:direct_connect_gateway_association_proposal, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposal, location_name: "directConnectGatewayAssociationProposal"))
    CreateDirectConnectGatewayAssociationProposalResult.struct_class = Types::CreateDirectConnectGatewayAssociationProposalResult

    CreateDirectConnectGatewayAssociationRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, required: true, location_name: "directConnectGatewayId"))
    CreateDirectConnectGatewayAssociationRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayIdToAssociate, location_name: "gatewayId"))
    CreateDirectConnectGatewayAssociationRequest.add_member(:add_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "addAllowedPrefixesToDirectConnectGateway"))
    CreateDirectConnectGatewayAssociationRequest.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    CreateDirectConnectGatewayAssociationRequest.struct_class = Types::CreateDirectConnectGatewayAssociationRequest

    CreateDirectConnectGatewayAssociationResult.add_member(:direct_connect_gateway_association, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: "directConnectGatewayAssociation"))
    CreateDirectConnectGatewayAssociationResult.struct_class = Types::CreateDirectConnectGatewayAssociationResult

    CreateDirectConnectGatewayRequest.add_member(:direct_connect_gateway_name, Shapes::ShapeRef.new(shape: DirectConnectGatewayName, required: true, location_name: "directConnectGatewayName"))
    CreateDirectConnectGatewayRequest.add_member(:amazon_side_asn, Shapes::ShapeRef.new(shape: LongAsn, location_name: "amazonSideAsn"))
    CreateDirectConnectGatewayRequest.struct_class = Types::CreateDirectConnectGatewayRequest

    CreateDirectConnectGatewayResult.add_member(:direct_connect_gateway, Shapes::ShapeRef.new(shape: DirectConnectGateway, location_name: "directConnectGateway"))
    CreateDirectConnectGatewayResult.struct_class = Types::CreateDirectConnectGatewayResult

    CreateInterconnectRequest.add_member(:interconnect_name, Shapes::ShapeRef.new(shape: InterconnectName, required: true, location_name: "interconnectName"))
    CreateInterconnectRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "bandwidth"))
    CreateInterconnectRequest.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, required: true, location_name: "location"))
    CreateInterconnectRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, location_name: "lagId"))
    CreateInterconnectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInterconnectRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    CreateInterconnectRequest.struct_class = Types::CreateInterconnectRequest

    CreateLagRequest.add_member(:number_of_connections, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "numberOfConnections"))
    CreateLagRequest.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, required: true, location_name: "location"))
    CreateLagRequest.add_member(:connections_bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "connectionsBandwidth"))
    CreateLagRequest.add_member(:lag_name, Shapes::ShapeRef.new(shape: LagName, required: true, location_name: "lagName"))
    CreateLagRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "connectionId"))
    CreateLagRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateLagRequest.add_member(:child_connection_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "childConnectionTags"))
    CreateLagRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    CreateLagRequest.struct_class = Types::CreateLagRequest

    CreatePrivateVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    CreatePrivateVirtualInterfaceRequest.add_member(:new_private_virtual_interface, Shapes::ShapeRef.new(shape: NewPrivateVirtualInterface, required: true, location_name: "newPrivateVirtualInterface"))
    CreatePrivateVirtualInterfaceRequest.struct_class = Types::CreatePrivateVirtualInterfaceRequest

    CreatePublicVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    CreatePublicVirtualInterfaceRequest.add_member(:new_public_virtual_interface, Shapes::ShapeRef.new(shape: NewPublicVirtualInterface, required: true, location_name: "newPublicVirtualInterface"))
    CreatePublicVirtualInterfaceRequest.struct_class = Types::CreatePublicVirtualInterfaceRequest

    CreateTransitVirtualInterfaceRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    CreateTransitVirtualInterfaceRequest.add_member(:new_transit_virtual_interface, Shapes::ShapeRef.new(shape: NewTransitVirtualInterface, required: true, location_name: "newTransitVirtualInterface"))
    CreateTransitVirtualInterfaceRequest.struct_class = Types::CreateTransitVirtualInterfaceRequest

    CreateTransitVirtualInterfaceResult.add_member(:virtual_interface, Shapes::ShapeRef.new(shape: VirtualInterface, location_name: "virtualInterface"))
    CreateTransitVirtualInterfaceResult.struct_class = Types::CreateTransitVirtualInterfaceResult

    DeleteBGPPeerRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    DeleteBGPPeerRequest.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, location_name: "asn"))
    DeleteBGPPeerRequest.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    DeleteBGPPeerRequest.add_member(:bgp_peer_id, Shapes::ShapeRef.new(shape: BGPPeerId, location_name: "bgpPeerId"))
    DeleteBGPPeerRequest.struct_class = Types::DeleteBGPPeerRequest

    DeleteBGPPeerResponse.add_member(:virtual_interface, Shapes::ShapeRef.new(shape: VirtualInterface, location_name: "virtualInterface"))
    DeleteBGPPeerResponse.struct_class = Types::DeleteBGPPeerResponse

    DeleteConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteDirectConnectGatewayAssociationProposalRequest.add_member(:proposal_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, required: true, location_name: "proposalId"))
    DeleteDirectConnectGatewayAssociationProposalRequest.struct_class = Types::DeleteDirectConnectGatewayAssociationProposalRequest

    DeleteDirectConnectGatewayAssociationProposalResult.add_member(:direct_connect_gateway_association_proposal, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposal, location_name: "directConnectGatewayAssociationProposal"))
    DeleteDirectConnectGatewayAssociationProposalResult.struct_class = Types::DeleteDirectConnectGatewayAssociationProposalResult

    DeleteDirectConnectGatewayAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: "associationId"))
    DeleteDirectConnectGatewayAssociationRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DeleteDirectConnectGatewayAssociationRequest.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    DeleteDirectConnectGatewayAssociationRequest.struct_class = Types::DeleteDirectConnectGatewayAssociationRequest

    DeleteDirectConnectGatewayAssociationResult.add_member(:direct_connect_gateway_association, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: "directConnectGatewayAssociation"))
    DeleteDirectConnectGatewayAssociationResult.struct_class = Types::DeleteDirectConnectGatewayAssociationResult

    DeleteDirectConnectGatewayRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, required: true, location_name: "directConnectGatewayId"))
    DeleteDirectConnectGatewayRequest.struct_class = Types::DeleteDirectConnectGatewayRequest

    DeleteDirectConnectGatewayResult.add_member(:direct_connect_gateway, Shapes::ShapeRef.new(shape: DirectConnectGateway, location_name: "directConnectGateway"))
    DeleteDirectConnectGatewayResult.struct_class = Types::DeleteDirectConnectGatewayResult

    DeleteInterconnectRequest.add_member(:interconnect_id, Shapes::ShapeRef.new(shape: InterconnectId, required: true, location_name: "interconnectId"))
    DeleteInterconnectRequest.struct_class = Types::DeleteInterconnectRequest

    DeleteInterconnectResponse.add_member(:interconnect_state, Shapes::ShapeRef.new(shape: InterconnectState, location_name: "interconnectState"))
    DeleteInterconnectResponse.struct_class = Types::DeleteInterconnectResponse

    DeleteLagRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, required: true, location_name: "lagId"))
    DeleteLagRequest.struct_class = Types::DeleteLagRequest

    DeleteVirtualInterfaceRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    DeleteVirtualInterfaceRequest.struct_class = Types::DeleteVirtualInterfaceRequest

    DeleteVirtualInterfaceResponse.add_member(:virtual_interface_state, Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: "virtualInterfaceState"))
    DeleteVirtualInterfaceResponse.struct_class = Types::DeleteVirtualInterfaceResponse

    DescribeConnectionLoaRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    DescribeConnectionLoaRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    DescribeConnectionLoaRequest.add_member(:loa_content_type, Shapes::ShapeRef.new(shape: LoaContentType, location_name: "loaContentType"))
    DescribeConnectionLoaRequest.struct_class = Types::DescribeConnectionLoaRequest

    DescribeConnectionLoaResponse.add_member(:loa, Shapes::ShapeRef.new(shape: Loa, location_name: "loa"))
    DescribeConnectionLoaResponse.struct_class = Types::DescribeConnectionLoaResponse

    DescribeConnectionsOnInterconnectRequest.add_member(:interconnect_id, Shapes::ShapeRef.new(shape: InterconnectId, required: true, location_name: "interconnectId"))
    DescribeConnectionsOnInterconnectRequest.struct_class = Types::DescribeConnectionsOnInterconnectRequest

    DescribeConnectionsRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "connectionId"))
    DescribeConnectionsRequest.struct_class = Types::DescribeConnectionsRequest

    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:proposal_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, location_name: "proposalId"))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:associated_gateway_id, Shapes::ShapeRef.new(shape: AssociatedGatewayId, location_name: "associatedGatewayId"))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: "maxResults"))
    DescribeDirectConnectGatewayAssociationProposalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewayAssociationProposalsRequest.struct_class = Types::DescribeDirectConnectGatewayAssociationProposalsRequest

    DescribeDirectConnectGatewayAssociationProposalsResult.add_member(:direct_connect_gateway_association_proposals, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalList, location_name: "directConnectGatewayAssociationProposals"))
    DescribeDirectConnectGatewayAssociationProposalsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewayAssociationProposalsResult.struct_class = Types::DescribeDirectConnectGatewayAssociationProposalsResult

    DescribeDirectConnectGatewayAssociationsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: "associationId"))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:associated_gateway_id, Shapes::ShapeRef.new(shape: AssociatedGatewayId, location_name: "associatedGatewayId"))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: "maxResults"))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewayAssociationsRequest.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    DescribeDirectConnectGatewayAssociationsRequest.struct_class = Types::DescribeDirectConnectGatewayAssociationsRequest

    DescribeDirectConnectGatewayAssociationsResult.add_member(:direct_connect_gateway_associations, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationList, location_name: "directConnectGatewayAssociations"))
    DescribeDirectConnectGatewayAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewayAssociationsResult.struct_class = Types::DescribeDirectConnectGatewayAssociationsResult

    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: "maxResults"))
    DescribeDirectConnectGatewayAttachmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewayAttachmentsRequest.struct_class = Types::DescribeDirectConnectGatewayAttachmentsRequest

    DescribeDirectConnectGatewayAttachmentsResult.add_member(:direct_connect_gateway_attachments, Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachmentList, location_name: "directConnectGatewayAttachments"))
    DescribeDirectConnectGatewayAttachmentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewayAttachmentsResult.struct_class = Types::DescribeDirectConnectGatewayAttachmentsResult

    DescribeDirectConnectGatewaysRequest.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DescribeDirectConnectGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: "maxResults"))
    DescribeDirectConnectGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewaysRequest.struct_class = Types::DescribeDirectConnectGatewaysRequest

    DescribeDirectConnectGatewaysResult.add_member(:direct_connect_gateways, Shapes::ShapeRef.new(shape: DirectConnectGatewayList, location_name: "directConnectGateways"))
    DescribeDirectConnectGatewaysResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeDirectConnectGatewaysResult.struct_class = Types::DescribeDirectConnectGatewaysResult

    DescribeHostedConnectionsRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    DescribeHostedConnectionsRequest.struct_class = Types::DescribeHostedConnectionsRequest

    DescribeInterconnectLoaRequest.add_member(:interconnect_id, Shapes::ShapeRef.new(shape: InterconnectId, required: true, location_name: "interconnectId"))
    DescribeInterconnectLoaRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    DescribeInterconnectLoaRequest.add_member(:loa_content_type, Shapes::ShapeRef.new(shape: LoaContentType, location_name: "loaContentType"))
    DescribeInterconnectLoaRequest.struct_class = Types::DescribeInterconnectLoaRequest

    DescribeInterconnectLoaResponse.add_member(:loa, Shapes::ShapeRef.new(shape: Loa, location_name: "loa"))
    DescribeInterconnectLoaResponse.struct_class = Types::DescribeInterconnectLoaResponse

    DescribeInterconnectsRequest.add_member(:interconnect_id, Shapes::ShapeRef.new(shape: InterconnectId, location_name: "interconnectId"))
    DescribeInterconnectsRequest.struct_class = Types::DescribeInterconnectsRequest

    DescribeLagsRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, location_name: "lagId"))
    DescribeLagsRequest.struct_class = Types::DescribeLagsRequest

    DescribeLoaRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    DescribeLoaRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    DescribeLoaRequest.add_member(:loa_content_type, Shapes::ShapeRef.new(shape: LoaContentType, location_name: "loaContentType"))
    DescribeLoaRequest.struct_class = Types::DescribeLoaRequest

    DescribeTagsRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "resourceArns"))
    DescribeTagsRequest.struct_class = Types::DescribeTagsRequest

    DescribeTagsResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    DescribeTagsResponse.struct_class = Types::DescribeTagsResponse

    DescribeVirtualInterfacesRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "connectionId"))
    DescribeVirtualInterfacesRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    DescribeVirtualInterfacesRequest.struct_class = Types::DescribeVirtualInterfacesRequest

    DirectConnectClientException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DirectConnectClientException.struct_class = Types::DirectConnectClientException

    DirectConnectGateway.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DirectConnectGateway.add_member(:direct_connect_gateway_name, Shapes::ShapeRef.new(shape: DirectConnectGatewayName, location_name: "directConnectGatewayName"))
    DirectConnectGateway.add_member(:amazon_side_asn, Shapes::ShapeRef.new(shape: LongAsn, location_name: "amazonSideAsn"))
    DirectConnectGateway.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    DirectConnectGateway.add_member(:direct_connect_gateway_state, Shapes::ShapeRef.new(shape: DirectConnectGatewayState, location_name: "directConnectGatewayState"))
    DirectConnectGateway.add_member(:state_change_error, Shapes::ShapeRef.new(shape: StateChangeError, location_name: "stateChangeError"))
    DirectConnectGateway.struct_class = Types::DirectConnectGateway

    DirectConnectGatewayAssociation.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DirectConnectGatewayAssociation.add_member(:direct_connect_gateway_owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "directConnectGatewayOwnerAccount"))
    DirectConnectGatewayAssociation.add_member(:association_state, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationState, location_name: "associationState"))
    DirectConnectGatewayAssociation.add_member(:state_change_error, Shapes::ShapeRef.new(shape: StateChangeError, location_name: "stateChangeError"))
    DirectConnectGatewayAssociation.add_member(:associated_gateway, Shapes::ShapeRef.new(shape: AssociatedGateway, location_name: "associatedGateway"))
    DirectConnectGatewayAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: "associationId"))
    DirectConnectGatewayAssociation.add_member(:allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "allowedPrefixesToDirectConnectGateway"))
    DirectConnectGatewayAssociation.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    DirectConnectGatewayAssociation.add_member(:virtual_gateway_region, Shapes::ShapeRef.new(shape: VirtualGatewayRegion, deprecated: true, location_name: "virtualGatewayRegion"))
    DirectConnectGatewayAssociation.add_member(:virtual_gateway_owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "virtualGatewayOwnerAccount"))
    DirectConnectGatewayAssociation.struct_class = Types::DirectConnectGatewayAssociation

    DirectConnectGatewayAssociationList.member = Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation)

    DirectConnectGatewayAssociationProposal.add_member(:proposal_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalId, location_name: "proposalId"))
    DirectConnectGatewayAssociationProposal.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DirectConnectGatewayAssociationProposal.add_member(:direct_connect_gateway_owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "directConnectGatewayOwnerAccount"))
    DirectConnectGatewayAssociationProposal.add_member(:proposal_state, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposalState, location_name: "proposalState"))
    DirectConnectGatewayAssociationProposal.add_member(:associated_gateway, Shapes::ShapeRef.new(shape: AssociatedGateway, location_name: "associatedGateway"))
    DirectConnectGatewayAssociationProposal.add_member(:existing_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "existingAllowedPrefixesToDirectConnectGateway"))
    DirectConnectGatewayAssociationProposal.add_member(:requested_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "requestedAllowedPrefixesToDirectConnectGateway"))
    DirectConnectGatewayAssociationProposal.struct_class = Types::DirectConnectGatewayAssociationProposal

    DirectConnectGatewayAssociationProposalList.member = Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationProposal)

    DirectConnectGatewayAttachment.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    DirectConnectGatewayAttachment.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    DirectConnectGatewayAttachment.add_member(:virtual_interface_region, Shapes::ShapeRef.new(shape: VirtualInterfaceRegion, location_name: "virtualInterfaceRegion"))
    DirectConnectGatewayAttachment.add_member(:virtual_interface_owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "virtualInterfaceOwnerAccount"))
    DirectConnectGatewayAttachment.add_member(:attachment_state, Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachmentState, location_name: "attachmentState"))
    DirectConnectGatewayAttachment.add_member(:attachment_type, Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachmentType, location_name: "attachmentType"))
    DirectConnectGatewayAttachment.add_member(:state_change_error, Shapes::ShapeRef.new(shape: StateChangeError, location_name: "stateChangeError"))
    DirectConnectGatewayAttachment.struct_class = Types::DirectConnectGatewayAttachment

    DirectConnectGatewayAttachmentList.member = Shapes::ShapeRef.new(shape: DirectConnectGatewayAttachment)

    DirectConnectGatewayList.member = Shapes::ShapeRef.new(shape: DirectConnectGateway)

    DirectConnectServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DirectConnectServerException.struct_class = Types::DirectConnectServerException

    DisassociateConnectionFromLagRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "connectionId"))
    DisassociateConnectionFromLagRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, required: true, location_name: "lagId"))
    DisassociateConnectionFromLagRequest.struct_class = Types::DisassociateConnectionFromLagRequest

    DuplicateTagKeysException.struct_class = Types::DuplicateTagKeysException

    Interconnect.add_member(:interconnect_id, Shapes::ShapeRef.new(shape: InterconnectId, location_name: "interconnectId"))
    Interconnect.add_member(:interconnect_name, Shapes::ShapeRef.new(shape: InterconnectName, location_name: "interconnectName"))
    Interconnect.add_member(:interconnect_state, Shapes::ShapeRef.new(shape: InterconnectState, location_name: "interconnectState"))
    Interconnect.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    Interconnect.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, location_name: "location"))
    Interconnect.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "bandwidth"))
    Interconnect.add_member(:loa_issue_time, Shapes::ShapeRef.new(shape: LoaIssueTime, location_name: "loaIssueTime"))
    Interconnect.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, location_name: "lagId"))
    Interconnect.add_member(:aws_device, Shapes::ShapeRef.new(shape: AwsDevice, deprecated: true, location_name: "awsDevice"))
    Interconnect.add_member(:jumbo_frame_capable, Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: "jumboFrameCapable"))
    Interconnect.add_member(:aws_device_v2, Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: "awsDeviceV2"))
    Interconnect.add_member(:has_logical_redundancy, Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: "hasLogicalRedundancy"))
    Interconnect.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Interconnect.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    Interconnect.struct_class = Types::Interconnect

    InterconnectList.member = Shapes::ShapeRef.new(shape: Interconnect)

    Interconnects.add_member(:interconnects, Shapes::ShapeRef.new(shape: InterconnectList, location_name: "interconnects"))
    Interconnects.struct_class = Types::Interconnects

    Lag.add_member(:connections_bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "connectionsBandwidth"))
    Lag.add_member(:number_of_connections, Shapes::ShapeRef.new(shape: Count, location_name: "numberOfConnections"))
    Lag.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, location_name: "lagId"))
    Lag.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    Lag.add_member(:lag_name, Shapes::ShapeRef.new(shape: LagName, location_name: "lagName"))
    Lag.add_member(:lag_state, Shapes::ShapeRef.new(shape: LagState, location_name: "lagState"))
    Lag.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, location_name: "location"))
    Lag.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    Lag.add_member(:minimum_links, Shapes::ShapeRef.new(shape: Count, location_name: "minimumLinks"))
    Lag.add_member(:aws_device, Shapes::ShapeRef.new(shape: AwsDevice, deprecated: true, location_name: "awsDevice"))
    Lag.add_member(:aws_device_v2, Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: "awsDeviceV2"))
    Lag.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "connections"))
    Lag.add_member(:allows_hosted_connections, Shapes::ShapeRef.new(shape: BooleanFlag, location_name: "allowsHostedConnections"))
    Lag.add_member(:jumbo_frame_capable, Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: "jumboFrameCapable"))
    Lag.add_member(:has_logical_redundancy, Shapes::ShapeRef.new(shape: HasLogicalRedundancy, location_name: "hasLogicalRedundancy"))
    Lag.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Lag.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderName, location_name: "providerName"))
    Lag.struct_class = Types::Lag

    LagList.member = Shapes::ShapeRef.new(shape: Lag)

    Lags.add_member(:lags, Shapes::ShapeRef.new(shape: LagList, location_name: "lags"))
    Lags.struct_class = Types::Lags

    ListVirtualInterfaceTestHistoryRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, location_name: "testId"))
    ListVirtualInterfaceTestHistoryRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    ListVirtualInterfaceTestHistoryRequest.add_member(:bgp_peers, Shapes::ShapeRef.new(shape: BGPPeerIdList, location_name: "bgpPeers"))
    ListVirtualInterfaceTestHistoryRequest.add_member(:status, Shapes::ShapeRef.new(shape: FailureTestHistoryStatus, location_name: "status"))
    ListVirtualInterfaceTestHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultSetSize, location_name: "maxResults"))
    ListVirtualInterfaceTestHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListVirtualInterfaceTestHistoryRequest.struct_class = Types::ListVirtualInterfaceTestHistoryRequest

    ListVirtualInterfaceTestHistoryResponse.add_member(:virtual_interface_test_history, Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistoryList, location_name: "virtualInterfaceTestHistory"))
    ListVirtualInterfaceTestHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListVirtualInterfaceTestHistoryResponse.struct_class = Types::ListVirtualInterfaceTestHistoryResponse

    Loa.add_member(:loa_content, Shapes::ShapeRef.new(shape: LoaContent, location_name: "loaContent"))
    Loa.add_member(:loa_content_type, Shapes::ShapeRef.new(shape: LoaContentType, location_name: "loaContentType"))
    Loa.struct_class = Types::Loa

    Location.add_member(:location_code, Shapes::ShapeRef.new(shape: LocationCode, location_name: "locationCode"))
    Location.add_member(:location_name, Shapes::ShapeRef.new(shape: LocationName, location_name: "locationName"))
    Location.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    Location.add_member(:available_port_speeds, Shapes::ShapeRef.new(shape: AvailablePortSpeeds, location_name: "availablePortSpeeds"))
    Location.add_member(:available_providers, Shapes::ShapeRef.new(shape: ProviderList, location_name: "availableProviders"))
    Location.struct_class = Types::Location

    LocationList.member = Shapes::ShapeRef.new(shape: Location)

    Locations.add_member(:locations, Shapes::ShapeRef.new(shape: LocationList, location_name: "locations"))
    Locations.struct_class = Types::Locations

    NewBGPPeer.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, location_name: "asn"))
    NewBGPPeer.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewBGPPeer.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewBGPPeer.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewBGPPeer.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewBGPPeer.struct_class = Types::NewBGPPeer

    NewPrivateVirtualInterface.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, required: true, location_name: "virtualInterfaceName"))
    NewPrivateVirtualInterface.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, required: true, location_name: "vlan"))
    NewPrivateVirtualInterface.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, required: true, location_name: "asn"))
    NewPrivateVirtualInterface.add_member(:mtu, Shapes::ShapeRef.new(shape: MTU, location_name: "mtu"))
    NewPrivateVirtualInterface.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewPrivateVirtualInterface.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewPrivateVirtualInterface.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewPrivateVirtualInterface.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewPrivateVirtualInterface.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    NewPrivateVirtualInterface.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    NewPrivateVirtualInterface.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    NewPrivateVirtualInterface.struct_class = Types::NewPrivateVirtualInterface

    NewPrivateVirtualInterfaceAllocation.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, required: true, location_name: "virtualInterfaceName"))
    NewPrivateVirtualInterfaceAllocation.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, required: true, location_name: "vlan"))
    NewPrivateVirtualInterfaceAllocation.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, required: true, location_name: "asn"))
    NewPrivateVirtualInterfaceAllocation.add_member(:mtu, Shapes::ShapeRef.new(shape: MTU, location_name: "mtu"))
    NewPrivateVirtualInterfaceAllocation.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewPrivateVirtualInterfaceAllocation.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewPrivateVirtualInterfaceAllocation.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewPrivateVirtualInterfaceAllocation.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewPrivateVirtualInterfaceAllocation.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    NewPrivateVirtualInterfaceAllocation.struct_class = Types::NewPrivateVirtualInterfaceAllocation

    NewPublicVirtualInterface.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, required: true, location_name: "virtualInterfaceName"))
    NewPublicVirtualInterface.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, required: true, location_name: "vlan"))
    NewPublicVirtualInterface.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, required: true, location_name: "asn"))
    NewPublicVirtualInterface.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewPublicVirtualInterface.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewPublicVirtualInterface.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewPublicVirtualInterface.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewPublicVirtualInterface.add_member(:route_filter_prefixes, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "routeFilterPrefixes"))
    NewPublicVirtualInterface.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    NewPublicVirtualInterface.struct_class = Types::NewPublicVirtualInterface

    NewPublicVirtualInterfaceAllocation.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, required: true, location_name: "virtualInterfaceName"))
    NewPublicVirtualInterfaceAllocation.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, required: true, location_name: "vlan"))
    NewPublicVirtualInterfaceAllocation.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, required: true, location_name: "asn"))
    NewPublicVirtualInterfaceAllocation.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewPublicVirtualInterfaceAllocation.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewPublicVirtualInterfaceAllocation.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewPublicVirtualInterfaceAllocation.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewPublicVirtualInterfaceAllocation.add_member(:route_filter_prefixes, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "routeFilterPrefixes"))
    NewPublicVirtualInterfaceAllocation.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    NewPublicVirtualInterfaceAllocation.struct_class = Types::NewPublicVirtualInterfaceAllocation

    NewTransitVirtualInterface.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: "virtualInterfaceName"))
    NewTransitVirtualInterface.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, location_name: "vlan"))
    NewTransitVirtualInterface.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, location_name: "asn"))
    NewTransitVirtualInterface.add_member(:mtu, Shapes::ShapeRef.new(shape: MTU, location_name: "mtu"))
    NewTransitVirtualInterface.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewTransitVirtualInterface.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewTransitVirtualInterface.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewTransitVirtualInterface.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewTransitVirtualInterface.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    NewTransitVirtualInterface.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    NewTransitVirtualInterface.struct_class = Types::NewTransitVirtualInterface

    NewTransitVirtualInterfaceAllocation.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: "virtualInterfaceName"))
    NewTransitVirtualInterfaceAllocation.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, location_name: "vlan"))
    NewTransitVirtualInterfaceAllocation.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, location_name: "asn"))
    NewTransitVirtualInterfaceAllocation.add_member(:mtu, Shapes::ShapeRef.new(shape: MTU, location_name: "mtu"))
    NewTransitVirtualInterfaceAllocation.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    NewTransitVirtualInterfaceAllocation.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    NewTransitVirtualInterfaceAllocation.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    NewTransitVirtualInterfaceAllocation.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    NewTransitVirtualInterfaceAllocation.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    NewTransitVirtualInterfaceAllocation.struct_class = Types::NewTransitVirtualInterfaceAllocation

    ProviderList.member = Shapes::ShapeRef.new(shape: ProviderName)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceTag.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    ResourceTag.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    RouteFilterPrefix.add_member(:cidr, Shapes::ShapeRef.new(shape: CIDR, location_name: "cidr"))
    RouteFilterPrefix.struct_class = Types::RouteFilterPrefix

    RouteFilterPrefixList.member = Shapes::ShapeRef.new(shape: RouteFilterPrefix)

    StartBgpFailoverTestRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    StartBgpFailoverTestRequest.add_member(:bgp_peers, Shapes::ShapeRef.new(shape: BGPPeerIdList, location_name: "bgpPeers"))
    StartBgpFailoverTestRequest.add_member(:test_duration_in_minutes, Shapes::ShapeRef.new(shape: TestDuration, location_name: "testDurationInMinutes"))
    StartBgpFailoverTestRequest.struct_class = Types::StartBgpFailoverTestRequest

    StartBgpFailoverTestResponse.add_member(:virtual_interface_test, Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistory, location_name: "virtualInterfaceTest"))
    StartBgpFailoverTestResponse.struct_class = Types::StartBgpFailoverTestResponse

    StopBgpFailoverTestRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    StopBgpFailoverTestRequest.struct_class = Types::StopBgpFailoverTestRequest

    StopBgpFailoverTestResponse.add_member(:virtual_interface_test, Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistory, location_name: "virtualInterfaceTest"))
    StopBgpFailoverTestResponse.struct_class = Types::StopBgpFailoverTestResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDirectConnectGatewayAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociationId, location_name: "associationId"))
    UpdateDirectConnectGatewayAssociationRequest.add_member(:add_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "addAllowedPrefixesToDirectConnectGateway"))
    UpdateDirectConnectGatewayAssociationRequest.add_member(:remove_allowed_prefixes_to_direct_connect_gateway, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "removeAllowedPrefixesToDirectConnectGateway"))
    UpdateDirectConnectGatewayAssociationRequest.struct_class = Types::UpdateDirectConnectGatewayAssociationRequest

    UpdateDirectConnectGatewayAssociationResult.add_member(:direct_connect_gateway_association, Shapes::ShapeRef.new(shape: DirectConnectGatewayAssociation, location_name: "directConnectGatewayAssociation"))
    UpdateDirectConnectGatewayAssociationResult.struct_class = Types::UpdateDirectConnectGatewayAssociationResult

    UpdateLagRequest.add_member(:lag_id, Shapes::ShapeRef.new(shape: LagId, required: true, location_name: "lagId"))
    UpdateLagRequest.add_member(:lag_name, Shapes::ShapeRef.new(shape: LagName, location_name: "lagName"))
    UpdateLagRequest.add_member(:minimum_links, Shapes::ShapeRef.new(shape: Count, location_name: "minimumLinks"))
    UpdateLagRequest.struct_class = Types::UpdateLagRequest

    UpdateVirtualInterfaceAttributesRequest.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, required: true, location_name: "virtualInterfaceId"))
    UpdateVirtualInterfaceAttributesRequest.add_member(:mtu, Shapes::ShapeRef.new(shape: MTU, location_name: "mtu"))
    UpdateVirtualInterfaceAttributesRequest.struct_class = Types::UpdateVirtualInterfaceAttributesRequest

    VirtualGateway.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    VirtualGateway.add_member(:virtual_gateway_state, Shapes::ShapeRef.new(shape: VirtualGatewayState, location_name: "virtualGatewayState"))
    VirtualGateway.struct_class = Types::VirtualGateway

    VirtualGatewayList.member = Shapes::ShapeRef.new(shape: VirtualGateway)

    VirtualGateways.add_member(:virtual_gateways, Shapes::ShapeRef.new(shape: VirtualGatewayList, location_name: "virtualGateways"))
    VirtualGateways.struct_class = Types::VirtualGateways

    VirtualInterface.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    VirtualInterface.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    VirtualInterface.add_member(:location, Shapes::ShapeRef.new(shape: LocationCode, location_name: "location"))
    VirtualInterface.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "connectionId"))
    VirtualInterface.add_member(:virtual_interface_type, Shapes::ShapeRef.new(shape: VirtualInterfaceType, location_name: "virtualInterfaceType"))
    VirtualInterface.add_member(:virtual_interface_name, Shapes::ShapeRef.new(shape: VirtualInterfaceName, location_name: "virtualInterfaceName"))
    VirtualInterface.add_member(:vlan, Shapes::ShapeRef.new(shape: VLAN, location_name: "vlan"))
    VirtualInterface.add_member(:asn, Shapes::ShapeRef.new(shape: ASN, location_name: "asn"))
    VirtualInterface.add_member(:amazon_side_asn, Shapes::ShapeRef.new(shape: LongAsn, location_name: "amazonSideAsn"))
    VirtualInterface.add_member(:auth_key, Shapes::ShapeRef.new(shape: BGPAuthKey, location_name: "authKey"))
    VirtualInterface.add_member(:amazon_address, Shapes::ShapeRef.new(shape: AmazonAddress, location_name: "amazonAddress"))
    VirtualInterface.add_member(:customer_address, Shapes::ShapeRef.new(shape: CustomerAddress, location_name: "customerAddress"))
    VirtualInterface.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    VirtualInterface.add_member(:virtual_interface_state, Shapes::ShapeRef.new(shape: VirtualInterfaceState, location_name: "virtualInterfaceState"))
    VirtualInterface.add_member(:customer_router_config, Shapes::ShapeRef.new(shape: RouterConfig, location_name: "customerRouterConfig"))
    VirtualInterface.add_member(:mtu, Shapes::ShapeRef.new(shape: MTU, location_name: "mtu"))
    VirtualInterface.add_member(:jumbo_frame_capable, Shapes::ShapeRef.new(shape: JumboFrameCapable, location_name: "jumboFrameCapable"))
    VirtualInterface.add_member(:virtual_gateway_id, Shapes::ShapeRef.new(shape: VirtualGatewayId, location_name: "virtualGatewayId"))
    VirtualInterface.add_member(:direct_connect_gateway_id, Shapes::ShapeRef.new(shape: DirectConnectGatewayId, location_name: "directConnectGatewayId"))
    VirtualInterface.add_member(:route_filter_prefixes, Shapes::ShapeRef.new(shape: RouteFilterPrefixList, location_name: "routeFilterPrefixes"))
    VirtualInterface.add_member(:bgp_peers, Shapes::ShapeRef.new(shape: BGPPeerList, location_name: "bgpPeers"))
    VirtualInterface.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    VirtualInterface.add_member(:aws_device_v2, Shapes::ShapeRef.new(shape: AwsDeviceV2, location_name: "awsDeviceV2"))
    VirtualInterface.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    VirtualInterface.struct_class = Types::VirtualInterface

    VirtualInterfaceList.member = Shapes::ShapeRef.new(shape: VirtualInterface)

    VirtualInterfaceTestHistory.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, location_name: "testId"))
    VirtualInterfaceTestHistory.add_member(:virtual_interface_id, Shapes::ShapeRef.new(shape: VirtualInterfaceId, location_name: "virtualInterfaceId"))
    VirtualInterfaceTestHistory.add_member(:bgp_peers, Shapes::ShapeRef.new(shape: BGPPeerIdList, location_name: "bgpPeers"))
    VirtualInterfaceTestHistory.add_member(:status, Shapes::ShapeRef.new(shape: FailureTestHistoryStatus, location_name: "status"))
    VirtualInterfaceTestHistory.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    VirtualInterfaceTestHistory.add_member(:test_duration_in_minutes, Shapes::ShapeRef.new(shape: TestDuration, location_name: "testDurationInMinutes"))
    VirtualInterfaceTestHistory.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "startTime"))
    VirtualInterfaceTestHistory.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "endTime"))
    VirtualInterfaceTestHistory.struct_class = Types::VirtualInterfaceTestHistory

    VirtualInterfaceTestHistoryList.member = Shapes::ShapeRef.new(shape: VirtualInterfaceTestHistory)

    VirtualInterfaces.add_member(:virtual_interfaces, Shapes::ShapeRef.new(shape: VirtualInterfaceList, location_name: "virtualInterfaces"))
    VirtualInterfaces.struct_class = Types::VirtualInterfaces


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-10-25"

      api.metadata = {
        "apiVersion" => "2012-10-25",
        "endpointPrefix" => "directconnect",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Direct Connect",
        "serviceId" => "Direct Connect",
        "signatureVersion" => "v4",
        "targetPrefix" => "OvertureService",
        "uid" => "directconnect-2012-10-25",
      }

      api.add_operation(:accept_direct_connect_gateway_association_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptDirectConnectGatewayAssociationProposal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptDirectConnectGatewayAssociationProposalRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptDirectConnectGatewayAssociationProposalResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:allocate_connection_on_interconnect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllocateConnectionOnInterconnect"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: AllocateConnectionOnInterconnectRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:allocate_hosted_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllocateHostedConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AllocateHostedConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:allocate_private_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllocatePrivateVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AllocatePrivateVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterface)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:allocate_public_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllocatePublicVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AllocatePublicVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterface)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:allocate_transit_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllocateTransitVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AllocateTransitVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: AllocateTransitVirtualInterfaceResult)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:associate_connection_with_lag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateConnectionWithLag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateConnectionWithLagRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:associate_hosted_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateHostedConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateHostedConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:associate_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterface)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:confirm_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConfirmConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:confirm_private_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmPrivateVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConfirmPrivateVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmPrivateVirtualInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:confirm_public_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmPublicVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConfirmPublicVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmPublicVirtualInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:confirm_transit_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmTransitVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConfirmTransitVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmTransitVirtualInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_bgp_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBGPPeer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBGPPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBGPPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_direct_connect_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectConnectGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_direct_connect_gateway_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectConnectGatewayAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_direct_connect_gateway_association_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectConnectGatewayAssociationProposal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationProposalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectConnectGatewayAssociationProposalResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_interconnect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInterconnect"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInterconnectRequest)
        o.output = Shapes::ShapeRef.new(shape: Interconnect)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_lag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLagRequest)
        o.output = Shapes::ShapeRef.new(shape: Lag)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_private_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrivateVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePrivateVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterface)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_public_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePublicVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePublicVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterface)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:create_transit_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTransitVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTransitVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTransitVirtualInterfaceResult)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_bgp_peer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBGPPeer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBGPPeerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBGPPeerResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_direct_connect_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectConnectGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_direct_connect_gateway_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectConnectGatewayAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_direct_connect_gateway_association_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectConnectGatewayAssociationProposal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationProposalRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectConnectGatewayAssociationProposalResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_interconnect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInterconnect"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInterconnectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInterconnectResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_lag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLagRequest)
        o.output = Shapes::ShapeRef.new(shape: Lag)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:delete_virtual_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualInterface"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_connection_loa, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectionLoa"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionLoaRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionLoaResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Connections)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_connections_on_interconnect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectionsOnInterconnect"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionsOnInterconnectRequest)
        o.output = Shapes::ShapeRef.new(shape: Connections)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_direct_connect_gateway_association_proposals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectConnectGatewayAssociationProposals"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationProposalsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationProposalsResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_direct_connect_gateway_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectConnectGatewayAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_direct_connect_gateway_attachments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectConnectGatewayAttachments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAttachmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewayAttachmentsResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_direct_connect_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectConnectGateways"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectConnectGatewaysResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_hosted_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHostedConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHostedConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Connections)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_interconnect_loa, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInterconnectLoa"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DescribeInterconnectLoaRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInterconnectLoaResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_interconnects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInterconnects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInterconnectsRequest)
        o.output = Shapes::ShapeRef.new(shape: Interconnects)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_lags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Lags)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_loa, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoa"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoaRequest)
        o.output = Shapes::ShapeRef.new(shape: Loa)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_locations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Locations)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_virtual_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualGateways"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: VirtualGateways)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:describe_virtual_interfaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualInterfaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualInterfacesRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterfaces)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:disassociate_connection_from_lag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateConnectionFromLag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateConnectionFromLagRequest)
        o.output = Shapes::ShapeRef.new(shape: Connection)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:list_virtual_interface_test_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualInterfaceTestHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualInterfaceTestHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualInterfaceTestHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:start_bgp_failover_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBgpFailoverTest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartBgpFailoverTestRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBgpFailoverTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:stop_bgp_failover_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBgpFailoverTest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopBgpFailoverTestRequest)
        o.output = Shapes::ShapeRef.new(shape: StopBgpFailoverTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:update_direct_connect_gateway_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDirectConnectGatewayAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDirectConnectGatewayAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:update_lag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLagRequest)
        o.output = Shapes::ShapeRef.new(shape: Lag)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)

      api.add_operation(:update_virtual_interface_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualInterfaceAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualInterfaceAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: VirtualInterface)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectServerException)
        o.errors << Shapes::ShapeRef.new(shape: DirectConnectClientException)
      end)
    end

  end
end
