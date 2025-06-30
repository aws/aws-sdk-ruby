# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkspacesInstances
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmdSevSnpEnum = Shapes::StringShape.new(name: 'AmdSevSnpEnum')
    AssociateVolumeRequest = Shapes::StructureShape.new(name: 'AssociateVolumeRequest')
    AssociateVolumeResponse = Shapes::StructureShape.new(name: 'AssociateVolumeResponse')
    AutoRecoveryEnum = Shapes::StringShape.new(name: 'AutoRecoveryEnum')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    BandwidthWeightingEnum = Shapes::StringShape.new(name: 'BandwidthWeightingEnum')
    BlockDeviceMappingRequest = Shapes::StructureShape.new(name: 'BlockDeviceMappingRequest')
    BlockDeviceMappings = Shapes::ListShape.new(name: 'BlockDeviceMappings')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CapacityReservationPreferenceEnum = Shapes::StringShape.new(name: 'CapacityReservationPreferenceEnum')
    CapacityReservationSpecification = Shapes::StructureShape.new(name: 'CapacityReservationSpecification')
    CapacityReservationTarget = Shapes::StructureShape.new(name: 'CapacityReservationTarget')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionTrackingSpecificationRequest = Shapes::StructureShape.new(name: 'ConnectionTrackingSpecificationRequest')
    CpuCreditsEnum = Shapes::StringShape.new(name: 'CpuCreditsEnum')
    CpuOptionsRequest = Shapes::StructureShape.new(name: 'CpuOptionsRequest')
    CreateVolumeRequest = Shapes::StructureShape.new(name: 'CreateVolumeRequest')
    CreateVolumeResponse = Shapes::StructureShape.new(name: 'CreateVolumeResponse')
    CreateWorkspaceInstanceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceInstanceRequest')
    CreateWorkspaceInstanceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceInstanceResponse')
    CreditSpecificationRequest = Shapes::StructureShape.new(name: 'CreditSpecificationRequest')
    DeleteVolumeRequest = Shapes::StructureShape.new(name: 'DeleteVolumeRequest')
    DeleteVolumeResponse = Shapes::StructureShape.new(name: 'DeleteVolumeResponse')
    DeleteWorkspaceInstanceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceInstanceRequest')
    DeleteWorkspaceInstanceResponse = Shapes::StructureShape.new(name: 'DeleteWorkspaceInstanceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DisassociateModeEnum = Shapes::StringShape.new(name: 'DisassociateModeEnum')
    DisassociateVolumeRequest = Shapes::StructureShape.new(name: 'DisassociateVolumeRequest')
    DisassociateVolumeResponse = Shapes::StructureShape.new(name: 'DisassociateVolumeResponse')
    EC2InstanceError = Shapes::StructureShape.new(name: 'EC2InstanceError')
    EC2InstanceErrors = Shapes::ListShape.new(name: 'EC2InstanceErrors')
    EC2ManagedInstance = Shapes::StructureShape.new(name: 'EC2ManagedInstance')
    EbsBlockDevice = Shapes::StructureShape.new(name: 'EbsBlockDevice')
    EnaSrdSpecificationRequest = Shapes::StructureShape.new(name: 'EnaSrdSpecificationRequest')
    EnaSrdUdpSpecificationRequest = Shapes::StructureShape.new(name: 'EnaSrdUdpSpecificationRequest')
    EnclaveOptionsRequest = Shapes::StructureShape.new(name: 'EnclaveOptionsRequest')
    GetWorkspaceInstanceRequest = Shapes::StructureShape.new(name: 'GetWorkspaceInstanceRequest')
    GetWorkspaceInstanceResponse = Shapes::StructureShape.new(name: 'GetWorkspaceInstanceResponse')
    HibernationOptionsRequest = Shapes::StructureShape.new(name: 'HibernationOptionsRequest')
    HostId = Shapes::StringShape.new(name: 'HostId')
    HostnameTypeEnum = Shapes::StringShape.new(name: 'HostnameTypeEnum')
    HttpEndpointEnum = Shapes::StringShape.new(name: 'HttpEndpointEnum')
    HttpProtocolIpv6Enum = Shapes::StringShape.new(name: 'HttpProtocolIpv6Enum')
    HttpPutResponseHopLimit = Shapes::IntegerShape.new(name: 'HttpPutResponseHopLimit')
    HttpTokensEnum = Shapes::StringShape.new(name: 'HttpTokensEnum')
    IamInstanceProfileSpecification = Shapes::StructureShape.new(name: 'IamInstanceProfileSpecification')
    ImageId = Shapes::StringShape.new(name: 'ImageId')
    InstanceInterruptionBehaviorEnum = Shapes::StringShape.new(name: 'InstanceInterruptionBehaviorEnum')
    InstanceIpv6Address = Shapes::StructureShape.new(name: 'InstanceIpv6Address')
    InstanceMaintenanceOptionsRequest = Shapes::StructureShape.new(name: 'InstanceMaintenanceOptionsRequest')
    InstanceMarketOptionsRequest = Shapes::StructureShape.new(name: 'InstanceMarketOptionsRequest')
    InstanceMetadataOptionsRequest = Shapes::StructureShape.new(name: 'InstanceMetadataOptionsRequest')
    InstanceMetadataTagsEnum = Shapes::StringShape.new(name: 'InstanceMetadataTagsEnum')
    InstanceNetworkInterfaceSpecification = Shapes::StructureShape.new(name: 'InstanceNetworkInterfaceSpecification')
    InstanceNetworkPerformanceOptionsRequest = Shapes::StructureShape.new(name: 'InstanceNetworkPerformanceOptionsRequest')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeInfo = Shapes::StructureShape.new(name: 'InstanceTypeInfo')
    InstanceTypes = Shapes::ListShape.new(name: 'InstanceTypes')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InterfaceTypeEnum = Shapes::StringShape.new(name: 'InterfaceTypeEnum')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Ipv4Address = Shapes::StringShape.new(name: 'Ipv4Address')
    Ipv4Prefix = Shapes::StringShape.new(name: 'Ipv4Prefix')
    Ipv4PrefixSpecificationRequest = Shapes::StructureShape.new(name: 'Ipv4PrefixSpecificationRequest')
    Ipv4Prefixes = Shapes::ListShape.new(name: 'Ipv4Prefixes')
    Ipv6Address = Shapes::StringShape.new(name: 'Ipv6Address')
    Ipv6Addresses = Shapes::ListShape.new(name: 'Ipv6Addresses')
    Ipv6Prefix = Shapes::StringShape.new(name: 'Ipv6Prefix')
    Ipv6PrefixSpecificationRequest = Shapes::StructureShape.new(name: 'Ipv6PrefixSpecificationRequest')
    Ipv6Prefixes = Shapes::ListShape.new(name: 'Ipv6Prefixes')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LicenseConfigurationRequest = Shapes::StructureShape.new(name: 'LicenseConfigurationRequest')
    LicenseSpecifications = Shapes::ListShape.new(name: 'LicenseSpecifications')
    ListInstanceTypesRequest = Shapes::StructureShape.new(name: 'ListInstanceTypesRequest')
    ListInstanceTypesResponse = Shapes::StructureShape.new(name: 'ListInstanceTypesResponse')
    ListRegionsRequest = Shapes::StructureShape.new(name: 'ListRegionsRequest')
    ListRegionsResponse = Shapes::StructureShape.new(name: 'ListRegionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkspaceInstancesRequest = Shapes::StructureShape.new(name: 'ListWorkspaceInstancesRequest')
    ListWorkspaceInstancesResponse = Shapes::StructureShape.new(name: 'ListWorkspaceInstancesResponse')
    ManagedInstanceRequest = Shapes::StructureShape.new(name: 'ManagedInstanceRequest')
    MarketTypeEnum = Shapes::StringShape.new(name: 'MarketTypeEnum')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    Placement = Shapes::StructureShape.new(name: 'Placement')
    PlacementGroupId = Shapes::StringShape.new(name: 'PlacementGroupId')
    PrivateDnsNameOptionsRequest = Shapes::StructureShape.new(name: 'PrivateDnsNameOptionsRequest')
    PrivateIpAddressSpecification = Shapes::StructureShape.new(name: 'PrivateIpAddressSpecification')
    PrivateIpAddresses = Shapes::ListShape.new(name: 'PrivateIpAddresses')
    ProvisionStateEnum = Shapes::StringShape.new(name: 'ProvisionStateEnum')
    ProvisionStates = Shapes::ListShape.new(name: 'ProvisionStates')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTypeEnum = Shapes::StringShape.new(name: 'ResourceTypeEnum')
    RunInstancesMonitoringEnabled = Shapes::StructureShape.new(name: 'RunInstancesMonitoringEnabled')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityGroupName = Shapes::StringShape.new(name: 'SecurityGroupName')
    SecurityGroupNames = Shapes::ListShape.new(name: 'SecurityGroupNames')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    SpotInstanceTypeEnum = Shapes::StringShape.new(name: 'SpotInstanceTypeEnum')
    SpotMarketOptions = Shapes::StructureShape.new(name: 'SpotMarketOptions')
    String = Shapes::StringShape.new(name: 'String')
    String128 = Shapes::StringShape.new(name: 'String128')
    String64 = Shapes::StringShape.new(name: 'String64')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagSpecification = Shapes::StructureShape.new(name: 'TagSpecification')
    TagSpecifications = Shapes::ListShape.new(name: 'TagSpecifications')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TenancyEnum = Shapes::StringShape.new(name: 'TenancyEnum')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UserData = Shapes::StringShape.new(name: 'UserData')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VirtualName = Shapes::StringShape.new(name: 'VirtualName')
    VolumeId = Shapes::StringShape.new(name: 'VolumeId')
    VolumeTypeEnum = Shapes::StringShape.new(name: 'VolumeTypeEnum')
    WorkspaceInstance = Shapes::StructureShape.new(name: 'WorkspaceInstance')
    WorkspaceInstanceError = Shapes::StructureShape.new(name: 'WorkspaceInstanceError')
    WorkspaceInstanceErrors = Shapes::ListShape.new(name: 'WorkspaceInstanceErrors')
    WorkspaceInstanceId = Shapes::StringShape.new(name: 'WorkspaceInstanceId')
    WorkspaceInstances = Shapes::ListShape.new(name: 'WorkspaceInstances')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateVolumeRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    AssociateVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    AssociateVolumeRequest.add_member(:device, Shapes::ShapeRef.new(shape: DeviceName, required: true, location_name: "Device"))
    AssociateVolumeRequest.struct_class = Types::AssociateVolumeRequest

    AssociateVolumeResponse.struct_class = Types::AssociateVolumeResponse

    BlockDeviceMappingRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    BlockDeviceMappingRequest.add_member(:ebs, Shapes::ShapeRef.new(shape: EbsBlockDevice, location_name: "Ebs"))
    BlockDeviceMappingRequest.add_member(:no_device, Shapes::ShapeRef.new(shape: DeviceName, location_name: "NoDevice"))
    BlockDeviceMappingRequest.add_member(:virtual_name, Shapes::ShapeRef.new(shape: VirtualName, location_name: "VirtualName"))
    BlockDeviceMappingRequest.struct_class = Types::BlockDeviceMappingRequest

    BlockDeviceMappings.member = Shapes::ShapeRef.new(shape: BlockDeviceMappingRequest)

    CapacityReservationSpecification.add_member(:capacity_reservation_preference, Shapes::ShapeRef.new(shape: CapacityReservationPreferenceEnum, location_name: "CapacityReservationPreference"))
    CapacityReservationSpecification.add_member(:capacity_reservation_target, Shapes::ShapeRef.new(shape: CapacityReservationTarget, location_name: "CapacityReservationTarget"))
    CapacityReservationSpecification.struct_class = Types::CapacityReservationSpecification

    CapacityReservationTarget.add_member(:capacity_reservation_id, Shapes::ShapeRef.new(shape: String128, location_name: "CapacityReservationId"))
    CapacityReservationTarget.add_member(:capacity_reservation_resource_group_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "CapacityReservationResourceGroupArn"))
    CapacityReservationTarget.struct_class = Types::CapacityReservationTarget

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionTrackingSpecificationRequest.add_member(:tcp_established_timeout, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "TcpEstablishedTimeout"))
    ConnectionTrackingSpecificationRequest.add_member(:udp_stream_timeout, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "UdpStreamTimeout"))
    ConnectionTrackingSpecificationRequest.add_member(:udp_timeout, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "UdpTimeout"))
    ConnectionTrackingSpecificationRequest.struct_class = Types::ConnectionTrackingSpecificationRequest

    CpuOptionsRequest.add_member(:amd_sev_snp, Shapes::ShapeRef.new(shape: AmdSevSnpEnum, location_name: "AmdSevSnp"))
    CpuOptionsRequest.add_member(:core_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "CoreCount"))
    CpuOptionsRequest.add_member(:threads_per_core, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "ThreadsPerCore"))
    CpuOptionsRequest.struct_class = Types::CpuOptionsRequest

    CreateVolumeRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "AvailabilityZone"))
    CreateVolumeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateVolumeRequest.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    CreateVolumeRequest.add_member(:iops, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Iops"))
    CreateVolumeRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateVolumeRequest.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "SizeInGB"))
    CreateVolumeRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateVolumeRequest.add_member(:tag_specifications, Shapes::ShapeRef.new(shape: TagSpecifications, location_name: "TagSpecifications"))
    CreateVolumeRequest.add_member(:throughput, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Throughput"))
    CreateVolumeRequest.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeTypeEnum, location_name: "VolumeType"))
    CreateVolumeRequest.struct_class = Types::CreateVolumeRequest

    CreateVolumeResponse.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    CreateVolumeResponse.struct_class = Types::CreateVolumeResponse

    CreateWorkspaceInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkspaceInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkspaceInstanceRequest.add_member(:managed_instance, Shapes::ShapeRef.new(shape: ManagedInstanceRequest, required: true, location_name: "ManagedInstance"))
    CreateWorkspaceInstanceRequest.struct_class = Types::CreateWorkspaceInstanceRequest

    CreateWorkspaceInstanceResponse.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId"))
    CreateWorkspaceInstanceResponse.struct_class = Types::CreateWorkspaceInstanceResponse

    CreditSpecificationRequest.add_member(:cpu_credits, Shapes::ShapeRef.new(shape: CpuCreditsEnum, location_name: "CpuCredits"))
    CreditSpecificationRequest.struct_class = Types::CreditSpecificationRequest

    DeleteVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    DeleteVolumeRequest.struct_class = Types::DeleteVolumeRequest

    DeleteVolumeResponse.struct_class = Types::DeleteVolumeResponse

    DeleteWorkspaceInstanceRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    DeleteWorkspaceInstanceRequest.struct_class = Types::DeleteWorkspaceInstanceRequest

    DeleteWorkspaceInstanceResponse.struct_class = Types::DeleteWorkspaceInstanceResponse

    DisassociateVolumeRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    DisassociateVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    DisassociateVolumeRequest.add_member(:device, Shapes::ShapeRef.new(shape: DeviceName, location_name: "Device"))
    DisassociateVolumeRequest.add_member(:disassociate_mode, Shapes::ShapeRef.new(shape: DisassociateModeEnum, location_name: "DisassociateMode"))
    DisassociateVolumeRequest.struct_class = Types::DisassociateVolumeRequest

    DisassociateVolumeResponse.struct_class = Types::DisassociateVolumeResponse

    EC2InstanceError.add_member(:ec2_error_code, Shapes::ShapeRef.new(shape: String, location_name: "EC2ErrorCode"))
    EC2InstanceError.add_member(:ec2_exception_type, Shapes::ShapeRef.new(shape: String, location_name: "EC2ExceptionType"))
    EC2InstanceError.add_member(:ec2_error_message, Shapes::ShapeRef.new(shape: String, location_name: "EC2ErrorMessage"))
    EC2InstanceError.struct_class = Types::EC2InstanceError

    EC2InstanceErrors.member = Shapes::ShapeRef.new(shape: EC2InstanceError)

    EC2ManagedInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    EC2ManagedInstance.struct_class = Types::EC2ManagedInstance

    EbsBlockDevice.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeTypeEnum, location_name: "VolumeType"))
    EbsBlockDevice.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    EbsBlockDevice.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    EbsBlockDevice.add_member(:iops, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Iops"))
    EbsBlockDevice.add_member(:throughput, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Throughput"))
    EbsBlockDevice.add_member(:volume_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "VolumeSize"))
    EbsBlockDevice.struct_class = Types::EbsBlockDevice

    EnaSrdSpecificationRequest.add_member(:ena_srd_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnaSrdEnabled"))
    EnaSrdSpecificationRequest.add_member(:ena_srd_udp_specification, Shapes::ShapeRef.new(shape: EnaSrdUdpSpecificationRequest, location_name: "EnaSrdUdpSpecification"))
    EnaSrdSpecificationRequest.struct_class = Types::EnaSrdSpecificationRequest

    EnaSrdUdpSpecificationRequest.add_member(:ena_srd_udp_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnaSrdUdpEnabled"))
    EnaSrdUdpSpecificationRequest.struct_class = Types::EnaSrdUdpSpecificationRequest

    EnclaveOptionsRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EnclaveOptionsRequest.struct_class = Types::EnclaveOptionsRequest

    GetWorkspaceInstanceRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    GetWorkspaceInstanceRequest.struct_class = Types::GetWorkspaceInstanceRequest

    GetWorkspaceInstanceResponse.add_member(:workspace_instance_errors, Shapes::ShapeRef.new(shape: WorkspaceInstanceErrors, location_name: "WorkspaceInstanceErrors"))
    GetWorkspaceInstanceResponse.add_member(:ec2_instance_errors, Shapes::ShapeRef.new(shape: EC2InstanceErrors, location_name: "EC2InstanceErrors"))
    GetWorkspaceInstanceResponse.add_member(:provision_state, Shapes::ShapeRef.new(shape: ProvisionStateEnum, location_name: "ProvisionState"))
    GetWorkspaceInstanceResponse.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId"))
    GetWorkspaceInstanceResponse.add_member(:ec2_managed_instance, Shapes::ShapeRef.new(shape: EC2ManagedInstance, location_name: "EC2ManagedInstance"))
    GetWorkspaceInstanceResponse.struct_class = Types::GetWorkspaceInstanceResponse

    HibernationOptionsRequest.add_member(:configured, Shapes::ShapeRef.new(shape: Boolean, location_name: "Configured"))
    HibernationOptionsRequest.struct_class = Types::HibernationOptionsRequest

    IamInstanceProfileSpecification.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    IamInstanceProfileSpecification.add_member(:name, Shapes::ShapeRef.new(shape: String64, location_name: "Name"))
    IamInstanceProfileSpecification.struct_class = Types::IamInstanceProfileSpecification

    InstanceIpv6Address.add_member(:ipv_6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "Ipv6Address"))
    InstanceIpv6Address.add_member(:is_primary_ipv_6, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsPrimaryIpv6"))
    InstanceIpv6Address.struct_class = Types::InstanceIpv6Address

    InstanceMaintenanceOptionsRequest.add_member(:auto_recovery, Shapes::ShapeRef.new(shape: AutoRecoveryEnum, location_name: "AutoRecovery"))
    InstanceMaintenanceOptionsRequest.struct_class = Types::InstanceMaintenanceOptionsRequest

    InstanceMarketOptionsRequest.add_member(:market_type, Shapes::ShapeRef.new(shape: MarketTypeEnum, location_name: "MarketType"))
    InstanceMarketOptionsRequest.add_member(:spot_options, Shapes::ShapeRef.new(shape: SpotMarketOptions, location_name: "SpotOptions"))
    InstanceMarketOptionsRequest.struct_class = Types::InstanceMarketOptionsRequest

    InstanceMetadataOptionsRequest.add_member(:http_endpoint, Shapes::ShapeRef.new(shape: HttpEndpointEnum, location_name: "HttpEndpoint"))
    InstanceMetadataOptionsRequest.add_member(:http_protocol_ipv_6, Shapes::ShapeRef.new(shape: HttpProtocolIpv6Enum, location_name: "HttpProtocolIpv6"))
    InstanceMetadataOptionsRequest.add_member(:http_put_response_hop_limit, Shapes::ShapeRef.new(shape: HttpPutResponseHopLimit, location_name: "HttpPutResponseHopLimit"))
    InstanceMetadataOptionsRequest.add_member(:http_tokens, Shapes::ShapeRef.new(shape: HttpTokensEnum, location_name: "HttpTokens"))
    InstanceMetadataOptionsRequest.add_member(:instance_metadata_tags, Shapes::ShapeRef.new(shape: InstanceMetadataTagsEnum, location_name: "InstanceMetadataTags"))
    InstanceMetadataOptionsRequest.struct_class = Types::InstanceMetadataOptionsRequest

    InstanceNetworkInterfaceSpecification.add_member(:associate_carrier_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociateCarrierIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociatePublicIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:connection_tracking_specification, Shapes::ShapeRef.new(shape: ConnectionTrackingSpecificationRequest, location_name: "ConnectionTrackingSpecification"))
    InstanceNetworkInterfaceSpecification.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    InstanceNetworkInterfaceSpecification.add_member(:device_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "DeviceIndex"))
    InstanceNetworkInterfaceSpecification.add_member(:ena_srd_specification, Shapes::ShapeRef.new(shape: EnaSrdSpecificationRequest, location_name: "EnaSrdSpecification"))
    InstanceNetworkInterfaceSpecification.add_member(:interface_type, Shapes::ShapeRef.new(shape: InterfaceTypeEnum, location_name: "InterfaceType"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv_4_prefixes, Shapes::ShapeRef.new(shape: Ipv4Prefixes, location_name: "Ipv4Prefixes"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv_4_prefix_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv4PrefixCount"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv_6_address_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv6AddressCount"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv_6_addresses, Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "Ipv6Addresses"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv_6_prefixes, Shapes::ShapeRef.new(shape: Ipv6Prefixes, location_name: "Ipv6Prefixes"))
    InstanceNetworkInterfaceSpecification.add_member(:ipv_6_prefix_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv6PrefixCount"))
    InstanceNetworkInterfaceSpecification.add_member(:network_card_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "NetworkCardIndex"))
    InstanceNetworkInterfaceSpecification.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    InstanceNetworkInterfaceSpecification.add_member(:primary_ipv_6, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrimaryIpv6"))
    InstanceNetworkInterfaceSpecification.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "PrivateIpAddress"))
    InstanceNetworkInterfaceSpecification.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: "PrivateIpAddresses"))
    InstanceNetworkInterfaceSpecification.add_member(:secondary_private_ip_address_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "SecondaryPrivateIpAddressCount"))
    InstanceNetworkInterfaceSpecification.add_member(:groups, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "Groups"))
    InstanceNetworkInterfaceSpecification.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    InstanceNetworkInterfaceSpecification.struct_class = Types::InstanceNetworkInterfaceSpecification

    InstanceNetworkPerformanceOptionsRequest.add_member(:bandwidth_weighting, Shapes::ShapeRef.new(shape: BandwidthWeightingEnum, location_name: "BandwidthWeighting"))
    InstanceNetworkPerformanceOptionsRequest.struct_class = Types::InstanceNetworkPerformanceOptionsRequest

    InstanceTypeInfo.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceTypeInfo.struct_class = Types::InstanceTypeInfo

    InstanceTypes.member = Shapes::ShapeRef.new(shape: InstanceTypeInfo)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RetryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    Ipv4PrefixSpecificationRequest.add_member(:ipv_4_prefix, Shapes::ShapeRef.new(shape: Ipv4Prefix, location_name: "Ipv4Prefix"))
    Ipv4PrefixSpecificationRequest.struct_class = Types::Ipv4PrefixSpecificationRequest

    Ipv4Prefixes.member = Shapes::ShapeRef.new(shape: Ipv4PrefixSpecificationRequest)

    Ipv6Addresses.member = Shapes::ShapeRef.new(shape: InstanceIpv6Address)

    Ipv6PrefixSpecificationRequest.add_member(:ipv_6_prefix, Shapes::ShapeRef.new(shape: Ipv6Prefix, location_name: "Ipv6Prefix"))
    Ipv6PrefixSpecificationRequest.struct_class = Types::Ipv6PrefixSpecificationRequest

    Ipv6Prefixes.member = Shapes::ShapeRef.new(shape: Ipv6PrefixSpecificationRequest)

    LicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "LicenseConfigurationArn"))
    LicenseConfigurationRequest.struct_class = Types::LicenseConfigurationRequest

    LicenseSpecifications.member = Shapes::ShapeRef.new(shape: LicenseConfigurationRequest)

    ListInstanceTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInstanceTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceTypesRequest.struct_class = Types::ListInstanceTypesRequest

    ListInstanceTypesResponse.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypes, required: true, location_name: "InstanceTypes"))
    ListInstanceTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceTypesResponse.struct_class = Types::ListInstanceTypesResponse

    ListRegionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRegionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRegionsRequest.struct_class = Types::ListRegionsRequest

    ListRegionsResponse.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    ListRegionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRegionsResponse.struct_class = Types::ListRegionsResponse

    ListTagsForResourceRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWorkspaceInstancesRequest.add_member(:provision_states, Shapes::ShapeRef.new(shape: ProvisionStates, location_name: "ProvisionStates"))
    ListWorkspaceInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWorkspaceInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkspaceInstancesRequest.struct_class = Types::ListWorkspaceInstancesRequest

    ListWorkspaceInstancesResponse.add_member(:workspace_instances, Shapes::ShapeRef.new(shape: WorkspaceInstances, required: true, location_name: "WorkspaceInstances"))
    ListWorkspaceInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkspaceInstancesResponse.struct_class = Types::ListWorkspaceInstancesResponse

    ManagedInstanceRequest.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    ManagedInstanceRequest.add_member(:capacity_reservation_specification, Shapes::ShapeRef.new(shape: CapacityReservationSpecification, location_name: "CapacityReservationSpecification"))
    ManagedInstanceRequest.add_member(:cpu_options, Shapes::ShapeRef.new(shape: CpuOptionsRequest, location_name: "CpuOptions"))
    ManagedInstanceRequest.add_member(:credit_specification, Shapes::ShapeRef.new(shape: CreditSpecificationRequest, location_name: "CreditSpecification"))
    ManagedInstanceRequest.add_member(:disable_api_stop, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableApiStop"))
    ManagedInstanceRequest.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: Boolean, location_name: "EbsOptimized"))
    ManagedInstanceRequest.add_member(:enable_primary_ipv_6, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnablePrimaryIpv6"))
    ManagedInstanceRequest.add_member(:enclave_options, Shapes::ShapeRef.new(shape: EnclaveOptionsRequest, location_name: "EnclaveOptions"))
    ManagedInstanceRequest.add_member(:hibernation_options, Shapes::ShapeRef.new(shape: HibernationOptionsRequest, location_name: "HibernationOptions"))
    ManagedInstanceRequest.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: IamInstanceProfileSpecification, location_name: "IamInstanceProfile"))
    ManagedInstanceRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageId, location_name: "ImageId"))
    ManagedInstanceRequest.add_member(:instance_market_options, Shapes::ShapeRef.new(shape: InstanceMarketOptionsRequest, location_name: "InstanceMarketOptions"))
    ManagedInstanceRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    ManagedInstanceRequest.add_member(:ipv_6_addresses, Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "Ipv6Addresses"))
    ManagedInstanceRequest.add_member(:ipv_6_address_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Ipv6AddressCount"))
    ManagedInstanceRequest.add_member(:kernel_id, Shapes::ShapeRef.new(shape: String128, location_name: "KernelId"))
    ManagedInstanceRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: String64, location_name: "KeyName"))
    ManagedInstanceRequest.add_member(:license_specifications, Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: "LicenseSpecifications"))
    ManagedInstanceRequest.add_member(:maintenance_options, Shapes::ShapeRef.new(shape: InstanceMaintenanceOptionsRequest, location_name: "MaintenanceOptions"))
    ManagedInstanceRequest.add_member(:metadata_options, Shapes::ShapeRef.new(shape: InstanceMetadataOptionsRequest, location_name: "MetadataOptions"))
    ManagedInstanceRequest.add_member(:monitoring, Shapes::ShapeRef.new(shape: RunInstancesMonitoringEnabled, location_name: "Monitoring"))
    ManagedInstanceRequest.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "NetworkInterfaces"))
    ManagedInstanceRequest.add_member(:network_performance_options, Shapes::ShapeRef.new(shape: InstanceNetworkPerformanceOptionsRequest, location_name: "NetworkPerformanceOptions"))
    ManagedInstanceRequest.add_member(:placement, Shapes::ShapeRef.new(shape: Placement, location_name: "Placement"))
    ManagedInstanceRequest.add_member(:private_dns_name_options, Shapes::ShapeRef.new(shape: PrivateDnsNameOptionsRequest, location_name: "PrivateDnsNameOptions"))
    ManagedInstanceRequest.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "PrivateIpAddress"))
    ManagedInstanceRequest.add_member(:ramdisk_id, Shapes::ShapeRef.new(shape: String128, location_name: "RamdiskId"))
    ManagedInstanceRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    ManagedInstanceRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupNames, location_name: "SecurityGroups"))
    ManagedInstanceRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    ManagedInstanceRequest.add_member(:tag_specifications, Shapes::ShapeRef.new(shape: TagSpecifications, location_name: "TagSpecifications"))
    ManagedInstanceRequest.add_member(:user_data, Shapes::ShapeRef.new(shape: UserData, location_name: "UserData"))
    ManagedInstanceRequest.struct_class = Types::ManagedInstanceRequest

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: InstanceNetworkInterfaceSpecification)

    Placement.add_member(:affinity, Shapes::ShapeRef.new(shape: String64, location_name: "Affinity"))
    Placement.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    Placement.add_member(:group_id, Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: "GroupId"))
    Placement.add_member(:group_name, Shapes::ShapeRef.new(shape: String64, location_name: "GroupName"))
    Placement.add_member(:host_id, Shapes::ShapeRef.new(shape: HostId, location_name: "HostId"))
    Placement.add_member(:host_resource_group_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "HostResourceGroupArn"))
    Placement.add_member(:partition_number, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PartitionNumber"))
    Placement.add_member(:tenancy, Shapes::ShapeRef.new(shape: TenancyEnum, location_name: "Tenancy"))
    Placement.struct_class = Types::Placement

    PrivateDnsNameOptionsRequest.add_member(:hostname_type, Shapes::ShapeRef.new(shape: HostnameTypeEnum, location_name: "HostnameType"))
    PrivateDnsNameOptionsRequest.add_member(:enable_resource_name_dns_a_record, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableResourceNameDnsARecord"))
    PrivateDnsNameOptionsRequest.add_member(:enable_resource_name_dns_aaaa_record, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableResourceNameDnsAAAARecord"))
    PrivateDnsNameOptionsRequest.struct_class = Types::PrivateDnsNameOptionsRequest

    PrivateIpAddressSpecification.add_member(:primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "Primary"))
    PrivateIpAddressSpecification.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "PrivateIpAddress"))
    PrivateIpAddressSpecification.struct_class = Types::PrivateIpAddressSpecification

    PrivateIpAddresses.member = Shapes::ShapeRef.new(shape: PrivateIpAddressSpecification)

    ProvisionStates.member = Shapes::ShapeRef.new(shape: ProvisionStateEnum)

    Region.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    Region.struct_class = Types::Region

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RunInstancesMonitoringEnabled.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    RunInstancesMonitoringEnabled.struct_class = Types::RunInstancesMonitoringEnabled

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SecurityGroupNames.member = Shapes::ShapeRef.new(shape: SecurityGroupName)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SpotMarketOptions.add_member(:block_duration_minutes, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "BlockDurationMinutes"))
    SpotMarketOptions.add_member(:instance_interruption_behavior, Shapes::ShapeRef.new(shape: InstanceInterruptionBehaviorEnum, location_name: "InstanceInterruptionBehavior"))
    SpotMarketOptions.add_member(:max_price, Shapes::ShapeRef.new(shape: String64, location_name: "MaxPrice"))
    SpotMarketOptions.add_member(:spot_instance_type, Shapes::ShapeRef.new(shape: SpotInstanceTypeEnum, location_name: "SpotInstanceType"))
    SpotMarketOptions.add_member(:valid_until_utc, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ValidUntilUtc"))
    SpotMarketOptions.struct_class = Types::SpotMarketOptions

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagSpecification.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeEnum, location_name: "ResourceType"))
    TagSpecification.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TagSpecification.struct_class = Types::TagSpecification

    TagSpecifications.member = Shapes::ShapeRef.new(shape: TagSpecification)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, required: true, location_name: "WorkspaceInstanceId"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Reason"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkspaceInstance.add_member(:provision_state, Shapes::ShapeRef.new(shape: ProvisionStateEnum, location_name: "ProvisionState"))
    WorkspaceInstance.add_member(:workspace_instance_id, Shapes::ShapeRef.new(shape: WorkspaceInstanceId, location_name: "WorkspaceInstanceId"))
    WorkspaceInstance.add_member(:ec2_managed_instance, Shapes::ShapeRef.new(shape: EC2ManagedInstance, location_name: "EC2ManagedInstance"))
    WorkspaceInstance.struct_class = Types::WorkspaceInstance

    WorkspaceInstanceError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    WorkspaceInstanceError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    WorkspaceInstanceError.struct_class = Types::WorkspaceInstanceError

    WorkspaceInstanceErrors.member = Shapes::ShapeRef.new(shape: WorkspaceInstanceError)

    WorkspaceInstances.member = Shapes::ShapeRef.new(shape: WorkspaceInstance)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "workspaces-instances",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon Workspaces Instances",
        "serviceId" => "Workspaces Instances",
        "signatureVersion" => "v4",
        "signingName" => "workspaces-instances",
        "targetPrefix" => "EUCMIFrontendAPIService",
        "uid" => "workspaces-instances-2022-07-26",
      }

      api.add_operation(:associate_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_workspace_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspaceInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_workspace_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspaceInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkspaceInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_workspace_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkspaceInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkspaceInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkspaceInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_instance_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceTypesResponse)
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

      api.add_operation(:list_regions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRegionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegionsResponse)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_workspace_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkspaceInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkspaceInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkspaceInstancesResponse)
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

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
