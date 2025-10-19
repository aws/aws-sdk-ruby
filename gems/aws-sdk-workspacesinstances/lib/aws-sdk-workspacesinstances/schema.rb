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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AmdSevSnpEnum.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    AmdSevSnpEnum.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AssociateVolumeRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    AssociateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId", traits: {"smithy.api#required" => {}}))
    AssociateVolumeRequest.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: "Device", traits: {"smithy.api#required" => {}}))
    AssociateVolumeRequest.type = Types::AssociateVolumeRequest
    AssociateVolumeResponse.type = Types::AssociateVolumeResponse
    AutoRecoveryEnum.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AutoRecoveryEnum.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    BandwidthWeightingEnum.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    BandwidthWeightingEnum.add_member(:vpc_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VPC_1", traits: {"smithy.api#enumValue" => "vpc-1"}))
    BandwidthWeightingEnum.add_member(:ebs_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EBS_1", traits: {"smithy.api#enumValue" => "ebs-1"}))
    BlockDeviceMappingRequest.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    BlockDeviceMappingRequest.add_member(:ebs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDevice, location_name: "Ebs"))
    BlockDeviceMappingRequest.add_member(:no_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: "NoDevice"))
    BlockDeviceMappingRequest.add_member(:virtual_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualName, location_name: "VirtualName"))
    BlockDeviceMappingRequest.type = Types::BlockDeviceMappingRequest
    BlockDeviceMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMappingRequest)
    CapacityReservationPreferenceEnum.add_member(:capacity_reservations_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPACITY_RESERVATIONS_ONLY", traits: {"smithy.api#enumValue" => "capacity-reservations-only"}))
    CapacityReservationPreferenceEnum.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN", traits: {"smithy.api#enumValue" => "open"}))
    CapacityReservationPreferenceEnum.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    CapacityReservationSpecification.add_member(:capacity_reservation_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationPreferenceEnum, location_name: "CapacityReservationPreference"))
    CapacityReservationSpecification.add_member(:capacity_reservation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationTarget, location_name: "CapacityReservationTarget"))
    CapacityReservationSpecification.type = Types::CapacityReservationSpecification
    CapacityReservationTarget.add_member(:capacity_reservation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: "CapacityReservationId"))
    CapacityReservationTarget.add_member(:capacity_reservation_resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "CapacityReservationResourceGroupArn"))
    CapacityReservationTarget.type = Types::CapacityReservationTarget
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionTrackingSpecificationRequest.add_member(:tcp_established_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "TcpEstablishedTimeout"))
    ConnectionTrackingSpecificationRequest.add_member(:udp_stream_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "UdpStreamTimeout"))
    ConnectionTrackingSpecificationRequest.add_member(:udp_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "UdpTimeout"))
    ConnectionTrackingSpecificationRequest.type = Types::ConnectionTrackingSpecificationRequest
    CpuCreditsEnum.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    CpuCreditsEnum.add_member(:unlimited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNLIMITED", traits: {"smithy.api#enumValue" => "unlimited"}))
    CpuOptionsRequest.add_member(:amd_sev_snp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmdSevSnpEnum, location_name: "AmdSevSnp"))
    CpuOptionsRequest.add_member(:core_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "CoreCount"))
    CpuOptionsRequest.add_member(:threads_per_core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "ThreadsPerCore"))
    CpuOptionsRequest.type = Types::CpuOptionsRequest
    CreateVolumeRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "AvailabilityZone", traits: {"smithy.api#required" => {}}))
    CreateVolumeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVolumeRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Encrypted"))
    CreateVolumeRequest.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Iops"))
    CreateVolumeRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateVolumeRequest.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "SizeInGB"))
    CreateVolumeRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateVolumeRequest.add_member(:tag_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagSpecifications, location_name: "TagSpecifications"))
    CreateVolumeRequest.add_member(:throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Throughput"))
    CreateVolumeRequest.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeTypeEnum, location_name: "VolumeType"))
    CreateVolumeRequest.type = Types::CreateVolumeRequest
    CreateVolumeResponse.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    CreateVolumeResponse.type = Types::CreateVolumeResponse
    CreateWorkspaceInstanceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkspaceInstanceRequest.add_member(:managed_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedInstanceRequest, location_name: "ManagedInstance", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInstanceRequest.type = Types::CreateWorkspaceInstanceRequest
    CreateWorkspaceInstanceResponse.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId"))
    CreateWorkspaceInstanceResponse.type = Types::CreateWorkspaceInstanceResponse
    CreditSpecificationRequest.add_member(:cpu_credits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CpuCreditsEnum, location_name: "CpuCredits"))
    CreditSpecificationRequest.type = Types::CreditSpecificationRequest
    DeleteVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId", traits: {"smithy.api#required" => {}}))
    DeleteVolumeRequest.type = Types::DeleteVolumeRequest
    DeleteVolumeResponse.type = Types::DeleteVolumeResponse
    DeleteWorkspaceInstanceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceInstanceRequest.type = Types::DeleteWorkspaceInstanceRequest
    DeleteWorkspaceInstanceResponse.type = Types::DeleteWorkspaceInstanceResponse
    DisassociateModeEnum.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORCE", traits: {"smithy.api#enumValue" => "FORCE"}))
    DisassociateModeEnum.add_member(:no_force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_FORCE", traits: {"smithy.api#enumValue" => "NO_FORCE"}))
    DisassociateVolumeRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    DisassociateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId", traits: {"smithy.api#required" => {}}))
    DisassociateVolumeRequest.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: "Device"))
    DisassociateVolumeRequest.add_member(:disassociate_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateModeEnum, location_name: "DisassociateMode"))
    DisassociateVolumeRequest.type = Types::DisassociateVolumeRequest
    DisassociateVolumeResponse.type = Types::DisassociateVolumeResponse
    EC2InstanceError.add_member(:ec2_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EC2ErrorCode"))
    EC2InstanceError.add_member(:ec2_exception_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EC2ExceptionType"))
    EC2InstanceError.add_member(:ec2_error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EC2ErrorMessage"))
    EC2InstanceError.type = Types::EC2InstanceError
    EC2InstanceErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceError)
    EC2ManagedInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "InstanceId"))
    EC2ManagedInstance.type = Types::EC2ManagedInstance
    EbsBlockDevice.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeTypeEnum, location_name: "VolumeType"))
    EbsBlockDevice.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Encrypted"))
    EbsBlockDevice.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    EbsBlockDevice.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Iops"))
    EbsBlockDevice.add_member(:throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Throughput"))
    EbsBlockDevice.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "VolumeSize"))
    EbsBlockDevice.type = Types::EbsBlockDevice
    EnaSrdSpecificationRequest.add_member(:ena_srd_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "EnaSrdEnabled"))
    EnaSrdSpecificationRequest.add_member(:ena_srd_udp_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnaSrdUdpSpecificationRequest, location_name: "EnaSrdUdpSpecification"))
    EnaSrdSpecificationRequest.type = Types::EnaSrdSpecificationRequest
    EnaSrdUdpSpecificationRequest.add_member(:ena_srd_udp_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "EnaSrdUdpEnabled"))
    EnaSrdUdpSpecificationRequest.type = Types::EnaSrdUdpSpecificationRequest
    EnclaveOptionsRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Enabled"))
    EnclaveOptionsRequest.type = Types::EnclaveOptionsRequest
    GetWorkspaceInstanceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    GetWorkspaceInstanceRequest.type = Types::GetWorkspaceInstanceRequest
    GetWorkspaceInstanceResponse.add_member(:workspace_instance_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceErrors, location_name: "WorkspaceInstanceErrors"))
    GetWorkspaceInstanceResponse.add_member(:ec2_instance_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceErrors, location_name: "EC2InstanceErrors"))
    GetWorkspaceInstanceResponse.add_member(:provision_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionStateEnum, location_name: "ProvisionState"))
    GetWorkspaceInstanceResponse.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId"))
    GetWorkspaceInstanceResponse.add_member(:ec2_managed_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2ManagedInstance, location_name: "EC2ManagedInstance"))
    GetWorkspaceInstanceResponse.type = Types::GetWorkspaceInstanceResponse
    HibernationOptionsRequest.add_member(:configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Configured"))
    HibernationOptionsRequest.type = Types::HibernationOptionsRequest
    HostnameTypeEnum.add_member(:ip_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP_NAME", traits: {"smithy.api#enumValue" => "ip-name"}))
    HostnameTypeEnum.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_NAME", traits: {"smithy.api#enumValue" => "resource-name"}))
    HttpEndpointEnum.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpEndpointEnum.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpProtocolIpv6Enum.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpProtocolIpv6Enum.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpTokensEnum.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPTIONAL", traits: {"smithy.api#enumValue" => "optional"}))
    HttpTokensEnum.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    IamInstanceProfileSpecification.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    IamInstanceProfileSpecification.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "Name"))
    IamInstanceProfileSpecification.type = Types::IamInstanceProfileSpecification
    InstanceInterruptionBehaviorEnum.add_member(:hibernate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIBERNATE", traits: {"smithy.api#enumValue" => "hibernate"}))
    InstanceInterruptionBehaviorEnum.add_member(:stop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP", traits: {"smithy.api#enumValue" => "stop"}))
    InstanceIpv6Address.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "Ipv6Address"))
    InstanceIpv6Address.add_member(:is_primary_ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "IsPrimaryIpv6"))
    InstanceIpv6Address.type = Types::InstanceIpv6Address
    InstanceMaintenanceOptionsRequest.add_member(:auto_recovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRecoveryEnum, location_name: "AutoRecovery"))
    InstanceMaintenanceOptionsRequest.type = Types::InstanceMaintenanceOptionsRequest
    InstanceMarketOptionsRequest.add_member(:market_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketTypeEnum, location_name: "MarketType"))
    InstanceMarketOptionsRequest.add_member(:spot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotMarketOptions, location_name: "SpotOptions"))
    InstanceMarketOptionsRequest.type = Types::InstanceMarketOptionsRequest
    InstanceMetadataOptionsRequest.add_member(:http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpointEnum, location_name: "HttpEndpoint"))
    InstanceMetadataOptionsRequest.add_member(:http_protocol_ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpProtocolIpv6Enum, location_name: "HttpProtocolIpv6"))
    InstanceMetadataOptionsRequest.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPutResponseHopLimit, location_name: "HttpPutResponseHopLimit"))
    InstanceMetadataOptionsRequest.add_member(:http_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpTokensEnum, location_name: "HttpTokens"))
    InstanceMetadataOptionsRequest.add_member(:instance_metadata_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetadataTagsEnum, location_name: "InstanceMetadataTags"))
    InstanceMetadataOptionsRequest.type = Types::InstanceMetadataOptionsRequest
    InstanceMetadataTagsEnum.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    InstanceMetadataTagsEnum.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    InstanceNetworkInterfaceSpecification.add_member(:associate_carrier_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AssociateCarrierIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AssociatePublicIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:connection_tracking_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionTrackingSpecificationRequest, location_name: "ConnectionTrackingSpecification"))
    InstanceNetworkInterfaceSpecification.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    InstanceNetworkInterfaceSpecification.add_member(:device_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "DeviceIndex"))
    InstanceNetworkInterfaceSpecification.add_member(:ena_srd_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnaSrdSpecificationRequest, location_name: "EnaSrdSpecification"))
    InstanceNetworkInterfaceSpecification.add_member(:interface_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceTypeEnum, location_name: "InterfaceType"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv4_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Prefixes, location_name: "Ipv4Prefixes"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv4_prefix_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv4PrefixCount"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_address_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv6AddressCount"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "Ipv6Addresses"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Prefixes, location_name: "Ipv6Prefixes"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv6_prefix_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv6PrefixCount"))
    InstanceNetworkInterfaceSpecification.add_member(:network_card_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "NetworkCardIndex"))
    InstanceNetworkInterfaceSpecification.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    InstanceNetworkInterfaceSpecification.add_member(:primary_ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "PrimaryIpv6"))
    InstanceNetworkInterfaceSpecification.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "PrivateIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:private_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: "PrivateIpAddresses"))
    InstanceNetworkInterfaceSpecification.add_member(:secondary_private_ip_address_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "SecondaryPrivateIpAddressCount"))
    InstanceNetworkInterfaceSpecification.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "Groups"))
    InstanceNetworkInterfaceSpecification.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    InstanceNetworkInterfaceSpecification.type = Types::InstanceNetworkInterfaceSpecification
    InstanceNetworkPerformanceOptionsRequest.add_member(:bandwidth_weighting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthWeightingEnum, location_name: "BandwidthWeighting"))
    InstanceNetworkPerformanceOptionsRequest.type = Types::InstanceNetworkPerformanceOptionsRequest
    InstanceTypeInfo.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceTypeInfo.type = Types::InstanceTypeInfo
    InstanceTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeInfo)
    InterfaceTypeEnum.add_member(:interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERFACE", traits: {"smithy.api#enumValue" => "interface"}))
    InterfaceTypeEnum.add_member(:efa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EFA", traits: {"smithy.api#enumValue" => "efa"}))
    InterfaceTypeEnum.add_member(:efa_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EFA_ONLY", traits: {"smithy.api#enumValue" => "efa-only"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Ipv4PrefixSpecificationRequest.add_member(:ipv4_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Prefix, location_name: "Ipv4Prefix"))
    Ipv4PrefixSpecificationRequest.type = Types::Ipv4PrefixSpecificationRequest
    Ipv4Prefixes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4PrefixSpecificationRequest)
    Ipv6Addresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIpv6Address)
    Ipv6PrefixSpecificationRequest.add_member(:ipv6_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Prefix, location_name: "Ipv6Prefix"))
    Ipv6PrefixSpecificationRequest.type = Types::Ipv6PrefixSpecificationRequest
    Ipv6Prefixes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6PrefixSpecificationRequest)
    LicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "LicenseConfigurationArn"))
    LicenseConfigurationRequest.type = Types::LicenseConfigurationRequest
    LicenseSpecifications.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurationRequest)
    ListInstanceTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInstanceTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceTypesRequest.type = Types::ListInstanceTypesRequest
    ListInstanceTypesResponse.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypes, location_name: "InstanceTypes", traits: {"smithy.api#required" => {}}))
    ListInstanceTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceTypesResponse.type = Types::ListInstanceTypesResponse
    ListRegionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRegionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRegionsRequest.type = Types::ListRegionsRequest
    ListRegionsResponse.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: "Regions", traits: {"smithy.api#required" => {}}))
    ListRegionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRegionsResponse.type = Types::ListRegionsResponse
    ListTagsForResourceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWorkspaceInstancesRequest.add_member(:provision_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionStates, location_name: "ProvisionStates"))
    ListWorkspaceInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWorkspaceInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkspaceInstancesRequest.type = Types::ListWorkspaceInstancesRequest
    ListWorkspaceInstancesResponse.add_member(:workspace_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstances, location_name: "WorkspaceInstances", traits: {"smithy.api#required" => {}}))
    ListWorkspaceInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkspaceInstancesResponse.type = Types::ListWorkspaceInstancesResponse
    ManagedInstanceRequest.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    ManagedInstanceRequest.add_member(:capacity_reservation_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationSpecification, location_name: "CapacityReservationSpecification"))
    ManagedInstanceRequest.add_member(:cpu_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CpuOptionsRequest, location_name: "CpuOptions"))
    ManagedInstanceRequest.add_member(:credit_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreditSpecificationRequest, location_name: "CreditSpecification"))
    ManagedInstanceRequest.add_member(:disable_api_stop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "DisableApiStop"))
    ManagedInstanceRequest.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "EbsOptimized"))
    ManagedInstanceRequest.add_member(:enable_primary_ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "EnablePrimaryIpv6"))
    ManagedInstanceRequest.add_member(:enclave_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnclaveOptionsRequest, location_name: "EnclaveOptions"))
    ManagedInstanceRequest.add_member(:hibernation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HibernationOptionsRequest, location_name: "HibernationOptions"))
    ManagedInstanceRequest.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamInstanceProfileSpecification, location_name: "IamInstanceProfile"))
    ManagedInstanceRequest.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageId, location_name: "ImageId"))
    ManagedInstanceRequest.add_member(:instance_market_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMarketOptionsRequest, location_name: "InstanceMarketOptions"))
    ManagedInstanceRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    ManagedInstanceRequest.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "Ipv6Addresses"))
    ManagedInstanceRequest.add_member(:ipv6_address_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv6AddressCount"))
    ManagedInstanceRequest.add_member(:kernel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: "KernelId"))
    ManagedInstanceRequest.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "KeyName"))
    ManagedInstanceRequest.add_member(:license_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: "LicenseSpecifications"))
    ManagedInstanceRequest.add_member(:maintenance_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMaintenanceOptionsRequest, location_name: "MaintenanceOptions"))
    ManagedInstanceRequest.add_member(:metadata_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetadataOptionsRequest, location_name: "MetadataOptions"))
    ManagedInstanceRequest.add_member(:monitoring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunInstancesMonitoringEnabled, location_name: "Monitoring"))
    ManagedInstanceRequest.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "NetworkInterfaces"))
    ManagedInstanceRequest.add_member(:network_performance_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNetworkPerformanceOptionsRequest, location_name: "NetworkPerformanceOptions"))
    ManagedInstanceRequest.add_member(:placement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Placement, location_name: "Placement"))
    ManagedInstanceRequest.add_member(:private_dns_name_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateDnsNameOptionsRequest, location_name: "PrivateDnsNameOptions"))
    ManagedInstanceRequest.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "PrivateIpAddress"))
    ManagedInstanceRequest.add_member(:ramdisk_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: "RamdiskId"))
    ManagedInstanceRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    ManagedInstanceRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupNames, location_name: "SecurityGroups"))
    ManagedInstanceRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    ManagedInstanceRequest.add_member(:tag_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagSpecifications, location_name: "TagSpecifications"))
    ManagedInstanceRequest.add_member(:user_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserData, location_name: "UserData"))
    ManagedInstanceRequest.type = Types::ManagedInstanceRequest
    MarketTypeEnum.add_member(:spot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT", traits: {"smithy.api#enumValue" => "spot"}))
    MarketTypeEnum.add_member(:capacity_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPACITY_BLOCK", traits: {"smithy.api#enumValue" => "capacity-block"}))
    NetworkInterfaces.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNetworkInterfaceSpecification)
    Placement.add_member(:affinity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "Affinity"))
    Placement.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    Placement.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: "GroupId"))
    Placement.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "GroupName"))
    Placement.add_member(:host_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostId, location_name: "HostId"))
    Placement.add_member(:host_resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "HostResourceGroupArn"))
    Placement.add_member(:partition_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PartitionNumber"))
    Placement.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenancyEnum, location_name: "Tenancy"))
    Placement.type = Types::Placement
    PrivateDnsNameOptionsRequest.add_member(:hostname_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostnameTypeEnum, location_name: "HostnameType"))
    PrivateDnsNameOptionsRequest.add_member(:enable_resource_name_dns_a_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "EnableResourceNameDnsARecord"))
    PrivateDnsNameOptionsRequest.add_member(:enable_resource_name_dns_aaaa_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "EnableResourceNameDnsAAAARecord"))
    PrivateDnsNameOptionsRequest.type = Types::PrivateDnsNameOptionsRequest
    PrivateIpAddressSpecification.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Primary"))
    PrivateIpAddressSpecification.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "PrivateIpAddress"))
    PrivateIpAddressSpecification.type = Types::PrivateIpAddressSpecification
    PrivateIpAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIpAddressSpecification)
    ProvisionStateEnum.add_member(:allocating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOCATING", traits: {"smithy.api#enumValue" => "ALLOCATING"}))
    ProvisionStateEnum.add_member(:allocated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOCATED", traits: {"smithy.api#enumValue" => "ALLOCATED"}))
    ProvisionStateEnum.add_member(:deallocating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEALLOCATING", traits: {"smithy.api#enumValue" => "DEALLOCATING"}))
    ProvisionStateEnum.add_member(:deallocated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEALLOCATED", traits: {"smithy.api#enumValue" => "DEALLOCATED"}))
    ProvisionStateEnum.add_member(:error_allocating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR_ALLOCATING", traits: {"smithy.api#enumValue" => "ERROR_ALLOCATING"}))
    ProvisionStateEnum.add_member(:error_deallocating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR_DEALLOCATING", traits: {"smithy.api#enumValue" => "ERROR_DEALLOCATING"}))
    ProvisionStates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionStateEnum)
    Region.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    Region.type = Types::Region
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeEnum.add_member(:instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE", traits: {"smithy.api#enumValue" => "instance"}))
    ResourceTypeEnum.add_member(:volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOLUME", traits: {"smithy.api#enumValue" => "volume"}))
    ResourceTypeEnum.add_member(:spot_instances_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT_INSTANCES_REQUEST", traits: {"smithy.api#enumValue" => "spot-instances-request"}))
    ResourceTypeEnum.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NETWORK_INTERFACE", traits: {"smithy.api#enumValue" => "network-interface"}))
    RunInstancesMonitoringEnabled.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Enabled"))
    RunInstancesMonitoringEnabled.type = Types::RunInstancesMonitoringEnabled
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SecurityGroupNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupName)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpotInstanceTypeEnum.add_member(:one_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_TIME", traits: {"smithy.api#enumValue" => "one-time"}))
    SpotInstanceTypeEnum.add_member(:persistent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERSISTENT", traits: {"smithy.api#enumValue" => "persistent"}))
    SpotMarketOptions.add_member(:block_duration_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "BlockDurationMinutes"))
    SpotMarketOptions.add_member(:instance_interruption_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceInterruptionBehaviorEnum, location_name: "InstanceInterruptionBehavior"))
    SpotMarketOptions.add_member(:max_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "MaxPrice"))
    SpotMarketOptions.add_member(:spot_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotInstanceTypeEnum, location_name: "SpotInstanceType"))
    SpotMarketOptions.add_member(:valid_until_utc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "ValidUntilUtc"))
    SpotMarketOptions.type = Types::SpotMarketOptions
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagSpecification.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeEnum, location_name: "ResourceType"))
    TagSpecification.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TagSpecification.type = Types::TagSpecification
    TagSpecifications.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagSpecification)
    TenancyEnum.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    TenancyEnum.add_member(:dedicated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEDICATED", traits: {"smithy.api#enumValue" => "dedicated"}))
    TenancyEnum.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:unsupported_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_OPERATION", traits: {"smithy.api#enumValue" => "UNSUPPORTED_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:dependency_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPENDENCY_FAILURE", traits: {"smithy.api#enumValue" => "DEPENDENCY_FAILURE"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VolumeTypeEnum.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    VolumeTypeEnum.add_member(:io1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IO1", traits: {"smithy.api#enumValue" => "io1"}))
    VolumeTypeEnum.add_member(:io2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IO2", traits: {"smithy.api#enumValue" => "io2"}))
    VolumeTypeEnum.add_member(:gp2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GP2", traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeTypeEnum.add_member(:sc1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SC1", traits: {"smithy.api#enumValue" => "sc1"}))
    VolumeTypeEnum.add_member(:st1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST1", traits: {"smithy.api#enumValue" => "st1"}))
    VolumeTypeEnum.add_member(:gp3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GP3", traits: {"smithy.api#enumValue" => "gp3"}))
    WorkspaceInstance.add_member(:provision_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionStateEnum, location_name: "ProvisionState"))
    WorkspaceInstance.add_member(:workspace_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId"))
    WorkspaceInstance.add_member(:ec2_managed_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2ManagedInstance, location_name: "EC2ManagedInstance"))
    WorkspaceInstance.type = Types::WorkspaceInstance
    WorkspaceInstanceError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ErrorCode"))
    WorkspaceInstanceError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ErrorMessage"))
    WorkspaceInstanceError.type = Types::WorkspaceInstanceError
    WorkspaceInstanceErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstanceError)
    WorkspaceInstances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceInstance)

    EUCMIFrontendAPIService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspacesinstances#EUCMIFrontendAPIService"
      service.name = "EUCMIFrontendAPIService"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Workspaces Instances", "arnNamespace" => "workspaces-instances", "cloudFormationName" => "WorkspacesInstances", "cloudTrailEventSource" => "workspaces-instances.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "workspaces-instances"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Workspaces Instances"}
      service.add_operation(:associate_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#AssociateVolume"
        operation.name = "AssociateVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVolumeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to associate a workspace managed volume to a workspace managed instance in your account"}}
      end)
      service.add_operation(:create_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#CreateVolume"
        operation.name = "CreateVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVolumeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a workspace managed volume in your account"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#CreateWorkspaceInstance"
        operation.name = "CreateWorkspaceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a workspace managed instance in your account"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#DeleteVolume"
        operation.name = "DeleteVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVolumeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a workspace managed volume in your account"}}
      end)
      service.add_operation(:delete_workspace_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#DeleteWorkspaceInstance"
        operation.name = "DeleteWorkspaceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a workspace managed instance in your account"}}
      end)
      service.add_operation(:disassociate_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#DisassociateVolume"
        operation.name = "DisassociateVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVolumeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate a workspace managed volume from a workspace managed instance in your account"}}
      end)
      service.add_operation(:get_workspace_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#GetWorkspaceInstance"
        operation.name = "GetWorkspaceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkspaceInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkspaceInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get details for a specific workspace managed instance in your account"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListInstanceTypes"
        operation.name = "ListInstanceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all supported instance types"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInstanceTypes.new
      end)
      service.add_operation(:list_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListRegions"
        operation.name = "ListRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all supported AWS regions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListRegionsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListRegions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list user tags for resources in your account"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_workspace_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#ListWorkspaceInstances"
        operation.name = "ListWorkspaceInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceInstancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list workspace managed instances in your account"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceInstances.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add user tags to resources in your account"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesinstances#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
