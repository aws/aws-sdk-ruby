# frozen_string_literal: true

# This is generated code!

module Aws::WorkspacesInstances
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:.*"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmdSevSnpEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#AmdSevSnpEnum", name: "AmdSevSnpEnum")
    AssociateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#AssociateVolumeRequest", name: "AssociateVolumeRequest")
    AssociateVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#AssociateVolumeResponse", name: "AssociateVolumeResponse")
    AutoRecoveryEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#AutoRecoveryEnum", name: "AutoRecoveryEnum")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#pattern" => "^[a-z]{2}-[a-z]+-\\d[a-z](-[a-z0-9]+)?$"})
    BandwidthWeightingEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#BandwidthWeightingEnum", name: "BandwidthWeightingEnum")
    BlockDeviceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#BlockDeviceMappingRequest", name: "BlockDeviceMappingRequest")
    BlockDeviceMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#BlockDeviceMappings", name: "BlockDeviceMappings")
    CapacityReservationPreferenceEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#CapacityReservationPreferenceEnum", name: "CapacityReservationPreferenceEnum")
    CapacityReservationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CapacityReservationSpecification", name: "CapacityReservationSpecification")
    CapacityReservationTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CapacityReservationTarget", name: "CapacityReservationTarget")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionTrackingSpecificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ConnectionTrackingSpecificationRequest", name: "ConnectionTrackingSpecificationRequest")
    CpuCreditsEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#CpuCreditsEnum", name: "CpuCreditsEnum")
    CpuOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CpuOptionsRequest", name: "CpuOptionsRequest")
    CreateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CreateVolumeRequest", name: "CreateVolumeRequest")
    CreateVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CreateVolumeResponse", name: "CreateVolumeResponse")
    CreateWorkspaceInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CreateWorkspaceInstanceRequest", name: "CreateWorkspaceInstanceRequest")
    CreateWorkspaceInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CreateWorkspaceInstanceResponse", name: "CreateWorkspaceInstanceResponse")
    CreditSpecificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#CreditSpecificationRequest", name: "CreditSpecificationRequest")
    DeleteVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#DeleteVolumeRequest", name: "DeleteVolumeRequest")
    DeleteVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#DeleteVolumeResponse", name: "DeleteVolumeResponse")
    DeleteWorkspaceInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#DeleteWorkspaceInstanceRequest", name: "DeleteWorkspaceInstanceRequest")
    DeleteWorkspaceInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#DeleteWorkspaceInstanceResponse", name: "DeleteWorkspaceInstanceResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    DeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#DeviceName", name: "DeviceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    DisassociateModeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#DisassociateModeEnum", name: "DisassociateModeEnum")
    DisassociateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#DisassociateVolumeRequest", name: "DisassociateVolumeRequest")
    DisassociateVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#DisassociateVolumeResponse", name: "DisassociateVolumeResponse")
    EC2InstanceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#EC2InstanceError", name: "EC2InstanceError")
    EC2InstanceErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#EC2InstanceErrors", name: "EC2InstanceErrors")
    EC2ManagedInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#EC2ManagedInstance", name: "EC2ManagedInstance")
    EbsBlockDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#EbsBlockDevice", name: "EbsBlockDevice")
    EnaSrdSpecificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#EnaSrdSpecificationRequest", name: "EnaSrdSpecificationRequest")
    EnaSrdUdpSpecificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#EnaSrdUdpSpecificationRequest", name: "EnaSrdUdpSpecificationRequest")
    EnclaveOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#EnclaveOptionsRequest", name: "EnclaveOptionsRequest")
    GetWorkspaceInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#GetWorkspaceInstanceRequest", name: "GetWorkspaceInstanceRequest")
    GetWorkspaceInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#GetWorkspaceInstanceResponse", name: "GetWorkspaceInstanceResponse")
    HibernationOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#HibernationOptionsRequest", name: "HibernationOptionsRequest")
    HostId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#HostId", name: "HostId", traits: {"smithy.api#pattern" => "^h-[0-9a-zA-Z]{1,63}$"})
    HostnameTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#HostnameTypeEnum", name: "HostnameTypeEnum")
    HttpEndpointEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#HttpEndpointEnum", name: "HttpEndpointEnum")
    HttpProtocolIpv6Enum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#HttpProtocolIpv6Enum", name: "HttpProtocolIpv6Enum")
    HttpPutResponseHopLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesinstances#HttpPutResponseHopLimit", name: "HttpPutResponseHopLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    HttpTokensEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#HttpTokensEnum", name: "HttpTokensEnum")
    IamInstanceProfileSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#IamInstanceProfileSpecification", name: "IamInstanceProfileSpecification")
    ImageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#ImageId", name: "ImageId", traits: {"smithy.api#pattern" => "^ami-[0-9a-zA-Z]{1,63}$"})
    InstanceInterruptionBehaviorEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#InstanceInterruptionBehaviorEnum", name: "InstanceInterruptionBehaviorEnum")
    InstanceIpv6Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceIpv6Address", name: "InstanceIpv6Address")
    InstanceMaintenanceOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceMaintenanceOptionsRequest", name: "InstanceMaintenanceOptionsRequest")
    InstanceMarketOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceMarketOptionsRequest", name: "InstanceMarketOptionsRequest")
    InstanceMetadataOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceMetadataOptionsRequest", name: "InstanceMetadataOptionsRequest")
    InstanceMetadataTagsEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#InstanceMetadataTagsEnum", name: "InstanceMetadataTagsEnum")
    InstanceNetworkInterfaceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceNetworkInterfaceSpecification", name: "InstanceNetworkInterfaceSpecification")
    InstanceNetworkPerformanceOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceNetworkPerformanceOptionsRequest", name: "InstanceNetworkPerformanceOptionsRequest")
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#InstanceType", name: "InstanceType", traits: {"smithy.api#pattern" => "^([a-z0-9-]+)\\.([a-z0-9]+)$"})
    InstanceTypeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InstanceTypeInfo", name: "InstanceTypeInfo")
    InstanceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#InstanceTypes", name: "InstanceTypes")
    InterfaceTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#InterfaceTypeEnum", name: "InterfaceTypeEnum")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    Ipv4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#Ipv4Address", name: "Ipv4Address", traits: {"smithy.api#pattern" => "^(\\b25[0-5]|\\b2[0-4][0-9]|\\b[01]?[0-9][0-9]?)(\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$", "smithy.api#sensitive" => {}})
    Ipv4Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#Ipv4Prefix", name: "Ipv4Prefix", traits: {"smithy.api#pattern" => "(?:(?:\\d|[01]?\\d\\d|2[0-4]\\d|25[0-5])\\.){3}(?:25[0-5]|2[0-4]\\d|[01]?\\d\\d|\\d)(?:/\\d{1,2})?"})
    Ipv4PrefixSpecificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#Ipv4PrefixSpecificationRequest", name: "Ipv4PrefixSpecificationRequest")
    Ipv4Prefixes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#Ipv4Prefixes", name: "Ipv4Prefixes")
    Ipv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#Ipv6Address", name: "Ipv6Address", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#sensitive" => {}})
    Ipv6Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#Ipv6Addresses", name: "Ipv6Addresses")
    Ipv6Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#Ipv6Prefix", name: "Ipv6Prefix", traits: {"smithy.api#pattern" => "^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))\\/([0-9]{1,2}|1[01][0-9]|12[0-8])$"})
    Ipv6PrefixSpecificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#Ipv6PrefixSpecificationRequest", name: "Ipv6PrefixSpecificationRequest")
    Ipv6Prefixes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#Ipv6Prefixes", name: "Ipv6Prefixes")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#sensitive" => {}})
    LicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#LicenseConfigurationRequest", name: "LicenseConfigurationRequest")
    LicenseSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#LicenseSpecifications", name: "LicenseSpecifications")
    ListInstanceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListInstanceTypesRequest", name: "ListInstanceTypesRequest")
    ListInstanceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListInstanceTypesResponse", name: "ListInstanceTypesResponse")
    ListRegionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListRegionsRequest", name: "ListRegionsRequest")
    ListRegionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListRegionsResponse", name: "ListRegionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWorkspaceInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListWorkspaceInstancesRequest", name: "ListWorkspaceInstancesRequest")
    ListWorkspaceInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ListWorkspaceInstancesResponse", name: "ListWorkspaceInstancesResponse")
    ManagedInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ManagedInstanceRequest", name: "ManagedInstanceRequest")
    MarketTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#MarketTypeEnum", name: "MarketTypeEnum")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesinstances#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#NetworkInterfaceId", name: "NetworkInterfaceId", traits: {"smithy.api#pattern" => "^eni-[0-9a-zA-Z]{1,63}$"})
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#NetworkInterfaces", name: "NetworkInterfaces")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesinstances#NonNegativeInteger", name: "NonNegativeInteger", traits: {"smithy.api#range" => {"min" => 0}})
    Placement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#Placement", name: "Placement")
    PlacementGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#PlacementGroupId", name: "PlacementGroupId", traits: {"smithy.api#pattern" => "^pg-[0-9a-zA-Z]{1,63}$"})
    PrivateDnsNameOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#PrivateDnsNameOptionsRequest", name: "PrivateDnsNameOptionsRequest")
    PrivateIpAddressSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#PrivateIpAddressSpecification", name: "PrivateIpAddressSpecification")
    PrivateIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#PrivateIpAddresses", name: "PrivateIpAddresses")
    ProvisionStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#ProvisionStateEnum", name: "ProvisionStateEnum")
    ProvisionStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#ProvisionStates", name: "ProvisionStates")
    Region = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#Region", name: "Region")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#RegionList", name: "RegionList")
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#RegionName", name: "RegionName", traits: {"smithy.api#pattern" => "^[-0-9a-z]{1,31}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#ResourceTypeEnum", name: "ResourceTypeEnum")
    RunInstancesMonitoringEnabled = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#RunInstancesMonitoringEnabled", name: "RunInstancesMonitoringEnabled")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^sg-[0-9a-zA-Z]{1,63}$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#SecurityGroupIds", name: "SecurityGroupIds")
    SecurityGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#SecurityGroupName", name: "SecurityGroupName", traits: {"smithy.api#pattern" => "^(?!sg-)[\\w .:/()#,@\\[\\]+=&;{}!$*-]{0,255}$"})
    SecurityGroupNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#SecurityGroupNames", name: "SecurityGroupNames")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#SnapshotId", name: "SnapshotId", traits: {"smithy.api#pattern" => "^snap-[0-9a-zA-Z]{1,63}$"})
    SpotInstanceTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#SpotInstanceTypeEnum", name: "SpotInstanceTypeEnum")
    SpotMarketOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#SpotMarketOptions", name: "SpotMarketOptions")
    String128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#String128", name: "String128", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    String64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#String64", name: "String64", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#SubnetId", name: "SubnetId", traits: {"smithy.api#pattern" => "^subnet-[0-9a-zA-Z]{1,63}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#TagResourceResponse", name: "TagResourceResponse")
    TagSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#TagSpecification", name: "TagSpecification")
    TagSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#TagSpecifications", name: "TagSpecifications", traits: {"smithy.api#length" => {"max" => 30}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TenancyEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#TenancyEnum", name: "TenancyEnum")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#UntagResourceResponse", name: "UntagResourceResponse")
    UserData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#UserData", name: "UserData", traits: {"smithy.api#length" => {"min" => 0, "max" => 16000}, "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#ValidationExceptionReason", name: "ValidationExceptionReason")
    VirtualName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#VirtualName", name: "VirtualName", traits: {"smithy.api#pattern" => "^ephemeral(0|[1-9][0-9]{0,2})$"})
    VolumeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#VolumeId", name: "VolumeId", traits: {"smithy.api#pattern" => "^vol-[0-9a-zA-Z]{1,63}$"})
    VolumeTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesinstances#VolumeTypeEnum", name: "VolumeTypeEnum")
    WorkspaceInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#WorkspaceInstance", name: "WorkspaceInstance")
    WorkspaceInstanceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesinstances#WorkspaceInstanceError", name: "WorkspaceInstanceError")
    WorkspaceInstanceErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#WorkspaceInstanceErrors", name: "WorkspaceInstanceErrors")
    WorkspaceInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesinstances#WorkspaceInstanceId", name: "WorkspaceInstanceId", traits: {"smithy.api#length" => {"min" => 15, "max" => 70}, "smithy.api#pattern" => "^wsinst-[0-9a-zA-Z]{8,63}$"})
    WorkspaceInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesinstances#WorkspaceInstances", name: "WorkspaceInstances")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AmdSevSnpEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    AmdSevSnpEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AssociateVolumeRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    AssociateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#required" => {}}))
    AssociateVolumeRequest.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "Device", traits: {"smithy.api#required" => {}}))
    AssociateVolumeRequest.type = Types::AssociateVolumeRequest
    AssociateVolumeResponse.type = Types::AssociateVolumeResponse
    AutoRecoveryEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AutoRecoveryEnum.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    BandwidthWeightingEnum.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    BandwidthWeightingEnum.add_member(:vpc_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_1", traits: {"smithy.api#enumValue" => "vpc-1"}))
    BandwidthWeightingEnum.add_member(:ebs_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_1", traits: {"smithy.api#enumValue" => "ebs-1"}))
    BlockDeviceMappingRequest.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "DeviceName"))
    BlockDeviceMappingRequest.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsBlockDevice, name: "Ebs"))
    BlockDeviceMappingRequest.add_member(:no_device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "NoDevice"))
    BlockDeviceMappingRequest.add_member(:virtual_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualName, name: "VirtualName"))
    BlockDeviceMappingRequest.type = Types::BlockDeviceMappingRequest
    BlockDeviceMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceMappingRequest, name: "member"))
    CapacityReservationPreferenceEnum.add_member(:capacity_reservations_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_RESERVATIONS_ONLY", traits: {"smithy.api#enumValue" => "capacity-reservations-only"}))
    CapacityReservationPreferenceEnum.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "open"}))
    CapacityReservationPreferenceEnum.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    CapacityReservationSpecification.add_member(:capacity_reservation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationPreferenceEnum, name: "CapacityReservationPreference"))
    CapacityReservationSpecification.add_member(:capacity_reservation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationTarget, name: "CapacityReservationTarget"))
    CapacityReservationSpecification.type = Types::CapacityReservationSpecification
    CapacityReservationTarget.add_member(:capacity_reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "CapacityReservationId"))
    CapacityReservationTarget.add_member(:capacity_reservation_resource_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "CapacityReservationResourceGroupArn"))
    CapacityReservationTarget.type = Types::CapacityReservationTarget
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionTrackingSpecificationRequest.add_member(:tcp_established_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "TcpEstablishedTimeout"))
    ConnectionTrackingSpecificationRequest.add_member(:udp_stream_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "UdpStreamTimeout"))
    ConnectionTrackingSpecificationRequest.add_member(:udp_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "UdpTimeout"))
    ConnectionTrackingSpecificationRequest.type = Types::ConnectionTrackingSpecificationRequest
    CpuCreditsEnum.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    CpuCreditsEnum.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNLIMITED", traits: {"smithy.api#enumValue" => "unlimited"}))
    CpuOptionsRequest.add_member(:amd_sev_snp, ::Smithy::Schema::Shapes::MemberShape.new(target: AmdSevSnpEnum, name: "AmdSevSnp"))
    CpuOptionsRequest.add_member(:core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "CoreCount"))
    CpuOptionsRequest.add_member(:threads_per_core, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "ThreadsPerCore"))
    CpuOptionsRequest.type = Types::CpuOptionsRequest
    CreateVolumeRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "AvailabilityZone", traits: {"smithy.api#required" => {}}))
    CreateVolumeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVolumeRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Encrypted"))
    CreateVolumeRequest.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Iops"))
    CreateVolumeRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateVolumeRequest.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "SizeInGB"))
    CreateVolumeRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    CreateVolumeRequest.add_member(:tag_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSpecifications, name: "TagSpecifications"))
    CreateVolumeRequest.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Throughput"))
    CreateVolumeRequest.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeTypeEnum, name: "VolumeType"))
    CreateVolumeRequest.type = Types::CreateVolumeRequest
    CreateVolumeResponse.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    CreateVolumeResponse.type = Types::CreateVolumeResponse
    CreateWorkspaceInstanceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWorkspaceInstanceRequest.add_member(:managed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstanceRequest, name: "ManagedInstance", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInstanceRequest.type = Types::CreateWorkspaceInstanceRequest
    CreateWorkspaceInstanceResponse.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId"))
    CreateWorkspaceInstanceResponse.type = Types::CreateWorkspaceInstanceResponse
    CreditSpecificationRequest.add_member(:cpu_credits, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuCreditsEnum, name: "CpuCredits"))
    CreditSpecificationRequest.type = Types::CreditSpecificationRequest
    DeleteVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#required" => {}}))
    DeleteVolumeRequest.type = Types::DeleteVolumeRequest
    DeleteVolumeResponse.type = Types::DeleteVolumeResponse
    DeleteWorkspaceInstanceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceInstanceRequest.type = Types::DeleteWorkspaceInstanceRequest
    DeleteWorkspaceInstanceResponse.type = Types::DeleteWorkspaceInstanceResponse
    DisassociateModeEnum.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORCE", traits: {"smithy.api#enumValue" => "FORCE"}))
    DisassociateModeEnum.add_member(:no_force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_FORCE", traits: {"smithy.api#enumValue" => "NO_FORCE"}))
    DisassociateVolumeRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    DisassociateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#required" => {}}))
    DisassociateVolumeRequest.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "Device"))
    DisassociateVolumeRequest.add_member(:disassociate_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateModeEnum, name: "DisassociateMode"))
    DisassociateVolumeRequest.type = Types::DisassociateVolumeRequest
    DisassociateVolumeResponse.type = Types::DisassociateVolumeResponse
    EC2InstanceError.add_member(:ec2_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EC2ErrorCode"))
    EC2InstanceError.add_member(:ec2_exception_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EC2ExceptionType"))
    EC2InstanceError.add_member(:ec2_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EC2ErrorMessage"))
    EC2InstanceError.type = Types::EC2InstanceError
    EC2InstanceErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceError, name: "member"))
    EC2ManagedInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId"))
    EC2ManagedInstance.type = Types::EC2ManagedInstance
    EbsBlockDevice.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeTypeEnum, name: "VolumeType"))
    EbsBlockDevice.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Encrypted"))
    EbsBlockDevice.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    EbsBlockDevice.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Iops"))
    EbsBlockDevice.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Throughput"))
    EbsBlockDevice.add_member(:volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "VolumeSize"))
    EbsBlockDevice.type = Types::EbsBlockDevice
    EnaSrdSpecificationRequest.add_member(:ena_srd_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnaSrdEnabled"))
    EnaSrdSpecificationRequest.add_member(:ena_srd_udp_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: EnaSrdUdpSpecificationRequest, name: "EnaSrdUdpSpecification"))
    EnaSrdSpecificationRequest.type = Types::EnaSrdSpecificationRequest
    EnaSrdUdpSpecificationRequest.add_member(:ena_srd_udp_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnaSrdUdpEnabled"))
    EnaSrdUdpSpecificationRequest.type = Types::EnaSrdUdpSpecificationRequest
    EnclaveOptionsRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled"))
    EnclaveOptionsRequest.type = Types::EnclaveOptionsRequest
    GetWorkspaceInstanceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    GetWorkspaceInstanceRequest.type = Types::GetWorkspaceInstanceRequest
    GetWorkspaceInstanceResponse.add_member(:workspace_instance_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceErrors, name: "WorkspaceInstanceErrors"))
    GetWorkspaceInstanceResponse.add_member(:ec2_instance_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceErrors, name: "EC2InstanceErrors"))
    GetWorkspaceInstanceResponse.add_member(:provision_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionStateEnum, name: "ProvisionState"))
    GetWorkspaceInstanceResponse.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId"))
    GetWorkspaceInstanceResponse.add_member(:ec2_managed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2ManagedInstance, name: "EC2ManagedInstance"))
    GetWorkspaceInstanceResponse.type = Types::GetWorkspaceInstanceResponse
    HibernationOptionsRequest.add_member(:configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Configured"))
    HibernationOptionsRequest.type = Types::HibernationOptionsRequest
    HostnameTypeEnum.add_member(:ip_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_NAME", traits: {"smithy.api#enumValue" => "ip-name"}))
    HostnameTypeEnum.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NAME", traits: {"smithy.api#enumValue" => "resource-name"}))
    HttpEndpointEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpEndpointEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpProtocolIpv6Enum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpProtocolIpv6Enum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpTokensEnum.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "optional"}))
    HttpTokensEnum.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    IamInstanceProfileSpecification.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "Arn"))
    IamInstanceProfileSpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "Name"))
    IamInstanceProfileSpecification.type = Types::IamInstanceProfileSpecification
    InstanceInterruptionBehaviorEnum.add_member(:hibernate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIBERNATE", traits: {"smithy.api#enumValue" => "hibernate"}))
    InstanceInterruptionBehaviorEnum.add_member(:stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP", traits: {"smithy.api#enumValue" => "stop"}))
    InstanceIpv6Address.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "Ipv6Address"))
    InstanceIpv6Address.add_member(:is_primary_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IsPrimaryIpv6"))
    InstanceIpv6Address.type = Types::InstanceIpv6Address
    InstanceMaintenanceOptionsRequest.add_member(:auto_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRecoveryEnum, name: "AutoRecovery"))
    InstanceMaintenanceOptionsRequest.type = Types::InstanceMaintenanceOptionsRequest
    InstanceMarketOptionsRequest.add_member(:market_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketTypeEnum, name: "MarketType"))
    InstanceMarketOptionsRequest.add_member(:spot_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotMarketOptions, name: "SpotOptions"))
    InstanceMarketOptionsRequest.type = Types::InstanceMarketOptionsRequest
    InstanceMetadataOptionsRequest.add_member(:http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointEnum, name: "HttpEndpoint"))
    InstanceMetadataOptionsRequest.add_member(:http_protocol_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpProtocolIpv6Enum, name: "HttpProtocolIpv6"))
    InstanceMetadataOptionsRequest.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPutResponseHopLimit, name: "HttpPutResponseHopLimit"))
    InstanceMetadataOptionsRequest.add_member(:http_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTokensEnum, name: "HttpTokens"))
    InstanceMetadataOptionsRequest.add_member(:instance_metadata_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataTagsEnum, name: "InstanceMetadataTags"))
    InstanceMetadataOptionsRequest.type = Types::InstanceMetadataOptionsRequest
    InstanceMetadataTagsEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    InstanceMetadataTagsEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    InstanceNetworkInterfaceSpecification.add_member(:associate_carrier_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AssociateCarrierIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AssociatePublicIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:connection_tracking_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTrackingSpecificationRequest, name: "ConnectionTrackingSpecification"))
    InstanceNetworkInterfaceSpecification.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    InstanceNetworkInterfaceSpecification.add_member(:device_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "DeviceIndex"))
    InstanceNetworkInterfaceSpecification.add_member(:ena_srd_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: EnaSrdSpecificationRequest, name: "EnaSrdSpecification"))
    InstanceNetworkInterfaceSpecification.add_member(:interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceTypeEnum, name: "InterfaceType"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv4_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Prefixes, name: "Ipv4Prefixes"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv4_prefix_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Ipv4PrefixCount"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_address_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Ipv6AddressCount"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addresses, name: "Ipv6Addresses"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Prefixes, name: "Ipv6Prefixes"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_prefix_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Ipv6PrefixCount"))
    InstanceNetworkInterfaceSpecification.add_member(:network_card_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "NetworkCardIndex"))
    InstanceNetworkInterfaceSpecification.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId"))
    InstanceNetworkInterfaceSpecification.add_member(:primary_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PrimaryIpv6"))
    InstanceNetworkInterfaceSpecification.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "PrivateIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:private_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIpAddresses, name: "PrivateIpAddresses"))
    InstanceNetworkInterfaceSpecification.add_member(:secondary_private_ip_address_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "SecondaryPrivateIpAddressCount"))
    InstanceNetworkInterfaceSpecification.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "Groups"))
    InstanceNetworkInterfaceSpecification.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId"))
    InstanceNetworkInterfaceSpecification.type = Types::InstanceNetworkInterfaceSpecification
    InstanceNetworkPerformanceOptionsRequest.add_member(:bandwidth_weighting, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthWeightingEnum, name: "BandwidthWeighting"))
    InstanceNetworkPerformanceOptionsRequest.type = Types::InstanceNetworkPerformanceOptionsRequest
    InstanceTypeInfo.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    InstanceTypeInfo.type = Types::InstanceTypeInfo
    InstanceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeInfo, name: "member"))
    InterfaceTypeEnum.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERFACE", traits: {"smithy.api#enumValue" => "interface"}))
    InterfaceTypeEnum.add_member(:efa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFA", traits: {"smithy.api#enumValue" => "efa"}))
    InterfaceTypeEnum.add_member(:efa_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFA_ONLY", traits: {"smithy.api#enumValue" => "efa-only"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Ipv4PrefixSpecificationRequest.add_member(:ipv4_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Prefix, name: "Ipv4Prefix"))
    Ipv4PrefixSpecificationRequest.type = Types::Ipv4PrefixSpecificationRequest
    Ipv4Prefixes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4PrefixSpecificationRequest, name: "member"))
    Ipv6Addresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIpv6Address, name: "member"))
    Ipv6PrefixSpecificationRequest.add_member(:ipv6_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Prefix, name: "Ipv6Prefix"))
    Ipv6PrefixSpecificationRequest.type = Types::Ipv6PrefixSpecificationRequest
    Ipv6Prefixes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6PrefixSpecificationRequest, name: "member"))
    LicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "LicenseConfigurationArn"))
    LicenseConfigurationRequest.type = Types::LicenseConfigurationRequest
    LicenseSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationRequest, name: "member"))
    ListInstanceTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListInstanceTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInstanceTypesRequest.type = Types::ListInstanceTypesRequest
    ListInstanceTypesResponse.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypes, name: "InstanceTypes", traits: {"smithy.api#required" => {}}))
    ListInstanceTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInstanceTypesResponse.type = Types::ListInstanceTypesResponse
    ListRegionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListRegionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRegionsRequest.type = Types::ListRegionsRequest
    ListRegionsResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions", traits: {"smithy.api#required" => {}}))
    ListRegionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRegionsResponse.type = Types::ListRegionsResponse
    ListTagsForResourceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWorkspaceInstancesRequest.add_member(:provision_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionStates, name: "ProvisionStates"))
    ListWorkspaceInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListWorkspaceInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWorkspaceInstancesRequest.type = Types::ListWorkspaceInstancesRequest
    ListWorkspaceInstancesResponse.add_member(:workspace_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstances, name: "WorkspaceInstances", traits: {"smithy.api#required" => {}}))
    ListWorkspaceInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWorkspaceInstancesResponse.type = Types::ListWorkspaceInstancesResponse
    ManagedInstanceRequest.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceMappings, name: "BlockDeviceMappings"))
    ManagedInstanceRequest.add_member(:capacity_reservation_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationSpecification, name: "CapacityReservationSpecification"))
    ManagedInstanceRequest.add_member(:cpu_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuOptionsRequest, name: "CpuOptions"))
    ManagedInstanceRequest.add_member(:credit_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditSpecificationRequest, name: "CreditSpecification"))
    ManagedInstanceRequest.add_member(:disable_api_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DisableApiStop"))
    ManagedInstanceRequest.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EbsOptimized"))
    ManagedInstanceRequest.add_member(:enable_primary_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnablePrimaryIpv6"))
    ManagedInstanceRequest.add_member(:enclave_options, ::Smithy::Schema::Shapes::MemberShape.new(target: EnclaveOptionsRequest, name: "EnclaveOptions"))
    ManagedInstanceRequest.add_member(:hibernation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: HibernationOptionsRequest, name: "HibernationOptions"))
    ManagedInstanceRequest.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: IamInstanceProfileSpecification, name: "IamInstanceProfile"))
    ManagedInstanceRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageId, name: "ImageId"))
    ManagedInstanceRequest.add_member(:instance_market_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMarketOptionsRequest, name: "InstanceMarketOptions"))
    ManagedInstanceRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    ManagedInstanceRequest.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addresses, name: "Ipv6Addresses"))
    ManagedInstanceRequest.add_member(:ipv6_address_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "Ipv6AddressCount"))
    ManagedInstanceRequest.add_member(:kernel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "KernelId"))
    ManagedInstanceRequest.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "KeyName"))
    ManagedInstanceRequest.add_member(:license_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseSpecifications, name: "LicenseSpecifications"))
    ManagedInstanceRequest.add_member(:maintenance_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMaintenanceOptionsRequest, name: "MaintenanceOptions"))
    ManagedInstanceRequest.add_member(:metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptionsRequest, name: "MetadataOptions"))
    ManagedInstanceRequest.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: RunInstancesMonitoringEnabled, name: "Monitoring"))
    ManagedInstanceRequest.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "NetworkInterfaces"))
    ManagedInstanceRequest.add_member(:network_performance_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNetworkPerformanceOptionsRequest, name: "NetworkPerformanceOptions"))
    ManagedInstanceRequest.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, name: "Placement"))
    ManagedInstanceRequest.add_member(:private_dns_name_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDnsNameOptionsRequest, name: "PrivateDnsNameOptions"))
    ManagedInstanceRequest.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "PrivateIpAddress"))
    ManagedInstanceRequest.add_member(:ramdisk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "RamdiskId"))
    ManagedInstanceRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    ManagedInstanceRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupNames, name: "SecurityGroups"))
    ManagedInstanceRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId"))
    ManagedInstanceRequest.add_member(:tag_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSpecifications, name: "TagSpecifications"))
    ManagedInstanceRequest.add_member(:user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserData, name: "UserData"))
    ManagedInstanceRequest.type = Types::ManagedInstanceRequest
    MarketTypeEnum.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "spot"}))
    MarketTypeEnum.add_member(:capacity_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_BLOCK", traits: {"smithy.api#enumValue" => "capacity-block"}))
    NetworkInterfaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNetworkInterfaceSpecification, name: "member"))
    Placement.add_member(:affinity, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "Affinity"))
    Placement.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    Placement.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementGroupId, name: "GroupId"))
    Placement.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "GroupName"))
    Placement.add_member(:host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostId, name: "HostId"))
    Placement.add_member(:host_resource_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "HostResourceGroupArn"))
    Placement.add_member(:partition_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "PartitionNumber"))
    Placement.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyEnum, name: "Tenancy"))
    Placement.type = Types::Placement
    PrivateDnsNameOptionsRequest.add_member(:hostname_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HostnameTypeEnum, name: "HostnameType"))
    PrivateDnsNameOptionsRequest.add_member(:enable_resource_name_dns_a_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnableResourceNameDnsARecord"))
    PrivateDnsNameOptionsRequest.add_member(:enable_resource_name_dns_aaaa_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnableResourceNameDnsAAAARecord"))
    PrivateDnsNameOptionsRequest.type = Types::PrivateDnsNameOptionsRequest
    PrivateIpAddressSpecification.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Primary"))
    PrivateIpAddressSpecification.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "PrivateIpAddress"))
    PrivateIpAddressSpecification.type = Types::PrivateIpAddressSpecification
    PrivateIpAddresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIpAddressSpecification, name: "member"))
    ProvisionStateEnum.add_member(:allocating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOCATING", traits: {"smithy.api#enumValue" => "ALLOCATING"}))
    ProvisionStateEnum.add_member(:allocated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOCATED", traits: {"smithy.api#enumValue" => "ALLOCATED"}))
    ProvisionStateEnum.add_member(:deallocating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEALLOCATING", traits: {"smithy.api#enumValue" => "DEALLOCATING"}))
    ProvisionStateEnum.add_member(:deallocated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEALLOCATED", traits: {"smithy.api#enumValue" => "DEALLOCATED"}))
    ProvisionStateEnum.add_member(:error_allocating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ALLOCATING", traits: {"smithy.api#enumValue" => "ERROR_ALLOCATING"}))
    ProvisionStateEnum.add_member(:error_deallocating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_DEALLOCATING", traits: {"smithy.api#enumValue" => "ERROR_DEALLOCATING"}))
    ProvisionStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionStateEnum, name: "member"))
    Region.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    Region.type = Types::Region
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeEnum.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE", traits: {"smithy.api#enumValue" => "instance"}))
    ResourceTypeEnum.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME", traits: {"smithy.api#enumValue" => "volume"}))
    ResourceTypeEnum.add_member(:spot_instances_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_INSTANCES_REQUEST", traits: {"smithy.api#enumValue" => "spot-instances-request"}))
    ResourceTypeEnum.add_member(:network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_INTERFACE", traits: {"smithy.api#enumValue" => "network-interface"}))
    RunInstancesMonitoringEnabled.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled"))
    RunInstancesMonitoringEnabled.type = Types::RunInstancesMonitoringEnabled
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SecurityGroupNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupName, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpotInstanceTypeEnum.add_member(:one_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_TIME", traits: {"smithy.api#enumValue" => "one-time"}))
    SpotInstanceTypeEnum.add_member(:persistent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSISTENT", traits: {"smithy.api#enumValue" => "persistent"}))
    SpotMarketOptions.add_member(:block_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "BlockDurationMinutes"))
    SpotMarketOptions.add_member(:instance_interruption_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInterruptionBehaviorEnum, name: "InstanceInterruptionBehavior"))
    SpotMarketOptions.add_member(:max_price, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "MaxPrice"))
    SpotMarketOptions.add_member(:spot_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotInstanceTypeEnum, name: "SpotInstanceType"))
    SpotMarketOptions.add_member(:valid_until_utc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ValidUntilUtc"))
    SpotMarketOptions.type = Types::SpotMarketOptions
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagSpecification.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeEnum, name: "ResourceType"))
    TagSpecification.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    TagSpecification.type = Types::TagSpecification
    TagSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSpecification, name: "member"))
    TenancyEnum.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    TenancyEnum.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEDICATED", traits: {"smithy.api#enumValue" => "dedicated"}))
    TenancyEnum.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "FieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:unsupported_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_OPERATION", traits: {"smithy.api#enumValue" => "UNSUPPORTED_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:dependency_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPENDENCY_FAILURE", traits: {"smithy.api#enumValue" => "DEPENDENCY_FAILURE"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VolumeTypeEnum.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    VolumeTypeEnum.add_member(:io1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO1", traits: {"smithy.api#enumValue" => "io1"}))
    VolumeTypeEnum.add_member(:io2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO2", traits: {"smithy.api#enumValue" => "io2"}))
    VolumeTypeEnum.add_member(:gp2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP2", traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeTypeEnum.add_member(:sc1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SC1", traits: {"smithy.api#enumValue" => "sc1"}))
    VolumeTypeEnum.add_member(:st1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST1", traits: {"smithy.api#enumValue" => "st1"}))
    VolumeTypeEnum.add_member(:gp3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP3", traits: {"smithy.api#enumValue" => "gp3"}))
    WorkspaceInstance.add_member(:provision_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionStateEnum, name: "ProvisionState"))
    WorkspaceInstance.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceId, name: "WorkspaceInstanceId"))
    WorkspaceInstance.add_member(:ec2_managed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2ManagedInstance, name: "EC2ManagedInstance"))
    WorkspaceInstance.type = Types::WorkspaceInstance
    WorkspaceInstanceError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorCode"))
    WorkspaceInstanceError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage"))
    WorkspaceInstanceError.type = Types::WorkspaceInstanceError
    WorkspaceInstanceErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstanceError, name: "member"))
    WorkspaceInstances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceInstance, name: "member"))

    EUCMIFrontendAPIService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspacesinstances#EUCMIFrontendAPIService"
      service.name = "EUCMIFrontendAPIService"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Workspaces Instances", "arnNamespace" => "workspaces-instances", "cloudFormationName" => "WorkspacesInstances", "cloudTrailEventSource" => "workspaces-instances.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "workspaces-instances"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Workspaces Instances"}
      service.add_operation(:associate_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#AssociateVolume"
        operation.name = "AssociateVolume"
        operation.input = AssociateVolumeRequest
        operation.output = AssociateVolumeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to associate a workspace managed volume to a workspace managed instance in your account"}}
      end)
      service.add_operation(:create_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#CreateVolume"
        operation.name = "CreateVolume"
        operation.input = CreateVolumeRequest
        operation.output = CreateVolumeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a workspace managed volume in your account"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#CreateWorkspaceInstance"
        operation.name = "CreateWorkspaceInstance"
        operation.input = CreateWorkspaceInstanceRequest
        operation.output = CreateWorkspaceInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a workspace managed instance in your account"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#DeleteVolume"
        operation.name = "DeleteVolume"
        operation.input = DeleteVolumeRequest
        operation.output = DeleteVolumeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a workspace managed volume in your account"}}
      end)
      service.add_operation(:delete_workspace_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#DeleteWorkspaceInstance"
        operation.name = "DeleteWorkspaceInstance"
        operation.input = DeleteWorkspaceInstanceRequest
        operation.output = DeleteWorkspaceInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a workspace managed instance in your account"}}
      end)
      service.add_operation(:disassociate_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#DisassociateVolume"
        operation.name = "DisassociateVolume"
        operation.input = DisassociateVolumeRequest
        operation.output = DisassociateVolumeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate a workspace managed volume from a workspace managed instance in your account"}}
      end)
      service.add_operation(:get_workspace_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#GetWorkspaceInstance"
        operation.name = "GetWorkspaceInstance"
        operation.input = GetWorkspaceInstanceRequest
        operation.output = GetWorkspaceInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get details for a specific workspace managed instance in your account"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListInstanceTypes"
        operation.name = "ListInstanceTypes"
        operation.input = ListInstanceTypesRequest
        operation.output = ListInstanceTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all supported instance types"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInstanceTypes.new
      end)
      service.add_operation(:list_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListRegions"
        operation.name = "ListRegions"
        operation.input = ListRegionsRequest
        operation.output = ListRegionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all supported AWS regions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListRegionsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListRegions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list user tags for resources in your account"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_workspace_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListWorkspaceInstances"
        operation.name = "ListWorkspaceInstances"
        operation.input = ListWorkspaceInstancesRequest
        operation.output = ListWorkspaceInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list workspace managed instances in your account"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceInstances.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add user tags to resources in your account"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove user tags from resources in your account"}}
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
