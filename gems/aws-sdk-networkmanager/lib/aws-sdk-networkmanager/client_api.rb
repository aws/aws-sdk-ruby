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

    AWSLocation = Shapes::StructureShape.new(name: 'AWSLocation')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociateCustomerGatewayRequest = Shapes::StructureShape.new(name: 'AssociateCustomerGatewayRequest')
    AssociateCustomerGatewayResponse = Shapes::StructureShape.new(name: 'AssociateCustomerGatewayResponse')
    AssociateLinkRequest = Shapes::StructureShape.new(name: 'AssociateLinkRequest')
    AssociateLinkResponse = Shapes::StructureShape.new(name: 'AssociateLinkResponse')
    AssociateTransitGatewayConnectPeerRequest = Shapes::StructureShape.new(name: 'AssociateTransitGatewayConnectPeerRequest')
    AssociateTransitGatewayConnectPeerResponse = Shapes::StructureShape.new(name: 'AssociateTransitGatewayConnectPeerResponse')
    Bandwidth = Shapes::StructureShape.new(name: 'Bandwidth')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionHealth = Shapes::StructureShape.new(name: 'ConnectionHealth')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    CreateDeviceRequest = Shapes::StructureShape.new(name: 'CreateDeviceRequest')
    CreateDeviceResponse = Shapes::StructureShape.new(name: 'CreateDeviceResponse')
    CreateGlobalNetworkRequest = Shapes::StructureShape.new(name: 'CreateGlobalNetworkRequest')
    CreateGlobalNetworkResponse = Shapes::StructureShape.new(name: 'CreateGlobalNetworkResponse')
    CreateLinkRequest = Shapes::StructureShape.new(name: 'CreateLinkRequest')
    CreateLinkResponse = Shapes::StructureShape.new(name: 'CreateLinkResponse')
    CreateSiteRequest = Shapes::StructureShape.new(name: 'CreateSiteRequest')
    CreateSiteResponse = Shapes::StructureShape.new(name: 'CreateSiteResponse')
    CustomerGatewayAssociation = Shapes::StructureShape.new(name: 'CustomerGatewayAssociation')
    CustomerGatewayAssociationList = Shapes::ListShape.new(name: 'CustomerGatewayAssociationList')
    CustomerGatewayAssociationState = Shapes::StringShape.new(name: 'CustomerGatewayAssociationState')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteDeviceRequest = Shapes::StructureShape.new(name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Shapes::StructureShape.new(name: 'DeleteDeviceResponse')
    DeleteGlobalNetworkRequest = Shapes::StructureShape.new(name: 'DeleteGlobalNetworkRequest')
    DeleteGlobalNetworkResponse = Shapes::StructureShape.new(name: 'DeleteGlobalNetworkResponse')
    DeleteLinkRequest = Shapes::StructureShape.new(name: 'DeleteLinkRequest')
    DeleteLinkResponse = Shapes::StructureShape.new(name: 'DeleteLinkResponse')
    DeleteSiteRequest = Shapes::StructureShape.new(name: 'DeleteSiteRequest')
    DeleteSiteResponse = Shapes::StructureShape.new(name: 'DeleteSiteResponse')
    DeregisterTransitGatewayRequest = Shapes::StructureShape.new(name: 'DeregisterTransitGatewayRequest')
    DeregisterTransitGatewayResponse = Shapes::StructureShape.new(name: 'DeregisterTransitGatewayResponse')
    DescribeGlobalNetworksRequest = Shapes::StructureShape.new(name: 'DescribeGlobalNetworksRequest')
    DescribeGlobalNetworksResponse = Shapes::StructureShape.new(name: 'DescribeGlobalNetworksResponse')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceList = Shapes::ListShape.new(name: 'DeviceList')
    DeviceState = Shapes::StringShape.new(name: 'DeviceState')
    DisassociateCustomerGatewayRequest = Shapes::StructureShape.new(name: 'DisassociateCustomerGatewayRequest')
    DisassociateCustomerGatewayResponse = Shapes::StructureShape.new(name: 'DisassociateCustomerGatewayResponse')
    DisassociateLinkRequest = Shapes::StructureShape.new(name: 'DisassociateLinkRequest')
    DisassociateLinkResponse = Shapes::StructureShape.new(name: 'DisassociateLinkResponse')
    DisassociateTransitGatewayConnectPeerRequest = Shapes::StructureShape.new(name: 'DisassociateTransitGatewayConnectPeerRequest')
    DisassociateTransitGatewayConnectPeerResponse = Shapes::StructureShape.new(name: 'DisassociateTransitGatewayConnectPeerResponse')
    ExceptionContextKey = Shapes::StringShape.new(name: 'ExceptionContextKey')
    ExceptionContextMap = Shapes::MapShape.new(name: 'ExceptionContextMap')
    ExceptionContextValue = Shapes::StringShape.new(name: 'ExceptionContextValue')
    FilterMap = Shapes::MapShape.new(name: 'FilterMap')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    GetConnectionsRequest = Shapes::StructureShape.new(name: 'GetConnectionsRequest')
    GetConnectionsResponse = Shapes::StructureShape.new(name: 'GetConnectionsResponse')
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
    GetRouteAnalysisRequest = Shapes::StructureShape.new(name: 'GetRouteAnalysisRequest')
    GetRouteAnalysisResponse = Shapes::StructureShape.new(name: 'GetRouteAnalysisResponse')
    GetSitesRequest = Shapes::StructureShape.new(name: 'GetSitesRequest')
    GetSitesResponse = Shapes::StructureShape.new(name: 'GetSitesResponse')
    GetTransitGatewayConnectPeerAssociationsRequest = Shapes::StructureShape.new(name: 'GetTransitGatewayConnectPeerAssociationsRequest')
    GetTransitGatewayConnectPeerAssociationsResponse = Shapes::StructureShape.new(name: 'GetTransitGatewayConnectPeerAssociationsResponse')
    GetTransitGatewayRegistrationsRequest = Shapes::StructureShape.new(name: 'GetTransitGatewayRegistrationsRequest')
    GetTransitGatewayRegistrationsResponse = Shapes::StructureShape.new(name: 'GetTransitGatewayRegistrationsResponse')
    GlobalNetwork = Shapes::StructureShape.new(name: 'GlobalNetwork')
    GlobalNetworkList = Shapes::ListShape.new(name: 'GlobalNetworkList')
    GlobalNetworkState = Shapes::StringShape.new(name: 'GlobalNetworkState')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Link = Shapes::StructureShape.new(name: 'Link')
    LinkAssociation = Shapes::StructureShape.new(name: 'LinkAssociation')
    LinkAssociationList = Shapes::ListShape.new(name: 'LinkAssociationList')
    LinkAssociationState = Shapes::StringShape.new(name: 'LinkAssociationState')
    LinkList = Shapes::ListShape.new(name: 'LinkList')
    LinkState = Shapes::StringShape.new(name: 'LinkState')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Location = Shapes::StructureShape.new(name: 'Location')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkResource = Shapes::StructureShape.new(name: 'NetworkResource')
    NetworkResourceCount = Shapes::StructureShape.new(name: 'NetworkResourceCount')
    NetworkResourceCountList = Shapes::ListShape.new(name: 'NetworkResourceCountList')
    NetworkResourceList = Shapes::ListShape.new(name: 'NetworkResourceList')
    NetworkResourceMetadataKey = Shapes::StringShape.new(name: 'NetworkResourceMetadataKey')
    NetworkResourceMetadataMap = Shapes::MapShape.new(name: 'NetworkResourceMetadataMap')
    NetworkResourceMetadataValue = Shapes::StringShape.new(name: 'NetworkResourceMetadataValue')
    NetworkResourceSummary = Shapes::StructureShape.new(name: 'NetworkResourceSummary')
    NetworkRoute = Shapes::StructureShape.new(name: 'NetworkRoute')
    NetworkRouteDestination = Shapes::StructureShape.new(name: 'NetworkRouteDestination')
    NetworkRouteDestinationList = Shapes::ListShape.new(name: 'NetworkRouteDestinationList')
    NetworkRouteList = Shapes::ListShape.new(name: 'NetworkRouteList')
    NetworkTelemetry = Shapes::StructureShape.new(name: 'NetworkTelemetry')
    NetworkTelemetryList = Shapes::ListShape.new(name: 'NetworkTelemetryList')
    PathComponent = Shapes::StructureShape.new(name: 'PathComponent')
    PathComponentList = Shapes::ListShape.new(name: 'PathComponentList')
    ReasonContextKey = Shapes::StringShape.new(name: 'ReasonContextKey')
    ReasonContextMap = Shapes::MapShape.new(name: 'ReasonContextMap')
    ReasonContextValue = Shapes::StringShape.new(name: 'ReasonContextValue')
    RegisterTransitGatewayRequest = Shapes::StructureShape.new(name: 'RegisterTransitGatewayRequest')
    RegisterTransitGatewayResponse = Shapes::StructureShape.new(name: 'RegisterTransitGatewayResponse')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipList = Shapes::ListShape.new(name: 'RelationshipList')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
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
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteList = Shapes::ListShape.new(name: 'SiteList')
    SiteState = Shapes::StringShape.new(name: 'SiteState')
    StartRouteAnalysisRequest = Shapes::StructureShape.new(name: 'StartRouteAnalysisRequest')
    StartRouteAnalysisResponse = Shapes::StructureShape.new(name: 'StartRouteAnalysisResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TransitGatewayConnectPeerAssociation = Shapes::StructureShape.new(name: 'TransitGatewayConnectPeerAssociation')
    TransitGatewayConnectPeerAssociationList = Shapes::ListShape.new(name: 'TransitGatewayConnectPeerAssociationList')
    TransitGatewayConnectPeerAssociationState = Shapes::StringShape.new(name: 'TransitGatewayConnectPeerAssociationState')
    TransitGatewayRegistration = Shapes::StructureShape.new(name: 'TransitGatewayRegistration')
    TransitGatewayRegistrationList = Shapes::ListShape.new(name: 'TransitGatewayRegistrationList')
    TransitGatewayRegistrationState = Shapes::StringShape.new(name: 'TransitGatewayRegistrationState')
    TransitGatewayRegistrationStateReason = Shapes::StructureShape.new(name: 'TransitGatewayRegistrationStateReason')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')
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
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AWSLocation.add_member(:zone, Shapes::ShapeRef.new(shape: String, location_name: "Zone"))
    AWSLocation.add_member(:subnet_arn, Shapes::ShapeRef.new(shape: String, location_name: "SubnetArn"))
    AWSLocation.struct_class = Types::AWSLocation

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateCustomerGatewayRequest.add_member(:customer_gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CustomerGatewayArn"))
    AssociateCustomerGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateCustomerGatewayRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DeviceId"))
    AssociateCustomerGatewayRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    AssociateCustomerGatewayRequest.struct_class = Types::AssociateCustomerGatewayRequest

    AssociateCustomerGatewayResponse.add_member(:customer_gateway_association, Shapes::ShapeRef.new(shape: CustomerGatewayAssociation, location_name: "CustomerGatewayAssociation"))
    AssociateCustomerGatewayResponse.struct_class = Types::AssociateCustomerGatewayResponse

    AssociateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateLinkRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DeviceId"))
    AssociateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LinkId"))
    AssociateLinkRequest.struct_class = Types::AssociateLinkRequest

    AssociateLinkResponse.add_member(:link_association, Shapes::ShapeRef.new(shape: LinkAssociation, location_name: "LinkAssociation"))
    AssociateLinkResponse.struct_class = Types::AssociateLinkResponse

    AssociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    AssociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TransitGatewayConnectPeerArn"))
    AssociateTransitGatewayConnectPeerRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DeviceId"))
    AssociateTransitGatewayConnectPeerRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    AssociateTransitGatewayConnectPeerRequest.struct_class = Types::AssociateTransitGatewayConnectPeerRequest

    AssociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation, location_name: "TransitGatewayConnectPeerAssociation"))
    AssociateTransitGatewayConnectPeerResponse.struct_class = Types::AssociateTransitGatewayConnectPeerResponse

    Bandwidth.add_member(:upload_speed, Shapes::ShapeRef.new(shape: Integer, location_name: "UploadSpeed"))
    Bandwidth.add_member(:download_speed, Shapes::ShapeRef.new(shape: Integer, location_name: "DownloadSpeed"))
    Bandwidth.struct_class = Types::Bandwidth

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    Connection.add_member(:connection_id, Shapes::ShapeRef.new(shape: String, location_name: "ConnectionId"))
    Connection.add_member(:connection_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConnectionArn"))
    Connection.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    Connection.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "DeviceId"))
    Connection.add_member(:connected_device_id, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedDeviceId"))
    Connection.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    Connection.add_member(:connected_link_id, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedLinkId"))
    Connection.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Connection.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Connection.add_member(:state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "State"))
    Connection.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Connection.struct_class = Types::Connection

    ConnectionHealth.add_member(:type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "Type"))
    ConnectionHealth.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    ConnectionHealth.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "Timestamp"))
    ConnectionHealth.struct_class = Types::ConnectionHealth

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateConnectionRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateConnectionRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DeviceId"))
    CreateConnectionRequest.add_member(:connected_device_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConnectedDeviceId"))
    CreateConnectionRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    CreateConnectionRequest.add_member(:connected_link_id, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedLinkId"))
    CreateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    CreateDeviceRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateDeviceRequest.add_member(:aws_location, Shapes::ShapeRef.new(shape: AWSLocation, location_name: "AWSLocation"))
    CreateDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateDeviceRequest.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CreateDeviceRequest.add_member(:vendor, Shapes::ShapeRef.new(shape: String, location_name: "Vendor"))
    CreateDeviceRequest.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "Model"))
    CreateDeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "SerialNumber"))
    CreateDeviceRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    CreateDeviceRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "SiteId"))
    CreateDeviceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDeviceRequest.struct_class = Types::CreateDeviceRequest

    CreateDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    CreateDeviceResponse.struct_class = Types::CreateDeviceResponse

    CreateGlobalNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateGlobalNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateGlobalNetworkRequest.struct_class = Types::CreateGlobalNetworkRequest

    CreateGlobalNetworkResponse.add_member(:global_network, Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: "GlobalNetwork"))
    CreateGlobalNetworkResponse.struct_class = Types::CreateGlobalNetworkResponse

    CreateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateLinkRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateLinkRequest.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CreateLinkRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, required: true, location_name: "Bandwidth"))
    CreateLinkRequest.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "Provider"))
    CreateLinkRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SiteId"))
    CreateLinkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLinkRequest.struct_class = Types::CreateLinkRequest

    CreateLinkResponse.add_member(:link, Shapes::ShapeRef.new(shape: Link, location_name: "Link"))
    CreateLinkResponse.struct_class = Types::CreateLinkResponse

    CreateSiteRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    CreateSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateSiteRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    CreateSiteRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSiteRequest.struct_class = Types::CreateSiteRequest

    CreateSiteResponse.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    CreateSiteResponse.struct_class = Types::CreateSiteResponse

    CustomerGatewayAssociation.add_member(:customer_gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "CustomerGatewayArn"))
    CustomerGatewayAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    CustomerGatewayAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "DeviceId"))
    CustomerGatewayAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    CustomerGatewayAssociation.add_member(:state, Shapes::ShapeRef.new(shape: CustomerGatewayAssociationState, location_name: "State"))
    CustomerGatewayAssociation.struct_class = Types::CustomerGatewayAssociation

    CustomerGatewayAssociationList.member = Shapes::ShapeRef.new(shape: CustomerGatewayAssociation)

    DeleteConnectionRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "connectionId"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteDeviceRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "deviceId"))
    DeleteDeviceRequest.struct_class = Types::DeleteDeviceRequest

    DeleteDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    DeleteDeviceResponse.struct_class = Types::DeleteDeviceResponse

    DeleteGlobalNetworkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteGlobalNetworkRequest.struct_class = Types::DeleteGlobalNetworkRequest

    DeleteGlobalNetworkResponse.add_member(:global_network, Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: "GlobalNetwork"))
    DeleteGlobalNetworkResponse.struct_class = Types::DeleteGlobalNetworkResponse

    DeleteLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "linkId"))
    DeleteLinkRequest.struct_class = Types::DeleteLinkRequest

    DeleteLinkResponse.add_member(:link, Shapes::ShapeRef.new(shape: Link, location_name: "Link"))
    DeleteLinkResponse.struct_class = Types::DeleteLinkResponse

    DeleteSiteRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DeleteSiteRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "siteId"))
    DeleteSiteRequest.struct_class = Types::DeleteSiteRequest

    DeleteSiteResponse.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    DeleteSiteResponse.struct_class = Types::DeleteSiteResponse

    DeregisterTransitGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DeregisterTransitGatewayRequest.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "transitGatewayArn"))
    DeregisterTransitGatewayRequest.struct_class = Types::DeregisterTransitGatewayRequest

    DeregisterTransitGatewayResponse.add_member(:transit_gateway_registration, Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: "TransitGatewayRegistration"))
    DeregisterTransitGatewayResponse.struct_class = Types::DeregisterTransitGatewayResponse

    DescribeGlobalNetworksRequest.add_member(:global_network_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "globalNetworkIds"))
    DescribeGlobalNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeGlobalNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    DescribeGlobalNetworksRequest.struct_class = Types::DescribeGlobalNetworksRequest

    DescribeGlobalNetworksResponse.add_member(:global_networks, Shapes::ShapeRef.new(shape: GlobalNetworkList, location_name: "GlobalNetworks"))
    DescribeGlobalNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeGlobalNetworksResponse.struct_class = Types::DescribeGlobalNetworksResponse

    Device.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "DeviceId"))
    Device.add_member(:device_arn, Shapes::ShapeRef.new(shape: String, location_name: "DeviceArn"))
    Device.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    Device.add_member(:aws_location, Shapes::ShapeRef.new(shape: AWSLocation, location_name: "AWSLocation"))
    Device.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Device.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Device.add_member(:vendor, Shapes::ShapeRef.new(shape: String, location_name: "Vendor"))
    Device.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "Model"))
    Device.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "SerialNumber"))
    Device.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    Device.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "SiteId"))
    Device.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Device.add_member(:state, Shapes::ShapeRef.new(shape: DeviceState, location_name: "State"))
    Device.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Device.struct_class = Types::Device

    DeviceList.member = Shapes::ShapeRef.new(shape: Device)

    DisassociateCustomerGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateCustomerGatewayRequest.add_member(:customer_gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "customerGatewayArn"))
    DisassociateCustomerGatewayRequest.struct_class = Types::DisassociateCustomerGatewayRequest

    DisassociateCustomerGatewayResponse.add_member(:customer_gateway_association, Shapes::ShapeRef.new(shape: CustomerGatewayAssociation, location_name: "CustomerGatewayAssociation"))
    DisassociateCustomerGatewayResponse.struct_class = Types::DisassociateCustomerGatewayResponse

    DisassociateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateLinkRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "deviceId"))
    DisassociateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "linkId"))
    DisassociateLinkRequest.struct_class = Types::DisassociateLinkRequest

    DisassociateLinkResponse.add_member(:link_association, Shapes::ShapeRef.new(shape: LinkAssociation, location_name: "LinkAssociation"))
    DisassociateLinkResponse.struct_class = Types::DisassociateLinkResponse

    DisassociateTransitGatewayConnectPeerRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    DisassociateTransitGatewayConnectPeerRequest.add_member(:transit_gateway_connect_peer_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "transitGatewayConnectPeerArn"))
    DisassociateTransitGatewayConnectPeerRequest.struct_class = Types::DisassociateTransitGatewayConnectPeerRequest

    DisassociateTransitGatewayConnectPeerResponse.add_member(:transit_gateway_connect_peer_association, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation, location_name: "TransitGatewayConnectPeerAssociation"))
    DisassociateTransitGatewayConnectPeerResponse.struct_class = Types::DisassociateTransitGatewayConnectPeerResponse

    ExceptionContextMap.key = Shapes::ShapeRef.new(shape: ExceptionContextKey)
    ExceptionContextMap.value = Shapes::ShapeRef.new(shape: ExceptionContextValue)

    FilterMap.key = Shapes::ShapeRef.new(shape: FilterName)
    FilterMap.value = Shapes::ShapeRef.new(shape: FilterValues)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetConnectionsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetConnectionsRequest.add_member(:connection_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "connectionIds"))
    GetConnectionsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "deviceId"))
    GetConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetConnectionsRequest.struct_class = Types::GetConnectionsRequest

    GetConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    GetConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetConnectionsResponse.struct_class = Types::GetConnectionsResponse

    GetCustomerGatewayAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetCustomerGatewayAssociationsRequest.add_member(:customer_gateway_arns, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "customerGatewayArns"))
    GetCustomerGatewayAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetCustomerGatewayAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetCustomerGatewayAssociationsRequest.struct_class = Types::GetCustomerGatewayAssociationsRequest

    GetCustomerGatewayAssociationsResponse.add_member(:customer_gateway_associations, Shapes::ShapeRef.new(shape: CustomerGatewayAssociationList, location_name: "CustomerGatewayAssociations"))
    GetCustomerGatewayAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetCustomerGatewayAssociationsResponse.struct_class = Types::GetCustomerGatewayAssociationsResponse

    GetDevicesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetDevicesRequest.add_member(:device_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "deviceIds"))
    GetDevicesRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "siteId"))
    GetDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetDevicesRequest.struct_class = Types::GetDevicesRequest

    GetDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceList, location_name: "Devices"))
    GetDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetDevicesResponse.struct_class = Types::GetDevicesResponse

    GetLinkAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetLinkAssociationsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "deviceId"))
    GetLinkAssociationsRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "linkId"))
    GetLinkAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetLinkAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetLinkAssociationsRequest.struct_class = Types::GetLinkAssociationsRequest

    GetLinkAssociationsResponse.add_member(:link_associations, Shapes::ShapeRef.new(shape: LinkAssociationList, location_name: "LinkAssociations"))
    GetLinkAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetLinkAssociationsResponse.struct_class = Types::GetLinkAssociationsResponse

    GetLinksRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetLinksRequest.add_member(:link_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "linkIds"))
    GetLinksRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "siteId"))
    GetLinksRequest.add_member(:type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "type"))
    GetLinksRequest.add_member(:provider, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "provider"))
    GetLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetLinksRequest.struct_class = Types::GetLinksRequest

    GetLinksResponse.add_member(:links, Shapes::ShapeRef.new(shape: LinkList, location_name: "Links"))
    GetLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetLinksResponse.struct_class = Types::GetLinksResponse

    GetNetworkResourceCountsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkResourceCountsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceType"))
    GetNetworkResourceCountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkResourceCountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetNetworkResourceCountsRequest.struct_class = Types::GetNetworkResourceCountsRequest

    GetNetworkResourceCountsResponse.add_member(:network_resource_counts, Shapes::ShapeRef.new(shape: NetworkResourceCountList, location_name: "NetworkResourceCounts"))
    GetNetworkResourceCountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetNetworkResourceCountsResponse.struct_class = Types::GetNetworkResourceCountsResponse

    GetNetworkResourceRelationshipsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkResourceRelationshipsRequest.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "registeredGatewayArn"))
    GetNetworkResourceRelationshipsRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "awsRegion"))
    GetNetworkResourceRelationshipsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "accountId"))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceType"))
    GetNetworkResourceRelationshipsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceArn"))
    GetNetworkResourceRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkResourceRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetNetworkResourceRelationshipsRequest.struct_class = Types::GetNetworkResourceRelationshipsRequest

    GetNetworkResourceRelationshipsResponse.add_member(:relationships, Shapes::ShapeRef.new(shape: RelationshipList, location_name: "Relationships"))
    GetNetworkResourceRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetNetworkResourceRelationshipsResponse.struct_class = Types::GetNetworkResourceRelationshipsResponse

    GetNetworkResourcesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkResourcesRequest.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "registeredGatewayArn"))
    GetNetworkResourcesRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "awsRegion"))
    GetNetworkResourcesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "accountId"))
    GetNetworkResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceType"))
    GetNetworkResourcesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceArn"))
    GetNetworkResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetNetworkResourcesRequest.struct_class = Types::GetNetworkResourcesRequest

    GetNetworkResourcesResponse.add_member(:network_resources, Shapes::ShapeRef.new(shape: NetworkResourceList, location_name: "NetworkResources"))
    GetNetworkResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetNetworkResourcesResponse.struct_class = Types::GetNetworkResourcesResponse

    GetNetworkRoutesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkRoutesRequest.add_member(:route_table_identifier, Shapes::ShapeRef.new(shape: RouteTableIdentifier, required: true, location_name: "RouteTableIdentifier"))
    GetNetworkRoutesRequest.add_member(:exact_cidr_matches, Shapes::ShapeRef.new(shape: StringList, location_name: "ExactCidrMatches"))
    GetNetworkRoutesRequest.add_member(:longest_prefix_matches, Shapes::ShapeRef.new(shape: StringList, location_name: "LongestPrefixMatches"))
    GetNetworkRoutesRequest.add_member(:subnet_of_matches, Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetOfMatches"))
    GetNetworkRoutesRequest.add_member(:supernet_of_matches, Shapes::ShapeRef.new(shape: StringList, location_name: "SupernetOfMatches"))
    GetNetworkRoutesRequest.add_member(:prefix_list_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "PrefixListIds"))
    GetNetworkRoutesRequest.add_member(:states, Shapes::ShapeRef.new(shape: RouteStateList, location_name: "States"))
    GetNetworkRoutesRequest.add_member(:types, Shapes::ShapeRef.new(shape: RouteTypeList, location_name: "Types"))
    GetNetworkRoutesRequest.add_member(:destination_filters, Shapes::ShapeRef.new(shape: FilterMap, location_name: "DestinationFilters"))
    GetNetworkRoutesRequest.struct_class = Types::GetNetworkRoutesRequest

    GetNetworkRoutesResponse.add_member(:route_table_arn, Shapes::ShapeRef.new(shape: String, location_name: "RouteTableArn"))
    GetNetworkRoutesResponse.add_member(:route_table_type, Shapes::ShapeRef.new(shape: RouteTableType, location_name: "RouteTableType"))
    GetNetworkRoutesResponse.add_member(:route_table_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "RouteTableTimestamp"))
    GetNetworkRoutesResponse.add_member(:network_routes, Shapes::ShapeRef.new(shape: NetworkRouteList, location_name: "NetworkRoutes"))
    GetNetworkRoutesResponse.struct_class = Types::GetNetworkRoutesResponse

    GetNetworkTelemetryRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetNetworkTelemetryRequest.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "registeredGatewayArn"))
    GetNetworkTelemetryRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "awsRegion"))
    GetNetworkTelemetryRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "accountId"))
    GetNetworkTelemetryRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceType"))
    GetNetworkTelemetryRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceArn"))
    GetNetworkTelemetryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetNetworkTelemetryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetNetworkTelemetryRequest.struct_class = Types::GetNetworkTelemetryRequest

    GetNetworkTelemetryResponse.add_member(:network_telemetry, Shapes::ShapeRef.new(shape: NetworkTelemetryList, location_name: "NetworkTelemetry"))
    GetNetworkTelemetryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetNetworkTelemetryResponse.struct_class = Types::GetNetworkTelemetryResponse

    GetRouteAnalysisRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetRouteAnalysisRequest.add_member(:route_analysis_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "routeAnalysisId"))
    GetRouteAnalysisRequest.struct_class = Types::GetRouteAnalysisRequest

    GetRouteAnalysisResponse.add_member(:route_analysis, Shapes::ShapeRef.new(shape: RouteAnalysis, location_name: "RouteAnalysis"))
    GetRouteAnalysisResponse.struct_class = Types::GetRouteAnalysisResponse

    GetSitesRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetSitesRequest.add_member(:site_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "siteIds"))
    GetSitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetSitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetSitesRequest.struct_class = Types::GetSitesRequest

    GetSitesResponse.add_member(:sites, Shapes::ShapeRef.new(shape: SiteList, location_name: "Sites"))
    GetSitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetSitesResponse.struct_class = Types::GetSitesResponse

    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:transit_gateway_connect_peer_arns, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "transitGatewayConnectPeerArns"))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetTransitGatewayConnectPeerAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetTransitGatewayConnectPeerAssociationsRequest.struct_class = Types::GetTransitGatewayConnectPeerAssociationsRequest

    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:transit_gateway_connect_peer_associations, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociationList, location_name: "TransitGatewayConnectPeerAssociations"))
    GetTransitGatewayConnectPeerAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetTransitGatewayConnectPeerAssociationsResponse.struct_class = Types::GetTransitGatewayConnectPeerAssociationsResponse

    GetTransitGatewayRegistrationsRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    GetTransitGatewayRegistrationsRequest.add_member(:transit_gateway_arns, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "transitGatewayArns"))
    GetTransitGatewayRegistrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetTransitGatewayRegistrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetTransitGatewayRegistrationsRequest.struct_class = Types::GetTransitGatewayRegistrationsRequest

    GetTransitGatewayRegistrationsResponse.add_member(:transit_gateway_registrations, Shapes::ShapeRef.new(shape: TransitGatewayRegistrationList, location_name: "TransitGatewayRegistrations"))
    GetTransitGatewayRegistrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetTransitGatewayRegistrationsResponse.struct_class = Types::GetTransitGatewayRegistrationsResponse

    GlobalNetwork.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    GlobalNetwork.add_member(:global_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkArn"))
    GlobalNetwork.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GlobalNetwork.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    GlobalNetwork.add_member(:state, Shapes::ShapeRef.new(shape: GlobalNetworkState, location_name: "State"))
    GlobalNetwork.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GlobalNetwork.struct_class = Types::GlobalNetwork

    GlobalNetworkList.member = Shapes::ShapeRef.new(shape: GlobalNetwork)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    Link.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    Link.add_member(:link_arn, Shapes::ShapeRef.new(shape: String, location_name: "LinkArn"))
    Link.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    Link.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "SiteId"))
    Link.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Link.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Link.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "Bandwidth"))
    Link.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "Provider"))
    Link.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Link.add_member(:state, Shapes::ShapeRef.new(shape: LinkState, location_name: "State"))
    Link.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Link.struct_class = Types::Link

    LinkAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    LinkAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "DeviceId"))
    LinkAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    LinkAssociation.add_member(:link_association_state, Shapes::ShapeRef.new(shape: LinkAssociationState, location_name: "LinkAssociationState"))
    LinkAssociation.struct_class = Types::LinkAssociation

    LinkAssociationList.member = Shapes::ShapeRef.new(shape: LinkAssociation)

    LinkList.member = Shapes::ShapeRef.new(shape: Link)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Location.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Location.add_member(:latitude, Shapes::ShapeRef.new(shape: String, location_name: "Latitude"))
    Location.add_member(:longitude, Shapes::ShapeRef.new(shape: String, location_name: "Longitude"))
    Location.struct_class = Types::Location

    NetworkResource.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredGatewayArn"))
    NetworkResource.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "AwsRegion"))
    NetworkResource.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    NetworkResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    NetworkResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    NetworkResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    NetworkResource.add_member(:definition, Shapes::ShapeRef.new(shape: String, location_name: "Definition"))
    NetworkResource.add_member(:definition_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "DefinitionTimestamp"))
    NetworkResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    NetworkResource.add_member(:metadata, Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: "Metadata"))
    NetworkResource.struct_class = Types::NetworkResource

    NetworkResourceCount.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    NetworkResourceCount.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    NetworkResourceCount.struct_class = Types::NetworkResourceCount

    NetworkResourceCountList.member = Shapes::ShapeRef.new(shape: NetworkResourceCount)

    NetworkResourceList.member = Shapes::ShapeRef.new(shape: NetworkResource)

    NetworkResourceMetadataMap.key = Shapes::ShapeRef.new(shape: NetworkResourceMetadataKey)
    NetworkResourceMetadataMap.value = Shapes::ShapeRef.new(shape: NetworkResourceMetadataValue)

    NetworkResourceSummary.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredGatewayArn"))
    NetworkResourceSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    NetworkResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    NetworkResourceSummary.add_member(:definition, Shapes::ShapeRef.new(shape: String, location_name: "Definition"))
    NetworkResourceSummary.add_member(:name_tag, Shapes::ShapeRef.new(shape: String, location_name: "NameTag"))
    NetworkResourceSummary.add_member(:is_middlebox, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMiddlebox"))
    NetworkResourceSummary.struct_class = Types::NetworkResourceSummary

    NetworkRoute.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: String, location_name: "DestinationCidrBlock"))
    NetworkRoute.add_member(:destinations, Shapes::ShapeRef.new(shape: NetworkRouteDestinationList, location_name: "Destinations"))
    NetworkRoute.add_member(:prefix_list_id, Shapes::ShapeRef.new(shape: String, location_name: "PrefixListId"))
    NetworkRoute.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    NetworkRoute.add_member(:type, Shapes::ShapeRef.new(shape: RouteType, location_name: "Type"))
    NetworkRoute.struct_class = Types::NetworkRoute

    NetworkRouteDestination.add_member(:transit_gateway_attachment_id, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayAttachmentId"))
    NetworkRouteDestination.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    NetworkRouteDestination.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    NetworkRouteDestination.struct_class = Types::NetworkRouteDestination

    NetworkRouteDestinationList.member = Shapes::ShapeRef.new(shape: NetworkRouteDestination)

    NetworkRouteList.member = Shapes::ShapeRef.new(shape: NetworkRoute)

    NetworkTelemetry.add_member(:registered_gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredGatewayArn"))
    NetworkTelemetry.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "AwsRegion"))
    NetworkTelemetry.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    NetworkTelemetry.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    NetworkTelemetry.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    NetworkTelemetry.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    NetworkTelemetry.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    NetworkTelemetry.add_member(:health, Shapes::ShapeRef.new(shape: ConnectionHealth, location_name: "Health"))
    NetworkTelemetry.struct_class = Types::NetworkTelemetry

    NetworkTelemetryList.member = Shapes::ShapeRef.new(shape: NetworkTelemetry)

    PathComponent.add_member(:sequence, Shapes::ShapeRef.new(shape: Integer, location_name: "Sequence"))
    PathComponent.add_member(:resource, Shapes::ShapeRef.new(shape: NetworkResourceSummary, location_name: "Resource"))
    PathComponent.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: String, location_name: "DestinationCidrBlock"))
    PathComponent.struct_class = Types::PathComponent

    PathComponentList.member = Shapes::ShapeRef.new(shape: PathComponent)

    ReasonContextMap.key = Shapes::ShapeRef.new(shape: ReasonContextKey)
    ReasonContextMap.value = Shapes::ShapeRef.new(shape: ReasonContextValue)

    RegisterTransitGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    RegisterTransitGatewayRequest.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TransitGatewayArn"))
    RegisterTransitGatewayRequest.struct_class = Types::RegisterTransitGatewayRequest

    RegisterTransitGatewayResponse.add_member(:transit_gateway_registration, Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: "TransitGatewayRegistration"))
    RegisterTransitGatewayResponse.struct_class = Types::RegisterTransitGatewayResponse

    Relationship.add_member(:from, Shapes::ShapeRef.new(shape: String, location_name: "From"))
    Relationship.add_member(:to, Shapes::ShapeRef.new(shape: String, location_name: "To"))
    Relationship.struct_class = Types::Relationship

    RelationshipList.member = Shapes::ShapeRef.new(shape: Relationship)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContextMap, location_name: "Context"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RouteAnalysis.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    RouteAnalysis.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccountId"))
    RouteAnalysis.add_member(:route_analysis_id, Shapes::ShapeRef.new(shape: String, location_name: "RouteAnalysisId"))
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

    RouteAnalysisEndpointOptions.add_member(:transit_gateway_attachment_arn, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayAttachmentArn"))
    RouteAnalysisEndpointOptions.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayArn"))
    RouteAnalysisEndpointOptions.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    RouteAnalysisEndpointOptions.struct_class = Types::RouteAnalysisEndpointOptions

    RouteAnalysisEndpointOptionsSpecification.add_member(:transit_gateway_attachment_arn, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayAttachmentArn"))
    RouteAnalysisEndpointOptionsSpecification.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    RouteAnalysisEndpointOptionsSpecification.struct_class = Types::RouteAnalysisEndpointOptionsSpecification

    RouteAnalysisPath.add_member(:completion_status, Shapes::ShapeRef.new(shape: RouteAnalysisCompletion, location_name: "CompletionStatus"))
    RouteAnalysisPath.add_member(:path, Shapes::ShapeRef.new(shape: PathComponentList, location_name: "Path"))
    RouteAnalysisPath.struct_class = Types::RouteAnalysisPath

    RouteStateList.member = Shapes::ShapeRef.new(shape: RouteState)

    RouteTableIdentifier.add_member(:transit_gateway_route_table_arn, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayRouteTableArn"))
    RouteTableIdentifier.struct_class = Types::RouteTableIdentifier

    RouteTypeList.member = Shapes::ShapeRef.new(shape: RouteType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:limit_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LimitCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Site.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "SiteId"))
    Site.add_member(:site_arn, Shapes::ShapeRef.new(shape: String, location_name: "SiteArn"))
    Site.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    Site.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Site.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    Site.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Site.add_member(:state, Shapes::ShapeRef.new(shape: SiteState, location_name: "State"))
    Site.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Site.struct_class = Types::Site

    SiteList.member = Shapes::ShapeRef.new(shape: Site)

    StartRouteAnalysisRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    StartRouteAnalysisRequest.add_member(:source, Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptionsSpecification, required: true, location_name: "Source"))
    StartRouteAnalysisRequest.add_member(:destination, Shapes::ShapeRef.new(shape: RouteAnalysisEndpointOptionsSpecification, required: true, location_name: "Destination"))
    StartRouteAnalysisRequest.add_member(:include_return_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeReturnPath"))
    StartRouteAnalysisRequest.add_member(:use_middleboxes, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseMiddleboxes"))
    StartRouteAnalysisRequest.struct_class = Types::StartRouteAnalysisRequest

    StartRouteAnalysisResponse.add_member(:route_analysis, Shapes::ShapeRef.new(shape: RouteAnalysis, location_name: "RouteAnalysis"))
    StartRouteAnalysisResponse.struct_class = Types::StartRouteAnalysisResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TransitGatewayConnectPeerAssociation.add_member(:transit_gateway_connect_peer_arn, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayConnectPeerArn"))
    TransitGatewayConnectPeerAssociation.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    TransitGatewayConnectPeerAssociation.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "DeviceId"))
    TransitGatewayConnectPeerAssociation.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    TransitGatewayConnectPeerAssociation.add_member(:state, Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociationState, location_name: "State"))
    TransitGatewayConnectPeerAssociation.struct_class = Types::TransitGatewayConnectPeerAssociation

    TransitGatewayConnectPeerAssociationList.member = Shapes::ShapeRef.new(shape: TransitGatewayConnectPeerAssociation)

    TransitGatewayRegistration.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalNetworkId"))
    TransitGatewayRegistration.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayArn"))
    TransitGatewayRegistration.add_member(:state, Shapes::ShapeRef.new(shape: TransitGatewayRegistrationStateReason, location_name: "State"))
    TransitGatewayRegistration.struct_class = Types::TransitGatewayRegistration

    TransitGatewayRegistrationList.member = Shapes::ShapeRef.new(shape: TransitGatewayRegistration)

    TransitGatewayRegistrationStateReason.add_member(:code, Shapes::ShapeRef.new(shape: TransitGatewayRegistrationState, location_name: "Code"))
    TransitGatewayRegistrationStateReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TransitGatewayRegistrationStateReason.struct_class = Types::TransitGatewayRegistrationStateReason

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectionRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "connectionId"))
    UpdateConnectionRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, location_name: "LinkId"))
    UpdateConnectionRequest.add_member(:connected_link_id, Shapes::ShapeRef.new(shape: String, location_name: "ConnectedLinkId"))
    UpdateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateConnectionRequest.struct_class = Types::UpdateConnectionRequest

    UpdateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    UpdateConnectionResponse.struct_class = Types::UpdateConnectionResponse

    UpdateDeviceRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "deviceId"))
    UpdateDeviceRequest.add_member(:aws_location, Shapes::ShapeRef.new(shape: AWSLocation, location_name: "AWSLocation"))
    UpdateDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateDeviceRequest.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    UpdateDeviceRequest.add_member(:vendor, Shapes::ShapeRef.new(shape: String, location_name: "Vendor"))
    UpdateDeviceRequest.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "Model"))
    UpdateDeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "SerialNumber"))
    UpdateDeviceRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    UpdateDeviceRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "SiteId"))
    UpdateDeviceRequest.struct_class = Types::UpdateDeviceRequest

    UpdateDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    UpdateDeviceResponse.struct_class = Types::UpdateDeviceResponse

    UpdateGlobalNetworkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateGlobalNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateGlobalNetworkRequest.struct_class = Types::UpdateGlobalNetworkRequest

    UpdateGlobalNetworkResponse.add_member(:global_network, Shapes::ShapeRef.new(shape: GlobalNetwork, location_name: "GlobalNetwork"))
    UpdateGlobalNetworkResponse.struct_class = Types::UpdateGlobalNetworkResponse

    UpdateLinkRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "linkId"))
    UpdateLinkRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateLinkRequest.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    UpdateLinkRequest.add_member(:bandwidth, Shapes::ShapeRef.new(shape: Bandwidth, location_name: "Bandwidth"))
    UpdateLinkRequest.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "Provider"))
    UpdateLinkRequest.struct_class = Types::UpdateLinkRequest

    UpdateLinkResponse.add_member(:link, Shapes::ShapeRef.new(shape: Link, location_name: "Link"))
    UpdateLinkResponse.struct_class = Types::UpdateLinkResponse

    UpdateNetworkResourceMetadataRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateNetworkResourceMetadataRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UpdateNetworkResourceMetadataRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, required: true, location_name: "Metadata"))
    UpdateNetworkResourceMetadataRequest.struct_class = Types::UpdateNetworkResourceMetadataRequest

    UpdateNetworkResourceMetadataResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    UpdateNetworkResourceMetadataResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: NetworkResourceMetadataMap, location_name: "Metadata"))
    UpdateNetworkResourceMetadataResponse.struct_class = Types::UpdateNetworkResourceMetadataResponse

    UpdateSiteRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    UpdateSiteRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "siteId"))
    UpdateSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateSiteRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    UpdateSiteRequest.struct_class = Types::UpdateSiteRequest

    UpdateSiteResponse.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    UpdateSiteResponse.struct_class = Types::UpdateSiteResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


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
    end

  end
end
