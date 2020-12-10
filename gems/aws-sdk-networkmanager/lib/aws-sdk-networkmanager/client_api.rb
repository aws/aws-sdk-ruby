# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
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
    RegisterTransitGatewayRequest = Shapes::StructureShape.new(name: 'RegisterTransitGatewayRequest')
    RegisterTransitGatewayResponse = Shapes::StructureShape.new(name: 'RegisterTransitGatewayResponse')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteList = Shapes::ListShape.new(name: 'SiteList')
    SiteState = Shapes::StringShape.new(name: 'SiteState')
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

    RegisterTransitGatewayRequest.add_member(:global_network_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "globalNetworkId"))
    RegisterTransitGatewayRequest.add_member(:transit_gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TransitGatewayArn"))
    RegisterTransitGatewayRequest.struct_class = Types::RegisterTransitGatewayRequest

    RegisterTransitGatewayResponse.add_member(:transit_gateway_registration, Shapes::ShapeRef.new(shape: TransitGatewayRegistration, location_name: "TransitGatewayRegistration"))
    RegisterTransitGatewayResponse.struct_class = Types::RegisterTransitGatewayResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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
