# frozen_string_literal: true

# This is generated code!

module Aws::Outposts
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#AWSServiceName", name: "AWSServiceName")
    AWSServiceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AWSServiceNameList", name: "AWSServiceNameList")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AccountIdList", name: "AccountIdList")
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#Address", name: "Address")
    AddressLine1 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AddressLine1", name: "AddressLine1", traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    AddressLine2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AddressLine2", name: "AddressLine2", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    AddressLine3 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AddressLine3", name: "AddressLine3", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    AddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#AddressType", name: "AddressType")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1011}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:([a-z\\d-]+)/)[a-z]{2,8}-[a-f0-9]{17}$"})
    AssetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AssetId", name: "AssetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\w+)$"})
    AssetIdInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AssetIdInput", name: "AssetIdInput", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^\\d{10}$"})
    AssetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AssetIdList", name: "AssetIdList")
    AssetInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#AssetInfo", name: "AssetInfo")
    AssetInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#AssetInstance", name: "AssetInstance")
    AssetInstanceCapacityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AssetInstanceCapacityList", name: "AssetInstanceCapacityList")
    AssetInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AssetInstanceList", name: "AssetInstanceList")
    AssetInstanceTypeCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#AssetInstanceTypeCapacity", name: "AssetInstanceTypeCapacity")
    AssetListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AssetListDefinition", name: "AssetListDefinition")
    AssetLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#AssetLocation", name: "AssetLocation")
    AssetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#AssetState", name: "AssetState")
    AssetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#AssetType", name: "AssetType")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^([a-zA-Z]+-){1,3}([a-zA-Z]+)?(\\d+[a-zA-Z]?)?$"})
    AvailabilityZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#AvailabilityZoneId", name: "AvailabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+\\d-[a-zA-Z]+\\d$"})
    AvailabilityZoneIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AvailabilityZoneIdList", name: "AvailabilityZoneIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#AvailabilityZoneList", name: "AvailabilityZoneList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    BlockingInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#BlockingInstance", name: "BlockingInstance")
    BlockingInstancesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#BlockingInstancesList", name: "BlockingInstancesList")
    CIDR = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#CIDR", name: "CIDR", traits: {"smithy.api#length" => {"min" => 9, "max" => 18}, "smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$"})
    CIDRList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CIDRList", name: "CIDRList")
    CancelCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CancelCapacityTaskInput", name: "CancelCapacityTaskInput")
    CancelCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CancelCapacityTaskOutput", name: "CancelCapacityTaskOutput")
    CancelOrderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CancelOrderInput", name: "CancelOrderInput")
    CancelOrderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CancelOrderOutput", name: "CancelOrderOutput")
    CapacityTaskFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CapacityTaskFailure", name: "CapacityTaskFailure")
    CapacityTaskFailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#CapacityTaskFailureType", name: "CapacityTaskFailureType")
    CapacityTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#CapacityTaskId", name: "CapacityTaskId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^cap-[a-f0-9]{17}$"})
    CapacityTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CapacityTaskList", name: "CapacityTaskList")
    CapacityTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#CapacityTaskStatus", name: "CapacityTaskStatus")
    CapacityTaskStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CapacityTaskStatusList", name: "CapacityTaskStatusList")
    CapacityTaskStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#CapacityTaskStatusReason", name: "CapacityTaskStatusReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    CapacityTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CapacityTaskSummary", name: "CapacityTaskSummary")
    CatalogItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CatalogItem", name: "CatalogItem")
    CatalogItemClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#CatalogItemClass", name: "CatalogItemClass")
    CatalogItemClassList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CatalogItemClassList", name: "CatalogItemClassList")
    CatalogItemListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CatalogItemListDefinition", name: "CatalogItemListDefinition")
    CatalogItemPowerKva = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.outposts#CatalogItemPowerKva", name: "CatalogItemPowerKva")
    CatalogItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#CatalogItemStatus", name: "CatalogItemStatus")
    CatalogItemWeightLbs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#CatalogItemWeightLbs", name: "CatalogItemWeightLbs")
    City = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#City", name: "City", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    CityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CityList", name: "CityList")
    ComputeAssetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#ComputeAssetState", name: "ComputeAssetState")
    ComputeAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ComputeAttributes", name: "ComputeAttributes")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ConnectionDetails", name: "ConnectionDetails")
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#ConnectionId", name: "ConnectionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]{1,1024}$"})
    ContactName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#ContactName", name: "ContactName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    ContactPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#ContactPhoneNumber", name: "ContactPhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\S ]+$"})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#CountryCode", name: "CountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$"})
    CountryCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#CountryCodeList", name: "CountryCodeList")
    CreateOrderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CreateOrderInput", name: "CreateOrderInput")
    CreateOrderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CreateOrderOutput", name: "CreateOrderOutput")
    CreateOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CreateOutpostInput", name: "CreateOutpostInput")
    CreateOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CreateOutpostOutput", name: "CreateOutpostOutput")
    CreateSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CreateSiteInput", name: "CreateSiteInput")
    CreateSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#CreateSiteOutput", name: "CreateSiteOutput")
    DeleteOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#DeleteOutpostInput", name: "DeleteOutpostInput")
    DeleteOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#DeleteOutpostOutput", name: "DeleteOutpostOutput")
    DeleteSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#DeleteSiteInput", name: "DeleteSiteInput")
    DeleteSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#DeleteSiteOutput", name: "DeleteSiteOutput")
    DeviceSerialNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#DeviceSerialNumber", name: "DeviceSerialNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\w+)$"})
    DistrictOrCounty = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#DistrictOrCounty", name: "DistrictOrCounty", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    DryRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.outposts#DryRun", name: "DryRun", traits: {"smithy.api#default" => false})
    EC2Capacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#EC2Capacity", name: "EC2Capacity")
    EC2CapacityListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#EC2CapacityListDefinition", name: "EC2CapacityListDefinition")
    EC2FamilyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#EC2FamilyList", name: "EC2FamilyList")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    Family = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#Family", name: "Family", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    FiberOpticCableType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#FiberOpticCableType", name: "FiberOpticCableType")
    GetCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetCapacityTaskInput", name: "GetCapacityTaskInput")
    GetCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetCapacityTaskOutput", name: "GetCapacityTaskOutput")
    GetCatalogItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetCatalogItemInput", name: "GetCatalogItemInput")
    GetCatalogItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetCatalogItemOutput", name: "GetCatalogItemOutput")
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetConnectionRequest", name: "GetConnectionRequest")
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetConnectionResponse", name: "GetConnectionResponse")
    GetOrderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOrderInput", name: "GetOrderInput")
    GetOrderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOrderOutput", name: "GetOrderOutput")
    GetOutpostBillingInformationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostBillingInformationInput", name: "GetOutpostBillingInformationInput")
    GetOutpostBillingInformationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostBillingInformationOutput", name: "GetOutpostBillingInformationOutput")
    GetOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostInput", name: "GetOutpostInput")
    GetOutpostInstanceTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostInstanceTypesInput", name: "GetOutpostInstanceTypesInput")
    GetOutpostInstanceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostInstanceTypesOutput", name: "GetOutpostInstanceTypesOutput")
    GetOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostOutput", name: "GetOutpostOutput")
    GetOutpostSupportedInstanceTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostSupportedInstanceTypesInput", name: "GetOutpostSupportedInstanceTypesInput")
    GetOutpostSupportedInstanceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetOutpostSupportedInstanceTypesOutput", name: "GetOutpostSupportedInstanceTypesOutput")
    GetSiteAddressInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetSiteAddressInput", name: "GetSiteAddressInput")
    GetSiteAddressOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetSiteAddressOutput", name: "GetSiteAddressOutput")
    GetSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetSiteInput", name: "GetSiteInput")
    GetSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#GetSiteOutput", name: "GetSiteOutput")
    HostId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#HostId", name: "HostId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9-]*$"})
    HostIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#HostIdList", name: "HostIdList")
    ISO8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.outposts#ISO8601Timestamp", name: "ISO8601Timestamp")
    InstanceFamilies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#InstanceFamilies", name: "InstanceFamilies")
    InstanceFamilyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#InstanceFamilyName", name: "InstanceFamilyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?:.{1,200}/)?(?:[a-z0-9-_A-Z])+$"})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#InstanceId", name: "InstanceId", traits: {"smithy.api#length" => {"min" => 11, "max" => 32}, "smithy.api#pattern" => "^i-[0-9a-z]+$"})
    InstanceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#InstanceIdList", name: "InstanceIdList")
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#InstanceType", name: "InstanceType")
    InstanceTypeCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#InstanceTypeCapacity", name: "InstanceTypeCapacity")
    InstanceTypeCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#InstanceTypeCount", name: "InstanceTypeCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 9999}})
    InstanceTypeItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#InstanceTypeItem", name: "InstanceTypeItem")
    InstanceTypeListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#InstanceTypeListDefinition", name: "InstanceTypeListDefinition")
    InstanceTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#InstanceTypeName", name: "InstanceTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9\\-]+\\.[a-z0-9\\-]+$"})
    InstancesToExclude = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#InstancesToExclude", name: "InstancesToExclude")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LifeCycleStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#LifeCycleStatus", name: "LifeCycleStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[ A-Za-z]+$"})
    LifeCycleStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#LifeCycleStatusList", name: "LifeCycleStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LineItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#LineItem", name: "LineItem")
    LineItemAssetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#LineItemAssetInformation", name: "LineItemAssetInformation")
    LineItemAssetInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#LineItemAssetInformationList", name: "LineItemAssetInformationList")
    LineItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#LineItemId", name: "LineItemId", traits: {"smithy.api#pattern" => "^ooi-[a-f0-9]{17}$"})
    LineItemListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#LineItemListDefinition", name: "LineItemListDefinition")
    LineItemQuantity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#LineItemQuantity", name: "LineItemQuantity", traits: {"smithy.api#range" => {"min" => 1}})
    LineItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#LineItemRequest", name: "LineItemRequest")
    LineItemRequestListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#LineItemRequestListDefinition", name: "LineItemRequestListDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    LineItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#LineItemStatus", name: "LineItemStatus")
    LineItemStatusCounts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.outposts#LineItemStatusCounts", name: "LineItemStatusCounts")
    ListAssetInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListAssetInstancesInput", name: "ListAssetInstancesInput")
    ListAssetInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListAssetInstancesOutput", name: "ListAssetInstancesOutput")
    ListAssetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListAssetsInput", name: "ListAssetsInput")
    ListAssetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListAssetsOutput", name: "ListAssetsOutput")
    ListBlockingInstancesForCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListBlockingInstancesForCapacityTaskInput", name: "ListBlockingInstancesForCapacityTaskInput")
    ListBlockingInstancesForCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListBlockingInstancesForCapacityTaskOutput", name: "ListBlockingInstancesForCapacityTaskOutput")
    ListCapacityTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListCapacityTasksInput", name: "ListCapacityTasksInput")
    ListCapacityTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListCapacityTasksOutput", name: "ListCapacityTasksOutput")
    ListCatalogItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListCatalogItemsInput", name: "ListCatalogItemsInput")
    ListCatalogItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListCatalogItemsOutput", name: "ListCatalogItemsOutput")
    ListOrdersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListOrdersInput", name: "ListOrdersInput")
    ListOrdersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListOrdersOutput", name: "ListOrdersOutput")
    ListOutpostsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListOutpostsInput", name: "ListOutpostsInput")
    ListOutpostsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListOutpostsOutput", name: "ListOutpostsOutput")
    ListSitesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListSitesInput", name: "ListSitesInput")
    ListSitesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListSitesOutput", name: "ListSitesOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MacAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#MacAddress", name: "MacAddress", traits: {"smithy.api#length" => {"min" => 17, "max" => 17}, "smithy.api#pattern" => "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$"})
    MacAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#MacAddressList", name: "MacAddressList")
    MaxResults1000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#MaxResults1000", name: "MaxResults1000", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSize = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#MaxSize", name: "MaxSize")
    MaximumSupportedWeightLbs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#MaximumSupportedWeightLbs", name: "MaximumSupportedWeightLbs")
    Municipality = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#Municipality", name: "Municipality", traits: {"smithy.api#length" => {"min" => 0, "max" => 180}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    NetworkInterfaceDeviceIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#NetworkInterfaceDeviceIndex", name: "NetworkInterfaceDeviceIndex", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.outposts#NullableDouble", name: "NullableDouble")
    OpticalStandard = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#OpticalStandard", name: "OpticalStandard")
    Order = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#Order", name: "Order")
    OrderId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OrderId", name: "OrderId", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^oo-[a-f0-9]{17}$"})
    OrderIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#OrderIdList", name: "OrderIdList")
    OrderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#OrderStatus", name: "OrderStatus")
    OrderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#OrderSummary", name: "OrderSummary")
    OrderSummaryListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#OrderSummaryListDefinition", name: "OrderSummaryListDefinition")
    OrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#OrderType", name: "OrderType")
    Outpost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#Outpost", name: "Outpost")
    OutpostArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostArn", name: "OutpostArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"})
    OutpostDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostDescription", name: "OutpostDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\S ]*$"})
    OutpostId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostId", name: "OutpostId", traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$"})
    OutpostIdOnly = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostIdOnly", name: "OutpostIdOnly", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^op-[a-f0-9]{17}$"})
    OutpostIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostIdentifier", name: "OutpostIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$"})
    OutpostInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostInstanceType", name: "OutpostInstanceType", traits: {"smithy.api#length" => {"min" => 3, "max" => 30}, "smithy.api#pattern" => "^[a-z0-9\\-\\.]+$"})
    OutpostInstanceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#OutpostInstanceTypeList", name: "OutpostInstanceTypeList")
    OutpostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OutpostName", name: "OutpostName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\S ]+$"})
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#OwnerId", name: "OwnerId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    PaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#PaymentOption", name: "PaymentOption")
    PaymentTerm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#PaymentTerm", name: "PaymentTerm")
    PostalCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#PostalCode", name: "PostalCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9 -]+$"})
    PowerConnector = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#PowerConnector", name: "PowerConnector")
    PowerDrawKva = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#PowerDrawKva", name: "PowerDrawKva")
    PowerFeedDrop = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#PowerFeedDrop", name: "PowerFeedDrop")
    PowerPhase = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#PowerPhase", name: "PowerPhase")
    Quantity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#Quantity", name: "Quantity")
    RackElevation = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.outposts#RackElevation", name: "RackElevation", traits: {"smithy.api#range" => {"min" => 0, "max" => 99}})
    RackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#RackId", name: "RackId", traits: {"smithy.api#length" => {"min" => 5, "max" => 20}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    RackPhysicalProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#RackPhysicalProperties", name: "RackPhysicalProperties")
    RequestedInstancePools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#RequestedInstancePools", name: "RequestedInstancePools")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#ResourceType", name: "ResourceType")
    ServerEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#ServerEndpoint", name: "ServerEndpoint", traits: {"smithy.api#length" => {"min" => 9, "max" => 21}, "smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}:[0-9]{1,5}$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShipmentCarrier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#ShipmentCarrier", name: "ShipmentCarrier")
    ShipmentInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ShipmentInformation", name: "ShipmentInformation")
    Site = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#Site", name: "Site")
    SiteArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#SiteArn", name: "SiteArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/(os-[a-f0-9]{17})$"})
    SiteDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#SiteDescription", name: "SiteDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1001}, "smithy.api#pattern" => "^[\\S ]+$"})
    SiteId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#SiteId", name: "SiteId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/)?(os-[a-f0-9]{17})$"})
    SiteName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#SiteName", name: "SiteName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S ]+$"})
    SiteNotes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#SiteNotes", name: "SiteNotes", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    SkuCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#SkuCode", name: "SkuCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^OR-[A-Z0-9]{7}$"})
    StartCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#StartCapacityTaskInput", name: "StartCapacityTaskInput")
    StartCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#StartCapacityTaskOutput", name: "StartCapacityTaskOutput")
    StartConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#StartConnectionRequest", name: "StartConnectionRequest")
    StartConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#StartConnectionResponse", name: "StartConnectionResponse")
    StateOrRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#StateOrRegion", name: "StateOrRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    StateOrRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#StateOrRegionList", name: "StateOrRegionList")
    StatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#StatusList", name: "StatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#String", name: "String", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#Subscription", name: "Subscription")
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#SubscriptionList", name: "SubscriptionList")
    SubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#SubscriptionStatus", name: "SubscriptionStatus")
    SubscriptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#SubscriptionType", name: "SubscriptionType")
    SupportedHardwareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#SupportedHardwareType", name: "SupportedHardwareType")
    SupportedStorageEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#SupportedStorageEnum", name: "SupportedStorageEnum")
    SupportedStorageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#SupportedStorageList", name: "SupportedStorageList")
    SupportedUplinkGbps = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#SupportedUplinkGbps", name: "SupportedUplinkGbps", traits: {"smithy.api#default" => 0})
    SupportedUplinkGbpsListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#SupportedUplinkGbpsListDefinition", name: "SupportedUplinkGbpsListDefinition")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.outposts#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    TaskActionOnBlockingInstances = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#TaskActionOnBlockingInstances", name: "TaskActionOnBlockingInstances")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(\\d+)##(\\S+)$"})
    TrackingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#TrackingId", name: "TrackingId", traits: {"smithy.api#length" => {"min" => 6, "max" => 42}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    UnderlayIpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#UnderlayIpAddress", name: "UnderlayIpAddress", traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateOutpostInput", name: "UpdateOutpostInput")
    UpdateOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateOutpostOutput", name: "UpdateOutpostOutput")
    UpdateSiteAddressInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateSiteAddressInput", name: "UpdateSiteAddressInput")
    UpdateSiteAddressOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateSiteAddressOutput", name: "UpdateSiteAddressOutput")
    UpdateSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateSiteInput", name: "UpdateSiteInput")
    UpdateSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateSiteOutput", name: "UpdateSiteOutput")
    UpdateSiteRackPhysicalPropertiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateSiteRackPhysicalPropertiesInput", name: "UpdateSiteRackPhysicalPropertiesInput")
    UpdateSiteRackPhysicalPropertiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#UpdateSiteRackPhysicalPropertiesOutput", name: "UpdateSiteRackPhysicalPropertiesOutput")
    UplinkCount = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#UplinkCount", name: "UplinkCount")
    UplinkGbps = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.outposts#UplinkGbps", name: "UplinkGbps")
    VCPUCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.outposts#VCPUCount", name: "VCPUCount")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.outposts#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WireGuardPublicKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.outposts#WireGuardPublicKey", name: "WireGuardPublicKey", traits: {"smithy.api#length" => {"min" => 44, "max" => 44}, "smithy.api#pattern" => "^[a-zA-Z0-9/+]{43}=$"})
    OutpostListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#outpostListDefinition", name: "OutpostListDefinition")
    SiteListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.outposts#siteListDefinition", name: "SiteListDefinition")

    AWSServiceName.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    AWSServiceName.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    AWSServiceName.add_member(:elasticache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTICACHE", traits: {"smithy.api#enumValue" => "ELASTICACHE"}))
    AWSServiceName.add_member(:elb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELB", traits: {"smithy.api#enumValue" => "ELB"}))
    AWSServiceName.add_member(:rds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS", traits: {"smithy.api#enumValue" => "RDS"}))
    AWSServiceName.add_member(:route53, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE53", traits: {"smithy.api#enumValue" => "ROUTE53"}))
    AWSServiceNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSServiceName, name: "member"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    Address.add_member(:contact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactName, name: "ContactName", traits: {"smithy.api#required" => {}}))
    Address.add_member(:contact_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactPhoneNumber, name: "ContactPhoneNumber", traits: {"smithy.api#required" => {}}))
    Address.add_member(:address_line1, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine1, name: "AddressLine1", traits: {"smithy.api#required" => {}}))
    Address.add_member(:address_line2, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine2, name: "AddressLine2"))
    Address.add_member(:address_line3, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine3, name: "AddressLine3"))
    Address.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: City, name: "City", traits: {"smithy.api#required" => {}}))
    Address.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: StateOrRegion, name: "StateOrRegion", traits: {"smithy.api#required" => {}}))
    Address.add_member(:district_or_county, ::Smithy::Schema::Shapes::MemberShape.new(target: DistrictOrCounty, name: "DistrictOrCounty"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCode, name: "PostalCode", traits: {"smithy.api#required" => {}}))
    Address.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode", traits: {"smithy.api#required" => {}}))
    Address.add_member(:municipality, ::Smithy::Schema::Shapes::MemberShape.new(target: Municipality, name: "Municipality"))
    Address.type = Types::Address
    AddressType.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIPPING_ADDRESS", traits: {"smithy.api#enumValue" => "SHIPPING_ADDRESS"}))
    AddressType.add_member(:operating_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATING_ADDRESS", traits: {"smithy.api#enumValue" => "OPERATING_ADDRESS"}))
    AssetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "member"))
    AssetInfo.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId"))
    AssetInfo.add_member(:rack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RackId, name: "RackId"))
    AssetInfo.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType"))
    AssetInfo.add_member(:compute_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeAttributes, name: "ComputeAttributes"))
    AssetInfo.add_member(:asset_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetLocation, name: "AssetLocation"))
    AssetInfo.type = Types::AssetInfo
    AssetInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    AssetInstance.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "InstanceType"))
    AssetInstance.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId"))
    AssetInstance.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AssetInstance.add_member(:aws_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSServiceName, name: "AwsServiceName"))
    AssetInstance.type = Types::AssetInstance
    AssetInstanceCapacityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetInstanceTypeCapacity, name: "member"))
    AssetInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetInstance, name: "member"))
    AssetInstanceTypeCapacity.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeName, name: "InstanceType", traits: {"smithy.api#required" => {}}))
    AssetInstanceTypeCapacity.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeCount, name: "Count", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AssetInstanceTypeCapacity.type = Types::AssetInstanceTypeCapacity
    AssetListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetInfo, name: "member"))
    AssetLocation.add_member(:rack_elevation, ::Smithy::Schema::Shapes::MemberShape.new(target: RackElevation, name: "RackElevation"))
    AssetLocation.type = Types::AssetLocation
    AssetState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetState.add_member(:retiring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETIRING", traits: {"smithy.api#enumValue" => "RETIRING"}))
    AssetState.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISOLATED", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    AssetType.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE", traits: {"smithy.api#enumValue" => "COMPUTE"}))
    AvailabilityZoneIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "member"))
    AvailabilityZoneList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member"))
    BlockingInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    BlockingInstance.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    BlockingInstance.add_member(:aws_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSServiceName, name: "AwsServiceName"))
    BlockingInstance.type = Types::BlockingInstance
    BlockingInstancesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockingInstance, name: "member"))
    CIDRList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "member"))
    CancelCapacityTaskInput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskId, name: "CapacityTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelCapacityTaskInput.type = Types::CancelCapacityTaskInput
    CancelCapacityTaskOutput.type = Types::CancelCapacityTaskOutput
    CancelOrderInput.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelOrderInput.type = Types::CancelOrderInput
    CancelOrderOutput.type = Types::CancelOrderOutput
    CapacityTaskFailure.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskStatusReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    CapacityTaskFailure.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskFailureType, name: "Type"))
    CapacityTaskFailure.type = Types::CapacityTaskFailure
    CapacityTaskFailureType.add_member(:unsupported_capacity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_CAPACITY_CONFIGURATION", traits: {"smithy.api#enumValue" => "UNSUPPORTED_CAPACITY_CONFIGURATION"}))
    CapacityTaskFailureType.add_member(:unexpected_asset_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNEXPECTED_ASSET_STATE", traits: {"smithy.api#enumValue" => "UNEXPECTED_ASSET_STATE"}))
    CapacityTaskFailureType.add_member(:blocking_instances_not_evacuated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKING_INSTANCES_NOT_EVACUATED", traits: {"smithy.api#enumValue" => "BLOCKING_INSTANCES_NOT_EVACUATED"}))
    CapacityTaskFailureType.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    CapacityTaskFailureType.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    CapacityTaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskSummary, name: "member"))
    CapacityTaskStatus.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    CapacityTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CapacityTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityTaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CapacityTaskStatus.add_member(:waiting_for_evacuation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING_FOR_EVACUATION", traits: {"smithy.api#enumValue" => "WAITING_FOR_EVACUATION"}))
    CapacityTaskStatus.add_member(:cancellation_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CANCELLATION_IN_PROGRESS"}))
    CapacityTaskStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CapacityTaskStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskStatus, name: "member"))
    CapacityTaskSummary.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskId, name: "CapacityTaskId"))
    CapacityTaskSummary.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId"))
    CapacityTaskSummary.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId"))
    CapacityTaskSummary.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId"))
    CapacityTaskSummary.add_member(:capacity_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskStatus, name: "CapacityTaskStatus"))
    CapacityTaskSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "CreationDate"))
    CapacityTaskSummary.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "CompletionDate"))
    CapacityTaskSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "LastModifiedDate"))
    CapacityTaskSummary.type = Types::CapacityTaskSummary
    CatalogItem.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SkuCode, name: "CatalogItemId"))
    CatalogItem.add_member(:item_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItemStatus, name: "ItemStatus"))
    CatalogItem.add_member(:ec2_capacities, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2CapacityListDefinition, name: "EC2Capacities"))
    CatalogItem.add_member(:power_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItemPowerKva, name: "PowerKva"))
    CatalogItem.add_member(:weight_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItemWeightLbs, name: "WeightLbs"))
    CatalogItem.add_member(:supported_uplink_gbps, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedUplinkGbpsListDefinition, name: "SupportedUplinkGbps"))
    CatalogItem.add_member(:supported_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedStorageList, name: "SupportedStorage"))
    CatalogItem.type = Types::CatalogItem
    CatalogItemClass.add_member(:rack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RACK", traits: {"smithy.api#enumValue" => "RACK"}))
    CatalogItemClass.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER", traits: {"smithy.api#enumValue" => "SERVER"}))
    CatalogItemClassList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItemClass, name: "member"))
    CatalogItemListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItem, name: "member"))
    CatalogItemStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CatalogItemStatus.add_member(:discontinued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONTINUED", traits: {"smithy.api#enumValue" => "DISCONTINUED"}))
    CityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: City, name: "member"))
    ComputeAssetState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputeAssetState.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISOLATED", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    ComputeAssetState.add_member(:retiring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETIRING", traits: {"smithy.api#enumValue" => "RETIRING"}))
    ComputeAttributes.add_member(:host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostId, name: "HostId"))
    ComputeAttributes.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeAssetState, name: "State"))
    ComputeAttributes.add_member(:instance_families, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFamilies, name: "InstanceFamilies"))
    ComputeAttributes.add_member(:instance_type_capacities, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetInstanceCapacityList, name: "InstanceTypeCapacities"))
    ComputeAttributes.add_member(:max_vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: VCPUCount, name: "MaxVcpus"))
    ComputeAttributes.type = Types::ComputeAttributes
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ConflictException.type = Types::ConflictException
    ConnectionDetails.add_member(:client_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WireGuardPublicKey, name: "ClientPublicKey"))
    ConnectionDetails.add_member(:server_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WireGuardPublicKey, name: "ServerPublicKey"))
    ConnectionDetails.add_member(:server_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerEndpoint, name: "ServerEndpoint"))
    ConnectionDetails.add_member(:client_tunnel_address, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "ClientTunnelAddress"))
    ConnectionDetails.add_member(:server_tunnel_address, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "ServerTunnelAddress"))
    ConnectionDetails.add_member(:allowed_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDRList, name: "AllowedIps"))
    ConnectionDetails.type = Types::ConnectionDetails
    CountryCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "member"))
    CreateOrderInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#required" => {}}))
    CreateOrderInput.add_member(:line_items, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemRequestListDefinition, name: "LineItems", traits: {"smithy.api#required" => {}}))
    CreateOrderInput.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentOption, name: "PaymentOption", traits: {"smithy.api#required" => {}}))
    CreateOrderInput.add_member(:payment_term, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentTerm, name: "PaymentTerm"))
    CreateOrderInput.type = Types::CreateOrderInput
    CreateOrderOutput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "Order"))
    CreateOrderOutput.type = Types::CreateOrderOutput
    CreateOutpostInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateOutpostInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostDescription, name: "Description"))
    CreateOutpostInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#required" => {}}))
    CreateOutpostInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    CreateOutpostInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    CreateOutpostInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateOutpostInput.add_member(:supported_hardware_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedHardwareType, name: "SupportedHardwareType"))
    CreateOutpostInput.type = Types::CreateOutpostInput
    CreateOutpostOutput.add_member(:outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: Outpost, name: "Outpost"))
    CreateOutpostOutput.type = Types::CreateOutpostOutput
    CreateSiteInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSiteInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteDescription, name: "Description"))
    CreateSiteInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteNotes, name: "Notes"))
    CreateSiteInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateSiteInput.add_member(:operating_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "OperatingAddress"))
    CreateSiteInput.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "ShippingAddress"))
    CreateSiteInput.add_member(:rack_physical_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RackPhysicalProperties, name: "RackPhysicalProperties"))
    CreateSiteInput.type = Types::CreateSiteInput
    CreateSiteOutput.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    CreateSiteOutput.type = Types::CreateSiteOutput
    DeleteOutpostInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutpostInput.type = Types::DeleteOutpostInput
    DeleteOutpostOutput.type = Types::DeleteOutpostOutput
    DeleteSiteInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSiteInput.type = Types::DeleteSiteInput
    DeleteSiteOutput.type = Types::DeleteSiteOutput
    EC2Capacity.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: Family, name: "Family"))
    EC2Capacity.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize, name: "MaxSize"))
    EC2Capacity.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Quantity, name: "Quantity"))
    EC2Capacity.type = Types::EC2Capacity
    EC2CapacityListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2Capacity, name: "member"))
    EC2FamilyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Family, name: "member"))
    FiberOpticCableType.add_member(:single_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_MODE", traits: {"smithy.api#enumValue" => "SINGLE_MODE"}))
    FiberOpticCableType.add_member(:multi_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_MODE", traits: {"smithy.api#enumValue" => "MULTI_MODE"}))
    GetCapacityTaskInput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskId, name: "CapacityTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCapacityTaskInput.type = Types::GetCapacityTaskInput
    GetCapacityTaskOutput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskId, name: "CapacityTaskId"))
    GetCapacityTaskOutput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId"))
    GetCapacityTaskOutput.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId"))
    GetCapacityTaskOutput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId"))
    GetCapacityTaskOutput.add_member(:requested_instance_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedInstancePools, name: "RequestedInstancePools"))
    GetCapacityTaskOutput.add_member(:instances_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToExclude, name: "InstancesToExclude"))
    GetCapacityTaskOutput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DryRun, name: "DryRun", traits: {"smithy.api#default" => false}))
    GetCapacityTaskOutput.add_member(:capacity_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskStatus, name: "CapacityTaskStatus"))
    GetCapacityTaskOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskFailure, name: "Failed"))
    GetCapacityTaskOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "CreationDate"))
    GetCapacityTaskOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "CompletionDate"))
    GetCapacityTaskOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "LastModifiedDate"))
    GetCapacityTaskOutput.add_member(:task_action_on_blocking_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskActionOnBlockingInstances, name: "TaskActionOnBlockingInstances"))
    GetCapacityTaskOutput.type = Types::GetCapacityTaskOutput
    GetCatalogItemInput.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SkuCode, name: "CatalogItemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCatalogItemInput.type = Types::GetCatalogItemInput
    GetCatalogItemOutput.add_member(:catalog_item, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItem, name: "CatalogItem"))
    GetCatalogItemOutput.type = Types::GetCatalogItemOutput
    GetConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    GetConnectionResponse.add_member(:connection_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDetails, name: "ConnectionDetails"))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GetOrderInput.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOrderInput.type = Types::GetOrderInput
    GetOrderOutput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "Order"))
    GetOrderOutput.type = Types::GetOrderOutput
    GetOutpostBillingInformationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetOutpostBillingInformationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetOutpostBillingInformationInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostBillingInformationInput.type = Types::GetOutpostBillingInformationInput
    GetOutpostBillingInformationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetOutpostBillingInformationOutput.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "Subscriptions"))
    GetOutpostBillingInformationOutput.add_member(:contract_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContractEndDate"))
    GetOutpostBillingInformationOutput.type = Types::GetOutpostBillingInformationOutput
    GetOutpostInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostInput.type = Types::GetOutpostInput
    GetOutpostInstanceTypesInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostInstanceTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetOutpostInstanceTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetOutpostInstanceTypesInput.type = Types::GetOutpostInstanceTypesInput
    GetOutpostInstanceTypesOutput.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeListDefinition, name: "InstanceTypes"))
    GetOutpostInstanceTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetOutpostInstanceTypesOutput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId"))
    GetOutpostInstanceTypesOutput.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    GetOutpostInstanceTypesOutput.type = Types::GetOutpostInstanceTypesOutput
    GetOutpostOutput.add_member(:outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: Outpost, name: "Outpost"))
    GetOutpostOutput.type = Types::GetOutpostOutput
    GetOutpostSupportedInstanceTypesInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostSupportedInstanceTypesInput.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId", traits: {"smithy.api#httpQuery" => "OrderId"}))
    GetOutpostSupportedInstanceTypesInput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetIdInput, name: "AssetId", traits: {"smithy.api#httpQuery" => "AssetId"}))
    GetOutpostSupportedInstanceTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetOutpostSupportedInstanceTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetOutpostSupportedInstanceTypesInput.type = Types::GetOutpostSupportedInstanceTypesInput
    GetOutpostSupportedInstanceTypesOutput.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeListDefinition, name: "InstanceTypes"))
    GetOutpostSupportedInstanceTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetOutpostSupportedInstanceTypesOutput.type = Types::GetOutpostSupportedInstanceTypesOutput
    GetSiteAddressInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSiteAddressInput.add_member(:address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressType, name: "AddressType", traits: {"smithy.api#httpQuery" => "AddressType", "smithy.api#required" => {}}))
    GetSiteAddressInput.type = Types::GetSiteAddressInput
    GetSiteAddressOutput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    GetSiteAddressOutput.add_member(:address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressType, name: "AddressType"))
    GetSiteAddressOutput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    GetSiteAddressOutput.type = Types::GetSiteAddressOutput
    GetSiteInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSiteInput.type = Types::GetSiteInput
    GetSiteOutput.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    GetSiteOutput.type = Types::GetSiteOutput
    HostIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HostId, name: "member"))
    InstanceFamilies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFamilyName, name: "member"))
    InstanceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "member"))
    InstanceTypeCapacity.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeName, name: "InstanceType", traits: {"smithy.api#required" => {}}))
    InstanceTypeCapacity.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeCount, name: "Count", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    InstanceTypeCapacity.type = Types::InstanceTypeCapacity
    InstanceTypeItem.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    InstanceTypeItem.add_member(:vcp_us, ::Smithy::Schema::Shapes::MemberShape.new(target: VCPUCount, name: "VCPUs"))
    InstanceTypeItem.type = Types::InstanceTypeItem
    InstanceTypeListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeItem, name: "member"))
    InstancesToExclude.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdList, name: "Instances"))
    InstancesToExclude.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    InstancesToExclude.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSServiceNameList, name: "Services"))
    InstancesToExclude.type = Types::InstancesToExclude
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    LifeCycleStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleStatus, name: "member"))
    LineItem.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SkuCode, name: "CatalogItemId"))
    LineItem.add_member(:line_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemId, name: "LineItemId"))
    LineItem.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemQuantity, name: "Quantity"))
    LineItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemStatus, name: "Status"))
    LineItem.add_member(:shipment_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ShipmentInformation, name: "ShipmentInformation"))
    LineItem.add_member(:asset_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemAssetInformationList, name: "AssetInformationList"))
    LineItem.add_member(:previous_line_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemId, name: "PreviousLineItemId"))
    LineItem.add_member(:previous_order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "PreviousOrderId"))
    LineItem.type = Types::LineItem
    LineItemAssetInformation.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId"))
    LineItemAssetInformation.add_member(:mac_address_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAddressList, name: "MacAddressList"))
    LineItemAssetInformation.type = Types::LineItemAssetInformation
    LineItemAssetInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemAssetInformation, name: "member"))
    LineItemListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItem, name: "member"))
    LineItemRequest.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SkuCode, name: "CatalogItemId"))
    LineItemRequest.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemQuantity, name: "Quantity"))
    LineItemRequest.type = Types::LineItemRequest
    LineItemRequestListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemRequest, name: "member"))
    LineItemStatus.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    LineItemStatus.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILDING", traits: {"smithy.api#enumValue" => "BUILDING"}))
    LineItemStatus.add_member(:shipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIPPED", traits: {"smithy.api#enumValue" => "SHIPPED"}))
    LineItemStatus.add_member(:delivered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERED", traits: {"smithy.api#enumValue" => "DELIVERED"}))
    LineItemStatus.add_member(:installing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALLING", traits: {"smithy.api#enumValue" => "INSTALLING"}))
    LineItemStatus.add_member(:installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALLED", traits: {"smithy.api#enumValue" => "INSTALLED"}))
    LineItemStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LineItemStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    LineItemStatus.add_member(:replaced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACED", traits: {"smithy.api#enumValue" => "REPLACED"}))
    LineItemStatusCounts.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemStatus, name: "key"))
    LineItemStatusCounts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemQuantity, name: "value"))
    ListAssetInstancesInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetInstancesInput.add_member(:asset_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetIdList, name: "AssetIdFilter", traits: {"smithy.api#httpQuery" => "AssetIdFilter"}))
    ListAssetInstancesInput.add_member(:instance_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceTypeList, name: "InstanceTypeFilter", traits: {"smithy.api#httpQuery" => "InstanceTypeFilter"}))
    ListAssetInstancesInput.add_member(:account_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIdFilter", traits: {"smithy.api#httpQuery" => "AccountIdFilter"}))
    ListAssetInstancesInput.add_member(:aws_service_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSServiceNameList, name: "AwsServiceFilter", traits: {"smithy.api#httpQuery" => "AwsServiceFilter"}))
    ListAssetInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListAssetInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAssetInstancesInput.type = Types::ListAssetInstancesInput
    ListAssetInstancesOutput.add_member(:asset_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetInstanceList, name: "AssetInstances"))
    ListAssetInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAssetInstancesOutput.type = Types::ListAssetInstancesOutput
    ListAssetsInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetsInput.add_member(:host_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: HostIdList, name: "HostIdFilter", traits: {"smithy.api#httpQuery" => "HostIdFilter"}))
    ListAssetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListAssetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAssetsInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusList, name: "StatusFilter", traits: {"smithy.api#httpQuery" => "StatusFilter"}))
    ListAssetsInput.type = Types::ListAssetsInput
    ListAssetsOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetListDefinition, name: "Assets"))
    ListAssetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAssetsOutput.type = Types::ListAssetsOutput
    ListBlockingInstancesForCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBlockingInstancesForCapacityTaskInput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskId, name: "CapacityTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBlockingInstancesForCapacityTaskInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListBlockingInstancesForCapacityTaskInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBlockingInstancesForCapacityTaskInput.type = Types::ListBlockingInstancesForCapacityTaskInput
    ListBlockingInstancesForCapacityTaskOutput.add_member(:blocking_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockingInstancesList, name: "BlockingInstances"))
    ListBlockingInstancesForCapacityTaskOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListBlockingInstancesForCapacityTaskOutput.type = Types::ListBlockingInstancesForCapacityTaskOutput
    ListCapacityTasksInput.add_member(:outpost_identifier_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifierFilter", traits: {"smithy.api#httpQuery" => "OutpostIdentifierFilter"}))
    ListCapacityTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCapacityTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCapacityTasksInput.add_member(:capacity_task_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskStatusList, name: "CapacityTaskStatusFilter", traits: {"smithy.api#httpQuery" => "CapacityTaskStatusFilter"}))
    ListCapacityTasksInput.type = Types::ListCapacityTasksInput
    ListCapacityTasksOutput.add_member(:capacity_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskList, name: "CapacityTasks"))
    ListCapacityTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCapacityTasksOutput.type = Types::ListCapacityTasksOutput
    ListCatalogItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCatalogItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCatalogItemsInput.add_member(:item_class_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItemClassList, name: "ItemClassFilter", traits: {"smithy.api#httpQuery" => "ItemClassFilter"}))
    ListCatalogItemsInput.add_member(:supported_storage_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedStorageList, name: "SupportedStorageFilter", traits: {"smithy.api#httpQuery" => "SupportedStorageFilter"}))
    ListCatalogItemsInput.add_member(:ec2_family_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2FamilyList, name: "EC2FamilyFilter", traits: {"smithy.api#httpQuery" => "EC2FamilyFilter"}))
    ListCatalogItemsInput.type = Types::ListCatalogItemsInput
    ListCatalogItemsOutput.add_member(:catalog_items, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItemListDefinition, name: "CatalogItems"))
    ListCatalogItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCatalogItemsOutput.type = Types::ListCatalogItemsOutput
    ListOrdersInput.add_member(:outpost_identifier_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifierFilter", traits: {"smithy.api#httpQuery" => "OutpostIdentifierFilter"}))
    ListOrdersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOrdersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOrdersInput.type = Types::ListOrdersInput
    ListOrdersOutput.add_member(:orders, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderSummaryListDefinition, name: "Orders"))
    ListOrdersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListOrdersOutput.type = Types::ListOrdersOutput
    ListOutpostsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOutpostsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOutpostsInput.add_member(:life_cycle_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleStatusList, name: "LifeCycleStatusFilter", traits: {"smithy.api#httpQuery" => "LifeCycleStatusFilter"}))
    ListOutpostsInput.add_member(:availability_zone_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZoneFilter", traits: {"smithy.api#httpQuery" => "AvailabilityZoneFilter"}))
    ListOutpostsInput.add_member(:availability_zone_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneIdList, name: "AvailabilityZoneIdFilter", traits: {"smithy.api#httpQuery" => "AvailabilityZoneIdFilter"}))
    ListOutpostsInput.type = Types::ListOutpostsInput
    ListOutpostsOutput.add_member(:outposts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostListDefinition, name: "Outposts"))
    ListOutpostsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListOutpostsOutput.type = Types::ListOutpostsOutput
    ListSitesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSitesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults1000, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSitesInput.add_member(:operating_address_country_code_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeList, name: "OperatingAddressCountryCodeFilter", traits: {"smithy.api#httpQuery" => "OperatingAddressCountryCodeFilter"}))
    ListSitesInput.add_member(:operating_address_state_or_region_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StateOrRegionList, name: "OperatingAddressStateOrRegionFilter", traits: {"smithy.api#httpQuery" => "OperatingAddressStateOrRegionFilter"}))
    ListSitesInput.add_member(:operating_address_city_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CityList, name: "OperatingAddressCityFilter", traits: {"smithy.api#httpQuery" => "OperatingAddressCityFilter"}))
    ListSitesInput.type = Types::ListSitesInput
    ListSitesOutput.add_member(:sites, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteListDefinition, name: "Sites"))
    ListSitesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListSitesOutput.type = Types::ListSitesOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MacAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAddress, name: "member"))
    MaximumSupportedWeightLbs.add_member(:no_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_LIMIT", traits: {"smithy.api#enumValue" => "NO_LIMIT"}))
    MaximumSupportedWeightLbs.add_member(:max_1400_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_1400_LBS", traits: {"smithy.api#enumValue" => "MAX_1400_LBS"}))
    MaximumSupportedWeightLbs.add_member(:max_1600_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_1600_LBS", traits: {"smithy.api#enumValue" => "MAX_1600_LBS"}))
    MaximumSupportedWeightLbs.add_member(:max_1800_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_1800_LBS", traits: {"smithy.api#enumValue" => "MAX_1800_LBS"}))
    MaximumSupportedWeightLbs.add_member(:max_2000_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_2000_LBS", traits: {"smithy.api#enumValue" => "MAX_2000_LBS"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    OpticalStandard.add_member(:optic_10_gbase_sr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_10GBASE_SR", traits: {"smithy.api#enumValue" => "OPTIC_10GBASE_SR"}))
    OpticalStandard.add_member(:optic_10_gbase_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_10GBASE_IR", traits: {"smithy.api#enumValue" => "OPTIC_10GBASE_IR"}))
    OpticalStandard.add_member(:optic_10_gbase_lr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_10GBASE_LR", traits: {"smithy.api#enumValue" => "OPTIC_10GBASE_LR"}))
    OpticalStandard.add_member(:optic_40_gbase_sr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_40GBASE_SR", traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_SR"}))
    OpticalStandard.add_member(:optic_40_gbase_esr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_40GBASE_ESR", traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_ESR"}))
    OpticalStandard.add_member(:optic_40_gbase_ir4_lr4_l, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_40GBASE_IR4_LR4L", traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_IR4_LR4L"}))
    OpticalStandard.add_member(:optic_40_gbase_lr4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_40GBASE_LR4", traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_LR4"}))
    OpticalStandard.add_member(:optic_100_gbase_sr4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_100GBASE_SR4", traits: {"smithy.api#enumValue" => "OPTIC_100GBASE_SR4"}))
    OpticalStandard.add_member(:optic_100_gbase_cwdm4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_100GBASE_CWDM4", traits: {"smithy.api#enumValue" => "OPTIC_100GBASE_CWDM4"}))
    OpticalStandard.add_member(:optic_100_gbase_lr4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_100GBASE_LR4", traits: {"smithy.api#enumValue" => "OPTIC_100GBASE_LR4"}))
    OpticalStandard.add_member(:optic_100_g_psm4_msa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_100G_PSM4_MSA", traits: {"smithy.api#enumValue" => "OPTIC_100G_PSM4_MSA"}))
    OpticalStandard.add_member(:optic_1000_base_lx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_1000BASE_LX", traits: {"smithy.api#enumValue" => "OPTIC_1000BASE_LX"}))
    OpticalStandard.add_member(:optic_1000_base_sx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIC_1000BASE_SX", traits: {"smithy.api#enumValue" => "OPTIC_1000BASE_SX"}))
    Order.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdOnly, name: "OutpostId"))
    Order.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId"))
    Order.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderStatus, name: "Status"))
    Order.add_member(:line_items, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemListDefinition, name: "LineItems"))
    Order.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentOption, name: "PaymentOption"))
    Order.add_member(:order_submission_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "OrderSubmissionDate"))
    Order.add_member(:order_fulfilled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "OrderFulfilledDate"))
    Order.add_member(:payment_term, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentTerm, name: "PaymentTerm"))
    Order.add_member(:order_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "OrderType"))
    Order.type = Types::Order
    OrderIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    OrderStatus.add_member(:received, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVED", traits: {"smithy.api#enumValue" => "RECEIVED"}))
    OrderStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    OrderStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    OrderStatus.add_member(:installing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALLING", traits: {"smithy.api#enumValue" => "INSTALLING"}))
    OrderStatus.add_member(:fulfilled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULFILLED", traits: {"smithy.api#enumValue" => "FULFILLED"}))
    OrderStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    OrderStatus.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    OrderStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OrderStatus.add_member(:delivered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERED", traits: {"smithy.api#enumValue" => "DELIVERED"}))
    OrderStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OrderStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    OrderSummary.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdOnly, name: "OutpostId"))
    OrderSummary.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId"))
    OrderSummary.add_member(:order_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "OrderType"))
    OrderSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderStatus, name: "Status"))
    OrderSummary.add_member(:line_item_counts_by_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemStatusCounts, name: "LineItemCountsByStatus"))
    OrderSummary.add_member(:order_submission_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "OrderSubmissionDate"))
    OrderSummary.add_member(:order_fulfilled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "OrderFulfilledDate"))
    OrderSummary.type = Types::OrderSummary
    OrderSummaryListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderSummary, name: "member"))
    OrderType.add_member(:outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPOST", traits: {"smithy.api#enumValue" => "OUTPOST"}))
    OrderType.add_member(:replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACEMENT", traits: {"smithy.api#enumValue" => "REPLACEMENT"}))
    Outpost.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId"))
    Outpost.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "OwnerId"))
    Outpost.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    Outpost.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    Outpost.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostName, name: "Name"))
    Outpost.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostDescription, name: "Description"))
    Outpost.add_member(:life_cycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleStatus, name: "LifeCycleStatus"))
    Outpost.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    Outpost.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    Outpost.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    Outpost.add_member(:site_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteArn, name: "SiteArn"))
    Outpost.add_member(:supported_hardware_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedHardwareType, name: "SupportedHardwareType"))
    Outpost.type = Types::Outpost
    OutpostInstanceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "member"))
    PaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_UPFRONT", traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    PaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_UPFRONT", traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    PaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_UPFRONT", traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    PaymentTerm.add_member(:three_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_YEARS", traits: {"smithy.api#enumValue" => "THREE_YEARS"}))
    PaymentTerm.add_member(:one_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_YEAR", traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    PaymentTerm.add_member(:five_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIVE_YEARS", traits: {"smithy.api#enumValue" => "FIVE_YEARS"}))
    PowerConnector.add_member(:l6_30_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L6_30P", traits: {"smithy.api#enumValue" => "L6_30P"}))
    PowerConnector.add_member(:iec309, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IEC309", traits: {"smithy.api#enumValue" => "IEC309"}))
    PowerConnector.add_member(:ah530_p7_w, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AH530P7W", traits: {"smithy.api#enumValue" => "AH530P7W"}))
    PowerConnector.add_member(:ah532_p6_w, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AH532P6W", traits: {"smithy.api#enumValue" => "AH532P6W"}))
    PowerConnector.add_member(:cs8365_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CS8365C", traits: {"smithy.api#enumValue" => "CS8365C"}))
    PowerDrawKva.add_member(:power_5_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POWER_5_KVA", traits: {"smithy.api#enumValue" => "POWER_5_KVA"}))
    PowerDrawKva.add_member(:power_10_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POWER_10_KVA", traits: {"smithy.api#enumValue" => "POWER_10_KVA"}))
    PowerDrawKva.add_member(:power_15_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POWER_15_KVA", traits: {"smithy.api#enumValue" => "POWER_15_KVA"}))
    PowerDrawKva.add_member(:power_30_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POWER_30_KVA", traits: {"smithy.api#enumValue" => "POWER_30_KVA"}))
    PowerFeedDrop.add_member(:above_rack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABOVE_RACK", traits: {"smithy.api#enumValue" => "ABOVE_RACK"}))
    PowerFeedDrop.add_member(:below_rack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BELOW_RACK", traits: {"smithy.api#enumValue" => "BELOW_RACK"}))
    PowerPhase.add_member(:single_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_PHASE", traits: {"smithy.api#enumValue" => "SINGLE_PHASE"}))
    PowerPhase.add_member(:three_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_PHASE", traits: {"smithy.api#enumValue" => "THREE_PHASE"}))
    RackPhysicalProperties.add_member(:power_draw_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerDrawKva, name: "PowerDrawKva"))
    RackPhysicalProperties.add_member(:power_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerPhase, name: "PowerPhase"))
    RackPhysicalProperties.add_member(:power_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerConnector, name: "PowerConnector"))
    RackPhysicalProperties.add_member(:power_feed_drop, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerFeedDrop, name: "PowerFeedDrop"))
    RackPhysicalProperties.add_member(:uplink_gbps, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkGbps, name: "UplinkGbps"))
    RackPhysicalProperties.add_member(:uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkCount, name: "UplinkCount"))
    RackPhysicalProperties.add_member(:fiber_optic_cable_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FiberOpticCableType, name: "FiberOpticCableType"))
    RackPhysicalProperties.add_member(:optical_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: OpticalStandard, name: "OpticalStandard"))
    RackPhysicalProperties.add_member(:maximum_supported_weight_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumSupportedWeightLbs, name: "MaximumSupportedWeightLbs"))
    RackPhysicalProperties.type = Types::RackPhysicalProperties
    RequestedInstancePools.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeCapacity, name: "member"))
    ResourceType.add_member(:outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPOST", traits: {"smithy.api#enumValue" => "OUTPOST"}))
    ResourceType.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORDER", traits: {"smithy.api#enumValue" => "ORDER"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShipmentCarrier.add_member(:dhl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DHL", traits: {"smithy.api#enumValue" => "DHL"}))
    ShipmentCarrier.add_member(:dbs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBS", traits: {"smithy.api#enumValue" => "DBS"}))
    ShipmentCarrier.add_member(:fedex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEDEX", traits: {"smithy.api#enumValue" => "FEDEX"}))
    ShipmentCarrier.add_member(:ups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPS", traits: {"smithy.api#enumValue" => "UPS"}))
    ShipmentCarrier.add_member(:expeditors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPEDITORS", traits: {"smithy.api#enumValue" => "EXPEDITORS"}))
    ShipmentInformation.add_member(:shipment_tracking_number, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingId, name: "ShipmentTrackingNumber"))
    ShipmentInformation.add_member(:shipment_carrier, ::Smithy::Schema::Shapes::MemberShape.new(target: ShipmentCarrier, name: "ShipmentCarrier"))
    ShipmentInformation.type = Types::ShipmentInformation
    Site.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId"))
    Site.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    Site.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteName, name: "Name"))
    Site.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteDescription, name: "Description"))
    Site.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    Site.add_member(:site_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteArn, name: "SiteArn"))
    Site.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteNotes, name: "Notes"))
    Site.add_member(:operating_address_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "OperatingAddressCountryCode"))
    Site.add_member(:operating_address_state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: StateOrRegion, name: "OperatingAddressStateOrRegion"))
    Site.add_member(:operating_address_city, ::Smithy::Schema::Shapes::MemberShape.new(target: City, name: "OperatingAddressCity"))
    Site.add_member(:rack_physical_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RackPhysicalProperties, name: "RackPhysicalProperties"))
    Site.type = Types::Site
    StartCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostIdentifier, name: "OutpostIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCapacityTaskInput.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId"))
    StartCapacityTaskInput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetIdInput, name: "AssetId"))
    StartCapacityTaskInput.add_member(:instance_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedInstancePools, name: "InstancePools", traits: {"smithy.api#required" => {}}))
    StartCapacityTaskInput.add_member(:instances_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToExclude, name: "InstancesToExclude"))
    StartCapacityTaskInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DryRun, name: "DryRun", traits: {"smithy.api#default" => false}))
    StartCapacityTaskInput.add_member(:task_action_on_blocking_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskActionOnBlockingInstances, name: "TaskActionOnBlockingInstances"))
    StartCapacityTaskInput.type = Types::StartCapacityTaskInput
    StartCapacityTaskOutput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskId, name: "CapacityTaskId"))
    StartCapacityTaskOutput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId"))
    StartCapacityTaskOutput.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderId, name: "OrderId"))
    StartCapacityTaskOutput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId"))
    StartCapacityTaskOutput.add_member(:requested_instance_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedInstancePools, name: "RequestedInstancePools"))
    StartCapacityTaskOutput.add_member(:instances_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToExclude, name: "InstancesToExclude"))
    StartCapacityTaskOutput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DryRun, name: "DryRun", traits: {"smithy.api#default" => false}))
    StartCapacityTaskOutput.add_member(:capacity_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskStatus, name: "CapacityTaskStatus"))
    StartCapacityTaskOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTaskFailure, name: "Failed"))
    StartCapacityTaskOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "CreationDate"))
    StartCapacityTaskOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "CompletionDate"))
    StartCapacityTaskOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "LastModifiedDate"))
    StartCapacityTaskOutput.add_member(:task_action_on_blocking_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskActionOnBlockingInstances, name: "TaskActionOnBlockingInstances"))
    StartCapacityTaskOutput.type = Types::StartCapacityTaskOutput
    StartConnectionRequest.add_member(:device_serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSerialNumber, name: "DeviceSerialNumber"))
    StartConnectionRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetId, name: "AssetId", traits: {"smithy.api#required" => {}}))
    StartConnectionRequest.add_member(:client_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WireGuardPublicKey, name: "ClientPublicKey", traits: {"smithy.api#required" => {}}))
    StartConnectionRequest.add_member(:network_interface_device_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceDeviceIndex, name: "NetworkInterfaceDeviceIndex", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartConnectionRequest.type = Types::StartConnectionRequest
    StartConnectionResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    StartConnectionResponse.add_member(:underlay_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: UnderlayIpAddress, name: "UnderlayIpAddress"))
    StartConnectionResponse.type = Types::StartConnectionResponse
    StateOrRegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StateOrRegion, name: "member"))
    StatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetState, name: "member"))
    Subscription.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionId"))
    Subscription.add_member(:subscription_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionType, name: "SubscriptionType"))
    Subscription.add_member(:subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "SubscriptionStatus"))
    Subscription.add_member(:order_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderIdList, name: "OrderIds"))
    Subscription.add_member(:begin_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "BeginDate"))
    Subscription.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Timestamp, name: "EndDate"))
    Subscription.add_member(:monthly_recurring_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "MonthlyRecurringPrice"))
    Subscription.add_member(:upfront_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableDouble, name: "UpfrontPrice"))
    Subscription.type = Types::Subscription
    SubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "member"))
    SubscriptionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SubscriptionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    SubscriptionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SubscriptionType.add_member(:original, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGINAL", traits: {"smithy.api#enumValue" => "ORIGINAL"}))
    SubscriptionType.add_member(:renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEWAL", traits: {"smithy.api#enumValue" => "RENEWAL"}))
    SubscriptionType.add_member(:capacity_increase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_INCREASE", traits: {"smithy.api#enumValue" => "CAPACITY_INCREASE"}))
    SupportedHardwareType.add_member(:rack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RACK", traits: {"smithy.api#enumValue" => "RACK"}))
    SupportedHardwareType.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER", traits: {"smithy.api#enumValue" => "SERVER"}))
    SupportedStorageEnum.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS", traits: {"smithy.api#enumValue" => "EBS"}))
    SupportedStorageEnum.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    SupportedStorageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedStorageEnum, name: "member"))
    SupportedUplinkGbpsListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedUplinkGbps, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskActionOnBlockingInstances.add_member(:wait_for_evacuation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAIT_FOR_EVACUATION", traits: {"smithy.api#enumValue" => "WAIT_FOR_EVACUATION"}))
    TaskActionOnBlockingInstances.add_member(:fail_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL_TASK", traits: {"smithy.api#enumValue" => "FAIL_TASK"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateOutpostInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, name: "OutpostId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOutpostInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostName, name: "Name"))
    UpdateOutpostInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostDescription, name: "Description"))
    UpdateOutpostInput.add_member(:supported_hardware_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedHardwareType, name: "SupportedHardwareType"))
    UpdateOutpostInput.type = Types::UpdateOutpostInput
    UpdateOutpostOutput.add_member(:outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: Outpost, name: "Outpost"))
    UpdateOutpostOutput.type = Types::UpdateOutpostOutput
    UpdateSiteAddressInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteAddressInput.add_member(:address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressType, name: "AddressType", traits: {"smithy.api#required" => {}}))
    UpdateSiteAddressInput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    UpdateSiteAddressInput.type = Types::UpdateSiteAddressInput
    UpdateSiteAddressOutput.add_member(:address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressType, name: "AddressType"))
    UpdateSiteAddressOutput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    UpdateSiteAddressOutput.type = Types::UpdateSiteAddressOutput
    UpdateSiteInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteName, name: "Name"))
    UpdateSiteInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteDescription, name: "Description"))
    UpdateSiteInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteNotes, name: "Notes"))
    UpdateSiteInput.type = Types::UpdateSiteInput
    UpdateSiteOutput.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    UpdateSiteOutput.type = Types::UpdateSiteOutput
    UpdateSiteRackPhysicalPropertiesInput.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_draw_kva, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerDrawKva, name: "PowerDrawKva"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerPhase, name: "PowerPhase"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerConnector, name: "PowerConnector"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_feed_drop, ::Smithy::Schema::Shapes::MemberShape.new(target: PowerFeedDrop, name: "PowerFeedDrop"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:uplink_gbps, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkGbps, name: "UplinkGbps"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkCount, name: "UplinkCount"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:fiber_optic_cable_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FiberOpticCableType, name: "FiberOpticCableType"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:optical_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: OpticalStandard, name: "OpticalStandard"))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:maximum_supported_weight_lbs, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumSupportedWeightLbs, name: "MaximumSupportedWeightLbs"))
    UpdateSiteRackPhysicalPropertiesInput.type = Types::UpdateSiteRackPhysicalPropertiesInput
    UpdateSiteRackPhysicalPropertiesOutput.add_member(:site, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "Site"))
    UpdateSiteRackPhysicalPropertiesOutput.type = Types::UpdateSiteRackPhysicalPropertiesOutput
    UplinkCount.add_member(:uplink_count_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_1", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_1"}))
    UplinkCount.add_member(:uplink_count_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_2", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_2"}))
    UplinkCount.add_member(:uplink_count_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_3", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_3"}))
    UplinkCount.add_member(:uplink_count_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_4", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_4"}))
    UplinkCount.add_member(:uplink_count_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_5", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_5"}))
    UplinkCount.add_member(:uplink_count_6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_6", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_6"}))
    UplinkCount.add_member(:uplink_count_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_7", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_7"}))
    UplinkCount.add_member(:uplink_count_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_8", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_8"}))
    UplinkCount.add_member(:uplink_count_12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_12", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_12"}))
    UplinkCount.add_member(:uplink_count_16, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_COUNT_16", traits: {"smithy.api#enumValue" => "UPLINK_COUNT_16"}))
    UplinkGbps.add_member(:uplink_1_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_1G", traits: {"smithy.api#enumValue" => "UPLINK_1G"}))
    UplinkGbps.add_member(:uplink_10_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_10G", traits: {"smithy.api#enumValue" => "UPLINK_10G"}))
    UplinkGbps.add_member(:uplink_40_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_40G", traits: {"smithy.api#enumValue" => "UPLINK_40G"}))
    UplinkGbps.add_member(:uplink_100_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_100G", traits: {"smithy.api#enumValue" => "UPLINK_100G"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException
    OutpostListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Outpost, name: "member"))
    SiteListDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Site, name: "member"))

    OutpostsOlafService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.outposts#OutpostsOlafService"
      service.name = "OutpostsOlafService"
      service.version = "2019-12-03"
      service.traits = {"aws.api#service" => {"sdkId" => "Outposts", "arnNamespace" => "outposts", "cloudFormationName" => "Outposts", "cloudTrailEventSource" => "outposts.amazonaws.com", "endpointPrefix" => "outposts"}, "aws.auth#sigv4" => {"name" => "outposts"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Outposts"}
      service.add_operation(:cancel_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CancelCapacityTask"
        operation.name = "CancelCapacityTask"
        operation.input = CancelCapacityTaskInput
        operation.output = CancelCapacityTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}", "code" => 200}}
      end)
      service.add_operation(:cancel_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CancelOrder"
        operation.name = "CancelOrder"
        operation.input = CancelOrderInput
        operation.output = CancelOrderOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orders/{OrderId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CreateOrder"
        operation.name = "CreateOrder"
        operation.input = CreateOrderInput
        operation.output = CreateOrderOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orders", "code" => 200}}
      end)
      service.add_operation(:create_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CreateOutpost"
        operation.name = "CreateOutpost"
        operation.input = CreateOutpostInput
        operation.output = CreateOutpostOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/outposts", "code" => 200}}
      end)
      service.add_operation(:create_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CreateSite"
        operation.name = "CreateSite"
        operation.input = CreateSiteInput
        operation.output = CreateSiteOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sites", "code" => 200}}
      end)
      service.add_operation(:delete_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#DeleteOutpost"
        operation.name = "DeleteOutpost"
        operation.input = DeleteOutpostInput
        operation.output = DeleteOutpostOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/outposts/{OutpostId}", "code" => 200}}
      end)
      service.add_operation(:delete_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#DeleteSite"
        operation.name = "DeleteSite"
        operation.input = DeleteSiteInput
        operation.output = DeleteSiteOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:get_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetCapacityTask"
        operation.name = "GetCapacityTask"
        operation.input = GetCapacityTaskInput
        operation.output = GetCapacityTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}", "code" => 200}}
      end)
      service.add_operation(:get_catalog_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetCatalogItem"
        operation.name = "GetCatalogItem"
        operation.input = GetCatalogItemInput
        operation.output = GetCatalogItemOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog/item/{CatalogItemId}", "code" => 200}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetConnection"
        operation.name = "GetConnection"
        operation.input = GetConnectionRequest
        operation.output = GetConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:get_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOrder"
        operation.name = "GetOrder"
        operation.input = GetOrderInput
        operation.output = GetOrderOutput
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/orders/{OrderId}", "code" => 200}}
      end)
      service.add_operation(:get_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpost"
        operation.name = "GetOutpost"
        operation.input = GetOutpostInput
        operation.output = GetOutpostOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostId}", "code" => 200}}
      end)
      service.add_operation(:get_outpost_billing_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpostBillingInformation"
        operation.name = "GetOutpostBillingInformation"
        operation.input = GetOutpostBillingInformationInput
        operation.output = GetOutpostBillingInformationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outpost/{OutpostIdentifier}/billing-information", "code" => 200}}
        operation[:paginator] = Paginators::GetOutpostBillingInformation.new
      end)
      service.add_operation(:get_outpost_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpostInstanceTypes"
        operation.name = "GetOutpostInstanceTypes"
        operation.input = GetOutpostInstanceTypesInput
        operation.output = GetOutpostInstanceTypesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostId}/instanceTypes", "code" => 200}}
        operation[:paginator] = Paginators::GetOutpostInstanceTypes.new
      end)
      service.add_operation(:get_outpost_supported_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpostSupportedInstanceTypes"
        operation.name = "GetOutpostSupportedInstanceTypes"
        operation.input = GetOutpostSupportedInstanceTypesInput
        operation.output = GetOutpostSupportedInstanceTypesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/supportedInstanceTypes", "code" => 200}}
        operation[:paginator] = Paginators::GetOutpostSupportedInstanceTypes.new
      end)
      service.add_operation(:get_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetSite"
        operation.name = "GetSite"
        operation.input = GetSiteInput
        operation.output = GetSiteOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:get_site_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetSiteAddress"
        operation.name = "GetSiteAddress"
        operation.input = GetSiteAddressInput
        operation.output = GetSiteAddressOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sites/{SiteId}/address", "code" => 200}}
      end)
      service.add_operation(:list_asset_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListAssetInstances"
        operation.name = "ListAssetInstances"
        operation.input = ListAssetInstancesInput
        operation.output = ListAssetInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/assetInstances", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetInstances.new
      end)
      service.add_operation(:list_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListAssets"
        operation.name = "ListAssets"
        operation.input = ListAssetsInput
        operation.output = ListAssetsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListAssets.new
      end)
      service.add_operation(:list_blocking_instances_for_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListBlockingInstancesForCapacityTask"
        operation.name = "ListBlockingInstancesForCapacityTask"
        operation.input = ListBlockingInstancesForCapacityTaskInput
        operation.output = ListBlockingInstancesForCapacityTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}/blockingInstances", "code" => 200}}
        operation[:paginator] = Paginators::ListBlockingInstancesForCapacityTask.new
      end)
      service.add_operation(:list_capacity_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListCapacityTasks"
        operation.name = "ListCapacityTasks"
        operation.input = ListCapacityTasksInput
        operation.output = ListCapacityTasksOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/capacity/tasks", "code" => 200}}
        operation[:paginator] = Paginators::ListCapacityTasks.new
      end)
      service.add_operation(:list_catalog_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListCatalogItems"
        operation.name = "ListCatalogItems"
        operation.input = ListCatalogItemsInput
        operation.output = ListCatalogItemsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog/items", "code" => 200}}
        operation[:paginator] = Paginators::ListCatalogItems.new
      end)
      service.add_operation(:list_orders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListOrders"
        operation.name = "ListOrders"
        operation.input = ListOrdersInput
        operation.output = ListOrdersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-orders", "code" => 200}}
        operation[:paginator] = Paginators::ListOrders.new
      end)
      service.add_operation(:list_outposts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListOutposts"
        operation.name = "ListOutposts"
        operation.input = ListOutpostsInput
        operation.output = ListOutpostsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts", "code" => 200}}
        operation[:paginator] = Paginators::ListOutposts.new
      end)
      service.add_operation(:list_sites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListSites"
        operation.name = "ListSites"
        operation.input = ListSitesInput
        operation.output = ListSitesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sites", "code" => 200}}
        operation[:paginator] = Paginators::ListSites.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#StartCapacityTask"
        operation.name = "StartCapacityTask"
        operation.input = StartCapacityTaskInput
        operation.output = StartCapacityTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/outposts/{OutpostIdentifier}/capacity", "code" => 200}}
      end)
      service.add_operation(:start_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#StartConnection"
        operation.name = "StartConnection"
        operation.input = StartConnectionRequest
        operation.output = StartConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connections", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateOutpost"
        operation.name = "UpdateOutpost"
        operation.input = UpdateOutpostInput
        operation.output = UpdateOutpostOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/outposts/{OutpostId}", "code" => 200}}
      end)
      service.add_operation(:update_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateSite"
        operation.name = "UpdateSite"
        operation.input = UpdateSiteInput
        operation.output = UpdateSiteOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:update_site_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateSiteAddress"
        operation.name = "UpdateSiteAddress"
        operation.input = UpdateSiteAddressInput
        operation.output = UpdateSiteAddressOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sites/{SiteId}/address", "code" => 200}}
      end)
      service.add_operation(:update_site_rack_physical_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateSiteRackPhysicalProperties"
        operation.name = "UpdateSiteRackPhysicalProperties"
        operation.input = UpdateSiteRackPhysicalPropertiesInput
        operation.output = UpdateSiteRackPhysicalPropertiesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sites/{SiteId}/rackPhysicalProperties", "code" => 200}}
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
