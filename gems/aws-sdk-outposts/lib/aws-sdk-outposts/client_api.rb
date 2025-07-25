# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Outposts
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSServiceName = Shapes::StringShape.new(name: 'AWSServiceName')
    AWSServiceNameList = Shapes::ListShape.new(name: 'AWSServiceNameList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressLine1 = Shapes::StringShape.new(name: 'AddressLine1')
    AddressLine2 = Shapes::StringShape.new(name: 'AddressLine2')
    AddressLine3 = Shapes::StringShape.new(name: 'AddressLine3')
    AddressType = Shapes::StringShape.new(name: 'AddressType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssetId = Shapes::StringShape.new(name: 'AssetId')
    AssetIdInput = Shapes::StringShape.new(name: 'AssetIdInput')
    AssetIdList = Shapes::ListShape.new(name: 'AssetIdList')
    AssetInfo = Shapes::StructureShape.new(name: 'AssetInfo')
    AssetInstance = Shapes::StructureShape.new(name: 'AssetInstance')
    AssetInstanceCapacityList = Shapes::ListShape.new(name: 'AssetInstanceCapacityList')
    AssetInstanceList = Shapes::ListShape.new(name: 'AssetInstanceList')
    AssetInstanceTypeCapacity = Shapes::StructureShape.new(name: 'AssetInstanceTypeCapacity')
    AssetListDefinition = Shapes::ListShape.new(name: 'AssetListDefinition')
    AssetLocation = Shapes::StructureShape.new(name: 'AssetLocation')
    AssetState = Shapes::StringShape.new(name: 'AssetState')
    AssetType = Shapes::StringShape.new(name: 'AssetType')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    AvailabilityZoneIdList = Shapes::ListShape.new(name: 'AvailabilityZoneIdList')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    BlockingInstance = Shapes::StructureShape.new(name: 'BlockingInstance')
    BlockingInstancesList = Shapes::ListShape.new(name: 'BlockingInstancesList')
    CIDR = Shapes::StringShape.new(name: 'CIDR')
    CIDRList = Shapes::ListShape.new(name: 'CIDRList')
    CancelCapacityTaskInput = Shapes::StructureShape.new(name: 'CancelCapacityTaskInput')
    CancelCapacityTaskOutput = Shapes::StructureShape.new(name: 'CancelCapacityTaskOutput')
    CancelOrderInput = Shapes::StructureShape.new(name: 'CancelOrderInput')
    CancelOrderOutput = Shapes::StructureShape.new(name: 'CancelOrderOutput')
    CapacityTaskFailure = Shapes::StructureShape.new(name: 'CapacityTaskFailure')
    CapacityTaskFailureType = Shapes::StringShape.new(name: 'CapacityTaskFailureType')
    CapacityTaskId = Shapes::StringShape.new(name: 'CapacityTaskId')
    CapacityTaskList = Shapes::ListShape.new(name: 'CapacityTaskList')
    CapacityTaskStatus = Shapes::StringShape.new(name: 'CapacityTaskStatus')
    CapacityTaskStatusList = Shapes::ListShape.new(name: 'CapacityTaskStatusList')
    CapacityTaskStatusReason = Shapes::StringShape.new(name: 'CapacityTaskStatusReason')
    CapacityTaskSummary = Shapes::StructureShape.new(name: 'CapacityTaskSummary')
    CatalogItem = Shapes::StructureShape.new(name: 'CatalogItem')
    CatalogItemClass = Shapes::StringShape.new(name: 'CatalogItemClass')
    CatalogItemClassList = Shapes::ListShape.new(name: 'CatalogItemClassList')
    CatalogItemListDefinition = Shapes::ListShape.new(name: 'CatalogItemListDefinition')
    CatalogItemPowerKva = Shapes::FloatShape.new(name: 'CatalogItemPowerKva')
    CatalogItemStatus = Shapes::StringShape.new(name: 'CatalogItemStatus')
    CatalogItemWeightLbs = Shapes::IntegerShape.new(name: 'CatalogItemWeightLbs')
    City = Shapes::StringShape.new(name: 'City')
    CityList = Shapes::ListShape.new(name: 'CityList')
    ComputeAssetState = Shapes::StringShape.new(name: 'ComputeAssetState')
    ComputeAttributes = Shapes::StructureShape.new(name: 'ComputeAttributes')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionDetails = Shapes::StructureShape.new(name: 'ConnectionDetails')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    ContactPhoneNumber = Shapes::StringShape.new(name: 'ContactPhoneNumber')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CountryCodeList = Shapes::ListShape.new(name: 'CountryCodeList')
    CreateOrderInput = Shapes::StructureShape.new(name: 'CreateOrderInput')
    CreateOrderOutput = Shapes::StructureShape.new(name: 'CreateOrderOutput')
    CreateOutpostInput = Shapes::StructureShape.new(name: 'CreateOutpostInput')
    CreateOutpostOutput = Shapes::StructureShape.new(name: 'CreateOutpostOutput')
    CreateSiteInput = Shapes::StructureShape.new(name: 'CreateSiteInput')
    CreateSiteOutput = Shapes::StructureShape.new(name: 'CreateSiteOutput')
    DeleteOutpostInput = Shapes::StructureShape.new(name: 'DeleteOutpostInput')
    DeleteOutpostOutput = Shapes::StructureShape.new(name: 'DeleteOutpostOutput')
    DeleteSiteInput = Shapes::StructureShape.new(name: 'DeleteSiteInput')
    DeleteSiteOutput = Shapes::StructureShape.new(name: 'DeleteSiteOutput')
    DeviceSerialNumber = Shapes::StringShape.new(name: 'DeviceSerialNumber')
    DistrictOrCounty = Shapes::StringShape.new(name: 'DistrictOrCounty')
    DryRun = Shapes::BooleanShape.new(name: 'DryRun')
    EC2Capacity = Shapes::StructureShape.new(name: 'EC2Capacity')
    EC2CapacityListDefinition = Shapes::ListShape.new(name: 'EC2CapacityListDefinition')
    EC2FamilyList = Shapes::ListShape.new(name: 'EC2FamilyList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Family = Shapes::StringShape.new(name: 'Family')
    FiberOpticCableType = Shapes::StringShape.new(name: 'FiberOpticCableType')
    GetCapacityTaskInput = Shapes::StructureShape.new(name: 'GetCapacityTaskInput')
    GetCapacityTaskOutput = Shapes::StructureShape.new(name: 'GetCapacityTaskOutput')
    GetCatalogItemInput = Shapes::StructureShape.new(name: 'GetCatalogItemInput')
    GetCatalogItemOutput = Shapes::StructureShape.new(name: 'GetCatalogItemOutput')
    GetConnectionRequest = Shapes::StructureShape.new(name: 'GetConnectionRequest')
    GetConnectionResponse = Shapes::StructureShape.new(name: 'GetConnectionResponse')
    GetOrderInput = Shapes::StructureShape.new(name: 'GetOrderInput')
    GetOrderOutput = Shapes::StructureShape.new(name: 'GetOrderOutput')
    GetOutpostBillingInformationInput = Shapes::StructureShape.new(name: 'GetOutpostBillingInformationInput')
    GetOutpostBillingInformationOutput = Shapes::StructureShape.new(name: 'GetOutpostBillingInformationOutput')
    GetOutpostInput = Shapes::StructureShape.new(name: 'GetOutpostInput')
    GetOutpostInstanceTypesInput = Shapes::StructureShape.new(name: 'GetOutpostInstanceTypesInput')
    GetOutpostInstanceTypesOutput = Shapes::StructureShape.new(name: 'GetOutpostInstanceTypesOutput')
    GetOutpostOutput = Shapes::StructureShape.new(name: 'GetOutpostOutput')
    GetOutpostSupportedInstanceTypesInput = Shapes::StructureShape.new(name: 'GetOutpostSupportedInstanceTypesInput')
    GetOutpostSupportedInstanceTypesOutput = Shapes::StructureShape.new(name: 'GetOutpostSupportedInstanceTypesOutput')
    GetSiteAddressInput = Shapes::StructureShape.new(name: 'GetSiteAddressInput')
    GetSiteAddressOutput = Shapes::StructureShape.new(name: 'GetSiteAddressOutput')
    GetSiteInput = Shapes::StructureShape.new(name: 'GetSiteInput')
    GetSiteOutput = Shapes::StructureShape.new(name: 'GetSiteOutput')
    HostId = Shapes::StringShape.new(name: 'HostId')
    HostIdList = Shapes::ListShape.new(name: 'HostIdList')
    ISO8601Timestamp = Shapes::TimestampShape.new(name: 'ISO8601Timestamp')
    InstanceFamilies = Shapes::ListShape.new(name: 'InstanceFamilies')
    InstanceFamilyName = Shapes::StringShape.new(name: 'InstanceFamilyName')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdList = Shapes::ListShape.new(name: 'InstanceIdList')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeCapacity = Shapes::StructureShape.new(name: 'InstanceTypeCapacity')
    InstanceTypeCount = Shapes::IntegerShape.new(name: 'InstanceTypeCount')
    InstanceTypeItem = Shapes::StructureShape.new(name: 'InstanceTypeItem')
    InstanceTypeListDefinition = Shapes::ListShape.new(name: 'InstanceTypeListDefinition')
    InstanceTypeName = Shapes::StringShape.new(name: 'InstanceTypeName')
    InstancesToExclude = Shapes::StructureShape.new(name: 'InstancesToExclude')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LifeCycleStatus = Shapes::StringShape.new(name: 'LifeCycleStatus')
    LifeCycleStatusList = Shapes::ListShape.new(name: 'LifeCycleStatusList')
    LineItem = Shapes::StructureShape.new(name: 'LineItem')
    LineItemAssetInformation = Shapes::StructureShape.new(name: 'LineItemAssetInformation')
    LineItemAssetInformationList = Shapes::ListShape.new(name: 'LineItemAssetInformationList')
    LineItemId = Shapes::StringShape.new(name: 'LineItemId')
    LineItemListDefinition = Shapes::ListShape.new(name: 'LineItemListDefinition')
    LineItemQuantity = Shapes::IntegerShape.new(name: 'LineItemQuantity')
    LineItemRequest = Shapes::StructureShape.new(name: 'LineItemRequest')
    LineItemRequestListDefinition = Shapes::ListShape.new(name: 'LineItemRequestListDefinition')
    LineItemStatus = Shapes::StringShape.new(name: 'LineItemStatus')
    LineItemStatusCounts = Shapes::MapShape.new(name: 'LineItemStatusCounts')
    ListAssetInstancesInput = Shapes::StructureShape.new(name: 'ListAssetInstancesInput')
    ListAssetInstancesOutput = Shapes::StructureShape.new(name: 'ListAssetInstancesOutput')
    ListAssetsInput = Shapes::StructureShape.new(name: 'ListAssetsInput')
    ListAssetsOutput = Shapes::StructureShape.new(name: 'ListAssetsOutput')
    ListBlockingInstancesForCapacityTaskInput = Shapes::StructureShape.new(name: 'ListBlockingInstancesForCapacityTaskInput')
    ListBlockingInstancesForCapacityTaskOutput = Shapes::StructureShape.new(name: 'ListBlockingInstancesForCapacityTaskOutput')
    ListCapacityTasksInput = Shapes::StructureShape.new(name: 'ListCapacityTasksInput')
    ListCapacityTasksOutput = Shapes::StructureShape.new(name: 'ListCapacityTasksOutput')
    ListCatalogItemsInput = Shapes::StructureShape.new(name: 'ListCatalogItemsInput')
    ListCatalogItemsOutput = Shapes::StructureShape.new(name: 'ListCatalogItemsOutput')
    ListOrdersInput = Shapes::StructureShape.new(name: 'ListOrdersInput')
    ListOrdersOutput = Shapes::StructureShape.new(name: 'ListOrdersOutput')
    ListOutpostsInput = Shapes::StructureShape.new(name: 'ListOutpostsInput')
    ListOutpostsOutput = Shapes::StructureShape.new(name: 'ListOutpostsOutput')
    ListSitesInput = Shapes::StructureShape.new(name: 'ListSitesInput')
    ListSitesOutput = Shapes::StructureShape.new(name: 'ListSitesOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    MacAddressList = Shapes::ListShape.new(name: 'MacAddressList')
    MaxResults1000 = Shapes::IntegerShape.new(name: 'MaxResults1000')
    MaxSize = Shapes::StringShape.new(name: 'MaxSize')
    MaximumSupportedWeightLbs = Shapes::StringShape.new(name: 'MaximumSupportedWeightLbs')
    Municipality = Shapes::StringShape.new(name: 'Municipality')
    NetworkInterfaceDeviceIndex = Shapes::IntegerShape.new(name: 'NetworkInterfaceDeviceIndex')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NullableDouble = Shapes::FloatShape.new(name: 'NullableDouble')
    OpticalStandard = Shapes::StringShape.new(name: 'OpticalStandard')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderId = Shapes::StringShape.new(name: 'OrderId')
    OrderIdList = Shapes::ListShape.new(name: 'OrderIdList')
    OrderStatus = Shapes::StringShape.new(name: 'OrderStatus')
    OrderSummary = Shapes::StructureShape.new(name: 'OrderSummary')
    OrderSummaryListDefinition = Shapes::ListShape.new(name: 'OrderSummaryListDefinition')
    OrderType = Shapes::StringShape.new(name: 'OrderType')
    Outpost = Shapes::StructureShape.new(name: 'Outpost')
    OutpostArn = Shapes::StringShape.new(name: 'OutpostArn')
    OutpostDescription = Shapes::StringShape.new(name: 'OutpostDescription')
    OutpostId = Shapes::StringShape.new(name: 'OutpostId')
    OutpostIdOnly = Shapes::StringShape.new(name: 'OutpostIdOnly')
    OutpostIdentifier = Shapes::StringShape.new(name: 'OutpostIdentifier')
    OutpostInstanceType = Shapes::StringShape.new(name: 'OutpostInstanceType')
    OutpostInstanceTypeList = Shapes::ListShape.new(name: 'OutpostInstanceTypeList')
    OutpostName = Shapes::StringShape.new(name: 'OutpostName')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    PaymentOption = Shapes::StringShape.new(name: 'PaymentOption')
    PaymentTerm = Shapes::StringShape.new(name: 'PaymentTerm')
    PostalCode = Shapes::StringShape.new(name: 'PostalCode')
    PowerConnector = Shapes::StringShape.new(name: 'PowerConnector')
    PowerDrawKva = Shapes::StringShape.new(name: 'PowerDrawKva')
    PowerFeedDrop = Shapes::StringShape.new(name: 'PowerFeedDrop')
    PowerPhase = Shapes::StringShape.new(name: 'PowerPhase')
    Quantity = Shapes::StringShape.new(name: 'Quantity')
    RackElevation = Shapes::FloatShape.new(name: 'RackElevation')
    RackId = Shapes::StringShape.new(name: 'RackId')
    RackPhysicalProperties = Shapes::StructureShape.new(name: 'RackPhysicalProperties')
    RequestedInstancePools = Shapes::ListShape.new(name: 'RequestedInstancePools')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServerEndpoint = Shapes::StringShape.new(name: 'ServerEndpoint')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShipmentCarrier = Shapes::StringShape.new(name: 'ShipmentCarrier')
    ShipmentInformation = Shapes::StructureShape.new(name: 'ShipmentInformation')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteArn = Shapes::StringShape.new(name: 'SiteArn')
    SiteDescription = Shapes::StringShape.new(name: 'SiteDescription')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    SiteName = Shapes::StringShape.new(name: 'SiteName')
    SiteNotes = Shapes::StringShape.new(name: 'SiteNotes')
    SkuCode = Shapes::StringShape.new(name: 'SkuCode')
    StartCapacityTaskInput = Shapes::StructureShape.new(name: 'StartCapacityTaskInput')
    StartCapacityTaskOutput = Shapes::StructureShape.new(name: 'StartCapacityTaskOutput')
    StartConnectionRequest = Shapes::StructureShape.new(name: 'StartConnectionRequest')
    StartConnectionResponse = Shapes::StructureShape.new(name: 'StartConnectionResponse')
    StateOrRegion = Shapes::StringShape.new(name: 'StateOrRegion')
    StateOrRegionList = Shapes::ListShape.new(name: 'StateOrRegionList')
    StatusList = Shapes::ListShape.new(name: 'StatusList')
    String = Shapes::StringShape.new(name: 'String')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionList = Shapes::ListShape.new(name: 'SubscriptionList')
    SubscriptionStatus = Shapes::StringShape.new(name: 'SubscriptionStatus')
    SubscriptionType = Shapes::StringShape.new(name: 'SubscriptionType')
    SupportedHardwareType = Shapes::StringShape.new(name: 'SupportedHardwareType')
    SupportedStorageEnum = Shapes::StringShape.new(name: 'SupportedStorageEnum')
    SupportedStorageList = Shapes::ListShape.new(name: 'SupportedStorageList')
    SupportedUplinkGbps = Shapes::IntegerShape.new(name: 'SupportedUplinkGbps')
    SupportedUplinkGbpsListDefinition = Shapes::ListShape.new(name: 'SupportedUplinkGbpsListDefinition')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskActionOnBlockingInstances = Shapes::StringShape.new(name: 'TaskActionOnBlockingInstances')
    Token = Shapes::StringShape.new(name: 'Token')
    TrackingId = Shapes::StringShape.new(name: 'TrackingId')
    UnderlayIpAddress = Shapes::StringShape.new(name: 'UnderlayIpAddress')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateOutpostInput = Shapes::StructureShape.new(name: 'UpdateOutpostInput')
    UpdateOutpostOutput = Shapes::StructureShape.new(name: 'UpdateOutpostOutput')
    UpdateSiteAddressInput = Shapes::StructureShape.new(name: 'UpdateSiteAddressInput')
    UpdateSiteAddressOutput = Shapes::StructureShape.new(name: 'UpdateSiteAddressOutput')
    UpdateSiteInput = Shapes::StructureShape.new(name: 'UpdateSiteInput')
    UpdateSiteOutput = Shapes::StructureShape.new(name: 'UpdateSiteOutput')
    UpdateSiteRackPhysicalPropertiesInput = Shapes::StructureShape.new(name: 'UpdateSiteRackPhysicalPropertiesInput')
    UpdateSiteRackPhysicalPropertiesOutput = Shapes::StructureShape.new(name: 'UpdateSiteRackPhysicalPropertiesOutput')
    UplinkCount = Shapes::StringShape.new(name: 'UplinkCount')
    UplinkGbps = Shapes::StringShape.new(name: 'UplinkGbps')
    VCPUCount = Shapes::IntegerShape.new(name: 'VCPUCount')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WireGuardPublicKey = Shapes::StringShape.new(name: 'WireGuardPublicKey')
    outpostListDefinition = Shapes::ListShape.new(name: 'outpostListDefinition')
    siteListDefinition = Shapes::ListShape.new(name: 'siteListDefinition')

    AWSServiceNameList.member = Shapes::ShapeRef.new(shape: AWSServiceName)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    Address.add_member(:contact_name, Shapes::ShapeRef.new(shape: ContactName, required: true, location_name: "ContactName"))
    Address.add_member(:contact_phone_number, Shapes::ShapeRef.new(shape: ContactPhoneNumber, required: true, location_name: "ContactPhoneNumber"))
    Address.add_member(:address_line_1, Shapes::ShapeRef.new(shape: AddressLine1, required: true, location_name: "AddressLine1"))
    Address.add_member(:address_line_2, Shapes::ShapeRef.new(shape: AddressLine2, location_name: "AddressLine2"))
    Address.add_member(:address_line_3, Shapes::ShapeRef.new(shape: AddressLine3, location_name: "AddressLine3"))
    Address.add_member(:city, Shapes::ShapeRef.new(shape: City, required: true, location_name: "City"))
    Address.add_member(:state_or_region, Shapes::ShapeRef.new(shape: StateOrRegion, required: true, location_name: "StateOrRegion"))
    Address.add_member(:district_or_county, Shapes::ShapeRef.new(shape: DistrictOrCounty, location_name: "DistrictOrCounty"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: PostalCode, required: true, location_name: "PostalCode"))
    Address.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "CountryCode"))
    Address.add_member(:municipality, Shapes::ShapeRef.new(shape: Municipality, location_name: "Municipality"))
    Address.struct_class = Types::Address

    AssetIdList.member = Shapes::ShapeRef.new(shape: AssetId)

    AssetInfo.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "AssetId"))
    AssetInfo.add_member(:rack_id, Shapes::ShapeRef.new(shape: RackId, location_name: "RackId"))
    AssetInfo.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "AssetType"))
    AssetInfo.add_member(:compute_attributes, Shapes::ShapeRef.new(shape: ComputeAttributes, location_name: "ComputeAttributes"))
    AssetInfo.add_member(:asset_location, Shapes::ShapeRef.new(shape: AssetLocation, location_name: "AssetLocation"))
    AssetInfo.struct_class = Types::AssetInfo

    AssetInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    AssetInstance.add_member(:instance_type, Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: "InstanceType"))
    AssetInstance.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "AssetId"))
    AssetInstance.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AssetInstance.add_member(:aws_service_name, Shapes::ShapeRef.new(shape: AWSServiceName, location_name: "AwsServiceName"))
    AssetInstance.struct_class = Types::AssetInstance

    AssetInstanceCapacityList.member = Shapes::ShapeRef.new(shape: AssetInstanceTypeCapacity)

    AssetInstanceList.member = Shapes::ShapeRef.new(shape: AssetInstance)

    AssetInstanceTypeCapacity.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceTypeName, required: true, location_name: "InstanceType"))
    AssetInstanceTypeCapacity.add_member(:count, Shapes::ShapeRef.new(shape: InstanceTypeCount, required: true, location_name: "Count"))
    AssetInstanceTypeCapacity.struct_class = Types::AssetInstanceTypeCapacity

    AssetListDefinition.member = Shapes::ShapeRef.new(shape: AssetInfo)

    AssetLocation.add_member(:rack_elevation, Shapes::ShapeRef.new(shape: RackElevation, location_name: "RackElevation"))
    AssetLocation.struct_class = Types::AssetLocation

    AvailabilityZoneIdList.member = Shapes::ShapeRef.new(shape: AvailabilityZoneId)

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    BlockingInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    BlockingInstance.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    BlockingInstance.add_member(:aws_service_name, Shapes::ShapeRef.new(shape: AWSServiceName, location_name: "AwsServiceName"))
    BlockingInstance.struct_class = Types::BlockingInstance

    BlockingInstancesList.member = Shapes::ShapeRef.new(shape: BlockingInstance)

    CIDRList.member = Shapes::ShapeRef.new(shape: CIDR)

    CancelCapacityTaskInput.add_member(:capacity_task_id, Shapes::ShapeRef.new(shape: CapacityTaskId, required: true, location: "uri", location_name: "CapacityTaskId"))
    CancelCapacityTaskInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    CancelCapacityTaskInput.struct_class = Types::CancelCapacityTaskInput

    CancelCapacityTaskOutput.struct_class = Types::CancelCapacityTaskOutput

    CancelOrderInput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, required: true, location: "uri", location_name: "OrderId"))
    CancelOrderInput.struct_class = Types::CancelOrderInput

    CancelOrderOutput.struct_class = Types::CancelOrderOutput

    CapacityTaskFailure.add_member(:reason, Shapes::ShapeRef.new(shape: CapacityTaskStatusReason, required: true, location_name: "Reason"))
    CapacityTaskFailure.add_member(:type, Shapes::ShapeRef.new(shape: CapacityTaskFailureType, location_name: "Type"))
    CapacityTaskFailure.struct_class = Types::CapacityTaskFailure

    CapacityTaskList.member = Shapes::ShapeRef.new(shape: CapacityTaskSummary)

    CapacityTaskStatusList.member = Shapes::ShapeRef.new(shape: CapacityTaskStatus)

    CapacityTaskSummary.add_member(:capacity_task_id, Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: "CapacityTaskId"))
    CapacityTaskSummary.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    CapacityTaskSummary.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    CapacityTaskSummary.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "AssetId"))
    CapacityTaskSummary.add_member(:capacity_task_status, Shapes::ShapeRef.new(shape: CapacityTaskStatus, location_name: "CapacityTaskStatus"))
    CapacityTaskSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "CreationDate"))
    CapacityTaskSummary.add_member(:completion_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "CompletionDate"))
    CapacityTaskSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "LastModifiedDate"))
    CapacityTaskSummary.struct_class = Types::CapacityTaskSummary

    CatalogItem.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    CatalogItem.add_member(:item_status, Shapes::ShapeRef.new(shape: CatalogItemStatus, location_name: "ItemStatus"))
    CatalogItem.add_member(:ec2_capacities, Shapes::ShapeRef.new(shape: EC2CapacityListDefinition, location_name: "EC2Capacities"))
    CatalogItem.add_member(:power_kva, Shapes::ShapeRef.new(shape: CatalogItemPowerKva, location_name: "PowerKva"))
    CatalogItem.add_member(:weight_lbs, Shapes::ShapeRef.new(shape: CatalogItemWeightLbs, location_name: "WeightLbs"))
    CatalogItem.add_member(:supported_uplink_gbps, Shapes::ShapeRef.new(shape: SupportedUplinkGbpsListDefinition, location_name: "SupportedUplinkGbps"))
    CatalogItem.add_member(:supported_storage, Shapes::ShapeRef.new(shape: SupportedStorageList, location_name: "SupportedStorage"))
    CatalogItem.struct_class = Types::CatalogItem

    CatalogItemClassList.member = Shapes::ShapeRef.new(shape: CatalogItemClass)

    CatalogItemListDefinition.member = Shapes::ShapeRef.new(shape: CatalogItem)

    CityList.member = Shapes::ShapeRef.new(shape: City)

    ComputeAttributes.add_member(:host_id, Shapes::ShapeRef.new(shape: HostId, location_name: "HostId"))
    ComputeAttributes.add_member(:state, Shapes::ShapeRef.new(shape: ComputeAssetState, location_name: "State"))
    ComputeAttributes.add_member(:instance_families, Shapes::ShapeRef.new(shape: InstanceFamilies, location_name: "InstanceFamilies"))
    ComputeAttributes.add_member(:instance_type_capacities, Shapes::ShapeRef.new(shape: AssetInstanceCapacityList, location_name: "InstanceTypeCapacities"))
    ComputeAttributes.add_member(:max_vcpus, Shapes::ShapeRef.new(shape: VCPUCount, location_name: "MaxVcpus"))
    ComputeAttributes.struct_class = Types::ComputeAttributes

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionDetails.add_member(:client_public_key, Shapes::ShapeRef.new(shape: WireGuardPublicKey, location_name: "ClientPublicKey"))
    ConnectionDetails.add_member(:server_public_key, Shapes::ShapeRef.new(shape: WireGuardPublicKey, location_name: "ServerPublicKey"))
    ConnectionDetails.add_member(:server_endpoint, Shapes::ShapeRef.new(shape: ServerEndpoint, location_name: "ServerEndpoint"))
    ConnectionDetails.add_member(:client_tunnel_address, Shapes::ShapeRef.new(shape: CIDR, location_name: "ClientTunnelAddress"))
    ConnectionDetails.add_member(:server_tunnel_address, Shapes::ShapeRef.new(shape: CIDR, location_name: "ServerTunnelAddress"))
    ConnectionDetails.add_member(:allowed_ips, Shapes::ShapeRef.new(shape: CIDRList, location_name: "AllowedIps"))
    ConnectionDetails.struct_class = Types::ConnectionDetails

    CountryCodeList.member = Shapes::ShapeRef.new(shape: CountryCode)

    CreateOrderInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location_name: "OutpostIdentifier"))
    CreateOrderInput.add_member(:line_items, Shapes::ShapeRef.new(shape: LineItemRequestListDefinition, required: true, location_name: "LineItems"))
    CreateOrderInput.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, required: true, location_name: "PaymentOption"))
    CreateOrderInput.add_member(:payment_term, Shapes::ShapeRef.new(shape: PaymentTerm, location_name: "PaymentTerm"))
    CreateOrderInput.struct_class = Types::CreateOrderInput

    CreateOrderOutput.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "Order"))
    CreateOrderOutput.struct_class = Types::CreateOrderOutput

    CreateOutpostInput.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, required: true, location_name: "Name"))
    CreateOutpostInput.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    CreateOutpostInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "SiteId"))
    CreateOutpostInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    CreateOutpostInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    CreateOutpostInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateOutpostInput.add_member(:supported_hardware_type, Shapes::ShapeRef.new(shape: SupportedHardwareType, location_name: "SupportedHardwareType"))
    CreateOutpostInput.struct_class = Types::CreateOutpostInput

    CreateOutpostOutput.add_member(:outpost, Shapes::ShapeRef.new(shape: Outpost, location_name: "Outpost"))
    CreateOutpostOutput.struct_class = Types::CreateOutpostOutput

    CreateSiteInput.add_member(:name, Shapes::ShapeRef.new(shape: SiteName, required: true, location_name: "Name"))
    CreateSiteInput.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "Description"))
    CreateSiteInput.add_member(:notes, Shapes::ShapeRef.new(shape: SiteNotes, location_name: "Notes"))
    CreateSiteInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateSiteInput.add_member(:operating_address, Shapes::ShapeRef.new(shape: Address, location_name: "OperatingAddress"))
    CreateSiteInput.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "ShippingAddress"))
    CreateSiteInput.add_member(:rack_physical_properties, Shapes::ShapeRef.new(shape: RackPhysicalProperties, location_name: "RackPhysicalProperties"))
    CreateSiteInput.struct_class = Types::CreateSiteInput

    CreateSiteOutput.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    CreateSiteOutput.struct_class = Types::CreateSiteOutput

    DeleteOutpostInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    DeleteOutpostInput.struct_class = Types::DeleteOutpostInput

    DeleteOutpostOutput.struct_class = Types::DeleteOutpostOutput

    DeleteSiteInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    DeleteSiteInput.struct_class = Types::DeleteSiteInput

    DeleteSiteOutput.struct_class = Types::DeleteSiteOutput

    EC2Capacity.add_member(:family, Shapes::ShapeRef.new(shape: Family, location_name: "Family"))
    EC2Capacity.add_member(:max_size, Shapes::ShapeRef.new(shape: MaxSize, location_name: "MaxSize"))
    EC2Capacity.add_member(:quantity, Shapes::ShapeRef.new(shape: Quantity, location_name: "Quantity"))
    EC2Capacity.struct_class = Types::EC2Capacity

    EC2CapacityListDefinition.member = Shapes::ShapeRef.new(shape: EC2Capacity)

    EC2FamilyList.member = Shapes::ShapeRef.new(shape: Family)

    GetCapacityTaskInput.add_member(:capacity_task_id, Shapes::ShapeRef.new(shape: CapacityTaskId, required: true, location: "uri", location_name: "CapacityTaskId"))
    GetCapacityTaskInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    GetCapacityTaskInput.struct_class = Types::GetCapacityTaskInput

    GetCapacityTaskOutput.add_member(:capacity_task_id, Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: "CapacityTaskId"))
    GetCapacityTaskOutput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    GetCapacityTaskOutput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    GetCapacityTaskOutput.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "AssetId"))
    GetCapacityTaskOutput.add_member(:requested_instance_pools, Shapes::ShapeRef.new(shape: RequestedInstancePools, location_name: "RequestedInstancePools"))
    GetCapacityTaskOutput.add_member(:instances_to_exclude, Shapes::ShapeRef.new(shape: InstancesToExclude, location_name: "InstancesToExclude"))
    GetCapacityTaskOutput.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    GetCapacityTaskOutput.add_member(:capacity_task_status, Shapes::ShapeRef.new(shape: CapacityTaskStatus, location_name: "CapacityTaskStatus"))
    GetCapacityTaskOutput.add_member(:failed, Shapes::ShapeRef.new(shape: CapacityTaskFailure, location_name: "Failed"))
    GetCapacityTaskOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "CreationDate"))
    GetCapacityTaskOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "CompletionDate"))
    GetCapacityTaskOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "LastModifiedDate"))
    GetCapacityTaskOutput.add_member(:task_action_on_blocking_instances, Shapes::ShapeRef.new(shape: TaskActionOnBlockingInstances, location_name: "TaskActionOnBlockingInstances"))
    GetCapacityTaskOutput.struct_class = Types::GetCapacityTaskOutput

    GetCatalogItemInput.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, required: true, location: "uri", location_name: "CatalogItemId"))
    GetCatalogItemInput.struct_class = Types::GetCatalogItemInput

    GetCatalogItemOutput.add_member(:catalog_item, Shapes::ShapeRef.new(shape: CatalogItem, location_name: "CatalogItem"))
    GetCatalogItemOutput.struct_class = Types::GetCatalogItemOutput

    GetConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    GetConnectionResponse.add_member(:connection_details, Shapes::ShapeRef.new(shape: ConnectionDetails, location_name: "ConnectionDetails"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GetOrderInput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, required: true, location: "uri", location_name: "OrderId"))
    GetOrderInput.struct_class = Types::GetOrderInput

    GetOrderOutput.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "Order"))
    GetOrderOutput.struct_class = Types::GetOrderOutput

    GetOutpostBillingInformationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    GetOutpostBillingInformationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    GetOutpostBillingInformationInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostIdentifier"))
    GetOutpostBillingInformationInput.struct_class = Types::GetOutpostBillingInformationInput

    GetOutpostBillingInformationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetOutpostBillingInformationOutput.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, location_name: "Subscriptions"))
    GetOutpostBillingInformationOutput.add_member(:contract_end_date, Shapes::ShapeRef.new(shape: String, location_name: "ContractEndDate"))
    GetOutpostBillingInformationOutput.struct_class = Types::GetOutpostBillingInformationOutput

    GetOutpostInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    GetOutpostInput.struct_class = Types::GetOutpostInput

    GetOutpostInstanceTypesInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    GetOutpostInstanceTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    GetOutpostInstanceTypesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    GetOutpostInstanceTypesInput.struct_class = Types::GetOutpostInstanceTypesInput

    GetOutpostInstanceTypesOutput.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeListDefinition, location_name: "InstanceTypes"))
    GetOutpostInstanceTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetOutpostInstanceTypesOutput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    GetOutpostInstanceTypesOutput.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    GetOutpostInstanceTypesOutput.struct_class = Types::GetOutpostInstanceTypesOutput

    GetOutpostOutput.add_member(:outpost, Shapes::ShapeRef.new(shape: Outpost, location_name: "Outpost"))
    GetOutpostOutput.struct_class = Types::GetOutpostOutput

    GetOutpostSupportedInstanceTypesInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    GetOutpostSupportedInstanceTypesInput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location: "querystring", location_name: "OrderId"))
    GetOutpostSupportedInstanceTypesInput.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetIdInput, location: "querystring", location_name: "AssetId"))
    GetOutpostSupportedInstanceTypesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    GetOutpostSupportedInstanceTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    GetOutpostSupportedInstanceTypesInput.struct_class = Types::GetOutpostSupportedInstanceTypesInput

    GetOutpostSupportedInstanceTypesOutput.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeListDefinition, location_name: "InstanceTypes"))
    GetOutpostSupportedInstanceTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetOutpostSupportedInstanceTypesOutput.struct_class = Types::GetOutpostSupportedInstanceTypesOutput

    GetSiteAddressInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    GetSiteAddressInput.add_member(:address_type, Shapes::ShapeRef.new(shape: AddressType, required: true, location: "querystring", location_name: "AddressType"))
    GetSiteAddressInput.struct_class = Types::GetSiteAddressInput

    GetSiteAddressOutput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    GetSiteAddressOutput.add_member(:address_type, Shapes::ShapeRef.new(shape: AddressType, location_name: "AddressType"))
    GetSiteAddressOutput.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    GetSiteAddressOutput.struct_class = Types::GetSiteAddressOutput

    GetSiteInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    GetSiteInput.struct_class = Types::GetSiteInput

    GetSiteOutput.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    GetSiteOutput.struct_class = Types::GetSiteOutput

    HostIdList.member = Shapes::ShapeRef.new(shape: HostId)

    InstanceFamilies.member = Shapes::ShapeRef.new(shape: InstanceFamilyName)

    InstanceIdList.member = Shapes::ShapeRef.new(shape: InstanceId)

    InstanceTypeCapacity.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceTypeName, required: true, location_name: "InstanceType"))
    InstanceTypeCapacity.add_member(:count, Shapes::ShapeRef.new(shape: InstanceTypeCount, required: true, location_name: "Count"))
    InstanceTypeCapacity.struct_class = Types::InstanceTypeCapacity

    InstanceTypeItem.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceTypeItem.add_member(:vcp_us, Shapes::ShapeRef.new(shape: VCPUCount, location_name: "VCPUs"))
    InstanceTypeItem.struct_class = Types::InstanceTypeItem

    InstanceTypeListDefinition.member = Shapes::ShapeRef.new(shape: InstanceTypeItem)

    InstancesToExclude.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "Instances"))
    InstancesToExclude.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    InstancesToExclude.add_member(:services, Shapes::ShapeRef.new(shape: AWSServiceNameList, location_name: "Services"))
    InstancesToExclude.struct_class = Types::InstancesToExclude

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    LifeCycleStatusList.member = Shapes::ShapeRef.new(shape: LifeCycleStatus)

    LineItem.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    LineItem.add_member(:line_item_id, Shapes::ShapeRef.new(shape: LineItemId, location_name: "LineItemId"))
    LineItem.add_member(:quantity, Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: "Quantity"))
    LineItem.add_member(:status, Shapes::ShapeRef.new(shape: LineItemStatus, location_name: "Status"))
    LineItem.add_member(:shipment_information, Shapes::ShapeRef.new(shape: ShipmentInformation, location_name: "ShipmentInformation"))
    LineItem.add_member(:asset_information_list, Shapes::ShapeRef.new(shape: LineItemAssetInformationList, location_name: "AssetInformationList"))
    LineItem.add_member(:previous_line_item_id, Shapes::ShapeRef.new(shape: LineItemId, location_name: "PreviousLineItemId"))
    LineItem.add_member(:previous_order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "PreviousOrderId"))
    LineItem.struct_class = Types::LineItem

    LineItemAssetInformation.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "AssetId"))
    LineItemAssetInformation.add_member(:mac_address_list, Shapes::ShapeRef.new(shape: MacAddressList, location_name: "MacAddressList"))
    LineItemAssetInformation.struct_class = Types::LineItemAssetInformation

    LineItemAssetInformationList.member = Shapes::ShapeRef.new(shape: LineItemAssetInformation)

    LineItemListDefinition.member = Shapes::ShapeRef.new(shape: LineItem)

    LineItemRequest.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    LineItemRequest.add_member(:quantity, Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: "Quantity"))
    LineItemRequest.struct_class = Types::LineItemRequest

    LineItemRequestListDefinition.member = Shapes::ShapeRef.new(shape: LineItemRequest)

    LineItemStatusCounts.key = Shapes::ShapeRef.new(shape: LineItemStatus)
    LineItemStatusCounts.value = Shapes::ShapeRef.new(shape: LineItemQuantity)

    ListAssetInstancesInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    ListAssetInstancesInput.add_member(:asset_id_filter, Shapes::ShapeRef.new(shape: AssetIdList, location: "querystring", location_name: "AssetIdFilter"))
    ListAssetInstancesInput.add_member(:instance_type_filter, Shapes::ShapeRef.new(shape: OutpostInstanceTypeList, location: "querystring", location_name: "InstanceTypeFilter"))
    ListAssetInstancesInput.add_member(:account_id_filter, Shapes::ShapeRef.new(shape: AccountIdList, location: "querystring", location_name: "AccountIdFilter"))
    ListAssetInstancesInput.add_member(:aws_service_filter, Shapes::ShapeRef.new(shape: AWSServiceNameList, location: "querystring", location_name: "AwsServiceFilter"))
    ListAssetInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListAssetInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListAssetInstancesInput.struct_class = Types::ListAssetInstancesInput

    ListAssetInstancesOutput.add_member(:asset_instances, Shapes::ShapeRef.new(shape: AssetInstanceList, location_name: "AssetInstances"))
    ListAssetInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAssetInstancesOutput.struct_class = Types::ListAssetInstancesOutput

    ListAssetsInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    ListAssetsInput.add_member(:host_id_filter, Shapes::ShapeRef.new(shape: HostIdList, location: "querystring", location_name: "HostIdFilter"))
    ListAssetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListAssetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListAssetsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: StatusList, location: "querystring", location_name: "StatusFilter"))
    ListAssetsInput.struct_class = Types::ListAssetsInput

    ListAssetsOutput.add_member(:assets, Shapes::ShapeRef.new(shape: AssetListDefinition, location_name: "Assets"))
    ListAssetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAssetsOutput.struct_class = Types::ListAssetsOutput

    ListBlockingInstancesForCapacityTaskInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    ListBlockingInstancesForCapacityTaskInput.add_member(:capacity_task_id, Shapes::ShapeRef.new(shape: CapacityTaskId, required: true, location: "uri", location_name: "CapacityTaskId"))
    ListBlockingInstancesForCapacityTaskInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListBlockingInstancesForCapacityTaskInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListBlockingInstancesForCapacityTaskInput.struct_class = Types::ListBlockingInstancesForCapacityTaskInput

    ListBlockingInstancesForCapacityTaskOutput.add_member(:blocking_instances, Shapes::ShapeRef.new(shape: BlockingInstancesList, location_name: "BlockingInstances"))
    ListBlockingInstancesForCapacityTaskOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBlockingInstancesForCapacityTaskOutput.struct_class = Types::ListBlockingInstancesForCapacityTaskOutput

    ListCapacityTasksInput.add_member(:outpost_identifier_filter, Shapes::ShapeRef.new(shape: OutpostIdentifier, location: "querystring", location_name: "OutpostIdentifierFilter"))
    ListCapacityTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListCapacityTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListCapacityTasksInput.add_member(:capacity_task_status_filter, Shapes::ShapeRef.new(shape: CapacityTaskStatusList, location: "querystring", location_name: "CapacityTaskStatusFilter"))
    ListCapacityTasksInput.struct_class = Types::ListCapacityTasksInput

    ListCapacityTasksOutput.add_member(:capacity_tasks, Shapes::ShapeRef.new(shape: CapacityTaskList, location_name: "CapacityTasks"))
    ListCapacityTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCapacityTasksOutput.struct_class = Types::ListCapacityTasksOutput

    ListCatalogItemsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListCatalogItemsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListCatalogItemsInput.add_member(:item_class_filter, Shapes::ShapeRef.new(shape: CatalogItemClassList, location: "querystring", location_name: "ItemClassFilter"))
    ListCatalogItemsInput.add_member(:supported_storage_filter, Shapes::ShapeRef.new(shape: SupportedStorageList, location: "querystring", location_name: "SupportedStorageFilter"))
    ListCatalogItemsInput.add_member(:ec2_family_filter, Shapes::ShapeRef.new(shape: EC2FamilyList, location: "querystring", location_name: "EC2FamilyFilter"))
    ListCatalogItemsInput.struct_class = Types::ListCatalogItemsInput

    ListCatalogItemsOutput.add_member(:catalog_items, Shapes::ShapeRef.new(shape: CatalogItemListDefinition, location_name: "CatalogItems"))
    ListCatalogItemsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCatalogItemsOutput.struct_class = Types::ListCatalogItemsOutput

    ListOrdersInput.add_member(:outpost_identifier_filter, Shapes::ShapeRef.new(shape: OutpostIdentifier, location: "querystring", location_name: "OutpostIdentifierFilter"))
    ListOrdersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListOrdersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListOrdersInput.struct_class = Types::ListOrdersInput

    ListOrdersOutput.add_member(:orders, Shapes::ShapeRef.new(shape: OrderSummaryListDefinition, location_name: "Orders"))
    ListOrdersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListOrdersOutput.struct_class = Types::ListOrdersOutput

    ListOutpostsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListOutpostsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListOutpostsInput.add_member(:life_cycle_status_filter, Shapes::ShapeRef.new(shape: LifeCycleStatusList, location: "querystring", location_name: "LifeCycleStatusFilter"))
    ListOutpostsInput.add_member(:availability_zone_filter, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location: "querystring", location_name: "AvailabilityZoneFilter"))
    ListOutpostsInput.add_member(:availability_zone_id_filter, Shapes::ShapeRef.new(shape: AvailabilityZoneIdList, location: "querystring", location_name: "AvailabilityZoneIdFilter"))
    ListOutpostsInput.struct_class = Types::ListOutpostsInput

    ListOutpostsOutput.add_member(:outposts, Shapes::ShapeRef.new(shape: outpostListDefinition, location_name: "Outposts"))
    ListOutpostsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListOutpostsOutput.struct_class = Types::ListOutpostsOutput

    ListSitesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListSitesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListSitesInput.add_member(:operating_address_country_code_filter, Shapes::ShapeRef.new(shape: CountryCodeList, location: "querystring", location_name: "OperatingAddressCountryCodeFilter"))
    ListSitesInput.add_member(:operating_address_state_or_region_filter, Shapes::ShapeRef.new(shape: StateOrRegionList, location: "querystring", location_name: "OperatingAddressStateOrRegionFilter"))
    ListSitesInput.add_member(:operating_address_city_filter, Shapes::ShapeRef.new(shape: CityList, location: "querystring", location_name: "OperatingAddressCityFilter"))
    ListSitesInput.struct_class = Types::ListSitesInput

    ListSitesOutput.add_member(:sites, Shapes::ShapeRef.new(shape: siteListDefinition, location_name: "Sites"))
    ListSitesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListSitesOutput.struct_class = Types::ListSitesOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MacAddressList.member = Shapes::ShapeRef.new(shape: MacAddress)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Order.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostIdOnly, location_name: "OutpostId"))
    Order.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    Order.add_member(:status, Shapes::ShapeRef.new(shape: OrderStatus, location_name: "Status"))
    Order.add_member(:line_items, Shapes::ShapeRef.new(shape: LineItemListDefinition, location_name: "LineItems"))
    Order.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    Order.add_member(:order_submission_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderSubmissionDate"))
    Order.add_member(:order_fulfilled_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderFulfilledDate"))
    Order.add_member(:payment_term, Shapes::ShapeRef.new(shape: PaymentTerm, location_name: "PaymentTerm"))
    Order.add_member(:order_type, Shapes::ShapeRef.new(shape: OrderType, location_name: "OrderType"))
    Order.struct_class = Types::Order

    OrderIdList.member = Shapes::ShapeRef.new(shape: String)

    OrderSummary.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostIdOnly, location_name: "OutpostId"))
    OrderSummary.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    OrderSummary.add_member(:order_type, Shapes::ShapeRef.new(shape: OrderType, location_name: "OrderType"))
    OrderSummary.add_member(:status, Shapes::ShapeRef.new(shape: OrderStatus, location_name: "Status"))
    OrderSummary.add_member(:line_item_counts_by_status, Shapes::ShapeRef.new(shape: LineItemStatusCounts, location_name: "LineItemCountsByStatus"))
    OrderSummary.add_member(:order_submission_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderSubmissionDate"))
    OrderSummary.add_member(:order_fulfilled_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderFulfilledDate"))
    OrderSummary.struct_class = Types::OrderSummary

    OrderSummaryListDefinition.member = Shapes::ShapeRef.new(shape: OrderSummary)

    Outpost.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    Outpost.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    Outpost.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    Outpost.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Outpost.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, location_name: "Name"))
    Outpost.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    Outpost.add_member(:life_cycle_status, Shapes::ShapeRef.new(shape: LifeCycleStatus, location_name: "LifeCycleStatus"))
    Outpost.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    Outpost.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    Outpost.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Outpost.add_member(:site_arn, Shapes::ShapeRef.new(shape: SiteArn, location_name: "SiteArn"))
    Outpost.add_member(:supported_hardware_type, Shapes::ShapeRef.new(shape: SupportedHardwareType, location_name: "SupportedHardwareType"))
    Outpost.struct_class = Types::Outpost

    OutpostInstanceTypeList.member = Shapes::ShapeRef.new(shape: OutpostInstanceType)

    RackPhysicalProperties.add_member(:power_draw_kva, Shapes::ShapeRef.new(shape: PowerDrawKva, location_name: "PowerDrawKva"))
    RackPhysicalProperties.add_member(:power_phase, Shapes::ShapeRef.new(shape: PowerPhase, location_name: "PowerPhase"))
    RackPhysicalProperties.add_member(:power_connector, Shapes::ShapeRef.new(shape: PowerConnector, location_name: "PowerConnector"))
    RackPhysicalProperties.add_member(:power_feed_drop, Shapes::ShapeRef.new(shape: PowerFeedDrop, location_name: "PowerFeedDrop"))
    RackPhysicalProperties.add_member(:uplink_gbps, Shapes::ShapeRef.new(shape: UplinkGbps, location_name: "UplinkGbps"))
    RackPhysicalProperties.add_member(:uplink_count, Shapes::ShapeRef.new(shape: UplinkCount, location_name: "UplinkCount"))
    RackPhysicalProperties.add_member(:fiber_optic_cable_type, Shapes::ShapeRef.new(shape: FiberOpticCableType, location_name: "FiberOpticCableType"))
    RackPhysicalProperties.add_member(:optical_standard, Shapes::ShapeRef.new(shape: OpticalStandard, location_name: "OpticalStandard"))
    RackPhysicalProperties.add_member(:maximum_supported_weight_lbs, Shapes::ShapeRef.new(shape: MaximumSupportedWeightLbs, location_name: "MaximumSupportedWeightLbs"))
    RackPhysicalProperties.struct_class = Types::RackPhysicalProperties

    RequestedInstancePools.member = Shapes::ShapeRef.new(shape: InstanceTypeCapacity)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ShipmentInformation.add_member(:shipment_tracking_number, Shapes::ShapeRef.new(shape: TrackingId, location_name: "ShipmentTrackingNumber"))
    ShipmentInformation.add_member(:shipment_carrier, Shapes::ShapeRef.new(shape: ShipmentCarrier, location_name: "ShipmentCarrier"))
    ShipmentInformation.struct_class = Types::ShipmentInformation

    Site.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Site.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Site.add_member(:name, Shapes::ShapeRef.new(shape: SiteName, location_name: "Name"))
    Site.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "Description"))
    Site.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Site.add_member(:site_arn, Shapes::ShapeRef.new(shape: SiteArn, location_name: "SiteArn"))
    Site.add_member(:notes, Shapes::ShapeRef.new(shape: SiteNotes, location_name: "Notes"))
    Site.add_member(:operating_address_country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "OperatingAddressCountryCode"))
    Site.add_member(:operating_address_state_or_region, Shapes::ShapeRef.new(shape: StateOrRegion, location_name: "OperatingAddressStateOrRegion"))
    Site.add_member(:operating_address_city, Shapes::ShapeRef.new(shape: City, location_name: "OperatingAddressCity"))
    Site.add_member(:rack_physical_properties, Shapes::ShapeRef.new(shape: RackPhysicalProperties, location_name: "RackPhysicalProperties"))
    Site.struct_class = Types::Site

    StartCapacityTaskInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location: "uri", location_name: "OutpostId"))
    StartCapacityTaskInput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    StartCapacityTaskInput.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetIdInput, location_name: "AssetId"))
    StartCapacityTaskInput.add_member(:instance_pools, Shapes::ShapeRef.new(shape: RequestedInstancePools, required: true, location_name: "InstancePools"))
    StartCapacityTaskInput.add_member(:instances_to_exclude, Shapes::ShapeRef.new(shape: InstancesToExclude, location_name: "InstancesToExclude"))
    StartCapacityTaskInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    StartCapacityTaskInput.add_member(:task_action_on_blocking_instances, Shapes::ShapeRef.new(shape: TaskActionOnBlockingInstances, location_name: "TaskActionOnBlockingInstances"))
    StartCapacityTaskInput.struct_class = Types::StartCapacityTaskInput

    StartCapacityTaskOutput.add_member(:capacity_task_id, Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: "CapacityTaskId"))
    StartCapacityTaskOutput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    StartCapacityTaskOutput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    StartCapacityTaskOutput.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "AssetId"))
    StartCapacityTaskOutput.add_member(:requested_instance_pools, Shapes::ShapeRef.new(shape: RequestedInstancePools, location_name: "RequestedInstancePools"))
    StartCapacityTaskOutput.add_member(:instances_to_exclude, Shapes::ShapeRef.new(shape: InstancesToExclude, location_name: "InstancesToExclude"))
    StartCapacityTaskOutput.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    StartCapacityTaskOutput.add_member(:capacity_task_status, Shapes::ShapeRef.new(shape: CapacityTaskStatus, location_name: "CapacityTaskStatus"))
    StartCapacityTaskOutput.add_member(:failed, Shapes::ShapeRef.new(shape: CapacityTaskFailure, location_name: "Failed"))
    StartCapacityTaskOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "CreationDate"))
    StartCapacityTaskOutput.add_member(:completion_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "CompletionDate"))
    StartCapacityTaskOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "LastModifiedDate"))
    StartCapacityTaskOutput.add_member(:task_action_on_blocking_instances, Shapes::ShapeRef.new(shape: TaskActionOnBlockingInstances, location_name: "TaskActionOnBlockingInstances"))
    StartCapacityTaskOutput.struct_class = Types::StartCapacityTaskOutput

    StartConnectionRequest.add_member(:device_serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: "DeviceSerialNumber"))
    StartConnectionRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, required: true, location_name: "AssetId"))
    StartConnectionRequest.add_member(:client_public_key, Shapes::ShapeRef.new(shape: WireGuardPublicKey, required: true, location_name: "ClientPublicKey"))
    StartConnectionRequest.add_member(:network_interface_device_index, Shapes::ShapeRef.new(shape: NetworkInterfaceDeviceIndex, required: true, location_name: "NetworkInterfaceDeviceIndex"))
    StartConnectionRequest.struct_class = Types::StartConnectionRequest

    StartConnectionResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    StartConnectionResponse.add_member(:underlay_ip_address, Shapes::ShapeRef.new(shape: UnderlayIpAddress, location_name: "UnderlayIpAddress"))
    StartConnectionResponse.struct_class = Types::StartConnectionResponse

    StateOrRegionList.member = Shapes::ShapeRef.new(shape: StateOrRegion)

    StatusList.member = Shapes::ShapeRef.new(shape: AssetState)

    Subscription.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionId"))
    Subscription.add_member(:subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, location_name: "SubscriptionType"))
    Subscription.add_member(:subscription_status, Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: "SubscriptionStatus"))
    Subscription.add_member(:order_ids, Shapes::ShapeRef.new(shape: OrderIdList, location_name: "OrderIds"))
    Subscription.add_member(:begin_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "BeginDate"))
    Subscription.add_member(:end_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "EndDate"))
    Subscription.add_member(:monthly_recurring_price, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MonthlyRecurringPrice"))
    Subscription.add_member(:upfront_price, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "UpfrontPrice"))
    Subscription.struct_class = Types::Subscription

    SubscriptionList.member = Shapes::ShapeRef.new(shape: Subscription)

    SupportedStorageList.member = Shapes::ShapeRef.new(shape: SupportedStorageEnum)

    SupportedUplinkGbpsListDefinition.member = Shapes::ShapeRef.new(shape: SupportedUplinkGbps)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateOutpostInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    UpdateOutpostInput.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, location_name: "Name"))
    UpdateOutpostInput.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    UpdateOutpostInput.add_member(:supported_hardware_type, Shapes::ShapeRef.new(shape: SupportedHardwareType, location_name: "SupportedHardwareType"))
    UpdateOutpostInput.struct_class = Types::UpdateOutpostInput

    UpdateOutpostOutput.add_member(:outpost, Shapes::ShapeRef.new(shape: Outpost, location_name: "Outpost"))
    UpdateOutpostOutput.struct_class = Types::UpdateOutpostOutput

    UpdateSiteAddressInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    UpdateSiteAddressInput.add_member(:address_type, Shapes::ShapeRef.new(shape: AddressType, required: true, location_name: "AddressType"))
    UpdateSiteAddressInput.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    UpdateSiteAddressInput.struct_class = Types::UpdateSiteAddressInput

    UpdateSiteAddressOutput.add_member(:address_type, Shapes::ShapeRef.new(shape: AddressType, location_name: "AddressType"))
    UpdateSiteAddressOutput.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    UpdateSiteAddressOutput.struct_class = Types::UpdateSiteAddressOutput

    UpdateSiteInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    UpdateSiteInput.add_member(:name, Shapes::ShapeRef.new(shape: SiteName, location_name: "Name"))
    UpdateSiteInput.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "Description"))
    UpdateSiteInput.add_member(:notes, Shapes::ShapeRef.new(shape: SiteNotes, location_name: "Notes"))
    UpdateSiteInput.struct_class = Types::UpdateSiteInput

    UpdateSiteOutput.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    UpdateSiteOutput.struct_class = Types::UpdateSiteOutput

    UpdateSiteRackPhysicalPropertiesInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_draw_kva, Shapes::ShapeRef.new(shape: PowerDrawKva, location_name: "PowerDrawKva"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_phase, Shapes::ShapeRef.new(shape: PowerPhase, location_name: "PowerPhase"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_connector, Shapes::ShapeRef.new(shape: PowerConnector, location_name: "PowerConnector"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_feed_drop, Shapes::ShapeRef.new(shape: PowerFeedDrop, location_name: "PowerFeedDrop"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:uplink_gbps, Shapes::ShapeRef.new(shape: UplinkGbps, location_name: "UplinkGbps"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:uplink_count, Shapes::ShapeRef.new(shape: UplinkCount, location_name: "UplinkCount"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:fiber_optic_cable_type, Shapes::ShapeRef.new(shape: FiberOpticCableType, location_name: "FiberOpticCableType"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:optical_standard, Shapes::ShapeRef.new(shape: OpticalStandard, location_name: "OpticalStandard"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:maximum_supported_weight_lbs, Shapes::ShapeRef.new(shape: MaximumSupportedWeightLbs, location_name: "MaximumSupportedWeightLbs"))
    UpdateSiteRackPhysicalPropertiesInput.struct_class = Types::UpdateSiteRackPhysicalPropertiesInput

    UpdateSiteRackPhysicalPropertiesOutput.add_member(:site, Shapes::ShapeRef.new(shape: Site, location_name: "Site"))
    UpdateSiteRackPhysicalPropertiesOutput.struct_class = Types::UpdateSiteRackPhysicalPropertiesOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    outpostListDefinition.member = Shapes::ShapeRef.new(shape: Outpost)

    siteListDefinition.member = Shapes::ShapeRef.new(shape: Site)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-03"

      api.metadata = {
        "apiVersion" => "2019-12-03",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "outposts",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Outposts",
        "serviceFullName" => "AWS Outposts",
        "serviceId" => "Outposts",
        "signatureVersion" => "v4",
        "signingName" => "outposts",
        "uid" => "outposts-2019-12-03",
      }

      api.add_operation(:cancel_capacity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelCapacityTask"
        o.http_method = "POST"
        o.http_request_uri = "/outposts/{OutpostId}/capacity/{CapacityTaskId}"
        o.input = Shapes::ShapeRef.new(shape: CancelCapacityTaskInput)
        o.output = Shapes::ShapeRef.new(shape: CancelCapacityTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelOrder"
        o.http_method = "POST"
        o.http_request_uri = "/orders/{OrderId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelOrderInput)
        o.output = Shapes::ShapeRef.new(shape: CancelOrderOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrder"
        o.http_method = "POST"
        o.http_request_uri = "/orders"
        o.input = Shapes::ShapeRef.new(shape: CreateOrderInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOrderOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOutpost"
        o.http_method = "POST"
        o.http_request_uri = "/outposts"
        o.input = Shapes::ShapeRef.new(shape: CreateOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSite"
        o.http_method = "POST"
        o.http_request_uri = "/sites"
        o.input = Shapes::ShapeRef.new(shape: CreateSiteInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSiteOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOutpost"
        o.http_method = "DELETE"
        o.http_request_uri = "/outposts/{OutpostId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSite"
        o.http_method = "DELETE"
        o.http_request_uri = "/sites/{SiteId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSiteInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSiteOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_capacity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCapacityTask"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/capacity/{CapacityTaskId}"
        o.input = Shapes::ShapeRef.new(shape: GetCapacityTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetCapacityTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_catalog_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCatalogItem"
        o.http_method = "GET"
        o.http_request_uri = "/catalog/item/{CatalogItemId}"
        o.input = Shapes::ShapeRef.new(shape: GetCatalogItemInput)
        o.output = Shapes::ShapeRef.new(shape: GetCatalogItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "GET"
        o.http_request_uri = "/connections/{ConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrder"
        o.http_method = "GET"
        o.http_request_uri = "/orders/{OrderId}"
        o.input = Shapes::ShapeRef.new(shape: GetOrderInput)
        o.output = Shapes::ShapeRef.new(shape: GetOrderOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutpost"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}"
        o.input = Shapes::ShapeRef.new(shape: GetOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: GetOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_outpost_billing_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutpostBillingInformation"
        o.http_method = "GET"
        o.http_request_uri = "/outpost/{OutpostIdentifier}/billing-information"
        o.input = Shapes::ShapeRef.new(shape: GetOutpostBillingInformationInput)
        o.output = Shapes::ShapeRef.new(shape: GetOutpostBillingInformationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_outpost_instance_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutpostInstanceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/instanceTypes"
        o.input = Shapes::ShapeRef.new(shape: GetOutpostInstanceTypesInput)
        o.output = Shapes::ShapeRef.new(shape: GetOutpostInstanceTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_outpost_supported_instance_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutpostSupportedInstanceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/supportedInstanceTypes"
        o.input = Shapes::ShapeRef.new(shape: GetOutpostSupportedInstanceTypesInput)
        o.output = Shapes::ShapeRef.new(shape: GetOutpostSupportedInstanceTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSite"
        o.http_method = "GET"
        o.http_request_uri = "/sites/{SiteId}"
        o.input = Shapes::ShapeRef.new(shape: GetSiteInput)
        o.output = Shapes::ShapeRef.new(shape: GetSiteOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_site_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSiteAddress"
        o.http_method = "GET"
        o.http_request_uri = "/sites/{SiteId}/address"
        o.input = Shapes::ShapeRef.new(shape: GetSiteAddressInput)
        o.output = Shapes::ShapeRef.new(shape: GetSiteAddressOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_asset_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetInstances"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/assetInstances"
        o.input = Shapes::ShapeRef.new(shape: ListAssetInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssetInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssets"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/assets"
        o.input = Shapes::ShapeRef.new(shape: ListAssetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_blocking_instances_for_capacity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBlockingInstancesForCapacityTask"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/capacity/{CapacityTaskId}/blockingInstances"
        o.input = Shapes::ShapeRef.new(shape: ListBlockingInstancesForCapacityTaskInput)
        o.output = Shapes::ShapeRef.new(shape: ListBlockingInstancesForCapacityTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_capacity_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCapacityTasks"
        o.http_method = "GET"
        o.http_request_uri = "/capacity/tasks"
        o.input = Shapes::ShapeRef.new(shape: ListCapacityTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListCapacityTasksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_catalog_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCatalogItems"
        o.http_method = "GET"
        o.http_request_uri = "/catalog/items"
        o.input = Shapes::ShapeRef.new(shape: ListCatalogItemsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCatalogItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_orders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrders"
        o.http_method = "GET"
        o.http_request_uri = "/list-orders"
        o.input = Shapes::ShapeRef.new(shape: ListOrdersInput)
        o.output = Shapes::ShapeRef.new(shape: ListOrdersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_outposts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOutposts"
        o.http_method = "GET"
        o.http_request_uri = "/outposts"
        o.input = Shapes::ShapeRef.new(shape: ListOutpostsInput)
        o.output = Shapes::ShapeRef.new(shape: ListOutpostsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSites"
        o.http_method = "GET"
        o.http_request_uri = "/sites"
        o.input = Shapes::ShapeRef.new(shape: ListSitesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSitesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:start_capacity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCapacityTask"
        o.http_method = "POST"
        o.http_request_uri = "/outposts/{OutpostId}/capacity"
        o.input = Shapes::ShapeRef.new(shape: StartCapacityTaskInput)
        o.output = Shapes::ShapeRef.new(shape: StartCapacityTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartConnection"
        o.http_method = "POST"
        o.http_request_uri = "/connections"
        o.input = Shapes::ShapeRef.new(shape: StartConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOutpost"
        o.http_method = "PATCH"
        o.http_request_uri = "/outposts/{OutpostId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSite"
        o.http_method = "PATCH"
        o.http_request_uri = "/sites/{SiteId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSiteInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSiteOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_site_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSiteAddress"
        o.http_method = "PUT"
        o.http_request_uri = "/sites/{SiteId}/address"
        o.input = Shapes::ShapeRef.new(shape: UpdateSiteAddressInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSiteAddressOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_site_rack_physical_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSiteRackPhysicalProperties"
        o.http_method = "PATCH"
        o.http_request_uri = "/sites/{SiteId}/rackPhysicalProperties"
        o.input = Shapes::ShapeRef.new(shape: UpdateSiteRackPhysicalPropertiesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSiteRackPhysicalPropertiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
