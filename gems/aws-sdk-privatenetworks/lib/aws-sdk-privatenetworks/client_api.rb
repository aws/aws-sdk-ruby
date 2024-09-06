# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PrivateNetworks
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AcknowledgeOrderReceiptRequest = Shapes::StructureShape.new(name: 'AcknowledgeOrderReceiptRequest')
    AcknowledgeOrderReceiptResponse = Shapes::StructureShape.new(name: 'AcknowledgeOrderReceiptResponse')
    AcknowledgmentStatus = Shapes::StringShape.new(name: 'AcknowledgmentStatus')
    ActivateDeviceIdentifierRequest = Shapes::StructureShape.new(name: 'ActivateDeviceIdentifierRequest')
    ActivateDeviceIdentifierResponse = Shapes::StructureShape.new(name: 'ActivateDeviceIdentifierResponse')
    ActivateNetworkSiteRequest = Shapes::StructureShape.new(name: 'ActivateNetworkSiteRequest')
    ActivateNetworkSiteResponse = Shapes::StructureShape.new(name: 'ActivateNetworkSiteResponse')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressContent = Shapes::StringShape.new(name: 'AddressContent')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CommitmentConfiguration = Shapes::StructureShape.new(name: 'CommitmentConfiguration')
    CommitmentInformation = Shapes::StructureShape.new(name: 'CommitmentInformation')
    CommitmentLength = Shapes::StringShape.new(name: 'CommitmentLength')
    ConfigureAccessPointRequest = Shapes::StructureShape.new(name: 'ConfigureAccessPointRequest')
    ConfigureAccessPointRequestCpiSecretKeyString = Shapes::StringShape.new(name: 'ConfigureAccessPointRequestCpiSecretKeyString')
    ConfigureAccessPointRequestCpiUserIdString = Shapes::StringShape.new(name: 'ConfigureAccessPointRequestCpiUserIdString')
    ConfigureAccessPointRequestCpiUserPasswordString = Shapes::StringShape.new(name: 'ConfigureAccessPointRequestCpiUserPasswordString')
    ConfigureAccessPointRequestCpiUsernameString = Shapes::StringShape.new(name: 'ConfigureAccessPointRequestCpiUsernameString')
    ConfigureAccessPointResponse = Shapes::StructureShape.new(name: 'ConfigureAccessPointResponse')
    CreateNetworkRequest = Shapes::StructureShape.new(name: 'CreateNetworkRequest')
    CreateNetworkResponse = Shapes::StructureShape.new(name: 'CreateNetworkResponse')
    CreateNetworkSiteRequest = Shapes::StructureShape.new(name: 'CreateNetworkSiteRequest')
    CreateNetworkSiteResponse = Shapes::StructureShape.new(name: 'CreateNetworkSiteResponse')
    DeactivateDeviceIdentifierRequest = Shapes::StructureShape.new(name: 'DeactivateDeviceIdentifierRequest')
    DeactivateDeviceIdentifierResponse = Shapes::StructureShape.new(name: 'DeactivateDeviceIdentifierResponse')
    DeleteNetworkRequest = Shapes::StructureShape.new(name: 'DeleteNetworkRequest')
    DeleteNetworkResponse = Shapes::StructureShape.new(name: 'DeleteNetworkResponse')
    DeleteNetworkSiteRequest = Shapes::StructureShape.new(name: 'DeleteNetworkSiteRequest')
    DeleteNetworkSiteResponse = Shapes::StructureShape.new(name: 'DeleteNetworkSiteResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DeviceIdentifier = Shapes::StructureShape.new(name: 'DeviceIdentifier')
    DeviceIdentifierFilterKeys = Shapes::StringShape.new(name: 'DeviceIdentifierFilterKeys')
    DeviceIdentifierFilterValues = Shapes::ListShape.new(name: 'DeviceIdentifierFilterValues')
    DeviceIdentifierFilters = Shapes::MapShape.new(name: 'DeviceIdentifierFilters')
    DeviceIdentifierImsiString = Shapes::StringShape.new(name: 'DeviceIdentifierImsiString')
    DeviceIdentifierList = Shapes::ListShape.new(name: 'DeviceIdentifierList')
    DeviceIdentifierStatus = Shapes::StringShape.new(name: 'DeviceIdentifierStatus')
    Double = Shapes::FloatShape.new(name: 'Double')
    ElevationReference = Shapes::StringShape.new(name: 'ElevationReference')
    ElevationUnit = Shapes::StringShape.new(name: 'ElevationUnit')
    GetDeviceIdentifierRequest = Shapes::StructureShape.new(name: 'GetDeviceIdentifierRequest')
    GetDeviceIdentifierResponse = Shapes::StructureShape.new(name: 'GetDeviceIdentifierResponse')
    GetNetworkRequest = Shapes::StructureShape.new(name: 'GetNetworkRequest')
    GetNetworkResourceRequest = Shapes::StructureShape.new(name: 'GetNetworkResourceRequest')
    GetNetworkResourceResponse = Shapes::StructureShape.new(name: 'GetNetworkResourceResponse')
    GetNetworkResponse = Shapes::StructureShape.new(name: 'GetNetworkResponse')
    GetNetworkSiteRequest = Shapes::StructureShape.new(name: 'GetNetworkSiteRequest')
    GetNetworkSiteResponse = Shapes::StructureShape.new(name: 'GetNetworkSiteResponse')
    GetOrderRequest = Shapes::StructureShape.new(name: 'GetOrderRequest')
    GetOrderResponse = Shapes::StructureShape.new(name: 'GetOrderResponse')
    HealthStatus = Shapes::StringShape.new(name: 'HealthStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDeviceIdentifiersRequest = Shapes::StructureShape.new(name: 'ListDeviceIdentifiersRequest')
    ListDeviceIdentifiersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDeviceIdentifiersRequestMaxResultsInteger')
    ListDeviceIdentifiersResponse = Shapes::StructureShape.new(name: 'ListDeviceIdentifiersResponse')
    ListNetworkResourcesRequest = Shapes::StructureShape.new(name: 'ListNetworkResourcesRequest')
    ListNetworkResourcesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNetworkResourcesRequestMaxResultsInteger')
    ListNetworkResourcesResponse = Shapes::StructureShape.new(name: 'ListNetworkResourcesResponse')
    ListNetworkSitesRequest = Shapes::StructureShape.new(name: 'ListNetworkSitesRequest')
    ListNetworkSitesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNetworkSitesRequestMaxResultsInteger')
    ListNetworkSitesResponse = Shapes::StructureShape.new(name: 'ListNetworkSitesResponse')
    ListNetworksRequest = Shapes::StructureShape.new(name: 'ListNetworksRequest')
    ListNetworksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNetworksRequestMaxResultsInteger')
    ListNetworksResponse = Shapes::StructureShape.new(name: 'ListNetworksResponse')
    ListOrdersRequest = Shapes::StructureShape.new(name: 'ListOrdersRequest')
    ListOrdersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOrdersRequestMaxResultsInteger')
    ListOrdersResponse = Shapes::StructureShape.new(name: 'ListOrdersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Name = Shapes::StringShape.new(name: 'Name')
    NameValuePair = Shapes::StructureShape.new(name: 'NameValuePair')
    NameValuePairs = Shapes::ListShape.new(name: 'NameValuePairs')
    Network = Shapes::StructureShape.new(name: 'Network')
    NetworkFilterKeys = Shapes::StringShape.new(name: 'NetworkFilterKeys')
    NetworkFilterValues = Shapes::ListShape.new(name: 'NetworkFilterValues')
    NetworkFilters = Shapes::MapShape.new(name: 'NetworkFilters')
    NetworkList = Shapes::ListShape.new(name: 'NetworkList')
    NetworkResource = Shapes::StructureShape.new(name: 'NetworkResource')
    NetworkResourceDefinition = Shapes::StructureShape.new(name: 'NetworkResourceDefinition')
    NetworkResourceDefinitionCountInteger = Shapes::IntegerShape.new(name: 'NetworkResourceDefinitionCountInteger')
    NetworkResourceDefinitionType = Shapes::StringShape.new(name: 'NetworkResourceDefinitionType')
    NetworkResourceDefinitions = Shapes::ListShape.new(name: 'NetworkResourceDefinitions')
    NetworkResourceFilterKeys = Shapes::StringShape.new(name: 'NetworkResourceFilterKeys')
    NetworkResourceFilterValues = Shapes::ListShape.new(name: 'NetworkResourceFilterValues')
    NetworkResourceFilters = Shapes::MapShape.new(name: 'NetworkResourceFilters')
    NetworkResourceList = Shapes::ListShape.new(name: 'NetworkResourceList')
    NetworkResourceStatus = Shapes::StringShape.new(name: 'NetworkResourceStatus')
    NetworkResourceType = Shapes::StringShape.new(name: 'NetworkResourceType')
    NetworkSite = Shapes::StructureShape.new(name: 'NetworkSite')
    NetworkSiteFilterKeys = Shapes::StringShape.new(name: 'NetworkSiteFilterKeys')
    NetworkSiteFilterValues = Shapes::ListShape.new(name: 'NetworkSiteFilterValues')
    NetworkSiteFilters = Shapes::MapShape.new(name: 'NetworkSiteFilters')
    NetworkSiteList = Shapes::ListShape.new(name: 'NetworkSiteList')
    NetworkSiteStatus = Shapes::StringShape.new(name: 'NetworkSiteStatus')
    NetworkStatus = Shapes::StringShape.new(name: 'NetworkStatus')
    Options = Shapes::ListShape.new(name: 'Options')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderFilterKeys = Shapes::StringShape.new(name: 'OrderFilterKeys')
    OrderFilterValues = Shapes::ListShape.new(name: 'OrderFilterValues')
    OrderFilters = Shapes::MapShape.new(name: 'OrderFilters')
    OrderList = Shapes::ListShape.new(name: 'OrderList')
    OrderedResourceDefinition = Shapes::StructureShape.new(name: 'OrderedResourceDefinition')
    OrderedResourceDefinitionCountInteger = Shapes::IntegerShape.new(name: 'OrderedResourceDefinitionCountInteger')
    OrderedResourceDefinitions = Shapes::ListShape.new(name: 'OrderedResourceDefinitions')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PingResponse = Shapes::StructureShape.new(name: 'PingResponse')
    Position = Shapes::StructureShape.new(name: 'Position')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ReturnInformation = Shapes::StructureShape.new(name: 'ReturnInformation')
    SitePlan = Shapes::StructureShape.new(name: 'SitePlan')
    StartNetworkResourceUpdateRequest = Shapes::StructureShape.new(name: 'StartNetworkResourceUpdateRequest')
    StartNetworkResourceUpdateRequestReturnReasonString = Shapes::StringShape.new(name: 'StartNetworkResourceUpdateRequestReturnReasonString')
    StartNetworkResourceUpdateResponse = Shapes::StructureShape.new(name: 'StartNetworkResourceUpdateResponse')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TrackingInformation = Shapes::StructureShape.new(name: 'TrackingInformation')
    TrackingInformationList = Shapes::ListShape.new(name: 'TrackingInformationList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateNetworkSitePlanRequest = Shapes::StructureShape.new(name: 'UpdateNetworkSitePlanRequest')
    UpdateNetworkSiteRequest = Shapes::StructureShape.new(name: 'UpdateNetworkSiteRequest')
    UpdateNetworkSiteResponse = Shapes::StructureShape.new(name: 'UpdateNetworkSiteResponse')
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AcknowledgeOrderReceiptRequest.add_member(:order_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "orderArn"))
    AcknowledgeOrderReceiptRequest.struct_class = Types::AcknowledgeOrderReceiptRequest

    AcknowledgeOrderReceiptResponse.add_member(:order, Shapes::ShapeRef.new(shape: Order, required: true, location_name: "order"))
    AcknowledgeOrderReceiptResponse.struct_class = Types::AcknowledgeOrderReceiptResponse

    ActivateDeviceIdentifierRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ActivateDeviceIdentifierRequest.add_member(:device_identifier_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "deviceIdentifierArn"))
    ActivateDeviceIdentifierRequest.struct_class = Types::ActivateDeviceIdentifierRequest

    ActivateDeviceIdentifierResponse.add_member(:device_identifier, Shapes::ShapeRef.new(shape: DeviceIdentifier, required: true, location_name: "deviceIdentifier"))
    ActivateDeviceIdentifierResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ActivateDeviceIdentifierResponse.struct_class = Types::ActivateDeviceIdentifierResponse

    ActivateNetworkSiteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ActivateNetworkSiteRequest.add_member(:commitment_configuration, Shapes::ShapeRef.new(shape: CommitmentConfiguration, location_name: "commitmentConfiguration"))
    ActivateNetworkSiteRequest.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkSiteArn"))
    ActivateNetworkSiteRequest.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "shippingAddress"))
    ActivateNetworkSiteRequest.struct_class = Types::ActivateNetworkSiteRequest

    ActivateNetworkSiteResponse.add_member(:network_site, Shapes::ShapeRef.new(shape: NetworkSite, location_name: "networkSite"))
    ActivateNetworkSiteResponse.struct_class = Types::ActivateNetworkSiteResponse

    Address.add_member(:city, Shapes::ShapeRef.new(shape: AddressContent, required: true, location_name: "city"))
    Address.add_member(:company, Shapes::ShapeRef.new(shape: AddressContent, location_name: "company"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: AddressContent, required: true, location_name: "country"))
    Address.add_member(:email_address, Shapes::ShapeRef.new(shape: AddressContent, location_name: "emailAddress"))
    Address.add_member(:name, Shapes::ShapeRef.new(shape: AddressContent, required: true, location_name: "name"))
    Address.add_member(:phone_number, Shapes::ShapeRef.new(shape: AddressContent, location_name: "phoneNumber"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: AddressContent, required: true, location_name: "postalCode"))
    Address.add_member(:state_or_province, Shapes::ShapeRef.new(shape: AddressContent, required: true, location_name: "stateOrProvince"))
    Address.add_member(:street1, Shapes::ShapeRef.new(shape: AddressContent, required: true, location_name: "street1"))
    Address.add_member(:street2, Shapes::ShapeRef.new(shape: AddressContent, location_name: "street2"))
    Address.add_member(:street3, Shapes::ShapeRef.new(shape: AddressContent, location_name: "street3"))
    Address.struct_class = Types::Address

    CommitmentConfiguration.add_member(:automatic_renewal, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "automaticRenewal"))
    CommitmentConfiguration.add_member(:commitment_length, Shapes::ShapeRef.new(shape: CommitmentLength, required: true, location_name: "commitmentLength"))
    CommitmentConfiguration.struct_class = Types::CommitmentConfiguration

    CommitmentInformation.add_member(:commitment_configuration, Shapes::ShapeRef.new(shape: CommitmentConfiguration, required: true, location_name: "commitmentConfiguration"))
    CommitmentInformation.add_member(:expires_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresOn"))
    CommitmentInformation.add_member(:start_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startAt"))
    CommitmentInformation.struct_class = Types::CommitmentInformation

    ConfigureAccessPointRequest.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "accessPointArn"))
    ConfigureAccessPointRequest.add_member(:cpi_secret_key, Shapes::ShapeRef.new(shape: ConfigureAccessPointRequestCpiSecretKeyString, location_name: "cpiSecretKey"))
    ConfigureAccessPointRequest.add_member(:cpi_user_id, Shapes::ShapeRef.new(shape: ConfigureAccessPointRequestCpiUserIdString, location_name: "cpiUserId"))
    ConfigureAccessPointRequest.add_member(:cpi_user_password, Shapes::ShapeRef.new(shape: ConfigureAccessPointRequestCpiUserPasswordString, location_name: "cpiUserPassword"))
    ConfigureAccessPointRequest.add_member(:cpi_username, Shapes::ShapeRef.new(shape: ConfigureAccessPointRequestCpiUsernameString, location_name: "cpiUsername"))
    ConfigureAccessPointRequest.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "position"))
    ConfigureAccessPointRequest.struct_class = Types::ConfigureAccessPointRequest

    ConfigureAccessPointResponse.add_member(:access_point, Shapes::ShapeRef.new(shape: NetworkResource, required: true, location_name: "accessPoint"))
    ConfigureAccessPointResponse.struct_class = Types::ConfigureAccessPointResponse

    CreateNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateNetworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateNetworkRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "networkName"))
    CreateNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNetworkRequest.struct_class = Types::CreateNetworkRequest

    CreateNetworkResponse.add_member(:network, Shapes::ShapeRef.new(shape: Network, required: true, location_name: "network"))
    CreateNetworkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNetworkResponse.struct_class = Types::CreateNetworkResponse

    CreateNetworkSiteRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateNetworkSiteRequest.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    CreateNetworkSiteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateNetworkSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateNetworkSiteRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    CreateNetworkSiteRequest.add_member(:network_site_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "networkSiteName"))
    CreateNetworkSiteRequest.add_member(:pending_plan, Shapes::ShapeRef.new(shape: SitePlan, location_name: "pendingPlan"))
    CreateNetworkSiteRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNetworkSiteRequest.struct_class = Types::CreateNetworkSiteRequest

    CreateNetworkSiteResponse.add_member(:network_site, Shapes::ShapeRef.new(shape: NetworkSite, location_name: "networkSite"))
    CreateNetworkSiteResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNetworkSiteResponse.struct_class = Types::CreateNetworkSiteResponse

    DeactivateDeviceIdentifierRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    DeactivateDeviceIdentifierRequest.add_member(:device_identifier_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "deviceIdentifierArn"))
    DeactivateDeviceIdentifierRequest.struct_class = Types::DeactivateDeviceIdentifierRequest

    DeactivateDeviceIdentifierResponse.add_member(:device_identifier, Shapes::ShapeRef.new(shape: DeviceIdentifier, required: true, location_name: "deviceIdentifier"))
    DeactivateDeviceIdentifierResponse.struct_class = Types::DeactivateDeviceIdentifierResponse

    DeleteNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken"))
    DeleteNetworkRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "networkArn"))
    DeleteNetworkRequest.struct_class = Types::DeleteNetworkRequest

    DeleteNetworkResponse.add_member(:network, Shapes::ShapeRef.new(shape: Network, required: true, location_name: "network"))
    DeleteNetworkResponse.struct_class = Types::DeleteNetworkResponse

    DeleteNetworkSiteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken"))
    DeleteNetworkSiteRequest.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "networkSiteArn"))
    DeleteNetworkSiteRequest.struct_class = Types::DeleteNetworkSiteRequest

    DeleteNetworkSiteResponse.add_member(:network_site, Shapes::ShapeRef.new(shape: NetworkSite, location_name: "networkSite"))
    DeleteNetworkSiteResponse.struct_class = Types::DeleteNetworkSiteResponse

    DeviceIdentifier.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DeviceIdentifier.add_member(:device_identifier_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "deviceIdentifierArn"))
    DeviceIdentifier.add_member(:iccid, Shapes::ShapeRef.new(shape: String, location_name: "iccid"))
    DeviceIdentifier.add_member(:imsi, Shapes::ShapeRef.new(shape: DeviceIdentifierImsiString, location_name: "imsi"))
    DeviceIdentifier.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "networkArn"))
    DeviceIdentifier.add_member(:order_arn, Shapes::ShapeRef.new(shape: String, location_name: "orderArn"))
    DeviceIdentifier.add_member(:status, Shapes::ShapeRef.new(shape: DeviceIdentifierStatus, location_name: "status"))
    DeviceIdentifier.add_member(:traffic_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "trafficGroupArn"))
    DeviceIdentifier.add_member(:vendor, Shapes::ShapeRef.new(shape: String, location_name: "vendor"))
    DeviceIdentifier.struct_class = Types::DeviceIdentifier

    DeviceIdentifierFilterValues.member = Shapes::ShapeRef.new(shape: String)

    DeviceIdentifierFilters.key = Shapes::ShapeRef.new(shape: DeviceIdentifierFilterKeys)
    DeviceIdentifierFilters.value = Shapes::ShapeRef.new(shape: DeviceIdentifierFilterValues)

    DeviceIdentifierList.member = Shapes::ShapeRef.new(shape: DeviceIdentifier)

    GetDeviceIdentifierRequest.add_member(:device_identifier_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "deviceIdentifierArn"))
    GetDeviceIdentifierRequest.struct_class = Types::GetDeviceIdentifierRequest

    GetDeviceIdentifierResponse.add_member(:device_identifier, Shapes::ShapeRef.new(shape: DeviceIdentifier, location_name: "deviceIdentifier"))
    GetDeviceIdentifierResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetDeviceIdentifierResponse.struct_class = Types::GetDeviceIdentifierResponse

    GetNetworkRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "networkArn"))
    GetNetworkRequest.struct_class = Types::GetNetworkRequest

    GetNetworkResourceRequest.add_member(:network_resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "networkResourceArn"))
    GetNetworkResourceRequest.struct_class = Types::GetNetworkResourceRequest

    GetNetworkResourceResponse.add_member(:network_resource, Shapes::ShapeRef.new(shape: NetworkResource, required: true, location_name: "networkResource"))
    GetNetworkResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetNetworkResourceResponse.struct_class = Types::GetNetworkResourceResponse

    GetNetworkResponse.add_member(:network, Shapes::ShapeRef.new(shape: Network, required: true, location_name: "network"))
    GetNetworkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetNetworkResponse.struct_class = Types::GetNetworkResponse

    GetNetworkSiteRequest.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "networkSiteArn"))
    GetNetworkSiteRequest.struct_class = Types::GetNetworkSiteRequest

    GetNetworkSiteResponse.add_member(:network_site, Shapes::ShapeRef.new(shape: NetworkSite, location_name: "networkSite"))
    GetNetworkSiteResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetNetworkSiteResponse.struct_class = Types::GetNetworkSiteResponse

    GetOrderRequest.add_member(:order_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "orderArn"))
    GetOrderRequest.struct_class = Types::GetOrderRequest

    GetOrderResponse.add_member(:order, Shapes::ShapeRef.new(shape: Order, required: true, location_name: "order"))
    GetOrderResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetOrderResponse.struct_class = Types::GetOrderResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListDeviceIdentifiersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DeviceIdentifierFilters, location_name: "filters"))
    ListDeviceIdentifiersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDeviceIdentifiersRequestMaxResultsInteger, location_name: "maxResults"))
    ListDeviceIdentifiersRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    ListDeviceIdentifiersRequest.add_member(:start_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "startToken"))
    ListDeviceIdentifiersRequest.struct_class = Types::ListDeviceIdentifiersRequest

    ListDeviceIdentifiersResponse.add_member(:device_identifiers, Shapes::ShapeRef.new(shape: DeviceIdentifierList, location_name: "deviceIdentifiers"))
    ListDeviceIdentifiersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDeviceIdentifiersResponse.struct_class = Types::ListDeviceIdentifiersResponse

    ListNetworkResourcesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: NetworkResourceFilters, location_name: "filters"))
    ListNetworkResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNetworkResourcesRequestMaxResultsInteger, location_name: "maxResults"))
    ListNetworkResourcesRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    ListNetworkResourcesRequest.add_member(:start_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "startToken"))
    ListNetworkResourcesRequest.struct_class = Types::ListNetworkResourcesRequest

    ListNetworkResourcesResponse.add_member(:network_resources, Shapes::ShapeRef.new(shape: NetworkResourceList, location_name: "networkResources"))
    ListNetworkResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkResourcesResponse.struct_class = Types::ListNetworkResourcesResponse

    ListNetworkSitesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: NetworkSiteFilters, location_name: "filters"))
    ListNetworkSitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNetworkSitesRequestMaxResultsInteger, location_name: "maxResults"))
    ListNetworkSitesRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    ListNetworkSitesRequest.add_member(:start_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "startToken"))
    ListNetworkSitesRequest.struct_class = Types::ListNetworkSitesRequest

    ListNetworkSitesResponse.add_member(:network_sites, Shapes::ShapeRef.new(shape: NetworkSiteList, location_name: "networkSites"))
    ListNetworkSitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkSitesResponse.struct_class = Types::ListNetworkSitesResponse

    ListNetworksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: NetworkFilters, location_name: "filters"))
    ListNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNetworksRequestMaxResultsInteger, location_name: "maxResults"))
    ListNetworksRequest.add_member(:start_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "startToken"))
    ListNetworksRequest.struct_class = Types::ListNetworksRequest

    ListNetworksResponse.add_member(:networks, Shapes::ShapeRef.new(shape: NetworkList, location_name: "networks"))
    ListNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworksResponse.struct_class = Types::ListNetworksResponse

    ListOrdersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OrderFilters, location_name: "filters"))
    ListOrdersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOrdersRequestMaxResultsInteger, location_name: "maxResults"))
    ListOrdersRequest.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    ListOrdersRequest.add_member(:start_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "startToken"))
    ListOrdersRequest.struct_class = Types::ListOrdersRequest

    ListOrdersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListOrdersResponse.add_member(:orders, Shapes::ShapeRef.new(shape: OrderList, location_name: "orders"))
    ListOrdersResponse.struct_class = Types::ListOrdersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NameValuePair.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    NameValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    NameValuePair.struct_class = Types::NameValuePair

    NameValuePairs.member = Shapes::ShapeRef.new(shape: NameValuePair)

    Network.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Network.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Network.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    Network.add_member(:network_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "networkName"))
    Network.add_member(:status, Shapes::ShapeRef.new(shape: NetworkStatus, required: true, location_name: "status"))
    Network.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    Network.struct_class = Types::Network

    NetworkFilterValues.member = Shapes::ShapeRef.new(shape: String)

    NetworkFilters.key = Shapes::ShapeRef.new(shape: NetworkFilterKeys)
    NetworkFilters.value = Shapes::ShapeRef.new(shape: NetworkFilterValues)

    NetworkList.member = Shapes::ShapeRef.new(shape: Network)

    NetworkResource.add_member(:attributes, Shapes::ShapeRef.new(shape: NameValuePairs, location_name: "attributes"))
    NetworkResource.add_member(:commitment_information, Shapes::ShapeRef.new(shape: CommitmentInformation, location_name: "commitmentInformation"))
    NetworkResource.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkResource.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    NetworkResource.add_member(:health, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "health"))
    NetworkResource.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    NetworkResource.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "networkArn"))
    NetworkResource.add_member(:network_resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "networkResourceArn"))
    NetworkResource.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "networkSiteArn"))
    NetworkResource.add_member(:order_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "orderArn"))
    NetworkResource.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "position"))
    NetworkResource.add_member(:return_information, Shapes::ShapeRef.new(shape: ReturnInformation, location_name: "returnInformation"))
    NetworkResource.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "serialNumber"))
    NetworkResource.add_member(:status, Shapes::ShapeRef.new(shape: NetworkResourceStatus, location_name: "status"))
    NetworkResource.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    NetworkResource.add_member(:type, Shapes::ShapeRef.new(shape: NetworkResourceType, location_name: "type"))
    NetworkResource.add_member(:vendor, Shapes::ShapeRef.new(shape: String, location_name: "vendor"))
    NetworkResource.struct_class = Types::NetworkResource

    NetworkResourceDefinition.add_member(:count, Shapes::ShapeRef.new(shape: NetworkResourceDefinitionCountInteger, required: true, location_name: "count"))
    NetworkResourceDefinition.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "options"))
    NetworkResourceDefinition.add_member(:type, Shapes::ShapeRef.new(shape: NetworkResourceDefinitionType, required: true, location_name: "type"))
    NetworkResourceDefinition.struct_class = Types::NetworkResourceDefinition

    NetworkResourceDefinitions.member = Shapes::ShapeRef.new(shape: NetworkResourceDefinition)

    NetworkResourceFilterValues.member = Shapes::ShapeRef.new(shape: String)

    NetworkResourceFilters.key = Shapes::ShapeRef.new(shape: NetworkResourceFilterKeys)
    NetworkResourceFilters.value = Shapes::ShapeRef.new(shape: NetworkResourceFilterValues)

    NetworkResourceList.member = Shapes::ShapeRef.new(shape: NetworkResource)

    NetworkSite.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    NetworkSite.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    NetworkSite.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkSite.add_member(:current_plan, Shapes::ShapeRef.new(shape: SitePlan, location_name: "currentPlan"))
    NetworkSite.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    NetworkSite.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkArn"))
    NetworkSite.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkSiteArn"))
    NetworkSite.add_member(:network_site_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "networkSiteName"))
    NetworkSite.add_member(:pending_plan, Shapes::ShapeRef.new(shape: SitePlan, location_name: "pendingPlan"))
    NetworkSite.add_member(:status, Shapes::ShapeRef.new(shape: NetworkSiteStatus, required: true, location_name: "status"))
    NetworkSite.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    NetworkSite.struct_class = Types::NetworkSite

    NetworkSiteFilterValues.member = Shapes::ShapeRef.new(shape: String)

    NetworkSiteFilters.key = Shapes::ShapeRef.new(shape: NetworkSiteFilterKeys)
    NetworkSiteFilters.value = Shapes::ShapeRef.new(shape: NetworkSiteFilterValues)

    NetworkSiteList.member = Shapes::ShapeRef.new(shape: NetworkSite)

    Options.member = Shapes::ShapeRef.new(shape: NameValuePair)

    Order.add_member(:acknowledgment_status, Shapes::ShapeRef.new(shape: AcknowledgmentStatus, location_name: "acknowledgmentStatus"))
    Order.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Order.add_member(:network_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "networkArn"))
    Order.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "networkSiteArn"))
    Order.add_member(:order_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "orderArn"))
    Order.add_member(:ordered_resources, Shapes::ShapeRef.new(shape: OrderedResourceDefinitions, location_name: "orderedResources"))
    Order.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "shippingAddress"))
    Order.add_member(:tracking_information, Shapes::ShapeRef.new(shape: TrackingInformationList, location_name: "trackingInformation"))
    Order.struct_class = Types::Order

    OrderFilterValues.member = Shapes::ShapeRef.new(shape: String)

    OrderFilters.key = Shapes::ShapeRef.new(shape: OrderFilterKeys)
    OrderFilters.value = Shapes::ShapeRef.new(shape: OrderFilterValues)

    OrderList.member = Shapes::ShapeRef.new(shape: Order)

    OrderedResourceDefinition.add_member(:commitment_configuration, Shapes::ShapeRef.new(shape: CommitmentConfiguration, location_name: "commitmentConfiguration"))
    OrderedResourceDefinition.add_member(:count, Shapes::ShapeRef.new(shape: OrderedResourceDefinitionCountInteger, required: true, location_name: "count"))
    OrderedResourceDefinition.add_member(:type, Shapes::ShapeRef.new(shape: NetworkResourceDefinitionType, required: true, location_name: "type"))
    OrderedResourceDefinition.struct_class = Types::OrderedResourceDefinition

    OrderedResourceDefinitions.member = Shapes::ShapeRef.new(shape: OrderedResourceDefinition)

    PingResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    PingResponse.struct_class = Types::PingResponse

    Position.add_member(:elevation, Shapes::ShapeRef.new(shape: Double, location_name: "elevation"))
    Position.add_member(:elevation_reference, Shapes::ShapeRef.new(shape: ElevationReference, location_name: "elevationReference"))
    Position.add_member(:elevation_unit, Shapes::ShapeRef.new(shape: ElevationUnit, location_name: "elevationUnit"))
    Position.add_member(:latitude, Shapes::ShapeRef.new(shape: Double, location_name: "latitude"))
    Position.add_member(:longitude, Shapes::ShapeRef.new(shape: Double, location_name: "longitude"))
    Position.struct_class = Types::Position

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ReturnInformation.add_member(:replacement_order_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "replacementOrderArn"))
    ReturnInformation.add_member(:return_reason, Shapes::ShapeRef.new(shape: String, location_name: "returnReason"))
    ReturnInformation.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "shippingAddress"))
    ReturnInformation.add_member(:shipping_label, Shapes::ShapeRef.new(shape: String, location_name: "shippingLabel"))
    ReturnInformation.struct_class = Types::ReturnInformation

    SitePlan.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "options"))
    SitePlan.add_member(:resource_definitions, Shapes::ShapeRef.new(shape: NetworkResourceDefinitions, location_name: "resourceDefinitions"))
    SitePlan.struct_class = Types::SitePlan

    StartNetworkResourceUpdateRequest.add_member(:commitment_configuration, Shapes::ShapeRef.new(shape: CommitmentConfiguration, location_name: "commitmentConfiguration"))
    StartNetworkResourceUpdateRequest.add_member(:network_resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkResourceArn"))
    StartNetworkResourceUpdateRequest.add_member(:return_reason, Shapes::ShapeRef.new(shape: StartNetworkResourceUpdateRequestReturnReasonString, location_name: "returnReason"))
    StartNetworkResourceUpdateRequest.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "shippingAddress"))
    StartNetworkResourceUpdateRequest.add_member(:update_type, Shapes::ShapeRef.new(shape: UpdateType, required: true, location_name: "updateType"))
    StartNetworkResourceUpdateRequest.struct_class = Types::StartNetworkResourceUpdateRequest

    StartNetworkResourceUpdateResponse.add_member(:network_resource, Shapes::ShapeRef.new(shape: NetworkResource, location_name: "networkResource"))
    StartNetworkResourceUpdateResponse.struct_class = Types::StartNetworkResourceUpdateResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrackingInformation.add_member(:tracking_number, Shapes::ShapeRef.new(shape: String, location_name: "trackingNumber"))
    TrackingInformation.struct_class = Types::TrackingInformation

    TrackingInformationList.member = Shapes::ShapeRef.new(shape: TrackingInformation)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateNetworkSitePlanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateNetworkSitePlanRequest.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkSiteArn"))
    UpdateNetworkSitePlanRequest.add_member(:pending_plan, Shapes::ShapeRef.new(shape: SitePlan, required: true, location_name: "pendingPlan"))
    UpdateNetworkSitePlanRequest.struct_class = Types::UpdateNetworkSitePlanRequest

    UpdateNetworkSiteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateNetworkSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateNetworkSiteRequest.add_member(:network_site_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "networkSiteArn"))
    UpdateNetworkSiteRequest.struct_class = Types::UpdateNetworkSiteRequest

    UpdateNetworkSiteResponse.add_member(:network_site, Shapes::ShapeRef.new(shape: NetworkSite, location_name: "networkSite"))
    UpdateNetworkSiteResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateNetworkSiteResponse.struct_class = Types::UpdateNetworkSiteResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-12-03"

      api.metadata = {
        "apiVersion" => "2021-12-03",
        "endpointPrefix" => "private-networks",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Private 5G",
        "serviceId" => "PrivateNetworks",
        "signatureVersion" => "v4",
        "signingName" => "private-networks",
        "uid" => "privatenetworks-2021-12-03",
      }

      api.add_operation(:acknowledge_order_receipt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcknowledgeOrderReceipt"
        o.http_method = "POST"
        o.http_request_uri = "/v1/orders/acknowledge"
        o.input = Shapes::ShapeRef.new(shape: AcknowledgeOrderReceiptRequest)
        o.output = Shapes::ShapeRef.new(shape: AcknowledgeOrderReceiptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:activate_device_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateDeviceIdentifier"
        o.http_method = "POST"
        o.http_request_uri = "/v1/device-identifiers/activate"
        o.input = Shapes::ShapeRef.new(shape: ActivateDeviceIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateDeviceIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:activate_network_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateNetworkSite"
        o.http_method = "POST"
        o.http_request_uri = "/v1/network-sites/activate"
        o.input = Shapes::ShapeRef.new(shape: ActivateNetworkSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateNetworkSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:configure_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfigureAccessPoint"
        o.http_method = "POST"
        o.http_request_uri = "/v1/network-resources/configure"
        o.input = Shapes::ShapeRef.new(shape: ConfigureAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigureAccessPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/v1/networks"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_network_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkSite"
        o.http_method = "POST"
        o.http_request_uri = "/v1/network-sites"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deactivate_device_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateDeviceIdentifier"
        o.http_method = "POST"
        o.http_request_uri = "/v1/device-identifiers/deactivate"
        o.input = Shapes::ShapeRef.new(shape: DeactivateDeviceIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: DeactivateDeviceIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetwork"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/networks/{networkArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_network_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkSite"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/network-sites/{networkSiteArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_device_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceIdentifier"
        o.http_method = "GET"
        o.http_request_uri = "/v1/device-identifiers/{deviceIdentifierArn}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetwork"
        o.http_method = "GET"
        o.http_request_uri = "/v1/networks/{networkArn}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_network_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/network-resources/{networkResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_network_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkSite"
        o.http_method = "GET"
        o.http_request_uri = "/v1/network-sites/{networkSiteArn}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrder"
        o.http_method = "GET"
        o.http_request_uri = "/v1/orders/{orderArn}"
        o.input = Shapes::ShapeRef.new(shape: GetOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_device_identifiers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceIdentifiers"
        o.http_method = "POST"
        o.http_request_uri = "/v1/device-identifiers/list"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceIdentifiersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceIdentifiersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "start_token"
          }
        )
      end)

      api.add_operation(:list_network_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkResources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/network-resources"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "start_token"
          }
        )
      end)

      api.add_operation(:list_network_sites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkSites"
        o.http_method = "POST"
        o.http_request_uri = "/v1/network-sites/list"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkSitesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkSitesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "start_token"
          }
        )
      end)

      api.add_operation(:list_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworks"
        o.http_method = "POST"
        o.http_request_uri = "/v1/networks/list"
        o.input = Shapes::ShapeRef.new(shape: ListNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "start_token"
          }
        )
      end)

      api.add_operation(:list_orders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrders"
        o.http_method = "POST"
        o.http_request_uri = "/v1/orders/list"
        o.input = Shapes::ShapeRef.new(shape: ListOrdersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrdersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "start_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:ping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Ping"
        o.http_method = "GET"
        o.http_request_uri = "/ping"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: PingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_network_resource_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNetworkResourceUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/network-resources/update"
        o.input = Shapes::ShapeRef.new(shape: StartNetworkResourceUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNetworkResourceUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_network_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkSite"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/network-sites/site"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_network_site_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkSitePlan"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/network-sites/plan"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkSitePlanRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
