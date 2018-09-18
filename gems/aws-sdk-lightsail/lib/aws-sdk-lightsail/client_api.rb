# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lightsail
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDirection = Shapes::StringShape.new(name: 'AccessDirection')
    AccountSetupInProgressException = Shapes::StructureShape.new(name: 'AccountSetupInProgressException')
    AllocateStaticIpRequest = Shapes::StructureShape.new(name: 'AllocateStaticIpRequest')
    AllocateStaticIpResult = Shapes::StructureShape.new(name: 'AllocateStaticIpResult')
    AttachDiskRequest = Shapes::StructureShape.new(name: 'AttachDiskRequest')
    AttachDiskResult = Shapes::StructureShape.new(name: 'AttachDiskResult')
    AttachInstancesToLoadBalancerRequest = Shapes::StructureShape.new(name: 'AttachInstancesToLoadBalancerRequest')
    AttachInstancesToLoadBalancerResult = Shapes::StructureShape.new(name: 'AttachInstancesToLoadBalancerResult')
    AttachLoadBalancerTlsCertificateRequest = Shapes::StructureShape.new(name: 'AttachLoadBalancerTlsCertificateRequest')
    AttachLoadBalancerTlsCertificateResult = Shapes::StructureShape.new(name: 'AttachLoadBalancerTlsCertificateResult')
    AttachStaticIpRequest = Shapes::StructureShape.new(name: 'AttachStaticIpRequest')
    AttachStaticIpResult = Shapes::StructureShape.new(name: 'AttachStaticIpResult')
    AttachedDiskMap = Shapes::MapShape.new(name: 'AttachedDiskMap')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    Base64 = Shapes::StringShape.new(name: 'Base64')
    Blueprint = Shapes::StructureShape.new(name: 'Blueprint')
    BlueprintList = Shapes::ListShape.new(name: 'BlueprintList')
    BlueprintType = Shapes::StringShape.new(name: 'BlueprintType')
    Bundle = Shapes::StructureShape.new(name: 'Bundle')
    BundleList = Shapes::ListShape.new(name: 'BundleList')
    CloseInstancePublicPortsRequest = Shapes::StructureShape.new(name: 'CloseInstancePublicPortsRequest')
    CloseInstancePublicPortsResult = Shapes::StructureShape.new(name: 'CloseInstancePublicPortsResult')
    CreateDiskFromSnapshotRequest = Shapes::StructureShape.new(name: 'CreateDiskFromSnapshotRequest')
    CreateDiskFromSnapshotResult = Shapes::StructureShape.new(name: 'CreateDiskFromSnapshotResult')
    CreateDiskRequest = Shapes::StructureShape.new(name: 'CreateDiskRequest')
    CreateDiskResult = Shapes::StructureShape.new(name: 'CreateDiskResult')
    CreateDiskSnapshotRequest = Shapes::StructureShape.new(name: 'CreateDiskSnapshotRequest')
    CreateDiskSnapshotResult = Shapes::StructureShape.new(name: 'CreateDiskSnapshotResult')
    CreateDomainEntryRequest = Shapes::StructureShape.new(name: 'CreateDomainEntryRequest')
    CreateDomainEntryResult = Shapes::StructureShape.new(name: 'CreateDomainEntryResult')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResult = Shapes::StructureShape.new(name: 'CreateDomainResult')
    CreateInstanceSnapshotRequest = Shapes::StructureShape.new(name: 'CreateInstanceSnapshotRequest')
    CreateInstanceSnapshotResult = Shapes::StructureShape.new(name: 'CreateInstanceSnapshotResult')
    CreateInstancesFromSnapshotRequest = Shapes::StructureShape.new(name: 'CreateInstancesFromSnapshotRequest')
    CreateInstancesFromSnapshotResult = Shapes::StructureShape.new(name: 'CreateInstancesFromSnapshotResult')
    CreateInstancesRequest = Shapes::StructureShape.new(name: 'CreateInstancesRequest')
    CreateInstancesResult = Shapes::StructureShape.new(name: 'CreateInstancesResult')
    CreateKeyPairRequest = Shapes::StructureShape.new(name: 'CreateKeyPairRequest')
    CreateKeyPairResult = Shapes::StructureShape.new(name: 'CreateKeyPairResult')
    CreateLoadBalancerRequest = Shapes::StructureShape.new(name: 'CreateLoadBalancerRequest')
    CreateLoadBalancerResult = Shapes::StructureShape.new(name: 'CreateLoadBalancerResult')
    CreateLoadBalancerTlsCertificateRequest = Shapes::StructureShape.new(name: 'CreateLoadBalancerTlsCertificateRequest')
    CreateLoadBalancerTlsCertificateResult = Shapes::StructureShape.new(name: 'CreateLoadBalancerTlsCertificateResult')
    DeleteDiskRequest = Shapes::StructureShape.new(name: 'DeleteDiskRequest')
    DeleteDiskResult = Shapes::StructureShape.new(name: 'DeleteDiskResult')
    DeleteDiskSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteDiskSnapshotRequest')
    DeleteDiskSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDiskSnapshotResult')
    DeleteDomainEntryRequest = Shapes::StructureShape.new(name: 'DeleteDomainEntryRequest')
    DeleteDomainEntryResult = Shapes::StructureShape.new(name: 'DeleteDomainEntryResult')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResult = Shapes::StructureShape.new(name: 'DeleteDomainResult')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteInstanceResult = Shapes::StructureShape.new(name: 'DeleteInstanceResult')
    DeleteInstanceSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteInstanceSnapshotRequest')
    DeleteInstanceSnapshotResult = Shapes::StructureShape.new(name: 'DeleteInstanceSnapshotResult')
    DeleteKeyPairRequest = Shapes::StructureShape.new(name: 'DeleteKeyPairRequest')
    DeleteKeyPairResult = Shapes::StructureShape.new(name: 'DeleteKeyPairResult')
    DeleteLoadBalancerRequest = Shapes::StructureShape.new(name: 'DeleteLoadBalancerRequest')
    DeleteLoadBalancerResult = Shapes::StructureShape.new(name: 'DeleteLoadBalancerResult')
    DeleteLoadBalancerTlsCertificateRequest = Shapes::StructureShape.new(name: 'DeleteLoadBalancerTlsCertificateRequest')
    DeleteLoadBalancerTlsCertificateResult = Shapes::StructureShape.new(name: 'DeleteLoadBalancerTlsCertificateResult')
    DetachDiskRequest = Shapes::StructureShape.new(name: 'DetachDiskRequest')
    DetachDiskResult = Shapes::StructureShape.new(name: 'DetachDiskResult')
    DetachInstancesFromLoadBalancerRequest = Shapes::StructureShape.new(name: 'DetachInstancesFromLoadBalancerRequest')
    DetachInstancesFromLoadBalancerResult = Shapes::StructureShape.new(name: 'DetachInstancesFromLoadBalancerResult')
    DetachStaticIpRequest = Shapes::StructureShape.new(name: 'DetachStaticIpRequest')
    DetachStaticIpResult = Shapes::StructureShape.new(name: 'DetachStaticIpResult')
    Disk = Shapes::StructureShape.new(name: 'Disk')
    DiskList = Shapes::ListShape.new(name: 'DiskList')
    DiskMap = Shapes::StructureShape.new(name: 'DiskMap')
    DiskMapList = Shapes::ListShape.new(name: 'DiskMapList')
    DiskSnapshot = Shapes::StructureShape.new(name: 'DiskSnapshot')
    DiskSnapshotList = Shapes::ListShape.new(name: 'DiskSnapshotList')
    DiskSnapshotState = Shapes::StringShape.new(name: 'DiskSnapshotState')
    DiskState = Shapes::StringShape.new(name: 'DiskState')
    Domain = Shapes::StructureShape.new(name: 'Domain')
    DomainEntry = Shapes::StructureShape.new(name: 'DomainEntry')
    DomainEntryList = Shapes::ListShape.new(name: 'DomainEntryList')
    DomainEntryOptions = Shapes::MapShape.new(name: 'DomainEntryOptions')
    DomainEntryOptionsKeys = Shapes::StringShape.new(name: 'DomainEntryOptionsKeys')
    DomainEntryType = Shapes::StringShape.new(name: 'DomainEntryType')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    DownloadDefaultKeyPairRequest = Shapes::StructureShape.new(name: 'DownloadDefaultKeyPairRequest')
    DownloadDefaultKeyPairResult = Shapes::StructureShape.new(name: 'DownloadDefaultKeyPairResult')
    GetActiveNamesRequest = Shapes::StructureShape.new(name: 'GetActiveNamesRequest')
    GetActiveNamesResult = Shapes::StructureShape.new(name: 'GetActiveNamesResult')
    GetBlueprintsRequest = Shapes::StructureShape.new(name: 'GetBlueprintsRequest')
    GetBlueprintsResult = Shapes::StructureShape.new(name: 'GetBlueprintsResult')
    GetBundlesRequest = Shapes::StructureShape.new(name: 'GetBundlesRequest')
    GetBundlesResult = Shapes::StructureShape.new(name: 'GetBundlesResult')
    GetDiskRequest = Shapes::StructureShape.new(name: 'GetDiskRequest')
    GetDiskResult = Shapes::StructureShape.new(name: 'GetDiskResult')
    GetDiskSnapshotRequest = Shapes::StructureShape.new(name: 'GetDiskSnapshotRequest')
    GetDiskSnapshotResult = Shapes::StructureShape.new(name: 'GetDiskSnapshotResult')
    GetDiskSnapshotsRequest = Shapes::StructureShape.new(name: 'GetDiskSnapshotsRequest')
    GetDiskSnapshotsResult = Shapes::StructureShape.new(name: 'GetDiskSnapshotsResult')
    GetDisksRequest = Shapes::StructureShape.new(name: 'GetDisksRequest')
    GetDisksResult = Shapes::StructureShape.new(name: 'GetDisksResult')
    GetDomainRequest = Shapes::StructureShape.new(name: 'GetDomainRequest')
    GetDomainResult = Shapes::StructureShape.new(name: 'GetDomainResult')
    GetDomainsRequest = Shapes::StructureShape.new(name: 'GetDomainsRequest')
    GetDomainsResult = Shapes::StructureShape.new(name: 'GetDomainsResult')
    GetInstanceAccessDetailsRequest = Shapes::StructureShape.new(name: 'GetInstanceAccessDetailsRequest')
    GetInstanceAccessDetailsResult = Shapes::StructureShape.new(name: 'GetInstanceAccessDetailsResult')
    GetInstanceMetricDataRequest = Shapes::StructureShape.new(name: 'GetInstanceMetricDataRequest')
    GetInstanceMetricDataResult = Shapes::StructureShape.new(name: 'GetInstanceMetricDataResult')
    GetInstancePortStatesRequest = Shapes::StructureShape.new(name: 'GetInstancePortStatesRequest')
    GetInstancePortStatesResult = Shapes::StructureShape.new(name: 'GetInstancePortStatesResult')
    GetInstanceRequest = Shapes::StructureShape.new(name: 'GetInstanceRequest')
    GetInstanceResult = Shapes::StructureShape.new(name: 'GetInstanceResult')
    GetInstanceSnapshotRequest = Shapes::StructureShape.new(name: 'GetInstanceSnapshotRequest')
    GetInstanceSnapshotResult = Shapes::StructureShape.new(name: 'GetInstanceSnapshotResult')
    GetInstanceSnapshotsRequest = Shapes::StructureShape.new(name: 'GetInstanceSnapshotsRequest')
    GetInstanceSnapshotsResult = Shapes::StructureShape.new(name: 'GetInstanceSnapshotsResult')
    GetInstanceStateRequest = Shapes::StructureShape.new(name: 'GetInstanceStateRequest')
    GetInstanceStateResult = Shapes::StructureShape.new(name: 'GetInstanceStateResult')
    GetInstancesRequest = Shapes::StructureShape.new(name: 'GetInstancesRequest')
    GetInstancesResult = Shapes::StructureShape.new(name: 'GetInstancesResult')
    GetKeyPairRequest = Shapes::StructureShape.new(name: 'GetKeyPairRequest')
    GetKeyPairResult = Shapes::StructureShape.new(name: 'GetKeyPairResult')
    GetKeyPairsRequest = Shapes::StructureShape.new(name: 'GetKeyPairsRequest')
    GetKeyPairsResult = Shapes::StructureShape.new(name: 'GetKeyPairsResult')
    GetLoadBalancerMetricDataRequest = Shapes::StructureShape.new(name: 'GetLoadBalancerMetricDataRequest')
    GetLoadBalancerMetricDataResult = Shapes::StructureShape.new(name: 'GetLoadBalancerMetricDataResult')
    GetLoadBalancerRequest = Shapes::StructureShape.new(name: 'GetLoadBalancerRequest')
    GetLoadBalancerResult = Shapes::StructureShape.new(name: 'GetLoadBalancerResult')
    GetLoadBalancerTlsCertificatesRequest = Shapes::StructureShape.new(name: 'GetLoadBalancerTlsCertificatesRequest')
    GetLoadBalancerTlsCertificatesResult = Shapes::StructureShape.new(name: 'GetLoadBalancerTlsCertificatesResult')
    GetLoadBalancersRequest = Shapes::StructureShape.new(name: 'GetLoadBalancersRequest')
    GetLoadBalancersResult = Shapes::StructureShape.new(name: 'GetLoadBalancersResult')
    GetOperationRequest = Shapes::StructureShape.new(name: 'GetOperationRequest')
    GetOperationResult = Shapes::StructureShape.new(name: 'GetOperationResult')
    GetOperationsForResourceRequest = Shapes::StructureShape.new(name: 'GetOperationsForResourceRequest')
    GetOperationsForResourceResult = Shapes::StructureShape.new(name: 'GetOperationsForResourceResult')
    GetOperationsRequest = Shapes::StructureShape.new(name: 'GetOperationsRequest')
    GetOperationsResult = Shapes::StructureShape.new(name: 'GetOperationsResult')
    GetRegionsRequest = Shapes::StructureShape.new(name: 'GetRegionsRequest')
    GetRegionsResult = Shapes::StructureShape.new(name: 'GetRegionsResult')
    GetStaticIpRequest = Shapes::StructureShape.new(name: 'GetStaticIpRequest')
    GetStaticIpResult = Shapes::StructureShape.new(name: 'GetStaticIpResult')
    GetStaticIpsRequest = Shapes::StructureShape.new(name: 'GetStaticIpsRequest')
    GetStaticIpsResult = Shapes::StructureShape.new(name: 'GetStaticIpsResult')
    ImportKeyPairRequest = Shapes::StructureShape.new(name: 'ImportKeyPairRequest')
    ImportKeyPairResult = Shapes::StructureShape.new(name: 'ImportKeyPairResult')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceAccessDetails = Shapes::StructureShape.new(name: 'InstanceAccessDetails')
    InstanceAccessProtocol = Shapes::StringShape.new(name: 'InstanceAccessProtocol')
    InstanceHardware = Shapes::StructureShape.new(name: 'InstanceHardware')
    InstanceHealthReason = Shapes::StringShape.new(name: 'InstanceHealthReason')
    InstanceHealthState = Shapes::StringShape.new(name: 'InstanceHealthState')
    InstanceHealthSummary = Shapes::StructureShape.new(name: 'InstanceHealthSummary')
    InstanceHealthSummaryList = Shapes::ListShape.new(name: 'InstanceHealthSummaryList')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceMetricName = Shapes::StringShape.new(name: 'InstanceMetricName')
    InstanceNetworking = Shapes::StructureShape.new(name: 'InstanceNetworking')
    InstancePlatform = Shapes::StringShape.new(name: 'InstancePlatform')
    InstancePlatformList = Shapes::ListShape.new(name: 'InstancePlatformList')
    InstancePortInfo = Shapes::StructureShape.new(name: 'InstancePortInfo')
    InstancePortInfoList = Shapes::ListShape.new(name: 'InstancePortInfoList')
    InstancePortState = Shapes::StructureShape.new(name: 'InstancePortState')
    InstancePortStateList = Shapes::ListShape.new(name: 'InstancePortStateList')
    InstanceSnapshot = Shapes::StructureShape.new(name: 'InstanceSnapshot')
    InstanceSnapshotList = Shapes::ListShape.new(name: 'InstanceSnapshotList')
    InstanceSnapshotState = Shapes::StringShape.new(name: 'InstanceSnapshotState')
    InstanceState = Shapes::StructureShape.new(name: 'InstanceState')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpV6Address = Shapes::StringShape.new(name: 'IpV6Address')
    IsVpcPeeredRequest = Shapes::StructureShape.new(name: 'IsVpcPeeredRequest')
    IsVpcPeeredResult = Shapes::StructureShape.new(name: 'IsVpcPeeredResult')
    IsoDate = Shapes::TimestampShape.new(name: 'IsoDate')
    KeyPair = Shapes::StructureShape.new(name: 'KeyPair')
    KeyPairList = Shapes::ListShape.new(name: 'KeyPairList')
    LoadBalancer = Shapes::StructureShape.new(name: 'LoadBalancer')
    LoadBalancerAttributeName = Shapes::StringShape.new(name: 'LoadBalancerAttributeName')
    LoadBalancerConfigurationOptions = Shapes::MapShape.new(name: 'LoadBalancerConfigurationOptions')
    LoadBalancerList = Shapes::ListShape.new(name: 'LoadBalancerList')
    LoadBalancerMetricName = Shapes::StringShape.new(name: 'LoadBalancerMetricName')
    LoadBalancerProtocol = Shapes::StringShape.new(name: 'LoadBalancerProtocol')
    LoadBalancerState = Shapes::StringShape.new(name: 'LoadBalancerState')
    LoadBalancerTlsCertificate = Shapes::StructureShape.new(name: 'LoadBalancerTlsCertificate')
    LoadBalancerTlsCertificateDomainStatus = Shapes::StringShape.new(name: 'LoadBalancerTlsCertificateDomainStatus')
    LoadBalancerTlsCertificateDomainValidationOption = Shapes::StructureShape.new(name: 'LoadBalancerTlsCertificateDomainValidationOption')
    LoadBalancerTlsCertificateDomainValidationOptionList = Shapes::ListShape.new(name: 'LoadBalancerTlsCertificateDomainValidationOptionList')
    LoadBalancerTlsCertificateDomainValidationRecord = Shapes::StructureShape.new(name: 'LoadBalancerTlsCertificateDomainValidationRecord')
    LoadBalancerTlsCertificateDomainValidationRecordList = Shapes::ListShape.new(name: 'LoadBalancerTlsCertificateDomainValidationRecordList')
    LoadBalancerTlsCertificateFailureReason = Shapes::StringShape.new(name: 'LoadBalancerTlsCertificateFailureReason')
    LoadBalancerTlsCertificateList = Shapes::ListShape.new(name: 'LoadBalancerTlsCertificateList')
    LoadBalancerTlsCertificateRenewalStatus = Shapes::StringShape.new(name: 'LoadBalancerTlsCertificateRenewalStatus')
    LoadBalancerTlsCertificateRenewalSummary = Shapes::StructureShape.new(name: 'LoadBalancerTlsCertificateRenewalSummary')
    LoadBalancerTlsCertificateRevocationReason = Shapes::StringShape.new(name: 'LoadBalancerTlsCertificateRevocationReason')
    LoadBalancerTlsCertificateStatus = Shapes::StringShape.new(name: 'LoadBalancerTlsCertificateStatus')
    LoadBalancerTlsCertificateSummary = Shapes::StructureShape.new(name: 'LoadBalancerTlsCertificateSummary')
    LoadBalancerTlsCertificateSummaryList = Shapes::ListShape.new(name: 'LoadBalancerTlsCertificateSummaryList')
    MetricDatapoint = Shapes::StructureShape.new(name: 'MetricDatapoint')
    MetricDatapointList = Shapes::ListShape.new(name: 'MetricDatapointList')
    MetricPeriod = Shapes::IntegerShape.new(name: 'MetricPeriod')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricStatisticList = Shapes::ListShape.new(name: 'MetricStatisticList')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MonthlyTransfer = Shapes::StructureShape.new(name: 'MonthlyTransfer')
    NetworkProtocol = Shapes::StringShape.new(name: 'NetworkProtocol')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpenInstancePublicPortsRequest = Shapes::StructureShape.new(name: 'OpenInstancePublicPortsRequest')
    OpenInstancePublicPortsResult = Shapes::StructureShape.new(name: 'OpenInstancePublicPortsResult')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationFailureException = Shapes::StructureShape.new(name: 'OperationFailureException')
    OperationList = Shapes::ListShape.new(name: 'OperationList')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PasswordData = Shapes::StructureShape.new(name: 'PasswordData')
    PeerVpcRequest = Shapes::StructureShape.new(name: 'PeerVpcRequest')
    PeerVpcResult = Shapes::StructureShape.new(name: 'PeerVpcResult')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PortAccessType = Shapes::StringShape.new(name: 'PortAccessType')
    PortInfo = Shapes::StructureShape.new(name: 'PortInfo')
    PortInfoList = Shapes::ListShape.new(name: 'PortInfoList')
    PortList = Shapes::ListShape.new(name: 'PortList')
    PortState = Shapes::StringShape.new(name: 'PortState')
    PutInstancePublicPortsRequest = Shapes::StructureShape.new(name: 'PutInstancePublicPortsRequest')
    PutInstancePublicPortsResult = Shapes::StructureShape.new(name: 'PutInstancePublicPortsResult')
    RebootInstanceRequest = Shapes::StructureShape.new(name: 'RebootInstanceRequest')
    RebootInstanceResult = Shapes::StructureShape.new(name: 'RebootInstanceResult')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    ReleaseStaticIpRequest = Shapes::StructureShape.new(name: 'ReleaseStaticIpRequest')
    ReleaseStaticIpResult = Shapes::StructureShape.new(name: 'ReleaseStaticIpResult')
    ResourceLocation = Shapes::StructureShape.new(name: 'ResourceLocation')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNameList = Shapes::ListShape.new(name: 'ResourceNameList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    StartInstanceRequest = Shapes::StructureShape.new(name: 'StartInstanceRequest')
    StartInstanceResult = Shapes::StructureShape.new(name: 'StartInstanceResult')
    StaticIp = Shapes::StructureShape.new(name: 'StaticIp')
    StaticIpList = Shapes::ListShape.new(name: 'StaticIpList')
    StopInstanceRequest = Shapes::StructureShape.new(name: 'StopInstanceRequest')
    StopInstanceResult = Shapes::StructureShape.new(name: 'StopInstanceResult')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMax256 = Shapes::StringShape.new(name: 'StringMax256')
    UnauthenticatedException = Shapes::StructureShape.new(name: 'UnauthenticatedException')
    UnpeerVpcRequest = Shapes::StructureShape.new(name: 'UnpeerVpcRequest')
    UnpeerVpcResult = Shapes::StructureShape.new(name: 'UnpeerVpcResult')
    UpdateDomainEntryRequest = Shapes::StructureShape.new(name: 'UpdateDomainEntryRequest')
    UpdateDomainEntryResult = Shapes::StructureShape.new(name: 'UpdateDomainEntryResult')
    UpdateLoadBalancerAttributeRequest = Shapes::StructureShape.new(name: 'UpdateLoadBalancerAttributeRequest')
    UpdateLoadBalancerAttributeResult = Shapes::StructureShape.new(name: 'UpdateLoadBalancerAttributeResult')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    double = Shapes::FloatShape.new(name: 'double')
    float = Shapes::FloatShape.new(name: 'float')
    integer = Shapes::IntegerShape.new(name: 'integer')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AllocateStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    AllocateStaticIpRequest.struct_class = Types::AllocateStaticIpRequest

    AllocateStaticIpResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AllocateStaticIpResult.struct_class = Types::AllocateStaticIpResult

    AttachDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    AttachDiskRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    AttachDiskRequest.add_member(:disk_path, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "diskPath"))
    AttachDiskRequest.struct_class = Types::AttachDiskRequest

    AttachDiskResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachDiskResult.struct_class = Types::AttachDiskResult

    AttachInstancesToLoadBalancerRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    AttachInstancesToLoadBalancerRequest.add_member(:instance_names, Shapes::ShapeRef.new(shape: ResourceNameList, required: true, location_name: "instanceNames"))
    AttachInstancesToLoadBalancerRequest.struct_class = Types::AttachInstancesToLoadBalancerRequest

    AttachInstancesToLoadBalancerResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachInstancesToLoadBalancerResult.struct_class = Types::AttachInstancesToLoadBalancerResult

    AttachLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    AttachLoadBalancerTlsCertificateRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "certificateName"))
    AttachLoadBalancerTlsCertificateRequest.struct_class = Types::AttachLoadBalancerTlsCertificateRequest

    AttachLoadBalancerTlsCertificateResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachLoadBalancerTlsCertificateResult.struct_class = Types::AttachLoadBalancerTlsCertificateResult

    AttachStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    AttachStaticIpRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    AttachStaticIpRequest.struct_class = Types::AttachStaticIpRequest

    AttachStaticIpResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachStaticIpResult.struct_class = Types::AttachStaticIpResult

    AttachedDiskMap.key = Shapes::ShapeRef.new(shape: ResourceName)
    AttachedDiskMap.value = Shapes::ShapeRef.new(shape: DiskMapList)

    AvailabilityZone.add_member(:zone_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "zoneName"))
    AvailabilityZone.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "state"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    Blueprint.add_member(:blueprint_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintId"))
    Blueprint.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Blueprint.add_member(:group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "group"))
    Blueprint.add_member(:type, Shapes::ShapeRef.new(shape: BlueprintType, location_name: "type"))
    Blueprint.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    Blueprint.add_member(:is_active, Shapes::ShapeRef.new(shape: boolean, location_name: "isActive"))
    Blueprint.add_member(:min_power, Shapes::ShapeRef.new(shape: integer, location_name: "minPower"))
    Blueprint.add_member(:version, Shapes::ShapeRef.new(shape: string, location_name: "version"))
    Blueprint.add_member(:version_code, Shapes::ShapeRef.new(shape: string, location_name: "versionCode"))
    Blueprint.add_member(:product_url, Shapes::ShapeRef.new(shape: string, location_name: "productUrl"))
    Blueprint.add_member(:license_url, Shapes::ShapeRef.new(shape: string, location_name: "licenseUrl"))
    Blueprint.add_member(:platform, Shapes::ShapeRef.new(shape: InstancePlatform, location_name: "platform"))
    Blueprint.struct_class = Types::Blueprint

    BlueprintList.member = Shapes::ShapeRef.new(shape: Blueprint)

    Bundle.add_member(:price, Shapes::ShapeRef.new(shape: float, location_name: "price"))
    Bundle.add_member(:cpu_count, Shapes::ShapeRef.new(shape: integer, location_name: "cpuCount"))
    Bundle.add_member(:disk_size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "diskSizeInGb"))
    Bundle.add_member(:bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    Bundle.add_member(:instance_type, Shapes::ShapeRef.new(shape: string, location_name: "instanceType"))
    Bundle.add_member(:is_active, Shapes::ShapeRef.new(shape: boolean, location_name: "isActive"))
    Bundle.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    Bundle.add_member(:power, Shapes::ShapeRef.new(shape: integer, location_name: "power"))
    Bundle.add_member(:ram_size_in_gb, Shapes::ShapeRef.new(shape: float, location_name: "ramSizeInGb"))
    Bundle.add_member(:transfer_per_month_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "transferPerMonthInGb"))
    Bundle.add_member(:supported_platforms, Shapes::ShapeRef.new(shape: InstancePlatformList, location_name: "supportedPlatforms"))
    Bundle.struct_class = Types::Bundle

    BundleList.member = Shapes::ShapeRef.new(shape: Bundle)

    CloseInstancePublicPortsRequest.add_member(:port_info, Shapes::ShapeRef.new(shape: PortInfo, required: true, location_name: "portInfo"))
    CloseInstancePublicPortsRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    CloseInstancePublicPortsRequest.struct_class = Types::CloseInstancePublicPortsRequest

    CloseInstancePublicPortsResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CloseInstancePublicPortsResult.struct_class = Types::CloseInstancePublicPortsResult

    CreateDiskFromSnapshotRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    CreateDiskFromSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskSnapshotName"))
    CreateDiskFromSnapshotRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "availabilityZone"))
    CreateDiskFromSnapshotRequest.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "sizeInGb"))
    CreateDiskFromSnapshotRequest.struct_class = Types::CreateDiskFromSnapshotRequest

    CreateDiskFromSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskFromSnapshotResult.struct_class = Types::CreateDiskFromSnapshotResult

    CreateDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    CreateDiskRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "availabilityZone"))
    CreateDiskRequest.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "sizeInGb"))
    CreateDiskRequest.struct_class = Types::CreateDiskRequest

    CreateDiskResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskResult.struct_class = Types::CreateDiskResult

    CreateDiskSnapshotRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    CreateDiskSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskSnapshotName"))
    CreateDiskSnapshotRequest.struct_class = Types::CreateDiskSnapshotRequest

    CreateDiskSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskSnapshotResult.struct_class = Types::CreateDiskSnapshotResult

    CreateDomainEntryRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateDomainEntryRequest.add_member(:domain_entry, Shapes::ShapeRef.new(shape: DomainEntry, required: true, location_name: "domainEntry"))
    CreateDomainEntryRequest.struct_class = Types::CreateDomainEntryRequest

    CreateDomainEntryResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDomainEntryResult.struct_class = Types::CreateDomainEntryResult

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDomainResult.struct_class = Types::CreateDomainResult

    CreateInstanceSnapshotRequest.add_member(:instance_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceSnapshotName"))
    CreateInstanceSnapshotRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    CreateInstanceSnapshotRequest.struct_class = Types::CreateInstanceSnapshotRequest

    CreateInstanceSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstanceSnapshotResult.struct_class = Types::CreateInstanceSnapshotResult

    CreateInstancesFromSnapshotRequest.add_member(:instance_names, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "instanceNames"))
    CreateInstancesFromSnapshotRequest.add_member(:attached_disk_mapping, Shapes::ShapeRef.new(shape: AttachedDiskMap, location_name: "attachedDiskMapping"))
    CreateInstancesFromSnapshotRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, required: true, location_name: "availabilityZone"))
    CreateInstancesFromSnapshotRequest.add_member(:instance_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceSnapshotName"))
    CreateInstancesFromSnapshotRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "bundleId"))
    CreateInstancesFromSnapshotRequest.add_member(:user_data, Shapes::ShapeRef.new(shape: string, location_name: "userData"))
    CreateInstancesFromSnapshotRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    CreateInstancesFromSnapshotRequest.struct_class = Types::CreateInstancesFromSnapshotRequest

    CreateInstancesFromSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstancesFromSnapshotResult.struct_class = Types::CreateInstancesFromSnapshotResult

    CreateInstancesRequest.add_member(:instance_names, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "instanceNames"))
    CreateInstancesRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, required: true, location_name: "availabilityZone"))
    CreateInstancesRequest.add_member(:custom_image_name, Shapes::ShapeRef.new(shape: ResourceName, deprecated: true, location_name: "customImageName"))
    CreateInstancesRequest.add_member(:blueprint_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "blueprintId"))
    CreateInstancesRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "bundleId"))
    CreateInstancesRequest.add_member(:user_data, Shapes::ShapeRef.new(shape: string, location_name: "userData"))
    CreateInstancesRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    CreateInstancesRequest.struct_class = Types::CreateInstancesRequest

    CreateInstancesResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstancesResult.struct_class = Types::CreateInstancesResult

    CreateKeyPairRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "keyPairName"))
    CreateKeyPairRequest.struct_class = Types::CreateKeyPairRequest

    CreateKeyPairResult.add_member(:key_pair, Shapes::ShapeRef.new(shape: KeyPair, location_name: "keyPair"))
    CreateKeyPairResult.add_member(:public_key_base_64, Shapes::ShapeRef.new(shape: Base64, location_name: "publicKeyBase64"))
    CreateKeyPairResult.add_member(:private_key_base_64, Shapes::ShapeRef.new(shape: Base64, location_name: "privateKeyBase64"))
    CreateKeyPairResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateKeyPairResult.struct_class = Types::CreateKeyPairResult

    CreateLoadBalancerRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    CreateLoadBalancerRequest.add_member(:instance_port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "instancePort"))
    CreateLoadBalancerRequest.add_member(:health_check_path, Shapes::ShapeRef.new(shape: string, location_name: "healthCheckPath"))
    CreateLoadBalancerRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName"))
    CreateLoadBalancerRequest.add_member(:certificate_domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "certificateDomainName"))
    CreateLoadBalancerRequest.add_member(:certificate_alternative_names, Shapes::ShapeRef.new(shape: DomainNameList, location_name: "certificateAlternativeNames"))
    CreateLoadBalancerRequest.struct_class = Types::CreateLoadBalancerRequest

    CreateLoadBalancerResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateLoadBalancerResult.struct_class = Types::CreateLoadBalancerResult

    CreateLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "certificateName"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "certificateDomainName"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_alternative_names, Shapes::ShapeRef.new(shape: DomainNameList, location_name: "certificateAlternativeNames"))
    CreateLoadBalancerTlsCertificateRequest.struct_class = Types::CreateLoadBalancerTlsCertificateRequest

    CreateLoadBalancerTlsCertificateResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateLoadBalancerTlsCertificateResult.struct_class = Types::CreateLoadBalancerTlsCertificateResult

    DeleteDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    DeleteDiskRequest.struct_class = Types::DeleteDiskRequest

    DeleteDiskResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteDiskResult.struct_class = Types::DeleteDiskResult

    DeleteDiskSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskSnapshotName"))
    DeleteDiskSnapshotRequest.struct_class = Types::DeleteDiskSnapshotRequest

    DeleteDiskSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteDiskSnapshotResult.struct_class = Types::DeleteDiskSnapshotResult

    DeleteDomainEntryRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    DeleteDomainEntryRequest.add_member(:domain_entry, Shapes::ShapeRef.new(shape: DomainEntry, required: true, location_name: "domainEntry"))
    DeleteDomainEntryRequest.struct_class = Types::DeleteDomainEntryRequest

    DeleteDomainEntryResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteDomainEntryResult.struct_class = Types::DeleteDomainEntryResult

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteDomainResult.struct_class = Types::DeleteDomainResult

    DeleteInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteInstanceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteInstanceResult.struct_class = Types::DeleteInstanceResult

    DeleteInstanceSnapshotRequest.add_member(:instance_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceSnapshotName"))
    DeleteInstanceSnapshotRequest.struct_class = Types::DeleteInstanceSnapshotRequest

    DeleteInstanceSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteInstanceSnapshotResult.struct_class = Types::DeleteInstanceSnapshotResult

    DeleteKeyPairRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "keyPairName"))
    DeleteKeyPairRequest.struct_class = Types::DeleteKeyPairRequest

    DeleteKeyPairResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteKeyPairResult.struct_class = Types::DeleteKeyPairResult

    DeleteLoadBalancerRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    DeleteLoadBalancerRequest.struct_class = Types::DeleteLoadBalancerRequest

    DeleteLoadBalancerResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteLoadBalancerResult.struct_class = Types::DeleteLoadBalancerResult

    DeleteLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    DeleteLoadBalancerTlsCertificateRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "certificateName"))
    DeleteLoadBalancerTlsCertificateRequest.add_member(:force, Shapes::ShapeRef.new(shape: boolean, location_name: "force"))
    DeleteLoadBalancerTlsCertificateRequest.struct_class = Types::DeleteLoadBalancerTlsCertificateRequest

    DeleteLoadBalancerTlsCertificateResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteLoadBalancerTlsCertificateResult.struct_class = Types::DeleteLoadBalancerTlsCertificateResult

    DetachDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    DetachDiskRequest.struct_class = Types::DetachDiskRequest

    DetachDiskResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DetachDiskResult.struct_class = Types::DetachDiskResult

    DetachInstancesFromLoadBalancerRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    DetachInstancesFromLoadBalancerRequest.add_member(:instance_names, Shapes::ShapeRef.new(shape: ResourceNameList, required: true, location_name: "instanceNames"))
    DetachInstancesFromLoadBalancerRequest.struct_class = Types::DetachInstancesFromLoadBalancerRequest

    DetachInstancesFromLoadBalancerResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DetachInstancesFromLoadBalancerResult.struct_class = Types::DetachInstancesFromLoadBalancerResult

    DetachStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    DetachStaticIpRequest.struct_class = Types::DetachStaticIpRequest

    DetachStaticIpResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DetachStaticIpResult.struct_class = Types::DetachStaticIpResult

    Disk.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Disk.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Disk.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Disk.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Disk.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Disk.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Disk.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    Disk.add_member(:is_system_disk, Shapes::ShapeRef.new(shape: boolean, location_name: "isSystemDisk"))
    Disk.add_member(:iops, Shapes::ShapeRef.new(shape: integer, location_name: "iops"))
    Disk.add_member(:path, Shapes::ShapeRef.new(shape: string, location_name: "path"))
    Disk.add_member(:state, Shapes::ShapeRef.new(shape: DiskState, location_name: "state"))
    Disk.add_member(:attached_to, Shapes::ShapeRef.new(shape: ResourceName, location_name: "attachedTo"))
    Disk.add_member(:is_attached, Shapes::ShapeRef.new(shape: boolean, location_name: "isAttached"))
    Disk.add_member(:attachment_state, Shapes::ShapeRef.new(shape: string, deprecated: true, location_name: "attachmentState"))
    Disk.add_member(:gb_in_use, Shapes::ShapeRef.new(shape: integer, deprecated: true, location_name: "gbInUse"))
    Disk.struct_class = Types::Disk

    DiskList.member = Shapes::ShapeRef.new(shape: Disk)

    DiskMap.add_member(:original_disk_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "originalDiskPath"))
    DiskMap.add_member(:new_disk_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "newDiskName"))
    DiskMap.struct_class = Types::DiskMap

    DiskMapList.member = Shapes::ShapeRef.new(shape: DiskMap)

    DiskSnapshot.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    DiskSnapshot.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    DiskSnapshot.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    DiskSnapshot.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    DiskSnapshot.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    DiskSnapshot.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    DiskSnapshot.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    DiskSnapshot.add_member(:state, Shapes::ShapeRef.new(shape: DiskSnapshotState, location_name: "state"))
    DiskSnapshot.add_member(:progress, Shapes::ShapeRef.new(shape: string, location_name: "progress"))
    DiskSnapshot.add_member(:from_disk_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromDiskName"))
    DiskSnapshot.add_member(:from_disk_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromDiskArn"))
    DiskSnapshot.struct_class = Types::DiskSnapshot

    DiskSnapshotList.member = Shapes::ShapeRef.new(shape: DiskSnapshot)

    Domain.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Domain.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Domain.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Domain.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Domain.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Domain.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Domain.add_member(:domain_entries, Shapes::ShapeRef.new(shape: DomainEntryList, location_name: "domainEntries"))
    Domain.struct_class = Types::Domain

    DomainEntry.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    DomainEntry.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, location_name: "name"))
    DomainEntry.add_member(:target, Shapes::ShapeRef.new(shape: string, location_name: "target"))
    DomainEntry.add_member(:is_alias, Shapes::ShapeRef.new(shape: boolean, location_name: "isAlias"))
    DomainEntry.add_member(:type, Shapes::ShapeRef.new(shape: DomainEntryType, location_name: "type"))
    DomainEntry.add_member(:options, Shapes::ShapeRef.new(shape: DomainEntryOptions, deprecated: true, location_name: "options"))
    DomainEntry.struct_class = Types::DomainEntry

    DomainEntryList.member = Shapes::ShapeRef.new(shape: DomainEntry)

    DomainEntryOptions.key = Shapes::ShapeRef.new(shape: DomainEntryOptionsKeys)
    DomainEntryOptions.value = Shapes::ShapeRef.new(shape: string)

    DomainList.member = Shapes::ShapeRef.new(shape: Domain)

    DomainNameList.member = Shapes::ShapeRef.new(shape: DomainName)

    DownloadDefaultKeyPairRequest.struct_class = Types::DownloadDefaultKeyPairRequest

    DownloadDefaultKeyPairResult.add_member(:public_key_base_64, Shapes::ShapeRef.new(shape: Base64, location_name: "publicKeyBase64"))
    DownloadDefaultKeyPairResult.add_member(:private_key_base_64, Shapes::ShapeRef.new(shape: Base64, location_name: "privateKeyBase64"))
    DownloadDefaultKeyPairResult.struct_class = Types::DownloadDefaultKeyPairResult

    GetActiveNamesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetActiveNamesRequest.struct_class = Types::GetActiveNamesRequest

    GetActiveNamesResult.add_member(:active_names, Shapes::ShapeRef.new(shape: StringList, location_name: "activeNames"))
    GetActiveNamesResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetActiveNamesResult.struct_class = Types::GetActiveNamesResult

    GetBlueprintsRequest.add_member(:include_inactive, Shapes::ShapeRef.new(shape: boolean, location_name: "includeInactive"))
    GetBlueprintsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetBlueprintsRequest.struct_class = Types::GetBlueprintsRequest

    GetBlueprintsResult.add_member(:blueprints, Shapes::ShapeRef.new(shape: BlueprintList, location_name: "blueprints"))
    GetBlueprintsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetBlueprintsResult.struct_class = Types::GetBlueprintsResult

    GetBundlesRequest.add_member(:include_inactive, Shapes::ShapeRef.new(shape: boolean, location_name: "includeInactive"))
    GetBundlesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetBundlesRequest.struct_class = Types::GetBundlesRequest

    GetBundlesResult.add_member(:bundles, Shapes::ShapeRef.new(shape: BundleList, location_name: "bundles"))
    GetBundlesResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetBundlesResult.struct_class = Types::GetBundlesResult

    GetDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    GetDiskRequest.struct_class = Types::GetDiskRequest

    GetDiskResult.add_member(:disk, Shapes::ShapeRef.new(shape: Disk, location_name: "disk"))
    GetDiskResult.struct_class = Types::GetDiskResult

    GetDiskSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskSnapshotName"))
    GetDiskSnapshotRequest.struct_class = Types::GetDiskSnapshotRequest

    GetDiskSnapshotResult.add_member(:disk_snapshot, Shapes::ShapeRef.new(shape: DiskSnapshot, location_name: "diskSnapshot"))
    GetDiskSnapshotResult.struct_class = Types::GetDiskSnapshotResult

    GetDiskSnapshotsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetDiskSnapshotsRequest.struct_class = Types::GetDiskSnapshotsRequest

    GetDiskSnapshotsResult.add_member(:disk_snapshots, Shapes::ShapeRef.new(shape: DiskSnapshotList, location_name: "diskSnapshots"))
    GetDiskSnapshotsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetDiskSnapshotsResult.struct_class = Types::GetDiskSnapshotsResult

    GetDisksRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetDisksRequest.struct_class = Types::GetDisksRequest

    GetDisksResult.add_member(:disks, Shapes::ShapeRef.new(shape: DiskList, location_name: "disks"))
    GetDisksResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetDisksResult.struct_class = Types::GetDisksResult

    GetDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GetDomainRequest.struct_class = Types::GetDomainRequest

    GetDomainResult.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "domain"))
    GetDomainResult.struct_class = Types::GetDomainResult

    GetDomainsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetDomainsRequest.struct_class = Types::GetDomainsRequest

    GetDomainsResult.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "domains"))
    GetDomainsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetDomainsResult.struct_class = Types::GetDomainsResult

    GetInstanceAccessDetailsRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    GetInstanceAccessDetailsRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: InstanceAccessProtocol, location_name: "protocol"))
    GetInstanceAccessDetailsRequest.struct_class = Types::GetInstanceAccessDetailsRequest

    GetInstanceAccessDetailsResult.add_member(:access_details, Shapes::ShapeRef.new(shape: InstanceAccessDetails, location_name: "accessDetails"))
    GetInstanceAccessDetailsResult.struct_class = Types::GetInstanceAccessDetailsResult

    GetInstanceMetricDataRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    GetInstanceMetricDataRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: InstanceMetricName, required: true, location_name: "metricName"))
    GetInstanceMetricDataRequest.add_member(:period, Shapes::ShapeRef.new(shape: MetricPeriod, required: true, location_name: "period"))
    GetInstanceMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "startTime"))
    GetInstanceMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "endTime"))
    GetInstanceMetricDataRequest.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, required: true, location_name: "unit"))
    GetInstanceMetricDataRequest.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricStatisticList, required: true, location_name: "statistics"))
    GetInstanceMetricDataRequest.struct_class = Types::GetInstanceMetricDataRequest

    GetInstanceMetricDataResult.add_member(:metric_name, Shapes::ShapeRef.new(shape: InstanceMetricName, location_name: "metricName"))
    GetInstanceMetricDataResult.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetInstanceMetricDataResult.struct_class = Types::GetInstanceMetricDataResult

    GetInstancePortStatesRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    GetInstancePortStatesRequest.struct_class = Types::GetInstancePortStatesRequest

    GetInstancePortStatesResult.add_member(:port_states, Shapes::ShapeRef.new(shape: InstancePortStateList, location_name: "portStates"))
    GetInstancePortStatesResult.struct_class = Types::GetInstancePortStatesResult

    GetInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    GetInstanceRequest.struct_class = Types::GetInstanceRequest

    GetInstanceResult.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, location_name: "instance"))
    GetInstanceResult.struct_class = Types::GetInstanceResult

    GetInstanceSnapshotRequest.add_member(:instance_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceSnapshotName"))
    GetInstanceSnapshotRequest.struct_class = Types::GetInstanceSnapshotRequest

    GetInstanceSnapshotResult.add_member(:instance_snapshot, Shapes::ShapeRef.new(shape: InstanceSnapshot, location_name: "instanceSnapshot"))
    GetInstanceSnapshotResult.struct_class = Types::GetInstanceSnapshotResult

    GetInstanceSnapshotsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetInstanceSnapshotsRequest.struct_class = Types::GetInstanceSnapshotsRequest

    GetInstanceSnapshotsResult.add_member(:instance_snapshots, Shapes::ShapeRef.new(shape: InstanceSnapshotList, location_name: "instanceSnapshots"))
    GetInstanceSnapshotsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetInstanceSnapshotsResult.struct_class = Types::GetInstanceSnapshotsResult

    GetInstanceStateRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    GetInstanceStateRequest.struct_class = Types::GetInstanceStateRequest

    GetInstanceStateResult.add_member(:state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "state"))
    GetInstanceStateResult.struct_class = Types::GetInstanceStateResult

    GetInstancesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetInstancesRequest.struct_class = Types::GetInstancesRequest

    GetInstancesResult.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "instances"))
    GetInstancesResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetInstancesResult.struct_class = Types::GetInstancesResult

    GetKeyPairRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "keyPairName"))
    GetKeyPairRequest.struct_class = Types::GetKeyPairRequest

    GetKeyPairResult.add_member(:key_pair, Shapes::ShapeRef.new(shape: KeyPair, location_name: "keyPair"))
    GetKeyPairResult.struct_class = Types::GetKeyPairResult

    GetKeyPairsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetKeyPairsRequest.struct_class = Types::GetKeyPairsRequest

    GetKeyPairsResult.add_member(:key_pairs, Shapes::ShapeRef.new(shape: KeyPairList, location_name: "keyPairs"))
    GetKeyPairsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetKeyPairsResult.struct_class = Types::GetKeyPairsResult

    GetLoadBalancerMetricDataRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    GetLoadBalancerMetricDataRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: LoadBalancerMetricName, required: true, location_name: "metricName"))
    GetLoadBalancerMetricDataRequest.add_member(:period, Shapes::ShapeRef.new(shape: MetricPeriod, required: true, location_name: "period"))
    GetLoadBalancerMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "startTime"))
    GetLoadBalancerMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "endTime"))
    GetLoadBalancerMetricDataRequest.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, required: true, location_name: "unit"))
    GetLoadBalancerMetricDataRequest.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricStatisticList, required: true, location_name: "statistics"))
    GetLoadBalancerMetricDataRequest.struct_class = Types::GetLoadBalancerMetricDataRequest

    GetLoadBalancerMetricDataResult.add_member(:metric_name, Shapes::ShapeRef.new(shape: LoadBalancerMetricName, location_name: "metricName"))
    GetLoadBalancerMetricDataResult.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetLoadBalancerMetricDataResult.struct_class = Types::GetLoadBalancerMetricDataResult

    GetLoadBalancerRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    GetLoadBalancerRequest.struct_class = Types::GetLoadBalancerRequest

    GetLoadBalancerResult.add_member(:load_balancer, Shapes::ShapeRef.new(shape: LoadBalancer, location_name: "loadBalancer"))
    GetLoadBalancerResult.struct_class = Types::GetLoadBalancerResult

    GetLoadBalancerTlsCertificatesRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    GetLoadBalancerTlsCertificatesRequest.struct_class = Types::GetLoadBalancerTlsCertificatesRequest

    GetLoadBalancerTlsCertificatesResult.add_member(:tls_certificates, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateList, location_name: "tlsCertificates"))
    GetLoadBalancerTlsCertificatesResult.struct_class = Types::GetLoadBalancerTlsCertificatesResult

    GetLoadBalancersRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetLoadBalancersRequest.struct_class = Types::GetLoadBalancersRequest

    GetLoadBalancersResult.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancerList, location_name: "loadBalancers"))
    GetLoadBalancersResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetLoadBalancersResult.struct_class = Types::GetLoadBalancersResult

    GetOperationRequest.add_member(:operation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "operationId"))
    GetOperationRequest.struct_class = Types::GetOperationRequest

    GetOperationResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    GetOperationResult.struct_class = Types::GetOperationResult

    GetOperationsForResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    GetOperationsForResourceRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetOperationsForResourceRequest.struct_class = Types::GetOperationsForResourceRequest

    GetOperationsForResourceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    GetOperationsForResourceResult.add_member(:next_page_count, Shapes::ShapeRef.new(shape: string, deprecated: true, location_name: "nextPageCount"))
    GetOperationsForResourceResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetOperationsForResourceResult.struct_class = Types::GetOperationsForResourceResult

    GetOperationsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetOperationsRequest.struct_class = Types::GetOperationsRequest

    GetOperationsResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    GetOperationsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetOperationsResult.struct_class = Types::GetOperationsResult

    GetRegionsRequest.add_member(:include_availability_zones, Shapes::ShapeRef.new(shape: boolean, location_name: "includeAvailabilityZones"))
    GetRegionsRequest.struct_class = Types::GetRegionsRequest

    GetRegionsResult.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    GetRegionsResult.struct_class = Types::GetRegionsResult

    GetStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    GetStaticIpRequest.struct_class = Types::GetStaticIpRequest

    GetStaticIpResult.add_member(:static_ip, Shapes::ShapeRef.new(shape: StaticIp, location_name: "staticIp"))
    GetStaticIpResult.struct_class = Types::GetStaticIpResult

    GetStaticIpsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetStaticIpsRequest.struct_class = Types::GetStaticIpsRequest

    GetStaticIpsResult.add_member(:static_ips, Shapes::ShapeRef.new(shape: StaticIpList, location_name: "staticIps"))
    GetStaticIpsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetStaticIpsResult.struct_class = Types::GetStaticIpsResult

    ImportKeyPairRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "keyPairName"))
    ImportKeyPairRequest.add_member(:public_key_base_64, Shapes::ShapeRef.new(shape: Base64, required: true, location_name: "publicKeyBase64"))
    ImportKeyPairRequest.struct_class = Types::ImportKeyPairRequest

    ImportKeyPairResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    ImportKeyPairResult.struct_class = Types::ImportKeyPairResult

    Instance.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Instance.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Instance.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Instance.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Instance.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Instance.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Instance.add_member(:blueprint_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintId"))
    Instance.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintName"))
    Instance.add_member(:bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    Instance.add_member(:is_static_ip, Shapes::ShapeRef.new(shape: boolean, location_name: "isStaticIp"))
    Instance.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "privateIpAddress"))
    Instance.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "publicIpAddress"))
    Instance.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: IpV6Address, location_name: "ipv6Address"))
    Instance.add_member(:hardware, Shapes::ShapeRef.new(shape: InstanceHardware, location_name: "hardware"))
    Instance.add_member(:networking, Shapes::ShapeRef.new(shape: InstanceNetworking, location_name: "networking"))
    Instance.add_member(:state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "state"))
    Instance.add_member(:username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "username"))
    Instance.add_member(:ssh_key_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "sshKeyName"))
    Instance.struct_class = Types::Instance

    InstanceAccessDetails.add_member(:cert_key, Shapes::ShapeRef.new(shape: string, location_name: "certKey"))
    InstanceAccessDetails.add_member(:expires_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "expiresAt"))
    InstanceAccessDetails.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    InstanceAccessDetails.add_member(:password, Shapes::ShapeRef.new(shape: string, location_name: "password"))
    InstanceAccessDetails.add_member(:password_data, Shapes::ShapeRef.new(shape: PasswordData, location_name: "passwordData"))
    InstanceAccessDetails.add_member(:private_key, Shapes::ShapeRef.new(shape: string, location_name: "privateKey"))
    InstanceAccessDetails.add_member(:protocol, Shapes::ShapeRef.new(shape: InstanceAccessProtocol, location_name: "protocol"))
    InstanceAccessDetails.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    InstanceAccessDetails.add_member(:username, Shapes::ShapeRef.new(shape: string, location_name: "username"))
    InstanceAccessDetails.struct_class = Types::InstanceAccessDetails

    InstanceHardware.add_member(:cpu_count, Shapes::ShapeRef.new(shape: integer, location_name: "cpuCount"))
    InstanceHardware.add_member(:disks, Shapes::ShapeRef.new(shape: DiskList, location_name: "disks"))
    InstanceHardware.add_member(:ram_size_in_gb, Shapes::ShapeRef.new(shape: float, location_name: "ramSizeInGb"))
    InstanceHardware.struct_class = Types::InstanceHardware

    InstanceHealthSummary.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    InstanceHealthSummary.add_member(:instance_health, Shapes::ShapeRef.new(shape: InstanceHealthState, location_name: "instanceHealth"))
    InstanceHealthSummary.add_member(:instance_health_reason, Shapes::ShapeRef.new(shape: InstanceHealthReason, location_name: "instanceHealthReason"))
    InstanceHealthSummary.struct_class = Types::InstanceHealthSummary

    InstanceHealthSummaryList.member = Shapes::ShapeRef.new(shape: InstanceHealthSummary)

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    InstanceNetworking.add_member(:monthly_transfer, Shapes::ShapeRef.new(shape: MonthlyTransfer, location_name: "monthlyTransfer"))
    InstanceNetworking.add_member(:ports, Shapes::ShapeRef.new(shape: InstancePortInfoList, location_name: "ports"))
    InstanceNetworking.struct_class = Types::InstanceNetworking

    InstancePlatformList.member = Shapes::ShapeRef.new(shape: InstancePlatform)

    InstancePortInfo.add_member(:from_port, Shapes::ShapeRef.new(shape: Port, location_name: "fromPort"))
    InstancePortInfo.add_member(:to_port, Shapes::ShapeRef.new(shape: Port, location_name: "toPort"))
    InstancePortInfo.add_member(:protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    InstancePortInfo.add_member(:access_from, Shapes::ShapeRef.new(shape: string, location_name: "accessFrom"))
    InstancePortInfo.add_member(:access_type, Shapes::ShapeRef.new(shape: PortAccessType, location_name: "accessType"))
    InstancePortInfo.add_member(:common_name, Shapes::ShapeRef.new(shape: string, location_name: "commonName"))
    InstancePortInfo.add_member(:access_direction, Shapes::ShapeRef.new(shape: AccessDirection, location_name: "accessDirection"))
    InstancePortInfo.struct_class = Types::InstancePortInfo

    InstancePortInfoList.member = Shapes::ShapeRef.new(shape: InstancePortInfo)

    InstancePortState.add_member(:from_port, Shapes::ShapeRef.new(shape: Port, location_name: "fromPort"))
    InstancePortState.add_member(:to_port, Shapes::ShapeRef.new(shape: Port, location_name: "toPort"))
    InstancePortState.add_member(:protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    InstancePortState.add_member(:state, Shapes::ShapeRef.new(shape: PortState, location_name: "state"))
    InstancePortState.struct_class = Types::InstancePortState

    InstancePortStateList.member = Shapes::ShapeRef.new(shape: InstancePortState)

    InstanceSnapshot.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InstanceSnapshot.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    InstanceSnapshot.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    InstanceSnapshot.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    InstanceSnapshot.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    InstanceSnapshot.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    InstanceSnapshot.add_member(:state, Shapes::ShapeRef.new(shape: InstanceSnapshotState, location_name: "state"))
    InstanceSnapshot.add_member(:progress, Shapes::ShapeRef.new(shape: string, location_name: "progress"))
    InstanceSnapshot.add_member(:from_attached_disks, Shapes::ShapeRef.new(shape: DiskList, location_name: "fromAttachedDisks"))
    InstanceSnapshot.add_member(:from_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromInstanceName"))
    InstanceSnapshot.add_member(:from_instance_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromInstanceArn"))
    InstanceSnapshot.add_member(:from_blueprint_id, Shapes::ShapeRef.new(shape: string, location_name: "fromBlueprintId"))
    InstanceSnapshot.add_member(:from_bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "fromBundleId"))
    InstanceSnapshot.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    InstanceSnapshot.struct_class = Types::InstanceSnapshot

    InstanceSnapshotList.member = Shapes::ShapeRef.new(shape: InstanceSnapshot)

    InstanceState.add_member(:code, Shapes::ShapeRef.new(shape: integer, location_name: "code"))
    InstanceState.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    InstanceState.struct_class = Types::InstanceState

    IsVpcPeeredRequest.struct_class = Types::IsVpcPeeredRequest

    IsVpcPeeredResult.add_member(:is_peered, Shapes::ShapeRef.new(shape: boolean, location_name: "isPeered"))
    IsVpcPeeredResult.struct_class = Types::IsVpcPeeredResult

    KeyPair.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    KeyPair.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    KeyPair.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    KeyPair.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    KeyPair.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    KeyPair.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    KeyPair.add_member(:fingerprint, Shapes::ShapeRef.new(shape: Base64, location_name: "fingerprint"))
    KeyPair.struct_class = Types::KeyPair

    KeyPairList.member = Shapes::ShapeRef.new(shape: KeyPair)

    LoadBalancer.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancer.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LoadBalancer.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    LoadBalancer.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LoadBalancer.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LoadBalancer.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LoadBalancer.add_member(:dns_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "dnsName"))
    LoadBalancer.add_member(:state, Shapes::ShapeRef.new(shape: LoadBalancerState, location_name: "state"))
    LoadBalancer.add_member(:protocol, Shapes::ShapeRef.new(shape: LoadBalancerProtocol, location_name: "protocol"))
    LoadBalancer.add_member(:public_ports, Shapes::ShapeRef.new(shape: PortList, location_name: "publicPorts"))
    LoadBalancer.add_member(:health_check_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "healthCheckPath"))
    LoadBalancer.add_member(:instance_port, Shapes::ShapeRef.new(shape: integer, location_name: "instancePort"))
    LoadBalancer.add_member(:instance_health_summary, Shapes::ShapeRef.new(shape: InstanceHealthSummaryList, location_name: "instanceHealthSummary"))
    LoadBalancer.add_member(:tls_certificate_summaries, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateSummaryList, location_name: "tlsCertificateSummaries"))
    LoadBalancer.add_member(:configuration_options, Shapes::ShapeRef.new(shape: LoadBalancerConfigurationOptions, location_name: "configurationOptions"))
    LoadBalancer.struct_class = Types::LoadBalancer

    LoadBalancerConfigurationOptions.key = Shapes::ShapeRef.new(shape: LoadBalancerAttributeName)
    LoadBalancerConfigurationOptions.value = Shapes::ShapeRef.new(shape: string)

    LoadBalancerList.member = Shapes::ShapeRef.new(shape: LoadBalancer)

    LoadBalancerTlsCertificate.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancerTlsCertificate.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LoadBalancerTlsCertificate.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    LoadBalancerTlsCertificate.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LoadBalancerTlsCertificate.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LoadBalancerTlsCertificate.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LoadBalancerTlsCertificate.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName"))
    LoadBalancerTlsCertificate.add_member(:is_attached, Shapes::ShapeRef.new(shape: boolean, location_name: "isAttached"))
    LoadBalancerTlsCertificate.add_member(:status, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateStatus, location_name: "status"))
    LoadBalancerTlsCertificate.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    LoadBalancerTlsCertificate.add_member(:domain_validation_records, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationRecordList, location_name: "domainValidationRecords"))
    LoadBalancerTlsCertificate.add_member(:failure_reason, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateFailureReason, location_name: "failureReason"))
    LoadBalancerTlsCertificate.add_member(:issued_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "issuedAt"))
    LoadBalancerTlsCertificate.add_member(:issuer, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "issuer"))
    LoadBalancerTlsCertificate.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyAlgorithm"))
    LoadBalancerTlsCertificate.add_member(:not_after, Shapes::ShapeRef.new(shape: IsoDate, location_name: "notAfter"))
    LoadBalancerTlsCertificate.add_member(:not_before, Shapes::ShapeRef.new(shape: IsoDate, location_name: "notBefore"))
    LoadBalancerTlsCertificate.add_member(:renewal_summary, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateRenewalSummary, location_name: "renewalSummary"))
    LoadBalancerTlsCertificate.add_member(:revocation_reason, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateRevocationReason, location_name: "revocationReason"))
    LoadBalancerTlsCertificate.add_member(:revoked_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "revokedAt"))
    LoadBalancerTlsCertificate.add_member(:serial, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serial"))
    LoadBalancerTlsCertificate.add_member(:signature_algorithm, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "signatureAlgorithm"))
    LoadBalancerTlsCertificate.add_member(:subject, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subject"))
    LoadBalancerTlsCertificate.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: StringList, location_name: "subjectAlternativeNames"))
    LoadBalancerTlsCertificate.struct_class = Types::LoadBalancerTlsCertificate

    LoadBalancerTlsCertificateDomainValidationOption.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    LoadBalancerTlsCertificateDomainValidationOption.add_member(:validation_status, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainStatus, location_name: "validationStatus"))
    LoadBalancerTlsCertificateDomainValidationOption.struct_class = Types::LoadBalancerTlsCertificateDomainValidationOption

    LoadBalancerTlsCertificateDomainValidationOptionList.member = Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationOption)

    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "type"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "value"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:validation_status, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainStatus, location_name: "validationStatus"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    LoadBalancerTlsCertificateDomainValidationRecord.struct_class = Types::LoadBalancerTlsCertificateDomainValidationRecord

    LoadBalancerTlsCertificateDomainValidationRecordList.member = Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationRecord)

    LoadBalancerTlsCertificateList.member = Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificate)

    LoadBalancerTlsCertificateRenewalSummary.add_member(:renewal_status, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateRenewalStatus, location_name: "renewalStatus"))
    LoadBalancerTlsCertificateRenewalSummary.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationOptionList, location_name: "domainValidationOptions"))
    LoadBalancerTlsCertificateRenewalSummary.struct_class = Types::LoadBalancerTlsCertificateRenewalSummary

    LoadBalancerTlsCertificateSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancerTlsCertificateSummary.add_member(:is_attached, Shapes::ShapeRef.new(shape: boolean, location_name: "isAttached"))
    LoadBalancerTlsCertificateSummary.struct_class = Types::LoadBalancerTlsCertificateSummary

    LoadBalancerTlsCertificateSummaryList.member = Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateSummary)

    MetricDatapoint.add_member(:average, Shapes::ShapeRef.new(shape: double, location_name: "average"))
    MetricDatapoint.add_member(:maximum, Shapes::ShapeRef.new(shape: double, location_name: "maximum"))
    MetricDatapoint.add_member(:minimum, Shapes::ShapeRef.new(shape: double, location_name: "minimum"))
    MetricDatapoint.add_member(:sample_count, Shapes::ShapeRef.new(shape: double, location_name: "sampleCount"))
    MetricDatapoint.add_member(:sum, Shapes::ShapeRef.new(shape: double, location_name: "sum"))
    MetricDatapoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "timestamp"))
    MetricDatapoint.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit"))
    MetricDatapoint.struct_class = Types::MetricDatapoint

    MetricDatapointList.member = Shapes::ShapeRef.new(shape: MetricDatapoint)

    MetricStatisticList.member = Shapes::ShapeRef.new(shape: MetricStatistic)

    MonthlyTransfer.add_member(:gb_per_month_allocated, Shapes::ShapeRef.new(shape: integer, location_name: "gbPerMonthAllocated"))
    MonthlyTransfer.struct_class = Types::MonthlyTransfer

    OpenInstancePublicPortsRequest.add_member(:port_info, Shapes::ShapeRef.new(shape: PortInfo, required: true, location_name: "portInfo"))
    OpenInstancePublicPortsRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    OpenInstancePublicPortsRequest.struct_class = Types::OpenInstancePublicPortsRequest

    OpenInstancePublicPortsResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    OpenInstancePublicPortsResult.struct_class = Types::OpenInstancePublicPortsResult

    Operation.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    Operation.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    Operation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Operation.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Operation.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Operation.add_member(:is_terminal, Shapes::ShapeRef.new(shape: boolean, location_name: "isTerminal"))
    Operation.add_member(:operation_details, Shapes::ShapeRef.new(shape: string, location_name: "operationDetails"))
    Operation.add_member(:operation_type, Shapes::ShapeRef.new(shape: OperationType, location_name: "operationType"))
    Operation.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "status"))
    Operation.add_member(:status_changed_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "statusChangedAt"))
    Operation.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "errorCode"))
    Operation.add_member(:error_details, Shapes::ShapeRef.new(shape: string, location_name: "errorDetails"))
    Operation.struct_class = Types::Operation

    OperationList.member = Shapes::ShapeRef.new(shape: Operation)

    PasswordData.add_member(:ciphertext, Shapes::ShapeRef.new(shape: string, location_name: "ciphertext"))
    PasswordData.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    PasswordData.struct_class = Types::PasswordData

    PeerVpcRequest.struct_class = Types::PeerVpcRequest

    PeerVpcResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    PeerVpcResult.struct_class = Types::PeerVpcResult

    PortInfo.add_member(:from_port, Shapes::ShapeRef.new(shape: Port, location_name: "fromPort"))
    PortInfo.add_member(:to_port, Shapes::ShapeRef.new(shape: Port, location_name: "toPort"))
    PortInfo.add_member(:protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    PortInfo.struct_class = Types::PortInfo

    PortInfoList.member = Shapes::ShapeRef.new(shape: PortInfo)

    PortList.member = Shapes::ShapeRef.new(shape: Port)

    PutInstancePublicPortsRequest.add_member(:port_infos, Shapes::ShapeRef.new(shape: PortInfoList, required: true, location_name: "portInfos"))
    PutInstancePublicPortsRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    PutInstancePublicPortsRequest.struct_class = Types::PutInstancePublicPortsRequest

    PutInstancePublicPortsResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    PutInstancePublicPortsResult.struct_class = Types::PutInstancePublicPortsResult

    RebootInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    RebootInstanceRequest.struct_class = Types::RebootInstanceRequest

    RebootInstanceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    RebootInstanceResult.struct_class = Types::RebootInstanceResult

    Region.add_member(:continent_code, Shapes::ShapeRef.new(shape: string, location_name: "continentCode"))
    Region.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    Region.add_member(:display_name, Shapes::ShapeRef.new(shape: string, location_name: "displayName"))
    Region.add_member(:name, Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "availabilityZones"))
    Region.struct_class = Types::Region

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    ReleaseStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    ReleaseStaticIpRequest.struct_class = Types::ReleaseStaticIpRequest

    ReleaseStaticIpResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    ReleaseStaticIpResult.struct_class = Types::ReleaseStaticIpResult

    ResourceLocation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, location_name: "availabilityZone"))
    ResourceLocation.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    ResourceLocation.struct_class = Types::ResourceLocation

    ResourceNameList.member = Shapes::ShapeRef.new(shape: ResourceName)

    StartInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    StartInstanceRequest.struct_class = Types::StartInstanceRequest

    StartInstanceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StartInstanceResult.struct_class = Types::StartInstanceResult

    StaticIp.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    StaticIp.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    StaticIp.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    StaticIp.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    StaticIp.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    StaticIp.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    StaticIp.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    StaticIp.add_member(:attached_to, Shapes::ShapeRef.new(shape: ResourceName, location_name: "attachedTo"))
    StaticIp.add_member(:is_attached, Shapes::ShapeRef.new(shape: boolean, location_name: "isAttached"))
    StaticIp.struct_class = Types::StaticIp

    StaticIpList.member = Shapes::ShapeRef.new(shape: StaticIp)

    StopInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    StopInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: boolean, location_name: "force"))
    StopInstanceRequest.struct_class = Types::StopInstanceRequest

    StopInstanceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StopInstanceResult.struct_class = Types::StopInstanceResult

    StringList.member = Shapes::ShapeRef.new(shape: string)

    UnpeerVpcRequest.struct_class = Types::UnpeerVpcRequest

    UnpeerVpcResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UnpeerVpcResult.struct_class = Types::UnpeerVpcResult

    UpdateDomainEntryRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    UpdateDomainEntryRequest.add_member(:domain_entry, Shapes::ShapeRef.new(shape: DomainEntry, required: true, location_name: "domainEntry"))
    UpdateDomainEntryRequest.struct_class = Types::UpdateDomainEntryRequest

    UpdateDomainEntryResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateDomainEntryResult.struct_class = Types::UpdateDomainEntryResult

    UpdateLoadBalancerAttributeRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    UpdateLoadBalancerAttributeRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: LoadBalancerAttributeName, required: true, location_name: "attributeName"))
    UpdateLoadBalancerAttributeRequest.add_member(:attribute_value, Shapes::ShapeRef.new(shape: StringMax256, required: true, location_name: "attributeValue"))
    UpdateLoadBalancerAttributeRequest.struct_class = Types::UpdateLoadBalancerAttributeRequest

    UpdateLoadBalancerAttributeResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateLoadBalancerAttributeResult.struct_class = Types::UpdateLoadBalancerAttributeResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-28"

      api.metadata = {
        "apiVersion" => "2016-11-28",
        "endpointPrefix" => "lightsail",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Lightsail",
        "serviceId" => "Lightsail",
        "signatureVersion" => "v4",
        "targetPrefix" => "Lightsail_20161128",
        "uid" => "lightsail-2016-11-28",
      }

      api.add_operation(:allocate_static_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllocateStaticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AllocateStaticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: AllocateStaticIpResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:attach_disk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachDisk"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachDiskRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachDiskResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:attach_instances_to_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachInstancesToLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachInstancesToLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachInstancesToLoadBalancerResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:attach_load_balancer_tls_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachLoadBalancerTlsCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachLoadBalancerTlsCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachLoadBalancerTlsCertificateResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:attach_static_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachStaticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachStaticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachStaticIpResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:close_instance_public_ports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CloseInstancePublicPorts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CloseInstancePublicPortsRequest)
        o.output = Shapes::ShapeRef.new(shape: CloseInstancePublicPortsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_disk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDisk"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDiskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDiskResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_disk_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDiskFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDiskFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDiskFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_disk_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDiskSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDiskSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDiskSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_domain_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainEntry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainEntryResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_instance_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstanceSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstancesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_instances_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstancesFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstancesFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstancesFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKeyPairResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoadBalancerResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_load_balancer_tls_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancerTlsCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoadBalancerTlsCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoadBalancerTlsCertificateResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_disk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDisk"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDiskRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDiskResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_disk_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDiskSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDiskSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDiskSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_domain_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainEntry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainEntryResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_instance_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKeyPairResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoadBalancerResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_load_balancer_tls_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancerTlsCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoadBalancerTlsCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoadBalancerTlsCertificateResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:detach_disk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachDisk"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachDiskRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachDiskResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:detach_instances_from_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachInstancesFromLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachInstancesFromLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachInstancesFromLoadBalancerResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:detach_static_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachStaticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachStaticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachStaticIpResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:download_default_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DownloadDefaultKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DownloadDefaultKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: DownloadDefaultKeyPairResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_active_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetActiveNames"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetActiveNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetActiveNamesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlueprintsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBundles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBundlesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_disk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDisk"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDiskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiskResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_disk_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDiskSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDiskSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiskSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_disk_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDiskSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDiskSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiskSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_disks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDisks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDisksRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDisksResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance_access_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceAccessDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceAccessDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceAccessDetailsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceMetricDataResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance_port_states, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstancePortStates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstancePortStatesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstancePortStatesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instance_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceStateResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstancesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKeyPairResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_key_pairs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKeyPairs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetKeyPairsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKeyPairsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoadBalancerResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_load_balancer_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoadBalancerMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoadBalancerMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoadBalancerMetricDataResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_load_balancer_tls_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoadBalancerTlsCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoadBalancerTlsCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoadBalancerTlsCertificatesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoadBalancersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoadBalancersResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOperationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOperationsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_operations_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperationsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOperationsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOperationsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_regions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_static_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStaticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStaticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStaticIpResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_static_ips, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStaticIps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStaticIpsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStaticIpsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:import_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportKeyPairResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:is_vpc_peered, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IsVpcPeered"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IsVpcPeeredRequest)
        o.output = Shapes::ShapeRef.new(shape: IsVpcPeeredResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:open_instance_public_ports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "OpenInstancePublicPorts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: OpenInstancePublicPortsRequest)
        o.output = Shapes::ShapeRef.new(shape: OpenInstancePublicPortsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:peer_vpc, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PeerVpc"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PeerVpcRequest)
        o.output = Shapes::ShapeRef.new(shape: PeerVpcResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:put_instance_public_ports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInstancePublicPorts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInstancePublicPortsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInstancePublicPortsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:reboot_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:release_static_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReleaseStaticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReleaseStaticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: ReleaseStaticIpResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:start_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:stop_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: StopInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:unpeer_vpc, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnpeerVpc"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UnpeerVpcRequest)
        o.output = Shapes::ShapeRef.new(shape: UnpeerVpcResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:update_domain_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainEntry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainEntryResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:update_load_balancer_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoadBalancerAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoadBalancerAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLoadBalancerAttributeResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)
    end

  end
end
