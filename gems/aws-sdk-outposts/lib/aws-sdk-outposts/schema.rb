# frozen_string_literal: true

# This is generated code!

module Aws::Outposts
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#AWSServiceName', name: 'AWSServiceName')
    AWSServiceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AWSServiceNameList', name: 'AWSServiceNameList')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AccountIdList', name: 'AccountIdList')
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#Address', name: 'Address')
    AddressLine1 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AddressLine1', name: 'AddressLine1', traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    AddressLine2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AddressLine2', name: 'AddressLine2', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    AddressLine3 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AddressLine3', name: 'AddressLine3', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    AddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#AddressType', name: 'AddressType')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1011}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:([a-z\\d-]+)/)[a-z]{2,8}-[a-f0-9]{17}$"})
    AssetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AssetId', name: 'AssetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\w+)$"})
    AssetIdInput = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AssetIdInput', name: 'AssetIdInput', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^\\d{10}$"})
    AssetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AssetIdList', name: 'AssetIdList')
    AssetInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#AssetInfo', name: 'AssetInfo')
    AssetInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#AssetInstance', name: 'AssetInstance')
    AssetInstanceCapacityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AssetInstanceCapacityList', name: 'AssetInstanceCapacityList')
    AssetInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AssetInstanceList', name: 'AssetInstanceList')
    AssetInstanceTypeCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#AssetInstanceTypeCapacity', name: 'AssetInstanceTypeCapacity')
    AssetListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AssetListDefinition', name: 'AssetListDefinition')
    AssetLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#AssetLocation', name: 'AssetLocation')
    AssetState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#AssetState', name: 'AssetState')
    AssetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#AssetType', name: 'AssetType')
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AvailabilityZone', name: 'AvailabilityZone', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^([a-zA-Z]+-){1,3}([a-zA-Z]+)?(\\d+[a-zA-Z]?)?$"})
    AvailabilityZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#AvailabilityZoneId', name: 'AvailabilityZoneId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+\\d-[a-zA-Z]+\\d$"})
    AvailabilityZoneIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AvailabilityZoneIdList', name: 'AvailabilityZoneIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#AvailabilityZoneList', name: 'AvailabilityZoneList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    BlockingInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#BlockingInstance', name: 'BlockingInstance')
    BlockingInstancesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#BlockingInstancesList', name: 'BlockingInstancesList')
    CIDR = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#CIDR', name: 'CIDR', traits: {"smithy.api#length" => {"min" => 9, "max" => 18}, "smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$"})
    CIDRList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CIDRList', name: 'CIDRList')
    CancelCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CancelCapacityTaskInput', name: 'CancelCapacityTaskInput')
    CancelCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CancelCapacityTaskOutput', name: 'CancelCapacityTaskOutput')
    CancelOrderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CancelOrderInput', name: 'CancelOrderInput')
    CancelOrderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CancelOrderOutput', name: 'CancelOrderOutput')
    CapacityTaskFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CapacityTaskFailure', name: 'CapacityTaskFailure')
    CapacityTaskFailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#CapacityTaskFailureType', name: 'CapacityTaskFailureType')
    CapacityTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#CapacityTaskId', name: 'CapacityTaskId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^cap-[a-f0-9]{17}$"})
    CapacityTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CapacityTaskList', name: 'CapacityTaskList')
    CapacityTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#CapacityTaskStatus', name: 'CapacityTaskStatus')
    CapacityTaskStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CapacityTaskStatusList', name: 'CapacityTaskStatusList')
    CapacityTaskStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#CapacityTaskStatusReason', name: 'CapacityTaskStatusReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    CapacityTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CapacityTaskSummary', name: 'CapacityTaskSummary')
    CatalogItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CatalogItem', name: 'CatalogItem')
    CatalogItemClass = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#CatalogItemClass', name: 'CatalogItemClass')
    CatalogItemClassList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CatalogItemClassList', name: 'CatalogItemClassList')
    CatalogItemListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CatalogItemListDefinition', name: 'CatalogItemListDefinition')
    CatalogItemPowerKva = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.outposts#CatalogItemPowerKva', name: 'CatalogItemPowerKva')
    CatalogItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#CatalogItemStatus', name: 'CatalogItemStatus')
    CatalogItemWeightLbs = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#CatalogItemWeightLbs', name: 'CatalogItemWeightLbs')
    City = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#City', name: 'City', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    CityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CityList', name: 'CityList')
    ComputeAssetState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#ComputeAssetState', name: 'ComputeAssetState')
    ComputeAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ComputeAttributes', name: 'ComputeAttributes')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ConnectionDetails', name: 'ConnectionDetails')
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#ConnectionId', name: 'ConnectionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]{1,1024}$"})
    ContactName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#ContactName', name: 'ContactName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    ContactPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#ContactPhoneNumber', name: 'ContactPhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\S ]+$"})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#CountryCode', name: 'CountryCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$"})
    CountryCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#CountryCodeList', name: 'CountryCodeList')
    CreateOrderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CreateOrderInput', name: 'CreateOrderInput')
    CreateOrderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CreateOrderOutput', name: 'CreateOrderOutput')
    CreateOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CreateOutpostInput', name: 'CreateOutpostInput')
    CreateOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CreateOutpostOutput', name: 'CreateOutpostOutput')
    CreateSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CreateSiteInput', name: 'CreateSiteInput')
    CreateSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#CreateSiteOutput', name: 'CreateSiteOutput')
    DeleteOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#DeleteOutpostInput', name: 'DeleteOutpostInput')
    DeleteOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#DeleteOutpostOutput', name: 'DeleteOutpostOutput')
    DeleteSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#DeleteSiteInput', name: 'DeleteSiteInput')
    DeleteSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#DeleteSiteOutput', name: 'DeleteSiteOutput')
    DeviceSerialNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#DeviceSerialNumber', name: 'DeviceSerialNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\w+)$"})
    DistrictOrCounty = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#DistrictOrCounty', name: 'DistrictOrCounty', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    DryRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.outposts#DryRun', name: 'DryRun', traits: {"smithy.api#default" => false})
    EC2Capacity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#EC2Capacity', name: 'EC2Capacity')
    EC2CapacityListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#EC2CapacityListDefinition', name: 'EC2CapacityListDefinition')
    EC2FamilyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#EC2FamilyList', name: 'EC2FamilyList')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    Family = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#Family', name: 'Family', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    FiberOpticCableType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#FiberOpticCableType', name: 'FiberOpticCableType')
    GetCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetCapacityTaskInput', name: 'GetCapacityTaskInput')
    GetCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetCapacityTaskOutput', name: 'GetCapacityTaskOutput')
    GetCatalogItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetCatalogItemInput', name: 'GetCatalogItemInput')
    GetCatalogItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetCatalogItemOutput', name: 'GetCatalogItemOutput')
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetConnectionRequest', name: 'GetConnectionRequest')
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetConnectionResponse', name: 'GetConnectionResponse')
    GetOrderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOrderInput', name: 'GetOrderInput')
    GetOrderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOrderOutput', name: 'GetOrderOutput')
    GetOutpostBillingInformationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostBillingInformationInput', name: 'GetOutpostBillingInformationInput')
    GetOutpostBillingInformationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostBillingInformationOutput', name: 'GetOutpostBillingInformationOutput')
    GetOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostInput', name: 'GetOutpostInput')
    GetOutpostInstanceTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostInstanceTypesInput', name: 'GetOutpostInstanceTypesInput')
    GetOutpostInstanceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostInstanceTypesOutput', name: 'GetOutpostInstanceTypesOutput')
    GetOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostOutput', name: 'GetOutpostOutput')
    GetOutpostSupportedInstanceTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostSupportedInstanceTypesInput', name: 'GetOutpostSupportedInstanceTypesInput')
    GetOutpostSupportedInstanceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetOutpostSupportedInstanceTypesOutput', name: 'GetOutpostSupportedInstanceTypesOutput')
    GetSiteAddressInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetSiteAddressInput', name: 'GetSiteAddressInput')
    GetSiteAddressOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetSiteAddressOutput', name: 'GetSiteAddressOutput')
    GetSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetSiteInput', name: 'GetSiteInput')
    GetSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#GetSiteOutput', name: 'GetSiteOutput')
    HostId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#HostId', name: 'HostId', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9-]*$"})
    HostIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#HostIdList', name: 'HostIdList')
    ISO8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.outposts#ISO8601Timestamp', name: 'ISO8601Timestamp')
    InstanceFamilies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#InstanceFamilies', name: 'InstanceFamilies')
    InstanceFamilyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#InstanceFamilyName', name: 'InstanceFamilyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?:.{1,200}/)?(?:[a-z0-9-_A-Z])+$"})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 11, "max" => 32}, "smithy.api#pattern" => "^i-[0-9a-z]+$"})
    InstanceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#InstanceIdList', name: 'InstanceIdList')
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#InstanceType', name: 'InstanceType')
    InstanceTypeCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#InstanceTypeCapacity', name: 'InstanceTypeCapacity')
    InstanceTypeCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#InstanceTypeCount', name: 'InstanceTypeCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 9999}})
    InstanceTypeItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#InstanceTypeItem', name: 'InstanceTypeItem')
    InstanceTypeListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#InstanceTypeListDefinition', name: 'InstanceTypeListDefinition')
    InstanceTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#InstanceTypeName', name: 'InstanceTypeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9\\-]+\\.[a-z0-9\\-]+$"})
    InstancesToExclude = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#InstancesToExclude', name: 'InstancesToExclude')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LifeCycleStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#LifeCycleStatus', name: 'LifeCycleStatus', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[ A-Za-z]+$"})
    LifeCycleStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#LifeCycleStatusList', name: 'LifeCycleStatusList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LineItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#LineItem', name: 'LineItem')
    LineItemAssetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#LineItemAssetInformation', name: 'LineItemAssetInformation')
    LineItemAssetInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#LineItemAssetInformationList', name: 'LineItemAssetInformationList')
    LineItemId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#LineItemId', name: 'LineItemId', traits: {"smithy.api#pattern" => "^ooi-[a-f0-9]{17}$"})
    LineItemListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#LineItemListDefinition', name: 'LineItemListDefinition')
    LineItemQuantity = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#LineItemQuantity', name: 'LineItemQuantity', traits: {"smithy.api#range" => {"min" => 1}})
    LineItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#LineItemRequest', name: 'LineItemRequest')
    LineItemRequestListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#LineItemRequestListDefinition', name: 'LineItemRequestListDefinition', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    LineItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#LineItemStatus', name: 'LineItemStatus')
    LineItemStatusCounts = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.outposts#LineItemStatusCounts', name: 'LineItemStatusCounts')
    ListAssetInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListAssetInstancesInput', name: 'ListAssetInstancesInput')
    ListAssetInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListAssetInstancesOutput', name: 'ListAssetInstancesOutput')
    ListAssetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListAssetsInput', name: 'ListAssetsInput')
    ListAssetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListAssetsOutput', name: 'ListAssetsOutput')
    ListBlockingInstancesForCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListBlockingInstancesForCapacityTaskInput', name: 'ListBlockingInstancesForCapacityTaskInput')
    ListBlockingInstancesForCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListBlockingInstancesForCapacityTaskOutput', name: 'ListBlockingInstancesForCapacityTaskOutput')
    ListCapacityTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListCapacityTasksInput', name: 'ListCapacityTasksInput')
    ListCapacityTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListCapacityTasksOutput', name: 'ListCapacityTasksOutput')
    ListCatalogItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListCatalogItemsInput', name: 'ListCatalogItemsInput')
    ListCatalogItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListCatalogItemsOutput', name: 'ListCatalogItemsOutput')
    ListOrdersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListOrdersInput', name: 'ListOrdersInput')
    ListOrdersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListOrdersOutput', name: 'ListOrdersOutput')
    ListOutpostsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListOutpostsInput', name: 'ListOutpostsInput')
    ListOutpostsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListOutpostsOutput', name: 'ListOutpostsOutput')
    ListSitesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListSitesInput', name: 'ListSitesInput')
    ListSitesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListSitesOutput', name: 'ListSitesOutput')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MacAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#MacAddress', name: 'MacAddress', traits: {"smithy.api#length" => {"min" => 17, "max" => 17}, "smithy.api#pattern" => "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$"})
    MacAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#MacAddressList', name: 'MacAddressList')
    MaxResults1000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#MaxResults1000', name: 'MaxResults1000', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSize = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#MaxSize', name: 'MaxSize')
    MaximumSupportedWeightLbs = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#MaximumSupportedWeightLbs', name: 'MaximumSupportedWeightLbs')
    Municipality = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#Municipality', name: 'Municipality', traits: {"smithy.api#length" => {"min" => 0, "max" => 180}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    NetworkInterfaceDeviceIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#NetworkInterfaceDeviceIndex', name: 'NetworkInterfaceDeviceIndex', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.outposts#NullableDouble', name: 'NullableDouble')
    OpticalStandard = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#OpticalStandard', name: 'OpticalStandard')
    Order = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#Order', name: 'Order')
    OrderId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OrderId', name: 'OrderId', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^oo-[a-f0-9]{17}$"})
    OrderIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#OrderIdList', name: 'OrderIdList')
    OrderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#OrderStatus', name: 'OrderStatus')
    OrderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#OrderSummary', name: 'OrderSummary')
    OrderSummaryListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#OrderSummaryListDefinition', name: 'OrderSummaryListDefinition')
    OrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#OrderType', name: 'OrderType')
    Outpost = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#Outpost', name: 'Outpost')
    OutpostArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostArn', name: 'OutpostArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"})
    OutpostDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostDescription', name: 'OutpostDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\S ]*$"})
    OutpostId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostId', name: 'OutpostId', traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$"})
    OutpostIdOnly = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostIdOnly', name: 'OutpostIdOnly', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^op-[a-f0-9]{17}$"})
    OutpostIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostIdentifier', name: 'OutpostIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$"})
    OutpostInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostInstanceType', name: 'OutpostInstanceType', traits: {"smithy.api#length" => {"min" => 3, "max" => 30}, "smithy.api#pattern" => "^[a-z0-9\\-\\.]+$"})
    OutpostInstanceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#OutpostInstanceTypeList', name: 'OutpostInstanceTypeList')
    OutpostName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OutpostName', name: 'OutpostName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\S ]+$"})
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    PaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#PaymentOption', name: 'PaymentOption')
    PaymentTerm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#PaymentTerm', name: 'PaymentTerm')
    PostalCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#PostalCode', name: 'PostalCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9 -]+$"})
    PowerConnector = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#PowerConnector', name: 'PowerConnector')
    PowerDrawKva = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#PowerDrawKva', name: 'PowerDrawKva')
    PowerFeedDrop = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#PowerFeedDrop', name: 'PowerFeedDrop')
    PowerPhase = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#PowerPhase', name: 'PowerPhase')
    Quantity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#Quantity', name: 'Quantity')
    RackElevation = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.outposts#RackElevation', name: 'RackElevation', traits: {"smithy.api#range" => {"min" => 0, "max" => 99}})
    RackId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#RackId', name: 'RackId', traits: {"smithy.api#length" => {"min" => 5, "max" => 20}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    RackPhysicalProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#RackPhysicalProperties', name: 'RackPhysicalProperties')
    RequestedInstancePools = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#RequestedInstancePools', name: 'RequestedInstancePools')
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#ResourceType', name: 'ResourceType')
    ServerEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#ServerEndpoint', name: 'ServerEndpoint', traits: {"smithy.api#length" => {"min" => 9, "max" => 21}, "smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}:[0-9]{1,5}$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShipmentCarrier = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#ShipmentCarrier', name: 'ShipmentCarrier')
    ShipmentInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ShipmentInformation', name: 'ShipmentInformation')
    Site = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#Site', name: 'Site')
    SiteArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#SiteArn', name: 'SiteArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/(os-[a-f0-9]{17})$"})
    SiteDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#SiteDescription', name: 'SiteDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1001}, "smithy.api#pattern" => "^[\\S ]+$"})
    SiteId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#SiteId', name: 'SiteId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/)?(os-[a-f0-9]{17})$"})
    SiteName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#SiteName', name: 'SiteName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S ]+$"})
    SiteNotes = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#SiteNotes', name: 'SiteNotes', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    SkuCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#SkuCode', name: 'SkuCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^OR-[A-Z0-9]{7}$"})
    StartCapacityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#StartCapacityTaskInput', name: 'StartCapacityTaskInput')
    StartCapacityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#StartCapacityTaskOutput', name: 'StartCapacityTaskOutput')
    StartConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#StartConnectionRequest', name: 'StartConnectionRequest')
    StartConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#StartConnectionResponse', name: 'StartConnectionResponse')
    StateOrRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#StateOrRegion', name: 'StateOrRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S[\\S ]*$"})
    StateOrRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#StateOrRegionList', name: 'StateOrRegionList')
    StatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#StatusList', name: 'StatusList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#Subscription', name: 'Subscription')
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#SubscriptionList', name: 'SubscriptionList')
    SubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#SubscriptionStatus', name: 'SubscriptionStatus')
    SubscriptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#SubscriptionType', name: 'SubscriptionType')
    SupportedHardwareType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#SupportedHardwareType', name: 'SupportedHardwareType')
    SupportedStorageEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#SupportedStorageEnum', name: 'SupportedStorageEnum')
    SupportedStorageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#SupportedStorageList', name: 'SupportedStorageList')
    SupportedUplinkGbps = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#SupportedUplinkGbps', name: 'SupportedUplinkGbps', traits: {"smithy.api#default" => 0})
    SupportedUplinkGbpsListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#SupportedUplinkGbpsListDefinition', name: 'SupportedUplinkGbpsListDefinition')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.outposts#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S \\n]+$"})
    TaskActionOnBlockingInstances = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#TaskActionOnBlockingInstances', name: 'TaskActionOnBlockingInstances')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(\\d+)##(\\S+)$"})
    TrackingId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#TrackingId', name: 'TrackingId', traits: {"smithy.api#length" => {"min" => 6, "max" => 42}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    UnderlayIpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#UnderlayIpAddress', name: 'UnderlayIpAddress', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateOutpostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateOutpostInput', name: 'UpdateOutpostInput')
    UpdateOutpostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateOutpostOutput', name: 'UpdateOutpostOutput')
    UpdateSiteAddressInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateSiteAddressInput', name: 'UpdateSiteAddressInput')
    UpdateSiteAddressOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateSiteAddressOutput', name: 'UpdateSiteAddressOutput')
    UpdateSiteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateSiteInput', name: 'UpdateSiteInput')
    UpdateSiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateSiteOutput', name: 'UpdateSiteOutput')
    UpdateSiteRackPhysicalPropertiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateSiteRackPhysicalPropertiesInput', name: 'UpdateSiteRackPhysicalPropertiesInput')
    UpdateSiteRackPhysicalPropertiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#UpdateSiteRackPhysicalPropertiesOutput', name: 'UpdateSiteRackPhysicalPropertiesOutput')
    UplinkCount = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#UplinkCount', name: 'UplinkCount')
    UplinkGbps = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.outposts#UplinkGbps', name: 'UplinkGbps')
    VCPUCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.outposts#VCPUCount', name: 'VCPUCount')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.outposts#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WireGuardPublicKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.outposts#WireGuardPublicKey', name: 'WireGuardPublicKey', traits: {"smithy.api#length" => {"min" => 44, "max" => 44}, "smithy.api#pattern" => "^[a-zA-Z0-9/+]{43}=$"})
    OutpostListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#outpostListDefinition', name: 'OutpostListDefinition')
    SiteListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.outposts#siteListDefinition', name: 'SiteListDefinition')

    AWSServiceName.add_member(:aws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    AWSServiceName.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    AWSServiceName.add_member(:elasticache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTICACHE', traits: {"smithy.api#enumValue" => "ELASTICACHE"}))
    AWSServiceName.add_member(:elb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELB', traits: {"smithy.api#enumValue" => "ELB"}))
    AWSServiceName.add_member(:rds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "RDS"}))
    AWSServiceName.add_member(:route53, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE53', traits: {"smithy.api#enumValue" => "ROUTE53"}))
    AWSServiceNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    Address.add_member(:contact_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactName, location_name: 'ContactName', traits: {"smithy.api#required" => {}}))
    Address.add_member(:contact_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactPhoneNumber, location_name: 'ContactPhoneNumber', traits: {"smithy.api#required" => {}}))
    Address.add_member(:address_line1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine1, location_name: 'AddressLine1', traits: {"smithy.api#required" => {}}))
    Address.add_member(:address_line2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine2, location_name: 'AddressLine2'))
    Address.add_member(:address_line3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine3, location_name: 'AddressLine3'))
    Address.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: City, location_name: 'City', traits: {"smithy.api#required" => {}}))
    Address.add_member(:state_or_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateOrRegion, location_name: 'StateOrRegion', traits: {"smithy.api#required" => {}}))
    Address.add_member(:district_or_county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistrictOrCounty, location_name: 'DistrictOrCounty'))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostalCode, location_name: 'PostalCode', traits: {"smithy.api#required" => {}}))
    Address.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'CountryCode', traits: {"smithy.api#required" => {}}))
    Address.add_member(:municipality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Municipality, location_name: 'Municipality'))
    Address.type = Types::Address
    AddressType.add_member(:shipping_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHIPPING_ADDRESS', traits: {"smithy.api#enumValue" => "SHIPPING_ADDRESS"}))
    AddressType.add_member(:operating_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATING_ADDRESS', traits: {"smithy.api#enumValue" => "OPERATING_ADDRESS"}))
    AssetIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId)
    AssetInfo.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId'))
    AssetInfo.add_member(:rack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RackId, location_name: 'RackId'))
    AssetInfo.add_member(:asset_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType'))
    AssetInfo.add_member(:compute_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeAttributes, location_name: 'ComputeAttributes'))
    AssetInfo.add_member(:asset_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetLocation, location_name: 'AssetLocation'))
    AssetInfo.type = Types::AssetInfo
    AssetInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'InstanceId'))
    AssetInstance.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: 'InstanceType'))
    AssetInstance.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId'))
    AssetInstance.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    AssetInstance.add_member(:aws_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'AwsServiceName'))
    AssetInstance.type = Types::AssetInstance
    AssetInstanceCapacityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetInstanceTypeCapacity)
    AssetInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetInstance)
    AssetInstanceTypeCapacity.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeName, location_name: 'InstanceType', traits: {"smithy.api#required" => {}}))
    AssetInstanceTypeCapacity.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeCount, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AssetInstanceTypeCapacity.type = Types::AssetInstanceTypeCapacity
    AssetListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetInfo)
    AssetLocation.add_member(:rack_elevation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RackElevation, location_name: 'RackElevation'))
    AssetLocation.type = Types::AssetLocation
    AssetState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetState.add_member(:retiring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETIRING', traits: {"smithy.api#enumValue" => "RETIRING"}))
    AssetState.add_member(:isolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISOLATED', traits: {"smithy.api#enumValue" => "ISOLATED"}))
    AssetType.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTE', traits: {"smithy.api#enumValue" => "COMPUTE"}))
    AvailabilityZoneIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId)
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    BlockingInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'InstanceId'))
    BlockingInstance.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    BlockingInstance.add_member(:aws_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'AwsServiceName'))
    BlockingInstance.type = Types::BlockingInstance
    BlockingInstancesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockingInstance)
    CIDRList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR)
    CancelCapacityTaskInput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: 'CapacityTaskId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelCapacityTaskInput.type = Types::CancelCapacityTaskInput
    CancelCapacityTaskOutput.type = Types::CancelCapacityTaskOutput
    CancelOrderInput.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelOrderInput.type = Types::CancelOrderInput
    CancelOrderOutput.type = Types::CancelOrderOutput
    CapacityTaskFailure.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskStatusReason, location_name: 'Reason', traits: {"smithy.api#required" => {}}))
    CapacityTaskFailure.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskFailureType, location_name: 'Type'))
    CapacityTaskFailure.type = Types::CapacityTaskFailure
    CapacityTaskFailureType.add_member(:unsupported_capacity_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_CAPACITY_CONFIGURATION', traits: {"smithy.api#enumValue" => "UNSUPPORTED_CAPACITY_CONFIGURATION"}))
    CapacityTaskFailureType.add_member(:unexpected_asset_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNEXPECTED_ASSET_STATE', traits: {"smithy.api#enumValue" => "UNEXPECTED_ASSET_STATE"}))
    CapacityTaskFailureType.add_member(:blocking_instances_not_evacuated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCKING_INSTANCES_NOT_EVACUATED', traits: {"smithy.api#enumValue" => "BLOCKING_INSTANCES_NOT_EVACUATED"}))
    CapacityTaskFailureType.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    CapacityTaskFailureType.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    CapacityTaskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskSummary)
    CapacityTaskStatus.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "REQUESTED"}))
    CapacityTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CapacityTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityTaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CapacityTaskStatus.add_member(:waiting_for_evacuation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING_FOR_EVACUATION', traits: {"smithy.api#enumValue" => "WAITING_FOR_EVACUATION"}))
    CapacityTaskStatus.add_member(:cancellation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CANCELLATION_IN_PROGRESS"}))
    CapacityTaskStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CapacityTaskStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskStatus)
    CapacityTaskSummary.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: 'CapacityTaskId'))
    CapacityTaskSummary.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId'))
    CapacityTaskSummary.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId'))
    CapacityTaskSummary.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId'))
    CapacityTaskSummary.add_member(:capacity_task_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskStatus, location_name: 'CapacityTaskStatus'))
    CapacityTaskSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'CreationDate'))
    CapacityTaskSummary.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'CompletionDate'))
    CapacityTaskSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'LastModifiedDate'))
    CapacityTaskSummary.type = Types::CapacityTaskSummary
    CatalogItem.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkuCode, location_name: 'CatalogItemId'))
    CatalogItem.add_member(:item_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItemStatus, location_name: 'ItemStatus'))
    CatalogItem.add_member(:ec2_capacities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2CapacityListDefinition, location_name: 'EC2Capacities'))
    CatalogItem.add_member(:power_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItemPowerKva, location_name: 'PowerKva'))
    CatalogItem.add_member(:weight_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItemWeightLbs, location_name: 'WeightLbs'))
    CatalogItem.add_member(:supported_uplink_gbps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedUplinkGbpsListDefinition, location_name: 'SupportedUplinkGbps'))
    CatalogItem.add_member(:supported_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedStorageList, location_name: 'SupportedStorage'))
    CatalogItem.type = Types::CatalogItem
    CatalogItemClass.add_member(:rack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RACK', traits: {"smithy.api#enumValue" => "RACK"}))
    CatalogItemClass.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER', traits: {"smithy.api#enumValue" => "SERVER"}))
    CatalogItemClassList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItemClass)
    CatalogItemListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItem)
    CatalogItemStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CatalogItemStatus.add_member(:discontinued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONTINUED', traits: {"smithy.api#enumValue" => "DISCONTINUED"}))
    CityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: City)
    ComputeAssetState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputeAssetState.add_member(:isolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISOLATED', traits: {"smithy.api#enumValue" => "ISOLATED"}))
    ComputeAssetState.add_member(:retiring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETIRING', traits: {"smithy.api#enumValue" => "RETIRING"}))
    ComputeAttributes.add_member(:host_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostId, location_name: 'HostId'))
    ComputeAttributes.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeAssetState, location_name: 'State'))
    ComputeAttributes.add_member(:instance_families, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFamilies, location_name: 'InstanceFamilies'))
    ComputeAttributes.add_member(:instance_type_capacities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetInstanceCapacityList, location_name: 'InstanceTypeCapacities'))
    ComputeAttributes.add_member(:max_vcpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VCPUCount, location_name: 'MaxVcpus'))
    ComputeAttributes.type = Types::ComputeAttributes
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId'))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    ConflictException.type = Types::ConflictException
    ConnectionDetails.add_member(:client_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WireGuardPublicKey, location_name: 'ClientPublicKey'))
    ConnectionDetails.add_member(:server_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WireGuardPublicKey, location_name: 'ServerPublicKey'))
    ConnectionDetails.add_member(:server_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerEndpoint, location_name: 'ServerEndpoint'))
    ConnectionDetails.add_member(:client_tunnel_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'ClientTunnelAddress'))
    ConnectionDetails.add_member(:server_tunnel_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'ServerTunnelAddress'))
    ConnectionDetails.add_member(:allowed_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDRList, location_name: 'AllowedIps'))
    ConnectionDetails.type = Types::ConnectionDetails
    CountryCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode)
    CreateOrderInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#required" => {}}))
    CreateOrderInput.add_member(:line_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemRequestListDefinition, location_name: 'LineItems', traits: {"smithy.api#required" => {}}))
    CreateOrderInput.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption', traits: {"smithy.api#required" => {}}))
    CreateOrderInput.add_member(:payment_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentTerm, location_name: 'PaymentTerm'))
    CreateOrderInput.type = Types::CreateOrderInput
    CreateOrderOutput.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'Order'))
    CreateOrderOutput.type = Types::CreateOrderOutput
    CreateOutpostInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateOutpostInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostDescription, location_name: 'Description'))
    CreateOutpostInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#required" => {}}))
    CreateOutpostInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZone'))
    CreateOutpostInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    CreateOutpostInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateOutpostInput.add_member(:supported_hardware_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHardwareType, location_name: 'SupportedHardwareType'))
    CreateOutpostInput.type = Types::CreateOutpostInput
    CreateOutpostOutput.add_member(:outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outpost, location_name: 'Outpost'))
    CreateOutpostOutput.type = Types::CreateOutpostOutput
    CreateSiteInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateSiteInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteDescription, location_name: 'Description'))
    CreateSiteInput.add_member(:notes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteNotes, location_name: 'Notes'))
    CreateSiteInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateSiteInput.add_member(:operating_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'OperatingAddress'))
    CreateSiteInput.add_member(:shipping_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'ShippingAddress'))
    CreateSiteInput.add_member(:rack_physical_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RackPhysicalProperties, location_name: 'RackPhysicalProperties'))
    CreateSiteInput.type = Types::CreateSiteInput
    CreateSiteOutput.add_member(:site, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site'))
    CreateSiteOutput.type = Types::CreateSiteOutput
    DeleteOutpostInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutpostInput.type = Types::DeleteOutpostInput
    DeleteOutpostOutput.type = Types::DeleteOutpostOutput
    DeleteSiteInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSiteInput.type = Types::DeleteSiteInput
    DeleteSiteOutput.type = Types::DeleteSiteOutput
    EC2Capacity.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Family, location_name: 'Family'))
    EC2Capacity.add_member(:max_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize, location_name: 'MaxSize'))
    EC2Capacity.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Quantity, location_name: 'Quantity'))
    EC2Capacity.type = Types::EC2Capacity
    EC2CapacityListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2Capacity)
    EC2FamilyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Family)
    FiberOpticCableType.add_member(:single_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_MODE', traits: {"smithy.api#enumValue" => "SINGLE_MODE"}))
    FiberOpticCableType.add_member(:multi_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI_MODE', traits: {"smithy.api#enumValue" => "MULTI_MODE"}))
    GetCapacityTaskInput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: 'CapacityTaskId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCapacityTaskInput.type = Types::GetCapacityTaskInput
    GetCapacityTaskOutput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: 'CapacityTaskId'))
    GetCapacityTaskOutput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId'))
    GetCapacityTaskOutput.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId'))
    GetCapacityTaskOutput.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId'))
    GetCapacityTaskOutput.add_member(:requested_instance_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedInstancePools, location_name: 'RequestedInstancePools'))
    GetCapacityTaskOutput.add_member(:instances_to_exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesToExclude, location_name: 'InstancesToExclude'))
    GetCapacityTaskOutput.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false}))
    GetCapacityTaskOutput.add_member(:capacity_task_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskStatus, location_name: 'CapacityTaskStatus'))
    GetCapacityTaskOutput.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskFailure, location_name: 'Failed'))
    GetCapacityTaskOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'CreationDate'))
    GetCapacityTaskOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'CompletionDate'))
    GetCapacityTaskOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'LastModifiedDate'))
    GetCapacityTaskOutput.add_member(:task_action_on_blocking_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskActionOnBlockingInstances, location_name: 'TaskActionOnBlockingInstances'))
    GetCapacityTaskOutput.type = Types::GetCapacityTaskOutput
    GetCatalogItemInput.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkuCode, location_name: 'CatalogItemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCatalogItemInput.type = Types::GetCatalogItemInput
    GetCatalogItemOutput.add_member(:catalog_item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItem, location_name: 'CatalogItem'))
    GetCatalogItemOutput.type = Types::GetCatalogItemOutput
    GetConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId'))
    GetConnectionResponse.add_member(:connection_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDetails, location_name: 'ConnectionDetails'))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GetOrderInput.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOrderInput.type = Types::GetOrderInput
    GetOrderOutput.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'Order'))
    GetOrderOutput.type = Types::GetOrderOutput
    GetOutpostBillingInformationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetOutpostBillingInformationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetOutpostBillingInformationInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostBillingInformationInput.type = Types::GetOutpostBillingInformationInput
    GetOutpostBillingInformationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetOutpostBillingInformationOutput.add_member(:subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions'))
    GetOutpostBillingInformationOutput.add_member(:contract_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContractEndDate'))
    GetOutpostBillingInformationOutput.type = Types::GetOutpostBillingInformationOutput
    GetOutpostInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostInput.type = Types::GetOutpostInput
    GetOutpostInstanceTypesInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostInstanceTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetOutpostInstanceTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetOutpostInstanceTypesInput.type = Types::GetOutpostInstanceTypesInput
    GetOutpostInstanceTypesOutput.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeListDefinition, location_name: 'InstanceTypes'))
    GetOutpostInstanceTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetOutpostInstanceTypesOutput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId'))
    GetOutpostInstanceTypesOutput.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn'))
    GetOutpostInstanceTypesOutput.type = Types::GetOutpostInstanceTypesOutput
    GetOutpostOutput.add_member(:outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outpost, location_name: 'Outpost'))
    GetOutpostOutput.type = Types::GetOutpostOutput
    GetOutpostSupportedInstanceTypesInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutpostSupportedInstanceTypesInput.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId', traits: {"smithy.api#httpQuery" => "OrderId"}))
    GetOutpostSupportedInstanceTypesInput.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetIdInput, location_name: 'AssetId', traits: {"smithy.api#httpQuery" => "AssetId"}))
    GetOutpostSupportedInstanceTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetOutpostSupportedInstanceTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetOutpostSupportedInstanceTypesInput.type = Types::GetOutpostSupportedInstanceTypesInput
    GetOutpostSupportedInstanceTypesOutput.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeListDefinition, location_name: 'InstanceTypes'))
    GetOutpostSupportedInstanceTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetOutpostSupportedInstanceTypesOutput.type = Types::GetOutpostSupportedInstanceTypesOutput
    GetSiteAddressInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSiteAddressInput.add_member(:address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressType, location_name: 'AddressType', traits: {"smithy.api#httpQuery" => "AddressType", "smithy.api#required" => {}}))
    GetSiteAddressInput.type = Types::GetSiteAddressInput
    GetSiteAddressOutput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId'))
    GetSiteAddressOutput.add_member(:address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressType, location_name: 'AddressType'))
    GetSiteAddressOutput.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address'))
    GetSiteAddressOutput.type = Types::GetSiteAddressOutput
    GetSiteInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSiteInput.type = Types::GetSiteInput
    GetSiteOutput.add_member(:site, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site'))
    GetSiteOutput.type = Types::GetSiteOutput
    HostIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostId)
    InstanceFamilies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFamilyName)
    InstanceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId)
    InstanceTypeCapacity.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeName, location_name: 'InstanceType', traits: {"smithy.api#required" => {}}))
    InstanceTypeCapacity.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeCount, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    InstanceTypeCapacity.type = Types::InstanceTypeCapacity
    InstanceTypeItem.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType'))
    InstanceTypeItem.add_member(:vcp_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VCPUCount, location_name: 'VCPUs'))
    InstanceTypeItem.type = Types::InstanceTypeItem
    InstanceTypeListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeItem)
    InstancesToExclude.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdList, location_name: 'Instances'))
    InstancesToExclude.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds'))
    InstancesToExclude.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceNameList, location_name: 'Services'))
    InstancesToExclude.type = Types::InstancesToExclude
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    LifeCycleStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleStatus)
    LineItem.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkuCode, location_name: 'CatalogItemId'))
    LineItem.add_member(:line_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemId, location_name: 'LineItemId'))
    LineItem.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: 'Quantity'))
    LineItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemStatus, location_name: 'Status'))
    LineItem.add_member(:shipment_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShipmentInformation, location_name: 'ShipmentInformation'))
    LineItem.add_member(:asset_information_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemAssetInformationList, location_name: 'AssetInformationList'))
    LineItem.add_member(:previous_line_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemId, location_name: 'PreviousLineItemId'))
    LineItem.add_member(:previous_order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'PreviousOrderId'))
    LineItem.type = Types::LineItem
    LineItemAssetInformation.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId'))
    LineItemAssetInformation.add_member(:mac_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAddressList, location_name: 'MacAddressList'))
    LineItemAssetInformation.type = Types::LineItemAssetInformation
    LineItemAssetInformationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemAssetInformation)
    LineItemListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItem)
    LineItemRequest.add_member(:catalog_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkuCode, location_name: 'CatalogItemId'))
    LineItemRequest.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: 'Quantity'))
    LineItemRequest.type = Types::LineItemRequest
    LineItemRequestListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemRequest)
    LineItemStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    LineItemStatus.add_member(:building, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILDING', traits: {"smithy.api#enumValue" => "BUILDING"}))
    LineItemStatus.add_member(:shipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHIPPED', traits: {"smithy.api#enumValue" => "SHIPPED"}))
    LineItemStatus.add_member(:delivered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERED', traits: {"smithy.api#enumValue" => "DELIVERED"}))
    LineItemStatus.add_member(:installing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLING', traits: {"smithy.api#enumValue" => "INSTALLING"}))
    LineItemStatus.add_member(:installed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLED', traits: {"smithy.api#enumValue" => "INSTALLED"}))
    LineItemStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LineItemStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    LineItemStatus.add_member(:replaced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACED', traits: {"smithy.api#enumValue" => "REPLACED"}))
    LineItemStatusCounts.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemStatus)
    LineItemStatusCounts.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemQuantity)
    ListAssetInstancesInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetInstancesInput.add_member(:asset_id_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetIdList, location_name: 'AssetIdFilter', traits: {"smithy.api#httpQuery" => "AssetIdFilter"}))
    ListAssetInstancesInput.add_member(:instance_type_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceTypeList, location_name: 'InstanceTypeFilter', traits: {"smithy.api#httpQuery" => "InstanceTypeFilter"}))
    ListAssetInstancesInput.add_member(:account_id_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIdFilter', traits: {"smithy.api#httpQuery" => "AccountIdFilter"}))
    ListAssetInstancesInput.add_member(:aws_service_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceNameList, location_name: 'AwsServiceFilter', traits: {"smithy.api#httpQuery" => "AwsServiceFilter"}))
    ListAssetInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListAssetInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAssetInstancesInput.type = Types::ListAssetInstancesInput
    ListAssetInstancesOutput.add_member(:asset_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetInstanceList, location_name: 'AssetInstances'))
    ListAssetInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListAssetInstancesOutput.type = Types::ListAssetInstancesOutput
    ListAssetsInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetsInput.add_member(:host_id_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostIdList, location_name: 'HostIdFilter', traits: {"smithy.api#httpQuery" => "HostIdFilter"}))
    ListAssetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListAssetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAssetsInput.add_member(:status_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusList, location_name: 'StatusFilter', traits: {"smithy.api#httpQuery" => "StatusFilter"}))
    ListAssetsInput.type = Types::ListAssetsInput
    ListAssetsOutput.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetListDefinition, location_name: 'Assets'))
    ListAssetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListAssetsOutput.type = Types::ListAssetsOutput
    ListBlockingInstancesForCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBlockingInstancesForCapacityTaskInput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: 'CapacityTaskId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBlockingInstancesForCapacityTaskInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListBlockingInstancesForCapacityTaskInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBlockingInstancesForCapacityTaskInput.type = Types::ListBlockingInstancesForCapacityTaskInput
    ListBlockingInstancesForCapacityTaskOutput.add_member(:blocking_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockingInstancesList, location_name: 'BlockingInstances'))
    ListBlockingInstancesForCapacityTaskOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListBlockingInstancesForCapacityTaskOutput.type = Types::ListBlockingInstancesForCapacityTaskOutput
    ListCapacityTasksInput.add_member(:outpost_identifier_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifierFilter', traits: {"smithy.api#httpQuery" => "OutpostIdentifierFilter"}))
    ListCapacityTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCapacityTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCapacityTasksInput.add_member(:capacity_task_status_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskStatusList, location_name: 'CapacityTaskStatusFilter', traits: {"smithy.api#httpQuery" => "CapacityTaskStatusFilter"}))
    ListCapacityTasksInput.type = Types::ListCapacityTasksInput
    ListCapacityTasksOutput.add_member(:capacity_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskList, location_name: 'CapacityTasks'))
    ListCapacityTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListCapacityTasksOutput.type = Types::ListCapacityTasksOutput
    ListCatalogItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCatalogItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCatalogItemsInput.add_member(:item_class_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItemClassList, location_name: 'ItemClassFilter', traits: {"smithy.api#httpQuery" => "ItemClassFilter"}))
    ListCatalogItemsInput.add_member(:supported_storage_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedStorageList, location_name: 'SupportedStorageFilter', traits: {"smithy.api#httpQuery" => "SupportedStorageFilter"}))
    ListCatalogItemsInput.add_member(:ec2_family_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2FamilyList, location_name: 'EC2FamilyFilter', traits: {"smithy.api#httpQuery" => "EC2FamilyFilter"}))
    ListCatalogItemsInput.type = Types::ListCatalogItemsInput
    ListCatalogItemsOutput.add_member(:catalog_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogItemListDefinition, location_name: 'CatalogItems'))
    ListCatalogItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListCatalogItemsOutput.type = Types::ListCatalogItemsOutput
    ListOrdersInput.add_member(:outpost_identifier_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifierFilter', traits: {"smithy.api#httpQuery" => "OutpostIdentifierFilter"}))
    ListOrdersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOrdersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOrdersInput.type = Types::ListOrdersInput
    ListOrdersOutput.add_member(:orders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderSummaryListDefinition, location_name: 'Orders'))
    ListOrdersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListOrdersOutput.type = Types::ListOrdersOutput
    ListOutpostsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOutpostsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOutpostsInput.add_member(:life_cycle_status_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleStatusList, location_name: 'LifeCycleStatusFilter', traits: {"smithy.api#httpQuery" => "LifeCycleStatusFilter"}))
    ListOutpostsInput.add_member(:availability_zone_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZoneFilter', traits: {"smithy.api#httpQuery" => "AvailabilityZoneFilter"}))
    ListOutpostsInput.add_member(:availability_zone_id_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneIdList, location_name: 'AvailabilityZoneIdFilter', traits: {"smithy.api#httpQuery" => "AvailabilityZoneIdFilter"}))
    ListOutpostsInput.type = Types::ListOutpostsInput
    ListOutpostsOutput.add_member(:outposts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostListDefinition, location_name: 'Outposts'))
    ListOutpostsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListOutpostsOutput.type = Types::ListOutpostsOutput
    ListSitesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSitesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults1000, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSitesInput.add_member(:operating_address_country_code_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeList, location_name: 'OperatingAddressCountryCodeFilter', traits: {"smithy.api#httpQuery" => "OperatingAddressCountryCodeFilter"}))
    ListSitesInput.add_member(:operating_address_state_or_region_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateOrRegionList, location_name: 'OperatingAddressStateOrRegionFilter', traits: {"smithy.api#httpQuery" => "OperatingAddressStateOrRegionFilter"}))
    ListSitesInput.add_member(:operating_address_city_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CityList, location_name: 'OperatingAddressCityFilter', traits: {"smithy.api#httpQuery" => "OperatingAddressCityFilter"}))
    ListSitesInput.type = Types::ListSitesInput
    ListSitesOutput.add_member(:sites, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteListDefinition, location_name: 'Sites'))
    ListSitesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListSitesOutput.type = Types::ListSitesOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MacAddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAddress)
    MaximumSupportedWeightLbs.add_member(:no_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_LIMIT', traits: {"smithy.api#enumValue" => "NO_LIMIT"}))
    MaximumSupportedWeightLbs.add_member(:max_1400_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_1400_LBS', traits: {"smithy.api#enumValue" => "MAX_1400_LBS"}))
    MaximumSupportedWeightLbs.add_member(:max_1600_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_1600_LBS', traits: {"smithy.api#enumValue" => "MAX_1600_LBS"}))
    MaximumSupportedWeightLbs.add_member(:max_1800_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_1800_LBS', traits: {"smithy.api#enumValue" => "MAX_1800_LBS"}))
    MaximumSupportedWeightLbs.add_member(:max_2000_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_2000_LBS', traits: {"smithy.api#enumValue" => "MAX_2000_LBS"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    OpticalStandard.add_member(:optic_10_gbase_sr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_10GBASE_SR', traits: {"smithy.api#enumValue" => "OPTIC_10GBASE_SR"}))
    OpticalStandard.add_member(:optic_10_gbase_ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_10GBASE_IR', traits: {"smithy.api#enumValue" => "OPTIC_10GBASE_IR"}))
    OpticalStandard.add_member(:optic_10_gbase_lr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_10GBASE_LR', traits: {"smithy.api#enumValue" => "OPTIC_10GBASE_LR"}))
    OpticalStandard.add_member(:optic_40_gbase_sr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_40GBASE_SR', traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_SR"}))
    OpticalStandard.add_member(:optic_40_gbase_esr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_40GBASE_ESR', traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_ESR"}))
    OpticalStandard.add_member(:optic_40_gbase_ir4_lr4_l, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_40GBASE_IR4_LR4L', traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_IR4_LR4L"}))
    OpticalStandard.add_member(:optic_40_gbase_lr4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_40GBASE_LR4', traits: {"smithy.api#enumValue" => "OPTIC_40GBASE_LR4"}))
    OpticalStandard.add_member(:optic_100_gbase_sr4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_100GBASE_SR4', traits: {"smithy.api#enumValue" => "OPTIC_100GBASE_SR4"}))
    OpticalStandard.add_member(:optic_100_gbase_cwdm4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_100GBASE_CWDM4', traits: {"smithy.api#enumValue" => "OPTIC_100GBASE_CWDM4"}))
    OpticalStandard.add_member(:optic_100_gbase_lr4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_100GBASE_LR4', traits: {"smithy.api#enumValue" => "OPTIC_100GBASE_LR4"}))
    OpticalStandard.add_member(:optic_100_g_psm4_msa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_100G_PSM4_MSA', traits: {"smithy.api#enumValue" => "OPTIC_100G_PSM4_MSA"}))
    OpticalStandard.add_member(:optic_1000_base_lx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_1000BASE_LX', traits: {"smithy.api#enumValue" => "OPTIC_1000BASE_LX"}))
    OpticalStandard.add_member(:optic_1000_base_sx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIC_1000BASE_SX', traits: {"smithy.api#enumValue" => "OPTIC_1000BASE_SX"}))
    Order.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdOnly, location_name: 'OutpostId'))
    Order.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId'))
    Order.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderStatus, location_name: 'Status'))
    Order.add_member(:line_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemListDefinition, location_name: 'LineItems'))
    Order.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption'))
    Order.add_member(:order_submission_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'OrderSubmissionDate'))
    Order.add_member(:order_fulfilled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'OrderFulfilledDate'))
    Order.add_member(:payment_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentTerm, location_name: 'PaymentTerm'))
    Order.add_member(:order_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'OrderType'))
    Order.type = Types::Order
    OrderIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    OrderStatus.add_member(:received, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECEIVED', traits: {"smithy.api#enumValue" => "RECEIVED"}))
    OrderStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    OrderStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    OrderStatus.add_member(:installing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLING', traits: {"smithy.api#enumValue" => "INSTALLING"}))
    OrderStatus.add_member(:fulfilled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULFILLED', traits: {"smithy.api#enumValue" => "FULFILLED"}))
    OrderStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    OrderStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    OrderStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OrderStatus.add_member(:delivered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERED', traits: {"smithy.api#enumValue" => "DELIVERED"}))
    OrderStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OrderStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    OrderSummary.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdOnly, location_name: 'OutpostId'))
    OrderSummary.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId'))
    OrderSummary.add_member(:order_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'OrderType'))
    OrderSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderStatus, location_name: 'Status'))
    OrderSummary.add_member(:line_item_counts_by_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemStatusCounts, location_name: 'LineItemCountsByStatus'))
    OrderSummary.add_member(:order_submission_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'OrderSubmissionDate'))
    OrderSummary.add_member(:order_fulfilled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'OrderFulfilledDate'))
    OrderSummary.type = Types::OrderSummary
    OrderSummaryListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderSummary)
    OrderType.add_member(:outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTPOST', traits: {"smithy.api#enumValue" => "OUTPOST"}))
    OrderType.add_member(:replacement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACEMENT', traits: {"smithy.api#enumValue" => "REPLACEMENT"}))
    Outpost.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId'))
    Outpost.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId'))
    Outpost.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn'))
    Outpost.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId'))
    Outpost.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostName, location_name: 'Name'))
    Outpost.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostDescription, location_name: 'Description'))
    Outpost.add_member(:life_cycle_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleStatus, location_name: 'LifeCycleStatus'))
    Outpost.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZone'))
    Outpost.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    Outpost.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    Outpost.add_member(:site_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteArn, location_name: 'SiteArn'))
    Outpost.add_member(:supported_hardware_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHardwareType, location_name: 'SupportedHardwareType'))
    Outpost.type = Types::Outpost
    OutpostInstanceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType)
    PaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_UPFRONT', traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    PaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_UPFRONT', traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    PaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_UPFRONT', traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    PaymentTerm.add_member(:three_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_YEARS', traits: {"smithy.api#enumValue" => "THREE_YEARS"}))
    PaymentTerm.add_member(:one_year, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_YEAR', traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    PaymentTerm.add_member(:five_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE_YEARS', traits: {"smithy.api#enumValue" => "FIVE_YEARS"}))
    PowerConnector.add_member(:l6_30_p, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'L6_30P', traits: {"smithy.api#enumValue" => "L6_30P"}))
    PowerConnector.add_member(:iec309, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IEC309', traits: {"smithy.api#enumValue" => "IEC309"}))
    PowerConnector.add_member(:ah530_p7_w, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AH530P7W', traits: {"smithy.api#enumValue" => "AH530P7W"}))
    PowerConnector.add_member(:ah532_p6_w, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AH532P6W', traits: {"smithy.api#enumValue" => "AH532P6W"}))
    PowerConnector.add_member(:cs8365_c, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CS8365C', traits: {"smithy.api#enumValue" => "CS8365C"}))
    PowerDrawKva.add_member(:power_5_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWER_5_KVA', traits: {"smithy.api#enumValue" => "POWER_5_KVA"}))
    PowerDrawKva.add_member(:power_10_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWER_10_KVA', traits: {"smithy.api#enumValue" => "POWER_10_KVA"}))
    PowerDrawKva.add_member(:power_15_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWER_15_KVA', traits: {"smithy.api#enumValue" => "POWER_15_KVA"}))
    PowerDrawKva.add_member(:power_30_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWER_30_KVA', traits: {"smithy.api#enumValue" => "POWER_30_KVA"}))
    PowerFeedDrop.add_member(:above_rack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABOVE_RACK', traits: {"smithy.api#enumValue" => "ABOVE_RACK"}))
    PowerFeedDrop.add_member(:below_rack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BELOW_RACK', traits: {"smithy.api#enumValue" => "BELOW_RACK"}))
    PowerPhase.add_member(:single_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_PHASE', traits: {"smithy.api#enumValue" => "SINGLE_PHASE"}))
    PowerPhase.add_member(:three_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_PHASE', traits: {"smithy.api#enumValue" => "THREE_PHASE"}))
    RackPhysicalProperties.add_member(:power_draw_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerDrawKva, location_name: 'PowerDrawKva'))
    RackPhysicalProperties.add_member(:power_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerPhase, location_name: 'PowerPhase'))
    RackPhysicalProperties.add_member(:power_connector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerConnector, location_name: 'PowerConnector'))
    RackPhysicalProperties.add_member(:power_feed_drop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerFeedDrop, location_name: 'PowerFeedDrop'))
    RackPhysicalProperties.add_member(:uplink_gbps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UplinkGbps, location_name: 'UplinkGbps'))
    RackPhysicalProperties.add_member(:uplink_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UplinkCount, location_name: 'UplinkCount'))
    RackPhysicalProperties.add_member(:fiber_optic_cable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FiberOpticCableType, location_name: 'FiberOpticCableType'))
    RackPhysicalProperties.add_member(:optical_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpticalStandard, location_name: 'OpticalStandard'))
    RackPhysicalProperties.add_member(:maximum_supported_weight_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumSupportedWeightLbs, location_name: 'MaximumSupportedWeightLbs'))
    RackPhysicalProperties.type = Types::RackPhysicalProperties
    RequestedInstancePools.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeCapacity)
    ResourceType.add_member(:outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTPOST', traits: {"smithy.api#enumValue" => "OUTPOST"}))
    ResourceType.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORDER', traits: {"smithy.api#enumValue" => "ORDER"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShipmentCarrier.add_member(:dhl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DHL', traits: {"smithy.api#enumValue" => "DHL"}))
    ShipmentCarrier.add_member(:dbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DBS', traits: {"smithy.api#enumValue" => "DBS"}))
    ShipmentCarrier.add_member(:fedex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEDEX', traits: {"smithy.api#enumValue" => "FEDEX"}))
    ShipmentCarrier.add_member(:ups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPS', traits: {"smithy.api#enumValue" => "UPS"}))
    ShipmentCarrier.add_member(:expeditors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPEDITORS', traits: {"smithy.api#enumValue" => "EXPEDITORS"}))
    ShipmentInformation.add_member(:shipment_tracking_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingId, location_name: 'ShipmentTrackingNumber'))
    ShipmentInformation.add_member(:shipment_carrier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShipmentCarrier, location_name: 'ShipmentCarrier'))
    ShipmentInformation.type = Types::ShipmentInformation
    Site.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId'))
    Site.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    Site.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteName, location_name: 'Name'))
    Site.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteDescription, location_name: 'Description'))
    Site.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    Site.add_member(:site_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteArn, location_name: 'SiteArn'))
    Site.add_member(:notes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteNotes, location_name: 'Notes'))
    Site.add_member(:operating_address_country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'OperatingAddressCountryCode'))
    Site.add_member(:operating_address_state_or_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateOrRegion, location_name: 'OperatingAddressStateOrRegion'))
    Site.add_member(:operating_address_city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: City, location_name: 'OperatingAddressCity'))
    Site.add_member(:rack_physical_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RackPhysicalProperties, location_name: 'RackPhysicalProperties'))
    Site.type = Types::Site
    StartCapacityTaskInput.add_member(:outpost_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostIdentifier, location_name: 'OutpostIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCapacityTaskInput.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId'))
    StartCapacityTaskInput.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetIdInput, location_name: 'AssetId'))
    StartCapacityTaskInput.add_member(:instance_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedInstancePools, location_name: 'InstancePools', traits: {"smithy.api#required" => {}}))
    StartCapacityTaskInput.add_member(:instances_to_exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesToExclude, location_name: 'InstancesToExclude'))
    StartCapacityTaskInput.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false}))
    StartCapacityTaskInput.add_member(:task_action_on_blocking_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskActionOnBlockingInstances, location_name: 'TaskActionOnBlockingInstances'))
    StartCapacityTaskInput.type = Types::StartCapacityTaskInput
    StartCapacityTaskOutput.add_member(:capacity_task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskId, location_name: 'CapacityTaskId'))
    StartCapacityTaskOutput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId'))
    StartCapacityTaskOutput.add_member(:order_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderId, location_name: 'OrderId'))
    StartCapacityTaskOutput.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId'))
    StartCapacityTaskOutput.add_member(:requested_instance_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedInstancePools, location_name: 'RequestedInstancePools'))
    StartCapacityTaskOutput.add_member(:instances_to_exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesToExclude, location_name: 'InstancesToExclude'))
    StartCapacityTaskOutput.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false}))
    StartCapacityTaskOutput.add_member(:capacity_task_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskStatus, location_name: 'CapacityTaskStatus'))
    StartCapacityTaskOutput.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTaskFailure, location_name: 'Failed'))
    StartCapacityTaskOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'CreationDate'))
    StartCapacityTaskOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'CompletionDate'))
    StartCapacityTaskOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'LastModifiedDate'))
    StartCapacityTaskOutput.add_member(:task_action_on_blocking_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskActionOnBlockingInstances, location_name: 'TaskActionOnBlockingInstances'))
    StartCapacityTaskOutput.type = Types::StartCapacityTaskOutput
    StartConnectionRequest.add_member(:device_serial_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: 'DeviceSerialNumber'))
    StartConnectionRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'AssetId', traits: {"smithy.api#required" => {}}))
    StartConnectionRequest.add_member(:client_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WireGuardPublicKey, location_name: 'ClientPublicKey', traits: {"smithy.api#required" => {}}))
    StartConnectionRequest.add_member(:network_interface_device_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceDeviceIndex, location_name: 'NetworkInterfaceDeviceIndex', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartConnectionRequest.type = Types::StartConnectionRequest
    StartConnectionResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId'))
    StartConnectionResponse.add_member(:underlay_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnderlayIpAddress, location_name: 'UnderlayIpAddress'))
    StartConnectionResponse.type = Types::StartConnectionResponse
    StateOrRegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateOrRegion)
    StatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetState)
    Subscription.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionId'))
    Subscription.add_member(:subscription_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'SubscriptionType'))
    Subscription.add_member(:subscription_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: 'SubscriptionStatus'))
    Subscription.add_member(:order_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderIdList, location_name: 'OrderIds'))
    Subscription.add_member(:begin_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'BeginDate'))
    Subscription.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: 'EndDate'))
    Subscription.add_member(:monthly_recurring_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'MonthlyRecurringPrice'))
    Subscription.add_member(:upfront_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'UpfrontPrice'))
    Subscription.type = Types::Subscription
    SubscriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    SubscriptionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SubscriptionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    SubscriptionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SubscriptionType.add_member(:original, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORIGINAL', traits: {"smithy.api#enumValue" => "ORIGINAL"}))
    SubscriptionType.add_member(:renewal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENEWAL', traits: {"smithy.api#enumValue" => "RENEWAL"}))
    SubscriptionType.add_member(:capacity_increase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_INCREASE', traits: {"smithy.api#enumValue" => "CAPACITY_INCREASE"}))
    SupportedHardwareType.add_member(:rack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RACK', traits: {"smithy.api#enumValue" => "RACK"}))
    SupportedHardwareType.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER', traits: {"smithy.api#enumValue" => "SERVER"}))
    SupportedStorageEnum.add_member(:ebs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS', traits: {"smithy.api#enumValue" => "EBS"}))
    SupportedStorageEnum.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    SupportedStorageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedStorageEnum)
    SupportedUplinkGbpsListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedUplinkGbps)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskActionOnBlockingInstances.add_member(:wait_for_evacuation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAIT_FOR_EVACUATION', traits: {"smithy.api#enumValue" => "WAIT_FOR_EVACUATION"}))
    TaskActionOnBlockingInstances.add_member(:fail_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL_TASK', traits: {"smithy.api#enumValue" => "FAIL_TASK"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateOutpostInput.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOutpostInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostName, location_name: 'Name'))
    UpdateOutpostInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostDescription, location_name: 'Description'))
    UpdateOutpostInput.add_member(:supported_hardware_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHardwareType, location_name: 'SupportedHardwareType'))
    UpdateOutpostInput.type = Types::UpdateOutpostInput
    UpdateOutpostOutput.add_member(:outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outpost, location_name: 'Outpost'))
    UpdateOutpostOutput.type = Types::UpdateOutpostOutput
    UpdateSiteAddressInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteAddressInput.add_member(:address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressType, location_name: 'AddressType', traits: {"smithy.api#required" => {}}))
    UpdateSiteAddressInput.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#required" => {}}))
    UpdateSiteAddressInput.type = Types::UpdateSiteAddressInput
    UpdateSiteAddressOutput.add_member(:address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressType, location_name: 'AddressType'))
    UpdateSiteAddressOutput.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address'))
    UpdateSiteAddressOutput.type = Types::UpdateSiteAddressOutput
    UpdateSiteInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteName, location_name: 'Name'))
    UpdateSiteInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteDescription, location_name: 'Description'))
    UpdateSiteInput.add_member(:notes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteNotes, location_name: 'Notes'))
    UpdateSiteInput.type = Types::UpdateSiteInput
    UpdateSiteOutput.add_member(:site, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site'))
    UpdateSiteOutput.type = Types::UpdateSiteOutput
    UpdateSiteRackPhysicalPropertiesInput.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteId, location_name: 'SiteId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_draw_kva, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerDrawKva, location_name: 'PowerDrawKva'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerPhase, location_name: 'PowerPhase'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_connector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerConnector, location_name: 'PowerConnector'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:power_feed_drop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PowerFeedDrop, location_name: 'PowerFeedDrop'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:uplink_gbps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UplinkGbps, location_name: 'UplinkGbps'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:uplink_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UplinkCount, location_name: 'UplinkCount'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:fiber_optic_cable_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FiberOpticCableType, location_name: 'FiberOpticCableType'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:optical_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpticalStandard, location_name: 'OpticalStandard'))
    UpdateSiteRackPhysicalPropertiesInput.add_member(:maximum_supported_weight_lbs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumSupportedWeightLbs, location_name: 'MaximumSupportedWeightLbs'))
    UpdateSiteRackPhysicalPropertiesInput.type = Types::UpdateSiteRackPhysicalPropertiesInput
    UpdateSiteRackPhysicalPropertiesOutput.add_member(:site, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Site, location_name: 'Site'))
    UpdateSiteRackPhysicalPropertiesOutput.type = Types::UpdateSiteRackPhysicalPropertiesOutput
    UplinkCount.add_member(:uplink_count_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_1', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_1"}))
    UplinkCount.add_member(:uplink_count_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_2', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_2"}))
    UplinkCount.add_member(:uplink_count_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_3', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_3"}))
    UplinkCount.add_member(:uplink_count_4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_4', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_4"}))
    UplinkCount.add_member(:uplink_count_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_5', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_5"}))
    UplinkCount.add_member(:uplink_count_6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_6', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_6"}))
    UplinkCount.add_member(:uplink_count_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_7', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_7"}))
    UplinkCount.add_member(:uplink_count_8, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_8', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_8"}))
    UplinkCount.add_member(:uplink_count_12, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_12', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_12"}))
    UplinkCount.add_member(:uplink_count_16, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_COUNT_16', traits: {"smithy.api#enumValue" => "UPLINK_COUNT_16"}))
    UplinkGbps.add_member(:uplink_1_g, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_1G', traits: {"smithy.api#enumValue" => "UPLINK_1G"}))
    UplinkGbps.add_member(:uplink_10_g, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_10G', traits: {"smithy.api#enumValue" => "UPLINK_10G"}))
    UplinkGbps.add_member(:uplink_40_g, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_40G', traits: {"smithy.api#enumValue" => "UPLINK_40G"}))
    UplinkGbps.add_member(:uplink_100_g, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_100G', traits: {"smithy.api#enumValue" => "UPLINK_100G"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    OutpostListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outpost)
    SiteListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Site)

    OutpostsOlafService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.outposts#OutpostsOlafService"
      service.name = "OutpostsOlafService"
      service.version = "2019-12-03"
      service.traits = {"aws.api#service" => {"sdkId" => "Outposts", "arnNamespace" => "outposts", "cloudFormationName" => "Outposts", "cloudTrailEventSource" => "outposts.amazonaws.com", "endpointPrefix" => "outposts"}, "aws.auth#sigv4" => {"name" => "outposts"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Outposts"}
      service.add_operation(:cancel_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CancelCapacityTask"
        operation.name = "CancelCapacityTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCapacityTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCapacityTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}", "code" => 200}}
      end)
      service.add_operation(:cancel_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CancelOrder"
        operation.name = "CancelOrder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelOrderInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelOrderOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orders/{OrderId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CreateOrder"
        operation.name = "CreateOrder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrderInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrderOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orders", "code" => 200}}
      end)
      service.add_operation(:create_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CreateOutpost"
        operation.name = "CreateOutpost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutpostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutpostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/outposts", "code" => 200}}
      end)
      service.add_operation(:create_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#CreateSite"
        operation.name = "CreateSite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSiteInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSiteOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sites", "code" => 200}}
      end)
      service.add_operation(:delete_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#DeleteOutpost"
        operation.name = "DeleteOutpost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutpostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutpostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/outposts/{OutpostId}", "code" => 200}}
      end)
      service.add_operation(:delete_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#DeleteSite"
        operation.name = "DeleteSite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSiteInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSiteOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:get_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetCapacityTask"
        operation.name = "GetCapacityTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}", "code" => 200}}
      end)
      service.add_operation(:get_catalog_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetCatalogItem"
        operation.name = "GetCatalogItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCatalogItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCatalogItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog/item/{CatalogItemId}", "code" => 200}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetConnection"
        operation.name = "GetConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connections/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:get_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOrder"
        operation.name = "GetOrder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOrderInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOrderOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/orders/{OrderId}", "code" => 200}}
      end)
      service.add_operation(:get_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpost"
        operation.name = "GetOutpost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostId}", "code" => 200}}
      end)
      service.add_operation(:get_outpost_billing_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpostBillingInformation"
        operation.name = "GetOutpostBillingInformation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostBillingInformationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostBillingInformationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outpost/{OutpostIdentifier}/billing-information", "code" => 200}}
        operation[:paginator] = Paginators::GetOutpostBillingInformation.new
      end)
      service.add_operation(:get_outpost_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpostInstanceTypes"
        operation.name = "GetOutpostInstanceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostInstanceTypesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostInstanceTypesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostId}/instanceTypes", "code" => 200}}
        operation[:paginator] = Paginators::GetOutpostInstanceTypes.new
      end)
      service.add_operation(:get_outpost_supported_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetOutpostSupportedInstanceTypes"
        operation.name = "GetOutpostSupportedInstanceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostSupportedInstanceTypesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostSupportedInstanceTypesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/supportedInstanceTypes", "code" => 200}}
        operation[:paginator] = Paginators::GetOutpostSupportedInstanceTypes.new
      end)
      service.add_operation(:get_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetSite"
        operation.name = "GetSite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSiteInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSiteOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:get_site_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#GetSiteAddress"
        operation.name = "GetSiteAddress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSiteAddressInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSiteAddressOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sites/{SiteId}/address", "code" => 200}}
      end)
      service.add_operation(:list_asset_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListAssetInstances"
        operation.name = "ListAssetInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetInstancesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetInstancesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/assetInstances", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetInstances.new
      end)
      service.add_operation(:list_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListAssets"
        operation.name = "ListAssets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListAssets.new
      end)
      service.add_operation(:list_blocking_instances_for_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListBlockingInstancesForCapacityTask"
        operation.name = "ListBlockingInstancesForCapacityTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBlockingInstancesForCapacityTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBlockingInstancesForCapacityTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}/blockingInstances", "code" => 200}}
        operation[:paginator] = Paginators::ListBlockingInstancesForCapacityTask.new
      end)
      service.add_operation(:list_capacity_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListCapacityTasks"
        operation.name = "ListCapacityTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCapacityTasksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCapacityTasksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/capacity/tasks", "code" => 200}}
        operation[:paginator] = Paginators::ListCapacityTasks.new
      end)
      service.add_operation(:list_catalog_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListCatalogItems"
        operation.name = "ListCatalogItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCatalogItemsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCatalogItemsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog/items", "code" => 200}}
        operation[:paginator] = Paginators::ListCatalogItems.new
      end)
      service.add_operation(:list_orders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListOrders"
        operation.name = "ListOrders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrdersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrdersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-orders", "code" => 200}}
        operation[:paginator] = Paginators::ListOrders.new
      end)
      service.add_operation(:list_outposts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListOutposts"
        operation.name = "ListOutposts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/outposts", "code" => 200}}
        operation[:paginator] = Paginators::ListOutposts.new
      end)
      service.add_operation(:list_sites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListSites"
        operation.name = "ListSites"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSitesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSitesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sites", "code" => 200}}
        operation[:paginator] = Paginators::ListSites.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_capacity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#StartCapacityTask"
        operation.name = "StartCapacityTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCapacityTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCapacityTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/outposts/{OutpostIdentifier}/capacity", "code" => 200}}
      end)
      service.add_operation(:start_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#StartConnection"
        operation.name = "StartConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connections", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_outpost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateOutpost"
        operation.name = "UpdateOutpost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutpostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutpostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/outposts/{OutpostId}", "code" => 200}}
      end)
      service.add_operation(:update_site, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateSite"
        operation.name = "UpdateSite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sites/{SiteId}", "code" => 200}}
      end)
      service.add_operation(:update_site_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateSiteAddress"
        operation.name = "UpdateSiteAddress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteAddressInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteAddressOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sites/{SiteId}/address", "code" => 200}}
      end)
      service.add_operation(:update_site_rack_physical_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.outposts#UpdateSiteRackPhysicalProperties"
        operation.name = "UpdateSiteRackPhysicalProperties"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteRackPhysicalPropertiesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSiteRackPhysicalPropertiesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
