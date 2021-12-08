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

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressLine1 = Shapes::StringShape.new(name: 'AddressLine1')
    AddressLine2 = Shapes::StringShape.new(name: 'AddressLine2')
    AddressLine3 = Shapes::StringShape.new(name: 'AddressLine3')
    AddressType = Shapes::StringShape.new(name: 'AddressType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    AvailabilityZoneIdList = Shapes::ListShape.new(name: 'AvailabilityZoneIdList')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    CancelOrderInput = Shapes::StructureShape.new(name: 'CancelOrderInput')
    CancelOrderOutput = Shapes::StructureShape.new(name: 'CancelOrderOutput')
    CatalogItem = Shapes::StructureShape.new(name: 'CatalogItem')
    CatalogItemClass = Shapes::StringShape.new(name: 'CatalogItemClass')
    CatalogItemClassList = Shapes::ListShape.new(name: 'CatalogItemClassList')
    CatalogItemListDefinition = Shapes::ListShape.new(name: 'CatalogItemListDefinition')
    CatalogItemPowerKva = Shapes::FloatShape.new(name: 'CatalogItemPowerKva')
    CatalogItemStatus = Shapes::StringShape.new(name: 'CatalogItemStatus')
    CatalogItemWeightLbs = Shapes::IntegerShape.new(name: 'CatalogItemWeightLbs')
    City = Shapes::StringShape.new(name: 'City')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    ContactPhoneNumber = Shapes::StringShape.new(name: 'ContactPhoneNumber')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
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
    DistrictOrCounty = Shapes::StringShape.new(name: 'DistrictOrCounty')
    EC2Capacity = Shapes::StructureShape.new(name: 'EC2Capacity')
    EC2CapacityListDefinition = Shapes::ListShape.new(name: 'EC2CapacityListDefinition')
    EC2FamilyList = Shapes::ListShape.new(name: 'EC2FamilyList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Family = Shapes::StringShape.new(name: 'Family')
    FiberOpticCableType = Shapes::StringShape.new(name: 'FiberOpticCableType')
    GetCatalogItemInput = Shapes::StructureShape.new(name: 'GetCatalogItemInput')
    GetCatalogItemOutput = Shapes::StructureShape.new(name: 'GetCatalogItemOutput')
    GetOrderInput = Shapes::StructureShape.new(name: 'GetOrderInput')
    GetOrderOutput = Shapes::StructureShape.new(name: 'GetOrderOutput')
    GetOutpostInput = Shapes::StructureShape.new(name: 'GetOutpostInput')
    GetOutpostInstanceTypesInput = Shapes::StructureShape.new(name: 'GetOutpostInstanceTypesInput')
    GetOutpostInstanceTypesOutput = Shapes::StructureShape.new(name: 'GetOutpostInstanceTypesOutput')
    GetOutpostOutput = Shapes::StructureShape.new(name: 'GetOutpostOutput')
    GetSiteAddressInput = Shapes::StructureShape.new(name: 'GetSiteAddressInput')
    GetSiteAddressOutput = Shapes::StructureShape.new(name: 'GetSiteAddressOutput')
    GetSiteInput = Shapes::StructureShape.new(name: 'GetSiteInput')
    GetSiteOutput = Shapes::StructureShape.new(name: 'GetSiteOutput')
    ISO8601Timestamp = Shapes::TimestampShape.new(name: 'ISO8601Timestamp')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeItem = Shapes::StructureShape.new(name: 'InstanceTypeItem')
    InstanceTypeListDefinition = Shapes::ListShape.new(name: 'InstanceTypeListDefinition')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LifeCycleStatus = Shapes::StringShape.new(name: 'LifeCycleStatus')
    LifeCycleStatusList = Shapes::ListShape.new(name: 'LifeCycleStatusList')
    LineItem = Shapes::StructureShape.new(name: 'LineItem')
    LineItemId = Shapes::StringShape.new(name: 'LineItemId')
    LineItemListDefinition = Shapes::ListShape.new(name: 'LineItemListDefinition')
    LineItemQuantity = Shapes::IntegerShape.new(name: 'LineItemQuantity')
    LineItemRequest = Shapes::StructureShape.new(name: 'LineItemRequest')
    LineItemRequestListDefinition = Shapes::ListShape.new(name: 'LineItemRequestListDefinition')
    LineItemStatus = Shapes::StringShape.new(name: 'LineItemStatus')
    LineItemStatusCounts = Shapes::MapShape.new(name: 'LineItemStatusCounts')
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
    MaxResults1000 = Shapes::IntegerShape.new(name: 'MaxResults1000')
    MaxSize = Shapes::StringShape.new(name: 'MaxSize')
    MaximumSupportedWeightLbs = Shapes::StringShape.new(name: 'MaximumSupportedWeightLbs')
    Municipality = Shapes::StringShape.new(name: 'Municipality')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpticalStandard = Shapes::StringShape.new(name: 'OpticalStandard')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderId = Shapes::StringShape.new(name: 'OrderId')
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
    RackPhysicalProperties = Shapes::StructureShape.new(name: 'RackPhysicalProperties')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteArn = Shapes::StringShape.new(name: 'SiteArn')
    SiteDescription = Shapes::StringShape.new(name: 'SiteDescription')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    SiteName = Shapes::StringShape.new(name: 'SiteName')
    SiteNotes = Shapes::StringShape.new(name: 'SiteNotes')
    SkuCode = Shapes::StringShape.new(name: 'SkuCode')
    StateOrRegion = Shapes::StringShape.new(name: 'StateOrRegion')
    String = Shapes::StringShape.new(name: 'String')
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
    Token = Shapes::StringShape.new(name: 'Token')
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
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    outpostListDefinition = Shapes::ListShape.new(name: 'outpostListDefinition')
    siteListDefinition = Shapes::ListShape.new(name: 'siteListDefinition')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Address.add_member(:contact_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "ContactName"))
    Address.add_member(:contact_phone_number, Shapes::ShapeRef.new(shape: ContactPhoneNumber, location_name: "ContactPhoneNumber"))
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

    AvailabilityZoneIdList.member = Shapes::ShapeRef.new(shape: AvailabilityZoneId)

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    CancelOrderInput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, required: true, location: "uri", location_name: "OrderId"))
    CancelOrderInput.struct_class = Types::CancelOrderInput

    CancelOrderOutput.struct_class = Types::CancelOrderOutput

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

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

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

    GetCatalogItemInput.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, required: true, location: "uri", location_name: "CatalogItemId"))
    GetCatalogItemInput.struct_class = Types::GetCatalogItemInput

    GetCatalogItemOutput.add_member(:catalog_item, Shapes::ShapeRef.new(shape: CatalogItem, location_name: "CatalogItem"))
    GetCatalogItemOutput.struct_class = Types::GetCatalogItemOutput

    GetOrderInput.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, required: true, location: "uri", location_name: "OrderId"))
    GetOrderInput.struct_class = Types::GetOrderInput

    GetOrderOutput.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "Order"))
    GetOrderOutput.struct_class = Types::GetOrderOutput

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

    InstanceTypeItem.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceTypeItem.struct_class = Types::InstanceTypeItem

    InstanceTypeListDefinition.member = Shapes::ShapeRef.new(shape: InstanceTypeItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    LifeCycleStatusList.member = Shapes::ShapeRef.new(shape: LifeCycleStatus)

    LineItem.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    LineItem.add_member(:line_item_id, Shapes::ShapeRef.new(shape: LineItemId, location_name: "LineItemId"))
    LineItem.add_member(:quantity, Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: "Quantity"))
    LineItem.add_member(:status, Shapes::ShapeRef.new(shape: LineItemStatus, location_name: "Status"))
    LineItem.struct_class = Types::LineItem

    LineItemListDefinition.member = Shapes::ShapeRef.new(shape: LineItem)

    LineItemRequest.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    LineItemRequest.add_member(:quantity, Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: "Quantity"))
    LineItemRequest.struct_class = Types::LineItemRequest

    LineItemRequestListDefinition.member = Shapes::ShapeRef.new(shape: LineItemRequest)

    LineItemStatusCounts.key = Shapes::ShapeRef.new(shape: LineItemStatus)
    LineItemStatusCounts.value = Shapes::ShapeRef.new(shape: LineItemQuantity)

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
    ListSitesInput.struct_class = Types::ListSitesInput

    ListSitesOutput.add_member(:sites, Shapes::ShapeRef.new(shape: siteListDefinition, location_name: "Sites"))
    ListSitesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListSitesOutput.struct_class = Types::ListSitesOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Order.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostIdOnly, location_name: "OutpostId"))
    Order.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    Order.add_member(:status, Shapes::ShapeRef.new(shape: OrderStatus, location_name: "Status"))
    Order.add_member(:line_items, Shapes::ShapeRef.new(shape: LineItemListDefinition, location_name: "LineItems"))
    Order.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    Order.add_member(:order_submission_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderSubmissionDate"))
    Order.add_member(:order_fulfilled_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderFulfilledDate"))
    Order.struct_class = Types::Order

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

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

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
        "endpointPrefix" => "outposts",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Outposts",
        "serviceFullName" => "AWS Outposts",
        "serviceId" => "Outposts",
        "signatureVersion" => "v4",
        "signingName" => "outposts",
        "uid" => "outposts-2019-12-03",
      }

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

      api.add_operation(:get_catalog_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCatalogItem"
        o.http_method = "GET"
        o.http_request_uri = "/catalog/item/{CatalogItemId}"
        o.input = Shapes::ShapeRef.new(shape: GetCatalogItemInput)
        o.output = Shapes::ShapeRef.new(shape: GetCatalogItemOutput)
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

      api.add_operation(:list_catalog_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCatalogItems"
        o.http_method = "GET"
        o.http_request_uri = "/catalog/items"
        o.input = Shapes::ShapeRef.new(shape: ListCatalogItemsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCatalogItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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
