# frozen_string_literal: true

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
    AddOn = Shapes::StructureShape.new(name: 'AddOn')
    AddOnList = Shapes::ListShape.new(name: 'AddOnList')
    AddOnRequest = Shapes::StructureShape.new(name: 'AddOnRequest')
    AddOnRequestList = Shapes::ListShape.new(name: 'AddOnRequestList')
    AddOnType = Shapes::StringShape.new(name: 'AddOnType')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    AlarmState = Shapes::StringShape.new(name: 'AlarmState')
    AlarmsList = Shapes::ListShape.new(name: 'AlarmsList')
    AllocateStaticIpRequest = Shapes::StructureShape.new(name: 'AllocateStaticIpRequest')
    AllocateStaticIpResult = Shapes::StructureShape.new(name: 'AllocateStaticIpResult')
    AttachCertificateToDistributionRequest = Shapes::StructureShape.new(name: 'AttachCertificateToDistributionRequest')
    AttachCertificateToDistributionResult = Shapes::StructureShape.new(name: 'AttachCertificateToDistributionResult')
    AttachDiskRequest = Shapes::StructureShape.new(name: 'AttachDiskRequest')
    AttachDiskResult = Shapes::StructureShape.new(name: 'AttachDiskResult')
    AttachInstancesToLoadBalancerRequest = Shapes::StructureShape.new(name: 'AttachInstancesToLoadBalancerRequest')
    AttachInstancesToLoadBalancerResult = Shapes::StructureShape.new(name: 'AttachInstancesToLoadBalancerResult')
    AttachLoadBalancerTlsCertificateRequest = Shapes::StructureShape.new(name: 'AttachLoadBalancerTlsCertificateRequest')
    AttachLoadBalancerTlsCertificateResult = Shapes::StructureShape.new(name: 'AttachLoadBalancerTlsCertificateResult')
    AttachStaticIpRequest = Shapes::StructureShape.new(name: 'AttachStaticIpRequest')
    AttachStaticIpResult = Shapes::StructureShape.new(name: 'AttachStaticIpResult')
    AttachedDisk = Shapes::StructureShape.new(name: 'AttachedDisk')
    AttachedDiskList = Shapes::ListShape.new(name: 'AttachedDiskList')
    AttachedDiskMap = Shapes::MapShape.new(name: 'AttachedDiskMap')
    AutoSnapshotAddOnRequest = Shapes::StructureShape.new(name: 'AutoSnapshotAddOnRequest')
    AutoSnapshotDate = Shapes::StringShape.new(name: 'AutoSnapshotDate')
    AutoSnapshotDetails = Shapes::StructureShape.new(name: 'AutoSnapshotDetails')
    AutoSnapshotDetailsList = Shapes::ListShape.new(name: 'AutoSnapshotDetailsList')
    AutoSnapshotStatus = Shapes::StringShape.new(name: 'AutoSnapshotStatus')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    Base64 = Shapes::StringShape.new(name: 'Base64')
    BehaviorEnum = Shapes::StringShape.new(name: 'BehaviorEnum')
    Blueprint = Shapes::StructureShape.new(name: 'Blueprint')
    BlueprintList = Shapes::ListShape.new(name: 'BlueprintList')
    BlueprintType = Shapes::StringShape.new(name: 'BlueprintType')
    Bundle = Shapes::StructureShape.new(name: 'Bundle')
    BundleList = Shapes::ListShape.new(name: 'BundleList')
    CacheBehavior = Shapes::StructureShape.new(name: 'CacheBehavior')
    CacheBehaviorList = Shapes::ListShape.new(name: 'CacheBehaviorList')
    CacheBehaviorPerPath = Shapes::StructureShape.new(name: 'CacheBehaviorPerPath')
    CacheSettings = Shapes::StructureShape.new(name: 'CacheSettings')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateName = Shapes::StringShape.new(name: 'CertificateName')
    CertificateStatus = Shapes::StringShape.new(name: 'CertificateStatus')
    CertificateStatusList = Shapes::ListShape.new(name: 'CertificateStatusList')
    CertificateSummary = Shapes::StructureShape.new(name: 'CertificateSummary')
    CertificateSummaryList = Shapes::ListShape.new(name: 'CertificateSummaryList')
    CloseInstancePublicPortsRequest = Shapes::StructureShape.new(name: 'CloseInstancePublicPortsRequest')
    CloseInstancePublicPortsResult = Shapes::StructureShape.new(name: 'CloseInstancePublicPortsResult')
    CloudFormationStackRecord = Shapes::StructureShape.new(name: 'CloudFormationStackRecord')
    CloudFormationStackRecordList = Shapes::ListShape.new(name: 'CloudFormationStackRecordList')
    CloudFormationStackRecordSourceInfo = Shapes::StructureShape.new(name: 'CloudFormationStackRecordSourceInfo')
    CloudFormationStackRecordSourceInfoList = Shapes::ListShape.new(name: 'CloudFormationStackRecordSourceInfoList')
    CloudFormationStackRecordSourceType = Shapes::StringShape.new(name: 'CloudFormationStackRecordSourceType')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ContactMethod = Shapes::StructureShape.new(name: 'ContactMethod')
    ContactMethodStatus = Shapes::StringShape.new(name: 'ContactMethodStatus')
    ContactMethodVerificationProtocol = Shapes::StringShape.new(name: 'ContactMethodVerificationProtocol')
    ContactMethodsList = Shapes::ListShape.new(name: 'ContactMethodsList')
    ContactProtocol = Shapes::StringShape.new(name: 'ContactProtocol')
    ContactProtocolsList = Shapes::ListShape.new(name: 'ContactProtocolsList')
    CookieObject = Shapes::StructureShape.new(name: 'CookieObject')
    CopySnapshotRequest = Shapes::StructureShape.new(name: 'CopySnapshotRequest')
    CopySnapshotResult = Shapes::StructureShape.new(name: 'CopySnapshotResult')
    CreateCertificateRequest = Shapes::StructureShape.new(name: 'CreateCertificateRequest')
    CreateCertificateResult = Shapes::StructureShape.new(name: 'CreateCertificateResult')
    CreateCloudFormationStackRequest = Shapes::StructureShape.new(name: 'CreateCloudFormationStackRequest')
    CreateCloudFormationStackResult = Shapes::StructureShape.new(name: 'CreateCloudFormationStackResult')
    CreateContactMethodRequest = Shapes::StructureShape.new(name: 'CreateContactMethodRequest')
    CreateContactMethodResult = Shapes::StructureShape.new(name: 'CreateContactMethodResult')
    CreateDiskFromSnapshotRequest = Shapes::StructureShape.new(name: 'CreateDiskFromSnapshotRequest')
    CreateDiskFromSnapshotResult = Shapes::StructureShape.new(name: 'CreateDiskFromSnapshotResult')
    CreateDiskRequest = Shapes::StructureShape.new(name: 'CreateDiskRequest')
    CreateDiskResult = Shapes::StructureShape.new(name: 'CreateDiskResult')
    CreateDiskSnapshotRequest = Shapes::StructureShape.new(name: 'CreateDiskSnapshotRequest')
    CreateDiskSnapshotResult = Shapes::StructureShape.new(name: 'CreateDiskSnapshotResult')
    CreateDistributionRequest = Shapes::StructureShape.new(name: 'CreateDistributionRequest')
    CreateDistributionResult = Shapes::StructureShape.new(name: 'CreateDistributionResult')
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
    CreateRelationalDatabaseFromSnapshotRequest = Shapes::StructureShape.new(name: 'CreateRelationalDatabaseFromSnapshotRequest')
    CreateRelationalDatabaseFromSnapshotResult = Shapes::StructureShape.new(name: 'CreateRelationalDatabaseFromSnapshotResult')
    CreateRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'CreateRelationalDatabaseRequest')
    CreateRelationalDatabaseResult = Shapes::StructureShape.new(name: 'CreateRelationalDatabaseResult')
    CreateRelationalDatabaseSnapshotRequest = Shapes::StructureShape.new(name: 'CreateRelationalDatabaseSnapshotRequest')
    CreateRelationalDatabaseSnapshotResult = Shapes::StructureShape.new(name: 'CreateRelationalDatabaseSnapshotResult')
    DeleteAlarmRequest = Shapes::StructureShape.new(name: 'DeleteAlarmRequest')
    DeleteAlarmResult = Shapes::StructureShape.new(name: 'DeleteAlarmResult')
    DeleteAutoSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteAutoSnapshotRequest')
    DeleteAutoSnapshotResult = Shapes::StructureShape.new(name: 'DeleteAutoSnapshotResult')
    DeleteCertificateRequest = Shapes::StructureShape.new(name: 'DeleteCertificateRequest')
    DeleteCertificateResult = Shapes::StructureShape.new(name: 'DeleteCertificateResult')
    DeleteContactMethodRequest = Shapes::StructureShape.new(name: 'DeleteContactMethodRequest')
    DeleteContactMethodResult = Shapes::StructureShape.new(name: 'DeleteContactMethodResult')
    DeleteDiskRequest = Shapes::StructureShape.new(name: 'DeleteDiskRequest')
    DeleteDiskResult = Shapes::StructureShape.new(name: 'DeleteDiskResult')
    DeleteDiskSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteDiskSnapshotRequest')
    DeleteDiskSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDiskSnapshotResult')
    DeleteDistributionRequest = Shapes::StructureShape.new(name: 'DeleteDistributionRequest')
    DeleteDistributionResult = Shapes::StructureShape.new(name: 'DeleteDistributionResult')
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
    DeleteKnownHostKeysRequest = Shapes::StructureShape.new(name: 'DeleteKnownHostKeysRequest')
    DeleteKnownHostKeysResult = Shapes::StructureShape.new(name: 'DeleteKnownHostKeysResult')
    DeleteLoadBalancerRequest = Shapes::StructureShape.new(name: 'DeleteLoadBalancerRequest')
    DeleteLoadBalancerResult = Shapes::StructureShape.new(name: 'DeleteLoadBalancerResult')
    DeleteLoadBalancerTlsCertificateRequest = Shapes::StructureShape.new(name: 'DeleteLoadBalancerTlsCertificateRequest')
    DeleteLoadBalancerTlsCertificateResult = Shapes::StructureShape.new(name: 'DeleteLoadBalancerTlsCertificateResult')
    DeleteRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'DeleteRelationalDatabaseRequest')
    DeleteRelationalDatabaseResult = Shapes::StructureShape.new(name: 'DeleteRelationalDatabaseResult')
    DeleteRelationalDatabaseSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteRelationalDatabaseSnapshotRequest')
    DeleteRelationalDatabaseSnapshotResult = Shapes::StructureShape.new(name: 'DeleteRelationalDatabaseSnapshotResult')
    DestinationInfo = Shapes::StructureShape.new(name: 'DestinationInfo')
    DetachCertificateFromDistributionRequest = Shapes::StructureShape.new(name: 'DetachCertificateFromDistributionRequest')
    DetachCertificateFromDistributionResult = Shapes::StructureShape.new(name: 'DetachCertificateFromDistributionResult')
    DetachDiskRequest = Shapes::StructureShape.new(name: 'DetachDiskRequest')
    DetachDiskResult = Shapes::StructureShape.new(name: 'DetachDiskResult')
    DetachInstancesFromLoadBalancerRequest = Shapes::StructureShape.new(name: 'DetachInstancesFromLoadBalancerRequest')
    DetachInstancesFromLoadBalancerResult = Shapes::StructureShape.new(name: 'DetachInstancesFromLoadBalancerResult')
    DetachStaticIpRequest = Shapes::StructureShape.new(name: 'DetachStaticIpRequest')
    DetachStaticIpResult = Shapes::StructureShape.new(name: 'DetachStaticIpResult')
    DisableAddOnRequest = Shapes::StructureShape.new(name: 'DisableAddOnRequest')
    DisableAddOnResult = Shapes::StructureShape.new(name: 'DisableAddOnResult')
    Disk = Shapes::StructureShape.new(name: 'Disk')
    DiskInfo = Shapes::StructureShape.new(name: 'DiskInfo')
    DiskInfoList = Shapes::ListShape.new(name: 'DiskInfoList')
    DiskList = Shapes::ListShape.new(name: 'DiskList')
    DiskMap = Shapes::StructureShape.new(name: 'DiskMap')
    DiskMapList = Shapes::ListShape.new(name: 'DiskMapList')
    DiskSnapshot = Shapes::StructureShape.new(name: 'DiskSnapshot')
    DiskSnapshotInfo = Shapes::StructureShape.new(name: 'DiskSnapshotInfo')
    DiskSnapshotList = Shapes::ListShape.new(name: 'DiskSnapshotList')
    DiskSnapshotState = Shapes::StringShape.new(name: 'DiskSnapshotState')
    DiskState = Shapes::StringShape.new(name: 'DiskState')
    DistributionBundle = Shapes::StructureShape.new(name: 'DistributionBundle')
    DistributionBundleList = Shapes::ListShape.new(name: 'DistributionBundleList')
    DistributionList = Shapes::ListShape.new(name: 'DistributionList')
    DistributionMetricName = Shapes::StringShape.new(name: 'DistributionMetricName')
    Domain = Shapes::StructureShape.new(name: 'Domain')
    DomainEntry = Shapes::StructureShape.new(name: 'DomainEntry')
    DomainEntryList = Shapes::ListShape.new(name: 'DomainEntryList')
    DomainEntryOptions = Shapes::MapShape.new(name: 'DomainEntryOptions')
    DomainEntryOptionsKeys = Shapes::StringShape.new(name: 'DomainEntryOptionsKeys')
    DomainEntryType = Shapes::StringShape.new(name: 'DomainEntryType')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    DomainValidationRecord = Shapes::StructureShape.new(name: 'DomainValidationRecord')
    DomainValidationRecordList = Shapes::ListShape.new(name: 'DomainValidationRecordList')
    DownloadDefaultKeyPairRequest = Shapes::StructureShape.new(name: 'DownloadDefaultKeyPairRequest')
    DownloadDefaultKeyPairResult = Shapes::StructureShape.new(name: 'DownloadDefaultKeyPairResult')
    EligibleToRenew = Shapes::StringShape.new(name: 'EligibleToRenew')
    EnableAddOnRequest = Shapes::StructureShape.new(name: 'EnableAddOnRequest')
    EnableAddOnResult = Shapes::StructureShape.new(name: 'EnableAddOnResult')
    ExportSnapshotRecord = Shapes::StructureShape.new(name: 'ExportSnapshotRecord')
    ExportSnapshotRecordList = Shapes::ListShape.new(name: 'ExportSnapshotRecordList')
    ExportSnapshotRecordSourceInfo = Shapes::StructureShape.new(name: 'ExportSnapshotRecordSourceInfo')
    ExportSnapshotRecordSourceType = Shapes::StringShape.new(name: 'ExportSnapshotRecordSourceType')
    ExportSnapshotRequest = Shapes::StructureShape.new(name: 'ExportSnapshotRequest')
    ExportSnapshotResult = Shapes::StructureShape.new(name: 'ExportSnapshotResult')
    ForwardValues = Shapes::StringShape.new(name: 'ForwardValues')
    GetActiveNamesRequest = Shapes::StructureShape.new(name: 'GetActiveNamesRequest')
    GetActiveNamesResult = Shapes::StructureShape.new(name: 'GetActiveNamesResult')
    GetAlarmsRequest = Shapes::StructureShape.new(name: 'GetAlarmsRequest')
    GetAlarmsResult = Shapes::StructureShape.new(name: 'GetAlarmsResult')
    GetAutoSnapshotsRequest = Shapes::StructureShape.new(name: 'GetAutoSnapshotsRequest')
    GetAutoSnapshotsResult = Shapes::StructureShape.new(name: 'GetAutoSnapshotsResult')
    GetBlueprintsRequest = Shapes::StructureShape.new(name: 'GetBlueprintsRequest')
    GetBlueprintsResult = Shapes::StructureShape.new(name: 'GetBlueprintsResult')
    GetBundlesRequest = Shapes::StructureShape.new(name: 'GetBundlesRequest')
    GetBundlesResult = Shapes::StructureShape.new(name: 'GetBundlesResult')
    GetCertificatesRequest = Shapes::StructureShape.new(name: 'GetCertificatesRequest')
    GetCertificatesResult = Shapes::StructureShape.new(name: 'GetCertificatesResult')
    GetCloudFormationStackRecordsRequest = Shapes::StructureShape.new(name: 'GetCloudFormationStackRecordsRequest')
    GetCloudFormationStackRecordsResult = Shapes::StructureShape.new(name: 'GetCloudFormationStackRecordsResult')
    GetContactMethodsRequest = Shapes::StructureShape.new(name: 'GetContactMethodsRequest')
    GetContactMethodsResult = Shapes::StructureShape.new(name: 'GetContactMethodsResult')
    GetDiskRequest = Shapes::StructureShape.new(name: 'GetDiskRequest')
    GetDiskResult = Shapes::StructureShape.new(name: 'GetDiskResult')
    GetDiskSnapshotRequest = Shapes::StructureShape.new(name: 'GetDiskSnapshotRequest')
    GetDiskSnapshotResult = Shapes::StructureShape.new(name: 'GetDiskSnapshotResult')
    GetDiskSnapshotsRequest = Shapes::StructureShape.new(name: 'GetDiskSnapshotsRequest')
    GetDiskSnapshotsResult = Shapes::StructureShape.new(name: 'GetDiskSnapshotsResult')
    GetDisksRequest = Shapes::StructureShape.new(name: 'GetDisksRequest')
    GetDisksResult = Shapes::StructureShape.new(name: 'GetDisksResult')
    GetDistributionBundlesRequest = Shapes::StructureShape.new(name: 'GetDistributionBundlesRequest')
    GetDistributionBundlesResult = Shapes::StructureShape.new(name: 'GetDistributionBundlesResult')
    GetDistributionLatestCacheResetRequest = Shapes::StructureShape.new(name: 'GetDistributionLatestCacheResetRequest')
    GetDistributionLatestCacheResetResult = Shapes::StructureShape.new(name: 'GetDistributionLatestCacheResetResult')
    GetDistributionMetricDataRequest = Shapes::StructureShape.new(name: 'GetDistributionMetricDataRequest')
    GetDistributionMetricDataResult = Shapes::StructureShape.new(name: 'GetDistributionMetricDataResult')
    GetDistributionsRequest = Shapes::StructureShape.new(name: 'GetDistributionsRequest')
    GetDistributionsResult = Shapes::StructureShape.new(name: 'GetDistributionsResult')
    GetDomainRequest = Shapes::StructureShape.new(name: 'GetDomainRequest')
    GetDomainResult = Shapes::StructureShape.new(name: 'GetDomainResult')
    GetDomainsRequest = Shapes::StructureShape.new(name: 'GetDomainsRequest')
    GetDomainsResult = Shapes::StructureShape.new(name: 'GetDomainsResult')
    GetExportSnapshotRecordsRequest = Shapes::StructureShape.new(name: 'GetExportSnapshotRecordsRequest')
    GetExportSnapshotRecordsResult = Shapes::StructureShape.new(name: 'GetExportSnapshotRecordsResult')
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
    GetRelationalDatabaseBlueprintsRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseBlueprintsRequest')
    GetRelationalDatabaseBlueprintsResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseBlueprintsResult')
    GetRelationalDatabaseBundlesRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseBundlesRequest')
    GetRelationalDatabaseBundlesResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseBundlesResult')
    GetRelationalDatabaseEventsRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseEventsRequest')
    GetRelationalDatabaseEventsResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseEventsResult')
    GetRelationalDatabaseLogEventsRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseLogEventsRequest')
    GetRelationalDatabaseLogEventsResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseLogEventsResult')
    GetRelationalDatabaseLogStreamsRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseLogStreamsRequest')
    GetRelationalDatabaseLogStreamsResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseLogStreamsResult')
    GetRelationalDatabaseMasterUserPasswordRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseMasterUserPasswordRequest')
    GetRelationalDatabaseMasterUserPasswordResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseMasterUserPasswordResult')
    GetRelationalDatabaseMetricDataRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseMetricDataRequest')
    GetRelationalDatabaseMetricDataResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseMetricDataResult')
    GetRelationalDatabaseParametersRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseParametersRequest')
    GetRelationalDatabaseParametersResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseParametersResult')
    GetRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseRequest')
    GetRelationalDatabaseResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseResult')
    GetRelationalDatabaseSnapshotRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseSnapshotRequest')
    GetRelationalDatabaseSnapshotResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseSnapshotResult')
    GetRelationalDatabaseSnapshotsRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabaseSnapshotsRequest')
    GetRelationalDatabaseSnapshotsResult = Shapes::StructureShape.new(name: 'GetRelationalDatabaseSnapshotsResult')
    GetRelationalDatabasesRequest = Shapes::StructureShape.new(name: 'GetRelationalDatabasesRequest')
    GetRelationalDatabasesResult = Shapes::StructureShape.new(name: 'GetRelationalDatabasesResult')
    GetStaticIpRequest = Shapes::StructureShape.new(name: 'GetStaticIpRequest')
    GetStaticIpResult = Shapes::StructureShape.new(name: 'GetStaticIpResult')
    GetStaticIpsRequest = Shapes::StructureShape.new(name: 'GetStaticIpsRequest')
    GetStaticIpsResult = Shapes::StructureShape.new(name: 'GetStaticIpsResult')
    HeaderEnum = Shapes::StringShape.new(name: 'HeaderEnum')
    HeaderForwardList = Shapes::ListShape.new(name: 'HeaderForwardList')
    HeaderObject = Shapes::StructureShape.new(name: 'HeaderObject')
    HostKeyAttributes = Shapes::StructureShape.new(name: 'HostKeyAttributes')
    HostKeysList = Shapes::ListShape.new(name: 'HostKeysList')
    ImportKeyPairRequest = Shapes::StructureShape.new(name: 'ImportKeyPairRequest')
    ImportKeyPairResult = Shapes::StructureShape.new(name: 'ImportKeyPairResult')
    InUseResourceCount = Shapes::IntegerShape.new(name: 'InUseResourceCount')
    IncludeCertificateDetails = Shapes::BooleanShape.new(name: 'IncludeCertificateDetails')
    InputOrigin = Shapes::StructureShape.new(name: 'InputOrigin')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceAccessDetails = Shapes::StructureShape.new(name: 'InstanceAccessDetails')
    InstanceAccessProtocol = Shapes::StringShape.new(name: 'InstanceAccessProtocol')
    InstanceEntry = Shapes::StructureShape.new(name: 'InstanceEntry')
    InstanceEntryList = Shapes::ListShape.new(name: 'InstanceEntryList')
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
    InstanceSnapshotInfo = Shapes::StructureShape.new(name: 'InstanceSnapshotInfo')
    InstanceSnapshotList = Shapes::ListShape.new(name: 'InstanceSnapshotList')
    InstanceSnapshotState = Shapes::StringShape.new(name: 'InstanceSnapshotState')
    InstanceState = Shapes::StructureShape.new(name: 'InstanceState')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpV6Address = Shapes::StringShape.new(name: 'IpV6Address')
    IsVpcPeeredRequest = Shapes::StructureShape.new(name: 'IsVpcPeeredRequest')
    IsVpcPeeredResult = Shapes::StructureShape.new(name: 'IsVpcPeeredResult')
    IsoDate = Shapes::TimestampShape.new(name: 'IsoDate')
    IssuerCA = Shapes::StringShape.new(name: 'IssuerCA')
    KeyAlgorithm = Shapes::StringShape.new(name: 'KeyAlgorithm')
    KeyPair = Shapes::StructureShape.new(name: 'KeyPair')
    KeyPairList = Shapes::ListShape.new(name: 'KeyPairList')
    LightsailDistribution = Shapes::StructureShape.new(name: 'LightsailDistribution')
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
    LogEvent = Shapes::StructureShape.new(name: 'LogEvent')
    LogEventList = Shapes::ListShape.new(name: 'LogEventList')
    MetricDatapoint = Shapes::StructureShape.new(name: 'MetricDatapoint')
    MetricDatapointList = Shapes::ListShape.new(name: 'MetricDatapointList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricPeriod = Shapes::IntegerShape.new(name: 'MetricPeriod')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricStatisticList = Shapes::ListShape.new(name: 'MetricStatisticList')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MonitoredResourceInfo = Shapes::StructureShape.new(name: 'MonitoredResourceInfo')
    MonthlyTransfer = Shapes::StructureShape.new(name: 'MonthlyTransfer')
    NetworkProtocol = Shapes::StringShape.new(name: 'NetworkProtocol')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NotificationTriggerList = Shapes::ListShape.new(name: 'NotificationTriggerList')
    OpenInstancePublicPortsRequest = Shapes::StructureShape.new(name: 'OpenInstancePublicPortsRequest')
    OpenInstancePublicPortsResult = Shapes::StructureShape.new(name: 'OpenInstancePublicPortsResult')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationFailureException = Shapes::StructureShape.new(name: 'OperationFailureException')
    OperationList = Shapes::ListShape.new(name: 'OperationList')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    Origin = Shapes::StructureShape.new(name: 'Origin')
    OriginProtocolPolicyEnum = Shapes::StringShape.new(name: 'OriginProtocolPolicyEnum')
    PasswordData = Shapes::StructureShape.new(name: 'PasswordData')
    PeerVpcRequest = Shapes::StructureShape.new(name: 'PeerVpcRequest')
    PeerVpcResult = Shapes::StructureShape.new(name: 'PeerVpcResult')
    PendingMaintenanceAction = Shapes::StructureShape.new(name: 'PendingMaintenanceAction')
    PendingMaintenanceActionList = Shapes::ListShape.new(name: 'PendingMaintenanceActionList')
    PendingModifiedRelationalDatabaseValues = Shapes::StructureShape.new(name: 'PendingModifiedRelationalDatabaseValues')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PortAccessType = Shapes::StringShape.new(name: 'PortAccessType')
    PortInfo = Shapes::StructureShape.new(name: 'PortInfo')
    PortInfoList = Shapes::ListShape.new(name: 'PortInfoList')
    PortInfoSourceType = Shapes::StringShape.new(name: 'PortInfoSourceType')
    PortList = Shapes::ListShape.new(name: 'PortList')
    PortState = Shapes::StringShape.new(name: 'PortState')
    PutAlarmRequest = Shapes::StructureShape.new(name: 'PutAlarmRequest')
    PutAlarmResult = Shapes::StructureShape.new(name: 'PutAlarmResult')
    PutInstancePublicPortsRequest = Shapes::StructureShape.new(name: 'PutInstancePublicPortsRequest')
    PutInstancePublicPortsResult = Shapes::StructureShape.new(name: 'PutInstancePublicPortsResult')
    QueryStringObject = Shapes::StructureShape.new(name: 'QueryStringObject')
    RebootInstanceRequest = Shapes::StructureShape.new(name: 'RebootInstanceRequest')
    RebootInstanceResult = Shapes::StructureShape.new(name: 'RebootInstanceResult')
    RebootRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'RebootRelationalDatabaseRequest')
    RebootRelationalDatabaseResult = Shapes::StructureShape.new(name: 'RebootRelationalDatabaseResult')
    RecordState = Shapes::StringShape.new(name: 'RecordState')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RelationalDatabase = Shapes::StructureShape.new(name: 'RelationalDatabase')
    RelationalDatabaseBlueprint = Shapes::StructureShape.new(name: 'RelationalDatabaseBlueprint')
    RelationalDatabaseBlueprintList = Shapes::ListShape.new(name: 'RelationalDatabaseBlueprintList')
    RelationalDatabaseBundle = Shapes::StructureShape.new(name: 'RelationalDatabaseBundle')
    RelationalDatabaseBundleList = Shapes::ListShape.new(name: 'RelationalDatabaseBundleList')
    RelationalDatabaseEndpoint = Shapes::StructureShape.new(name: 'RelationalDatabaseEndpoint')
    RelationalDatabaseEngine = Shapes::StringShape.new(name: 'RelationalDatabaseEngine')
    RelationalDatabaseEvent = Shapes::StructureShape.new(name: 'RelationalDatabaseEvent')
    RelationalDatabaseEventList = Shapes::ListShape.new(name: 'RelationalDatabaseEventList')
    RelationalDatabaseHardware = Shapes::StructureShape.new(name: 'RelationalDatabaseHardware')
    RelationalDatabaseList = Shapes::ListShape.new(name: 'RelationalDatabaseList')
    RelationalDatabaseMetricName = Shapes::StringShape.new(name: 'RelationalDatabaseMetricName')
    RelationalDatabaseParameter = Shapes::StructureShape.new(name: 'RelationalDatabaseParameter')
    RelationalDatabaseParameterList = Shapes::ListShape.new(name: 'RelationalDatabaseParameterList')
    RelationalDatabasePasswordVersion = Shapes::StringShape.new(name: 'RelationalDatabasePasswordVersion')
    RelationalDatabaseSnapshot = Shapes::StructureShape.new(name: 'RelationalDatabaseSnapshot')
    RelationalDatabaseSnapshotList = Shapes::ListShape.new(name: 'RelationalDatabaseSnapshotList')
    ReleaseStaticIpRequest = Shapes::StructureShape.new(name: 'ReleaseStaticIpRequest')
    ReleaseStaticIpResult = Shapes::StructureShape.new(name: 'ReleaseStaticIpResult')
    RenewalStatus = Shapes::StringShape.new(name: 'RenewalStatus')
    RenewalStatusReason = Shapes::StringShape.new(name: 'RenewalStatusReason')
    RenewalSummary = Shapes::StructureShape.new(name: 'RenewalSummary')
    RequestFailureReason = Shapes::StringShape.new(name: 'RequestFailureReason')
    ResetDistributionCacheRequest = Shapes::StructureShape.new(name: 'ResetDistributionCacheRequest')
    ResetDistributionCacheResult = Shapes::StructureShape.new(name: 'ResetDistributionCacheResult')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceLocation = Shapes::StructureShape.new(name: 'ResourceLocation')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNameList = Shapes::ListShape.new(name: 'ResourceNameList')
    ResourceRecord = Shapes::StructureShape.new(name: 'ResourceRecord')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RevocationReason = Shapes::StringShape.new(name: 'RevocationReason')
    SendContactMethodVerificationRequest = Shapes::StructureShape.new(name: 'SendContactMethodVerificationRequest')
    SendContactMethodVerificationResult = Shapes::StructureShape.new(name: 'SendContactMethodVerificationResult')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SerialNumber = Shapes::StringShape.new(name: 'SerialNumber')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    StartInstanceRequest = Shapes::StructureShape.new(name: 'StartInstanceRequest')
    StartInstanceResult = Shapes::StructureShape.new(name: 'StartInstanceResult')
    StartRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'StartRelationalDatabaseRequest')
    StartRelationalDatabaseResult = Shapes::StructureShape.new(name: 'StartRelationalDatabaseResult')
    StaticIp = Shapes::StructureShape.new(name: 'StaticIp')
    StaticIpList = Shapes::ListShape.new(name: 'StaticIpList')
    StopInstanceRequest = Shapes::StructureShape.new(name: 'StopInstanceRequest')
    StopInstanceResult = Shapes::StructureShape.new(name: 'StopInstanceResult')
    StopRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'StopRelationalDatabaseRequest')
    StopRelationalDatabaseResult = Shapes::StructureShape.new(name: 'StopRelationalDatabaseResult')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMax256 = Shapes::StringShape.new(name: 'StringMax256')
    SubjectAlternativeNameList = Shapes::ListShape.new(name: 'SubjectAlternativeNameList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestAlarmRequest = Shapes::StructureShape.new(name: 'TestAlarmRequest')
    TestAlarmResult = Shapes::StructureShape.new(name: 'TestAlarmResult')
    TimeOfDay = Shapes::StringShape.new(name: 'TimeOfDay')
    TreatMissingData = Shapes::StringShape.new(name: 'TreatMissingData')
    UnauthenticatedException = Shapes::StructureShape.new(name: 'UnauthenticatedException')
    UnpeerVpcRequest = Shapes::StructureShape.new(name: 'UnpeerVpcRequest')
    UnpeerVpcResult = Shapes::StructureShape.new(name: 'UnpeerVpcResult')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateDistributionBundleRequest = Shapes::StructureShape.new(name: 'UpdateDistributionBundleRequest')
    UpdateDistributionBundleResult = Shapes::StructureShape.new(name: 'UpdateDistributionBundleResult')
    UpdateDistributionRequest = Shapes::StructureShape.new(name: 'UpdateDistributionRequest')
    UpdateDistributionResult = Shapes::StructureShape.new(name: 'UpdateDistributionResult')
    UpdateDomainEntryRequest = Shapes::StructureShape.new(name: 'UpdateDomainEntryRequest')
    UpdateDomainEntryResult = Shapes::StructureShape.new(name: 'UpdateDomainEntryResult')
    UpdateLoadBalancerAttributeRequest = Shapes::StructureShape.new(name: 'UpdateLoadBalancerAttributeRequest')
    UpdateLoadBalancerAttributeResult = Shapes::StructureShape.new(name: 'UpdateLoadBalancerAttributeResult')
    UpdateRelationalDatabaseParametersRequest = Shapes::StructureShape.new(name: 'UpdateRelationalDatabaseParametersRequest')
    UpdateRelationalDatabaseParametersResult = Shapes::StructureShape.new(name: 'UpdateRelationalDatabaseParametersResult')
    UpdateRelationalDatabaseRequest = Shapes::StructureShape.new(name: 'UpdateRelationalDatabaseRequest')
    UpdateRelationalDatabaseResult = Shapes::StructureShape.new(name: 'UpdateRelationalDatabaseResult')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    double = Shapes::FloatShape.new(name: 'double')
    float = Shapes::FloatShape.new(name: 'float')
    integer = Shapes::IntegerShape.new(name: 'integer')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    AccessDeniedException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    AccessDeniedException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountSetupInProgressException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    AccountSetupInProgressException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    AccountSetupInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    AccountSetupInProgressException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    AccountSetupInProgressException.struct_class = Types::AccountSetupInProgressException

    AddOn.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    AddOn.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    AddOn.add_member(:snapshot_time_of_day, Shapes::ShapeRef.new(shape: TimeOfDay, location_name: "snapshotTimeOfDay"))
    AddOn.add_member(:next_snapshot_time_of_day, Shapes::ShapeRef.new(shape: TimeOfDay, location_name: "nextSnapshotTimeOfDay"))
    AddOn.struct_class = Types::AddOn

    AddOnList.member = Shapes::ShapeRef.new(shape: AddOn)

    AddOnRequest.add_member(:add_on_type, Shapes::ShapeRef.new(shape: AddOnType, required: true, location_name: "addOnType"))
    AddOnRequest.add_member(:auto_snapshot_add_on_request, Shapes::ShapeRef.new(shape: AutoSnapshotAddOnRequest, location_name: "autoSnapshotAddOnRequest"))
    AddOnRequest.struct_class = Types::AddOnRequest

    AddOnRequestList.member = Shapes::ShapeRef.new(shape: AddOnRequest)

    Alarm.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Alarm.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Alarm.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Alarm.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Alarm.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Alarm.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Alarm.add_member(:monitored_resource_info, Shapes::ShapeRef.new(shape: MonitoredResourceInfo, location_name: "monitoredResourceInfo"))
    Alarm.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparisonOperator"))
    Alarm.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: integer, location_name: "evaluationPeriods"))
    Alarm.add_member(:period, Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period"))
    Alarm.add_member(:threshold, Shapes::ShapeRef.new(shape: double, location_name: "threshold"))
    Alarm.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: integer, location_name: "datapointsToAlarm"))
    Alarm.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "treatMissingData"))
    Alarm.add_member(:statistic, Shapes::ShapeRef.new(shape: MetricStatistic, location_name: "statistic"))
    Alarm.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName"))
    Alarm.add_member(:state, Shapes::ShapeRef.new(shape: AlarmState, location_name: "state"))
    Alarm.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit"))
    Alarm.add_member(:contact_protocols, Shapes::ShapeRef.new(shape: ContactProtocolsList, location_name: "contactProtocols"))
    Alarm.add_member(:notification_triggers, Shapes::ShapeRef.new(shape: NotificationTriggerList, location_name: "notificationTriggers"))
    Alarm.add_member(:notification_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "notificationEnabled"))
    Alarm.struct_class = Types::Alarm

    AlarmsList.member = Shapes::ShapeRef.new(shape: Alarm)

    AllocateStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    AllocateStaticIpRequest.struct_class = Types::AllocateStaticIpRequest

    AllocateStaticIpResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AllocateStaticIpResult.struct_class = Types::AllocateStaticIpResult

    AttachCertificateToDistributionRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "distributionName"))
    AttachCertificateToDistributionRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "certificateName"))
    AttachCertificateToDistributionRequest.struct_class = Types::AttachCertificateToDistributionRequest

    AttachCertificateToDistributionResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    AttachCertificateToDistributionResult.struct_class = Types::AttachCertificateToDistributionResult

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

    AttachedDisk.add_member(:path, Shapes::ShapeRef.new(shape: string, location_name: "path"))
    AttachedDisk.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    AttachedDisk.struct_class = Types::AttachedDisk

    AttachedDiskList.member = Shapes::ShapeRef.new(shape: AttachedDisk)

    AttachedDiskMap.key = Shapes::ShapeRef.new(shape: ResourceName)
    AttachedDiskMap.value = Shapes::ShapeRef.new(shape: DiskMapList)

    AutoSnapshotAddOnRequest.add_member(:snapshot_time_of_day, Shapes::ShapeRef.new(shape: TimeOfDay, location_name: "snapshotTimeOfDay"))
    AutoSnapshotAddOnRequest.struct_class = Types::AutoSnapshotAddOnRequest

    AutoSnapshotDetails.add_member(:date, Shapes::ShapeRef.new(shape: string, location_name: "date"))
    AutoSnapshotDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    AutoSnapshotDetails.add_member(:status, Shapes::ShapeRef.new(shape: AutoSnapshotStatus, location_name: "status"))
    AutoSnapshotDetails.add_member(:from_attached_disks, Shapes::ShapeRef.new(shape: AttachedDiskList, location_name: "fromAttachedDisks"))
    AutoSnapshotDetails.struct_class = Types::AutoSnapshotDetails

    AutoSnapshotDetailsList.member = Shapes::ShapeRef.new(shape: AutoSnapshotDetails)

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

    CacheBehavior.add_member(:behavior, Shapes::ShapeRef.new(shape: BehaviorEnum, location_name: "behavior"))
    CacheBehavior.struct_class = Types::CacheBehavior

    CacheBehaviorList.member = Shapes::ShapeRef.new(shape: CacheBehaviorPerPath)

    CacheBehaviorPerPath.add_member(:path, Shapes::ShapeRef.new(shape: string, location_name: "path"))
    CacheBehaviorPerPath.add_member(:behavior, Shapes::ShapeRef.new(shape: BehaviorEnum, location_name: "behavior"))
    CacheBehaviorPerPath.struct_class = Types::CacheBehaviorPerPath

    CacheSettings.add_member(:default_ttl, Shapes::ShapeRef.new(shape: long, location_name: "defaultTTL"))
    CacheSettings.add_member(:minimum_ttl, Shapes::ShapeRef.new(shape: long, location_name: "minimumTTL"))
    CacheSettings.add_member(:maximum_ttl, Shapes::ShapeRef.new(shape: long, location_name: "maximumTTL"))
    CacheSettings.add_member(:allowed_http_methods, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "allowedHTTPMethods"))
    CacheSettings.add_member(:cached_http_methods, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "cachedHTTPMethods"))
    CacheSettings.add_member(:forwarded_cookies, Shapes::ShapeRef.new(shape: CookieObject, location_name: "forwardedCookies"))
    CacheSettings.add_member(:forwarded_headers, Shapes::ShapeRef.new(shape: HeaderObject, location_name: "forwardedHeaders"))
    CacheSettings.add_member(:forwarded_query_strings, Shapes::ShapeRef.new(shape: QueryStringObject, location_name: "forwardedQueryStrings"))
    CacheSettings.struct_class = Types::CacheSettings

    Certificate.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Certificate.add_member(:name, Shapes::ShapeRef.new(shape: CertificateName, location_name: "name"))
    Certificate.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    Certificate.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "status"))
    Certificate.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "serialNumber"))
    Certificate.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: SubjectAlternativeNameList, location_name: "subjectAlternativeNames"))
    Certificate.add_member(:domain_validation_records, Shapes::ShapeRef.new(shape: DomainValidationRecordList, location_name: "domainValidationRecords"))
    Certificate.add_member(:request_failure_reason, Shapes::ShapeRef.new(shape: RequestFailureReason, location_name: "requestFailureReason"))
    Certificate.add_member(:in_use_resource_count, Shapes::ShapeRef.new(shape: InUseResourceCount, location_name: "inUseResourceCount"))
    Certificate.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "keyAlgorithm"))
    Certificate.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Certificate.add_member(:issued_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "issuedAt"))
    Certificate.add_member(:issuer_ca, Shapes::ShapeRef.new(shape: IssuerCA, location_name: "issuerCA"))
    Certificate.add_member(:not_before, Shapes::ShapeRef.new(shape: IsoDate, location_name: "notBefore"))
    Certificate.add_member(:not_after, Shapes::ShapeRef.new(shape: IsoDate, location_name: "notAfter"))
    Certificate.add_member(:eligible_to_renew, Shapes::ShapeRef.new(shape: EligibleToRenew, location_name: "eligibleToRenew"))
    Certificate.add_member(:renewal_summary, Shapes::ShapeRef.new(shape: RenewalSummary, location_name: "renewalSummary"))
    Certificate.add_member(:revoked_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "revokedAt"))
    Certificate.add_member(:revocation_reason, Shapes::ShapeRef.new(shape: RevocationReason, location_name: "revocationReason"))
    Certificate.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Certificate.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Certificate.struct_class = Types::Certificate

    CertificateStatusList.member = Shapes::ShapeRef.new(shape: CertificateStatus)

    CertificateSummary.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "certificateArn"))
    CertificateSummary.add_member(:certificate_name, Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName"))
    CertificateSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    CertificateSummary.add_member(:certificate_detail, Shapes::ShapeRef.new(shape: Certificate, location_name: "certificateDetail"))
    CertificateSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CertificateSummary.struct_class = Types::CertificateSummary

    CertificateSummaryList.member = Shapes::ShapeRef.new(shape: CertificateSummary)

    CloseInstancePublicPortsRequest.add_member(:port_info, Shapes::ShapeRef.new(shape: PortInfo, required: true, location_name: "portInfo"))
    CloseInstancePublicPortsRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    CloseInstancePublicPortsRequest.struct_class = Types::CloseInstancePublicPortsRequest

    CloseInstancePublicPortsResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CloseInstancePublicPortsResult.struct_class = Types::CloseInstancePublicPortsResult

    CloudFormationStackRecord.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    CloudFormationStackRecord.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    CloudFormationStackRecord.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    CloudFormationStackRecord.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    CloudFormationStackRecord.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    CloudFormationStackRecord.add_member(:state, Shapes::ShapeRef.new(shape: RecordState, location_name: "state"))
    CloudFormationStackRecord.add_member(:source_info, Shapes::ShapeRef.new(shape: CloudFormationStackRecordSourceInfoList, location_name: "sourceInfo"))
    CloudFormationStackRecord.add_member(:destination_info, Shapes::ShapeRef.new(shape: DestinationInfo, location_name: "destinationInfo"))
    CloudFormationStackRecord.struct_class = Types::CloudFormationStackRecord

    CloudFormationStackRecordList.member = Shapes::ShapeRef.new(shape: CloudFormationStackRecord)

    CloudFormationStackRecordSourceInfo.add_member(:resource_type, Shapes::ShapeRef.new(shape: CloudFormationStackRecordSourceType, location_name: "resourceType"))
    CloudFormationStackRecordSourceInfo.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    CloudFormationStackRecordSourceInfo.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    CloudFormationStackRecordSourceInfo.struct_class = Types::CloudFormationStackRecordSourceInfo

    CloudFormationStackRecordSourceInfoList.member = Shapes::ShapeRef.new(shape: CloudFormationStackRecordSourceInfo)

    ContactMethod.add_member(:contact_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "contactEndpoint"))
    ContactMethod.add_member(:status, Shapes::ShapeRef.new(shape: ContactMethodStatus, location_name: "status"))
    ContactMethod.add_member(:protocol, Shapes::ShapeRef.new(shape: ContactProtocol, location_name: "protocol"))
    ContactMethod.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ContactMethod.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ContactMethod.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ContactMethod.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    ContactMethod.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ContactMethod.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    ContactMethod.struct_class = Types::ContactMethod

    ContactMethodsList.member = Shapes::ShapeRef.new(shape: ContactMethod)

    ContactProtocolsList.member = Shapes::ShapeRef.new(shape: ContactProtocol)

    CookieObject.add_member(:option, Shapes::ShapeRef.new(shape: ForwardValues, location_name: "option"))
    CookieObject.add_member(:cookies_allow_list, Shapes::ShapeRef.new(shape: StringList, location_name: "cookiesAllowList"))
    CookieObject.struct_class = Types::CookieObject

    CopySnapshotRequest.add_member(:source_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourceSnapshotName"))
    CopySnapshotRequest.add_member(:source_resource_name, Shapes::ShapeRef.new(shape: string, location_name: "sourceResourceName"))
    CopySnapshotRequest.add_member(:restore_date, Shapes::ShapeRef.new(shape: string, location_name: "restoreDate"))
    CopySnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, Shapes::ShapeRef.new(shape: boolean, location_name: "useLatestRestorableAutoSnapshot"))
    CopySnapshotRequest.add_member(:target_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "targetSnapshotName"))
    CopySnapshotRequest.add_member(:source_region, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "sourceRegion"))
    CopySnapshotRequest.struct_class = Types::CopySnapshotRequest

    CopySnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CopySnapshotResult.struct_class = Types::CopySnapshotResult

    CreateCertificateRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: CertificateName, required: true, location_name: "certificateName"))
    CreateCertificateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateCertificateRequest.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: SubjectAlternativeNameList, location_name: "subjectAlternativeNames"))
    CreateCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCertificateRequest.struct_class = Types::CreateCertificateRequest

    CreateCertificateResult.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateSummary, location_name: "certificate"))
    CreateCertificateResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateCertificateResult.struct_class = Types::CreateCertificateResult

    CreateCloudFormationStackRequest.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceEntryList, required: true, location_name: "instances"))
    CreateCloudFormationStackRequest.struct_class = Types::CreateCloudFormationStackRequest

    CreateCloudFormationStackResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateCloudFormationStackResult.struct_class = Types::CreateCloudFormationStackResult

    CreateContactMethodRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: ContactProtocol, required: true, location_name: "protocol"))
    CreateContactMethodRequest.add_member(:contact_endpoint, Shapes::ShapeRef.new(shape: StringMax256, required: true, location_name: "contactEndpoint"))
    CreateContactMethodRequest.struct_class = Types::CreateContactMethodRequest

    CreateContactMethodResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateContactMethodResult.struct_class = Types::CreateContactMethodResult

    CreateDiskFromSnapshotRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    CreateDiskFromSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskSnapshotName"))
    CreateDiskFromSnapshotRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "availabilityZone"))
    CreateDiskFromSnapshotRequest.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "sizeInGb"))
    CreateDiskFromSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDiskFromSnapshotRequest.add_member(:add_ons, Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateDiskFromSnapshotRequest.add_member(:source_disk_name, Shapes::ShapeRef.new(shape: string, location_name: "sourceDiskName"))
    CreateDiskFromSnapshotRequest.add_member(:restore_date, Shapes::ShapeRef.new(shape: string, location_name: "restoreDate"))
    CreateDiskFromSnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, Shapes::ShapeRef.new(shape: boolean, location_name: "useLatestRestorableAutoSnapshot"))
    CreateDiskFromSnapshotRequest.struct_class = Types::CreateDiskFromSnapshotRequest

    CreateDiskFromSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskFromSnapshotResult.struct_class = Types::CreateDiskFromSnapshotResult

    CreateDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    CreateDiskRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "availabilityZone"))
    CreateDiskRequest.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "sizeInGb"))
    CreateDiskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDiskRequest.add_member(:add_ons, Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateDiskRequest.struct_class = Types::CreateDiskRequest

    CreateDiskResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskResult.struct_class = Types::CreateDiskResult

    CreateDiskSnapshotRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName"))
    CreateDiskSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskSnapshotName"))
    CreateDiskSnapshotRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    CreateDiskSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDiskSnapshotRequest.struct_class = Types::CreateDiskSnapshotRequest

    CreateDiskSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskSnapshotResult.struct_class = Types::CreateDiskSnapshotResult

    CreateDistributionRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "distributionName"))
    CreateDistributionRequest.add_member(:origin, Shapes::ShapeRef.new(shape: InputOrigin, required: true, location_name: "origin"))
    CreateDistributionRequest.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, required: true, location_name: "defaultCacheBehavior"))
    CreateDistributionRequest.add_member(:cache_behavior_settings, Shapes::ShapeRef.new(shape: CacheSettings, location_name: "cacheBehaviorSettings"))
    CreateDistributionRequest.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "cacheBehaviors"))
    CreateDistributionRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "bundleId"))
    CreateDistributionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDistributionRequest.struct_class = Types::CreateDistributionRequest

    CreateDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: LightsailDistribution, location_name: "distribution"))
    CreateDistributionResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDistributionResult.struct_class = Types::CreateDistributionResult

    CreateDomainEntryRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateDomainEntryRequest.add_member(:domain_entry, Shapes::ShapeRef.new(shape: DomainEntry, required: true, location_name: "domainEntry"))
    CreateDomainEntryRequest.struct_class = Types::CreateDomainEntryRequest

    CreateDomainEntryResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDomainEntryResult.struct_class = Types::CreateDomainEntryResult

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDomainResult.struct_class = Types::CreateDomainResult

    CreateInstanceSnapshotRequest.add_member(:instance_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceSnapshotName"))
    CreateInstanceSnapshotRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    CreateInstanceSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInstanceSnapshotRequest.struct_class = Types::CreateInstanceSnapshotRequest

    CreateInstanceSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstanceSnapshotResult.struct_class = Types::CreateInstanceSnapshotResult

    CreateInstancesFromSnapshotRequest.add_member(:instance_names, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "instanceNames"))
    CreateInstancesFromSnapshotRequest.add_member(:attached_disk_mapping, Shapes::ShapeRef.new(shape: AttachedDiskMap, location_name: "attachedDiskMapping"))
    CreateInstancesFromSnapshotRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, required: true, location_name: "availabilityZone"))
    CreateInstancesFromSnapshotRequest.add_member(:instance_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceSnapshotName"))
    CreateInstancesFromSnapshotRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "bundleId"))
    CreateInstancesFromSnapshotRequest.add_member(:user_data, Shapes::ShapeRef.new(shape: string, location_name: "userData"))
    CreateInstancesFromSnapshotRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    CreateInstancesFromSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInstancesFromSnapshotRequest.add_member(:add_ons, Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateInstancesFromSnapshotRequest.add_member(:source_instance_name, Shapes::ShapeRef.new(shape: string, location_name: "sourceInstanceName"))
    CreateInstancesFromSnapshotRequest.add_member(:restore_date, Shapes::ShapeRef.new(shape: string, location_name: "restoreDate"))
    CreateInstancesFromSnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, Shapes::ShapeRef.new(shape: boolean, location_name: "useLatestRestorableAutoSnapshot"))
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
    CreateInstancesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInstancesRequest.add_member(:add_ons, Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateInstancesRequest.struct_class = Types::CreateInstancesRequest

    CreateInstancesResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstancesResult.struct_class = Types::CreateInstancesResult

    CreateKeyPairRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "keyPairName"))
    CreateKeyPairRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    CreateLoadBalancerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateLoadBalancerRequest.struct_class = Types::CreateLoadBalancerRequest

    CreateLoadBalancerResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateLoadBalancerResult.struct_class = Types::CreateLoadBalancerResult

    CreateLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "loadBalancerName"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "certificateName"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "certificateDomainName"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_alternative_names, Shapes::ShapeRef.new(shape: DomainNameList, location_name: "certificateAlternativeNames"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateLoadBalancerTlsCertificateRequest.struct_class = Types::CreateLoadBalancerTlsCertificateRequest

    CreateLoadBalancerTlsCertificateResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateLoadBalancerTlsCertificateResult.struct_class = Types::CreateLoadBalancerTlsCertificateResult

    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, location_name: "availabilityZone"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: boolean, location_name: "publiclyAccessible"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "relationalDatabaseBundleId"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:source_relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourceRelationalDatabaseName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:restore_time, Shapes::ShapeRef.new(shape: IsoDate, location_name: "restoreTime"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:use_latest_restorable_time, Shapes::ShapeRef.new(shape: boolean, location_name: "useLatestRestorableTime"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationalDatabaseFromSnapshotRequest.struct_class = Types::CreateRelationalDatabaseFromSnapshotRequest

    CreateRelationalDatabaseFromSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateRelationalDatabaseFromSnapshotResult.struct_class = Types::CreateRelationalDatabaseFromSnapshotResult

    CreateRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    CreateRelationalDatabaseRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, location_name: "availabilityZone"))
    CreateRelationalDatabaseRequest.add_member(:relational_database_blueprint_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "relationalDatabaseBlueprintId"))
    CreateRelationalDatabaseRequest.add_member(:relational_database_bundle_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "relationalDatabaseBundleId"))
    CreateRelationalDatabaseRequest.add_member(:master_database_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "masterDatabaseName"))
    CreateRelationalDatabaseRequest.add_member(:master_username, Shapes::ShapeRef.new(shape: string, required: true, location_name: "masterUsername"))
    CreateRelationalDatabaseRequest.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "masterUserPassword"))
    CreateRelationalDatabaseRequest.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: string, location_name: "preferredBackupWindow"))
    CreateRelationalDatabaseRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: string, location_name: "preferredMaintenanceWindow"))
    CreateRelationalDatabaseRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: boolean, location_name: "publiclyAccessible"))
    CreateRelationalDatabaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationalDatabaseRequest.struct_class = Types::CreateRelationalDatabaseRequest

    CreateRelationalDatabaseResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateRelationalDatabaseResult.struct_class = Types::CreateRelationalDatabaseResult

    CreateRelationalDatabaseSnapshotRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    CreateRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseSnapshotName"))
    CreateRelationalDatabaseSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationalDatabaseSnapshotRequest.struct_class = Types::CreateRelationalDatabaseSnapshotRequest

    CreateRelationalDatabaseSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateRelationalDatabaseSnapshotResult.struct_class = Types::CreateRelationalDatabaseSnapshotResult

    DeleteAlarmRequest.add_member(:alarm_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "alarmName"))
    DeleteAlarmRequest.struct_class = Types::DeleteAlarmRequest

    DeleteAlarmResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteAlarmResult.struct_class = Types::DeleteAlarmResult

    DeleteAutoSnapshotRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    DeleteAutoSnapshotRequest.add_member(:date, Shapes::ShapeRef.new(shape: AutoSnapshotDate, required: true, location_name: "date"))
    DeleteAutoSnapshotRequest.struct_class = Types::DeleteAutoSnapshotRequest

    DeleteAutoSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteAutoSnapshotResult.struct_class = Types::DeleteAutoSnapshotResult

    DeleteCertificateRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: CertificateName, required: true, location_name: "certificateName"))
    DeleteCertificateRequest.struct_class = Types::DeleteCertificateRequest

    DeleteCertificateResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteCertificateResult.struct_class = Types::DeleteCertificateResult

    DeleteContactMethodRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: ContactProtocol, required: true, location_name: "protocol"))
    DeleteContactMethodRequest.struct_class = Types::DeleteContactMethodRequest

    DeleteContactMethodResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteContactMethodResult.struct_class = Types::DeleteContactMethodResult

    DeleteDiskRequest.add_member(:disk_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskName"))
    DeleteDiskRequest.add_member(:force_delete_add_ons, Shapes::ShapeRef.new(shape: boolean, location_name: "forceDeleteAddOns"))
    DeleteDiskRequest.struct_class = Types::DeleteDiskRequest

    DeleteDiskResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteDiskResult.struct_class = Types::DeleteDiskResult

    DeleteDiskSnapshotRequest.add_member(:disk_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "diskSnapshotName"))
    DeleteDiskSnapshotRequest.struct_class = Types::DeleteDiskSnapshotRequest

    DeleteDiskSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteDiskSnapshotResult.struct_class = Types::DeleteDiskSnapshotResult

    DeleteDistributionRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    DeleteDistributionRequest.struct_class = Types::DeleteDistributionRequest

    DeleteDistributionResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteDistributionResult.struct_class = Types::DeleteDistributionResult

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
    DeleteInstanceRequest.add_member(:force_delete_add_ons, Shapes::ShapeRef.new(shape: boolean, location_name: "forceDeleteAddOns"))
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

    DeleteKnownHostKeysRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    DeleteKnownHostKeysRequest.struct_class = Types::DeleteKnownHostKeysRequest

    DeleteKnownHostKeysResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteKnownHostKeysResult.struct_class = Types::DeleteKnownHostKeysResult

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

    DeleteRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    DeleteRelationalDatabaseRequest.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: boolean, location_name: "skipFinalSnapshot"))
    DeleteRelationalDatabaseRequest.add_member(:final_relational_database_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "finalRelationalDatabaseSnapshotName"))
    DeleteRelationalDatabaseRequest.struct_class = Types::DeleteRelationalDatabaseRequest

    DeleteRelationalDatabaseResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteRelationalDatabaseResult.struct_class = Types::DeleteRelationalDatabaseResult

    DeleteRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseSnapshotName"))
    DeleteRelationalDatabaseSnapshotRequest.struct_class = Types::DeleteRelationalDatabaseSnapshotRequest

    DeleteRelationalDatabaseSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteRelationalDatabaseSnapshotResult.struct_class = Types::DeleteRelationalDatabaseSnapshotResult

    DestinationInfo.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    DestinationInfo.add_member(:service, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "service"))
    DestinationInfo.struct_class = Types::DestinationInfo

    DetachCertificateFromDistributionRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "distributionName"))
    DetachCertificateFromDistributionRequest.struct_class = Types::DetachCertificateFromDistributionRequest

    DetachCertificateFromDistributionResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DetachCertificateFromDistributionResult.struct_class = Types::DetachCertificateFromDistributionResult

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

    DisableAddOnRequest.add_member(:add_on_type, Shapes::ShapeRef.new(shape: AddOnType, required: true, location_name: "addOnType"))
    DisableAddOnRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    DisableAddOnRequest.struct_class = Types::DisableAddOnRequest

    DisableAddOnResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DisableAddOnResult.struct_class = Types::DisableAddOnResult

    Disk.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Disk.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Disk.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Disk.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Disk.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Disk.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Disk.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Disk.add_member(:add_ons, Shapes::ShapeRef.new(shape: AddOnList, location_name: "addOns"))
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

    DiskInfo.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    DiskInfo.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "path"))
    DiskInfo.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    DiskInfo.add_member(:is_system_disk, Shapes::ShapeRef.new(shape: boolean, location_name: "isSystemDisk"))
    DiskInfo.struct_class = Types::DiskInfo

    DiskInfoList.member = Shapes::ShapeRef.new(shape: DiskInfo)

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
    DiskSnapshot.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    DiskSnapshot.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    DiskSnapshot.add_member(:state, Shapes::ShapeRef.new(shape: DiskSnapshotState, location_name: "state"))
    DiskSnapshot.add_member(:progress, Shapes::ShapeRef.new(shape: string, location_name: "progress"))
    DiskSnapshot.add_member(:from_disk_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromDiskName"))
    DiskSnapshot.add_member(:from_disk_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromDiskArn"))
    DiskSnapshot.add_member(:from_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromInstanceName"))
    DiskSnapshot.add_member(:from_instance_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromInstanceArn"))
    DiskSnapshot.add_member(:is_from_auto_snapshot, Shapes::ShapeRef.new(shape: boolean, location_name: "isFromAutoSnapshot"))
    DiskSnapshot.struct_class = Types::DiskSnapshot

    DiskSnapshotInfo.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    DiskSnapshotInfo.struct_class = Types::DiskSnapshotInfo

    DiskSnapshotList.member = Shapes::ShapeRef.new(shape: DiskSnapshot)

    DistributionBundle.add_member(:bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "bundleId"))
    DistributionBundle.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    DistributionBundle.add_member(:price, Shapes::ShapeRef.new(shape: float, location_name: "price"))
    DistributionBundle.add_member(:transfer_per_month_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "transferPerMonthInGb"))
    DistributionBundle.add_member(:is_active, Shapes::ShapeRef.new(shape: boolean, location_name: "isActive"))
    DistributionBundle.struct_class = Types::DistributionBundle

    DistributionBundleList.member = Shapes::ShapeRef.new(shape: DistributionBundle)

    DistributionList.member = Shapes::ShapeRef.new(shape: LightsailDistribution)

    Domain.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Domain.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Domain.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Domain.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Domain.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Domain.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Domain.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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

    DomainValidationRecord.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    DomainValidationRecord.add_member(:resource_record, Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "resourceRecord"))
    DomainValidationRecord.struct_class = Types::DomainValidationRecord

    DomainValidationRecordList.member = Shapes::ShapeRef.new(shape: DomainValidationRecord)

    DownloadDefaultKeyPairRequest.struct_class = Types::DownloadDefaultKeyPairRequest

    DownloadDefaultKeyPairResult.add_member(:public_key_base_64, Shapes::ShapeRef.new(shape: Base64, location_name: "publicKeyBase64"))
    DownloadDefaultKeyPairResult.add_member(:private_key_base_64, Shapes::ShapeRef.new(shape: Base64, location_name: "privateKeyBase64"))
    DownloadDefaultKeyPairResult.struct_class = Types::DownloadDefaultKeyPairResult

    EnableAddOnRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    EnableAddOnRequest.add_member(:add_on_request, Shapes::ShapeRef.new(shape: AddOnRequest, required: true, location_name: "addOnRequest"))
    EnableAddOnRequest.struct_class = Types::EnableAddOnRequest

    EnableAddOnResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    EnableAddOnResult.struct_class = Types::EnableAddOnResult

    ExportSnapshotRecord.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ExportSnapshotRecord.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ExportSnapshotRecord.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ExportSnapshotRecord.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    ExportSnapshotRecord.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ExportSnapshotRecord.add_member(:state, Shapes::ShapeRef.new(shape: RecordState, location_name: "state"))
    ExportSnapshotRecord.add_member(:source_info, Shapes::ShapeRef.new(shape: ExportSnapshotRecordSourceInfo, location_name: "sourceInfo"))
    ExportSnapshotRecord.add_member(:destination_info, Shapes::ShapeRef.new(shape: DestinationInfo, location_name: "destinationInfo"))
    ExportSnapshotRecord.struct_class = Types::ExportSnapshotRecord

    ExportSnapshotRecordList.member = Shapes::ShapeRef.new(shape: ExportSnapshotRecord)

    ExportSnapshotRecordSourceInfo.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExportSnapshotRecordSourceType, location_name: "resourceType"))
    ExportSnapshotRecordSourceInfo.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ExportSnapshotRecordSourceInfo.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ExportSnapshotRecordSourceInfo.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ExportSnapshotRecordSourceInfo.add_member(:from_resource_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromResourceName"))
    ExportSnapshotRecordSourceInfo.add_member(:from_resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromResourceArn"))
    ExportSnapshotRecordSourceInfo.add_member(:instance_snapshot_info, Shapes::ShapeRef.new(shape: InstanceSnapshotInfo, location_name: "instanceSnapshotInfo"))
    ExportSnapshotRecordSourceInfo.add_member(:disk_snapshot_info, Shapes::ShapeRef.new(shape: DiskSnapshotInfo, location_name: "diskSnapshotInfo"))
    ExportSnapshotRecordSourceInfo.struct_class = Types::ExportSnapshotRecordSourceInfo

    ExportSnapshotRequest.add_member(:source_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "sourceSnapshotName"))
    ExportSnapshotRequest.struct_class = Types::ExportSnapshotRequest

    ExportSnapshotResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    ExportSnapshotResult.struct_class = Types::ExportSnapshotResult

    GetActiveNamesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetActiveNamesRequest.struct_class = Types::GetActiveNamesRequest

    GetActiveNamesResult.add_member(:active_names, Shapes::ShapeRef.new(shape: StringList, location_name: "activeNames"))
    GetActiveNamesResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetActiveNamesResult.struct_class = Types::GetActiveNamesResult

    GetAlarmsRequest.add_member(:alarm_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "alarmName"))
    GetAlarmsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetAlarmsRequest.add_member(:monitored_resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "monitoredResourceName"))
    GetAlarmsRequest.struct_class = Types::GetAlarmsRequest

    GetAlarmsResult.add_member(:alarms, Shapes::ShapeRef.new(shape: AlarmsList, location_name: "alarms"))
    GetAlarmsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetAlarmsResult.struct_class = Types::GetAlarmsResult

    GetAutoSnapshotsRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    GetAutoSnapshotsRequest.struct_class = Types::GetAutoSnapshotsRequest

    GetAutoSnapshotsResult.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    GetAutoSnapshotsResult.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    GetAutoSnapshotsResult.add_member(:auto_snapshots, Shapes::ShapeRef.new(shape: AutoSnapshotDetailsList, location_name: "autoSnapshots"))
    GetAutoSnapshotsResult.struct_class = Types::GetAutoSnapshotsResult

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

    GetCertificatesRequest.add_member(:certificate_statuses, Shapes::ShapeRef.new(shape: CertificateStatusList, location_name: "certificateStatuses"))
    GetCertificatesRequest.add_member(:include_certificate_details, Shapes::ShapeRef.new(shape: IncludeCertificateDetails, location_name: "includeCertificateDetails"))
    GetCertificatesRequest.add_member(:certificate_name, Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName"))
    GetCertificatesRequest.struct_class = Types::GetCertificatesRequest

    GetCertificatesResult.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: "certificates"))
    GetCertificatesResult.struct_class = Types::GetCertificatesResult

    GetCloudFormationStackRecordsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetCloudFormationStackRecordsRequest.struct_class = Types::GetCloudFormationStackRecordsRequest

    GetCloudFormationStackRecordsResult.add_member(:cloud_formation_stack_records, Shapes::ShapeRef.new(shape: CloudFormationStackRecordList, location_name: "cloudFormationStackRecords"))
    GetCloudFormationStackRecordsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetCloudFormationStackRecordsResult.struct_class = Types::GetCloudFormationStackRecordsResult

    GetContactMethodsRequest.add_member(:protocols, Shapes::ShapeRef.new(shape: ContactProtocolsList, location_name: "protocols"))
    GetContactMethodsRequest.struct_class = Types::GetContactMethodsRequest

    GetContactMethodsResult.add_member(:contact_methods, Shapes::ShapeRef.new(shape: ContactMethodsList, location_name: "contactMethods"))
    GetContactMethodsResult.struct_class = Types::GetContactMethodsResult

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

    GetDistributionBundlesRequest.struct_class = Types::GetDistributionBundlesRequest

    GetDistributionBundlesResult.add_member(:bundles, Shapes::ShapeRef.new(shape: DistributionBundleList, location_name: "bundles"))
    GetDistributionBundlesResult.struct_class = Types::GetDistributionBundlesResult

    GetDistributionLatestCacheResetRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    GetDistributionLatestCacheResetRequest.struct_class = Types::GetDistributionLatestCacheResetRequest

    GetDistributionLatestCacheResetResult.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    GetDistributionLatestCacheResetResult.add_member(:create_time, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createTime"))
    GetDistributionLatestCacheResetResult.struct_class = Types::GetDistributionLatestCacheResetResult

    GetDistributionMetricDataRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "distributionName"))
    GetDistributionMetricDataRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: DistributionMetricName, required: true, location_name: "metricName"))
    GetDistributionMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "startTime"))
    GetDistributionMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "endTime"))
    GetDistributionMetricDataRequest.add_member(:period, Shapes::ShapeRef.new(shape: MetricPeriod, required: true, location_name: "period"))
    GetDistributionMetricDataRequest.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, required: true, location_name: "unit"))
    GetDistributionMetricDataRequest.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricStatisticList, required: true, location_name: "statistics"))
    GetDistributionMetricDataRequest.struct_class = Types::GetDistributionMetricDataRequest

    GetDistributionMetricDataResult.add_member(:metric_name, Shapes::ShapeRef.new(shape: DistributionMetricName, location_name: "metricName"))
    GetDistributionMetricDataResult.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetDistributionMetricDataResult.struct_class = Types::GetDistributionMetricDataResult

    GetDistributionsRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    GetDistributionsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetDistributionsRequest.struct_class = Types::GetDistributionsRequest

    GetDistributionsResult.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, location_name: "distributions"))
    GetDistributionsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetDistributionsResult.struct_class = Types::GetDistributionsResult

    GetDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GetDomainRequest.struct_class = Types::GetDomainRequest

    GetDomainResult.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "domain"))
    GetDomainResult.struct_class = Types::GetDomainResult

    GetDomainsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetDomainsRequest.struct_class = Types::GetDomainsRequest

    GetDomainsResult.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "domains"))
    GetDomainsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetDomainsResult.struct_class = Types::GetDomainsResult

    GetExportSnapshotRecordsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetExportSnapshotRecordsRequest.struct_class = Types::GetExportSnapshotRecordsRequest

    GetExportSnapshotRecordsResult.add_member(:export_snapshot_records, Shapes::ShapeRef.new(shape: ExportSnapshotRecordList, location_name: "exportSnapshotRecords"))
    GetExportSnapshotRecordsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetExportSnapshotRecordsResult.struct_class = Types::GetExportSnapshotRecordsResult

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
    GetRegionsRequest.add_member(:include_relational_database_availability_zones, Shapes::ShapeRef.new(shape: boolean, location_name: "includeRelationalDatabaseAvailabilityZones"))
    GetRegionsRequest.struct_class = Types::GetRegionsRequest

    GetRegionsResult.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    GetRegionsResult.struct_class = Types::GetRegionsResult

    GetRelationalDatabaseBlueprintsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabaseBlueprintsRequest.struct_class = Types::GetRelationalDatabaseBlueprintsRequest

    GetRelationalDatabaseBlueprintsResult.add_member(:blueprints, Shapes::ShapeRef.new(shape: RelationalDatabaseBlueprintList, location_name: "blueprints"))
    GetRelationalDatabaseBlueprintsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetRelationalDatabaseBlueprintsResult.struct_class = Types::GetRelationalDatabaseBlueprintsResult

    GetRelationalDatabaseBundlesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabaseBundlesRequest.struct_class = Types::GetRelationalDatabaseBundlesRequest

    GetRelationalDatabaseBundlesResult.add_member(:bundles, Shapes::ShapeRef.new(shape: RelationalDatabaseBundleList, location_name: "bundles"))
    GetRelationalDatabaseBundlesResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetRelationalDatabaseBundlesResult.struct_class = Types::GetRelationalDatabaseBundlesResult

    GetRelationalDatabaseEventsRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseEventsRequest.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: integer, location_name: "durationInMinutes"))
    GetRelationalDatabaseEventsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabaseEventsRequest.struct_class = Types::GetRelationalDatabaseEventsRequest

    GetRelationalDatabaseEventsResult.add_member(:relational_database_events, Shapes::ShapeRef.new(shape: RelationalDatabaseEventList, location_name: "relationalDatabaseEvents"))
    GetRelationalDatabaseEventsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetRelationalDatabaseEventsResult.struct_class = Types::GetRelationalDatabaseEventsResult

    GetRelationalDatabaseLogEventsRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseLogEventsRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "logStreamName"))
    GetRelationalDatabaseLogEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime"))
    GetRelationalDatabaseLogEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime"))
    GetRelationalDatabaseLogEventsRequest.add_member(:start_from_head, Shapes::ShapeRef.new(shape: boolean, location_name: "startFromHead"))
    GetRelationalDatabaseLogEventsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabaseLogEventsRequest.struct_class = Types::GetRelationalDatabaseLogEventsRequest

    GetRelationalDatabaseLogEventsResult.add_member(:resource_log_events, Shapes::ShapeRef.new(shape: LogEventList, location_name: "resourceLogEvents"))
    GetRelationalDatabaseLogEventsResult.add_member(:next_backward_token, Shapes::ShapeRef.new(shape: string, location_name: "nextBackwardToken"))
    GetRelationalDatabaseLogEventsResult.add_member(:next_forward_token, Shapes::ShapeRef.new(shape: string, location_name: "nextForwardToken"))
    GetRelationalDatabaseLogEventsResult.struct_class = Types::GetRelationalDatabaseLogEventsResult

    GetRelationalDatabaseLogStreamsRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseLogStreamsRequest.struct_class = Types::GetRelationalDatabaseLogStreamsRequest

    GetRelationalDatabaseLogStreamsResult.add_member(:log_streams, Shapes::ShapeRef.new(shape: StringList, location_name: "logStreams"))
    GetRelationalDatabaseLogStreamsResult.struct_class = Types::GetRelationalDatabaseLogStreamsResult

    GetRelationalDatabaseMasterUserPasswordRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseMasterUserPasswordRequest.add_member(:password_version, Shapes::ShapeRef.new(shape: RelationalDatabasePasswordVersion, location_name: "passwordVersion"))
    GetRelationalDatabaseMasterUserPasswordRequest.struct_class = Types::GetRelationalDatabaseMasterUserPasswordRequest

    GetRelationalDatabaseMasterUserPasswordResult.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "masterUserPassword"))
    GetRelationalDatabaseMasterUserPasswordResult.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    GetRelationalDatabaseMasterUserPasswordResult.struct_class = Types::GetRelationalDatabaseMasterUserPasswordResult

    GetRelationalDatabaseMetricDataRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseMetricDataRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: RelationalDatabaseMetricName, required: true, location_name: "metricName"))
    GetRelationalDatabaseMetricDataRequest.add_member(:period, Shapes::ShapeRef.new(shape: MetricPeriod, required: true, location_name: "period"))
    GetRelationalDatabaseMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: IsoDate, required: true, location_name: "startTime"))
    GetRelationalDatabaseMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: IsoDate, required: true, location_name: "endTime"))
    GetRelationalDatabaseMetricDataRequest.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, required: true, location_name: "unit"))
    GetRelationalDatabaseMetricDataRequest.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricStatisticList, required: true, location_name: "statistics"))
    GetRelationalDatabaseMetricDataRequest.struct_class = Types::GetRelationalDatabaseMetricDataRequest

    GetRelationalDatabaseMetricDataResult.add_member(:metric_name, Shapes::ShapeRef.new(shape: RelationalDatabaseMetricName, location_name: "metricName"))
    GetRelationalDatabaseMetricDataResult.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetRelationalDatabaseMetricDataResult.struct_class = Types::GetRelationalDatabaseMetricDataResult

    GetRelationalDatabaseParametersRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseParametersRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabaseParametersRequest.struct_class = Types::GetRelationalDatabaseParametersRequest

    GetRelationalDatabaseParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: RelationalDatabaseParameterList, location_name: "parameters"))
    GetRelationalDatabaseParametersResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetRelationalDatabaseParametersResult.struct_class = Types::GetRelationalDatabaseParametersResult

    GetRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    GetRelationalDatabaseRequest.struct_class = Types::GetRelationalDatabaseRequest

    GetRelationalDatabaseResult.add_member(:relational_database, Shapes::ShapeRef.new(shape: RelationalDatabase, location_name: "relationalDatabase"))
    GetRelationalDatabaseResult.struct_class = Types::GetRelationalDatabaseResult

    GetRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseSnapshotName"))
    GetRelationalDatabaseSnapshotRequest.struct_class = Types::GetRelationalDatabaseSnapshotRequest

    GetRelationalDatabaseSnapshotResult.add_member(:relational_database_snapshot, Shapes::ShapeRef.new(shape: RelationalDatabaseSnapshot, location_name: "relationalDatabaseSnapshot"))
    GetRelationalDatabaseSnapshotResult.struct_class = Types::GetRelationalDatabaseSnapshotResult

    GetRelationalDatabaseSnapshotsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabaseSnapshotsRequest.struct_class = Types::GetRelationalDatabaseSnapshotsRequest

    GetRelationalDatabaseSnapshotsResult.add_member(:relational_database_snapshots, Shapes::ShapeRef.new(shape: RelationalDatabaseSnapshotList, location_name: "relationalDatabaseSnapshots"))
    GetRelationalDatabaseSnapshotsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetRelationalDatabaseSnapshotsResult.struct_class = Types::GetRelationalDatabaseSnapshotsResult

    GetRelationalDatabasesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetRelationalDatabasesRequest.struct_class = Types::GetRelationalDatabasesRequest

    GetRelationalDatabasesResult.add_member(:relational_databases, Shapes::ShapeRef.new(shape: RelationalDatabaseList, location_name: "relationalDatabases"))
    GetRelationalDatabasesResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetRelationalDatabasesResult.struct_class = Types::GetRelationalDatabasesResult

    GetStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    GetStaticIpRequest.struct_class = Types::GetStaticIpRequest

    GetStaticIpResult.add_member(:static_ip, Shapes::ShapeRef.new(shape: StaticIp, location_name: "staticIp"))
    GetStaticIpResult.struct_class = Types::GetStaticIpResult

    GetStaticIpsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: string, location_name: "pageToken"))
    GetStaticIpsRequest.struct_class = Types::GetStaticIpsRequest

    GetStaticIpsResult.add_member(:static_ips, Shapes::ShapeRef.new(shape: StaticIpList, location_name: "staticIps"))
    GetStaticIpsResult.add_member(:next_page_token, Shapes::ShapeRef.new(shape: string, location_name: "nextPageToken"))
    GetStaticIpsResult.struct_class = Types::GetStaticIpsResult

    HeaderForwardList.member = Shapes::ShapeRef.new(shape: HeaderEnum)

    HeaderObject.add_member(:option, Shapes::ShapeRef.new(shape: ForwardValues, location_name: "option"))
    HeaderObject.add_member(:headers_allow_list, Shapes::ShapeRef.new(shape: HeaderForwardList, location_name: "headersAllowList"))
    HeaderObject.struct_class = Types::HeaderObject

    HostKeyAttributes.add_member(:algorithm, Shapes::ShapeRef.new(shape: string, location_name: "algorithm"))
    HostKeyAttributes.add_member(:public_key, Shapes::ShapeRef.new(shape: string, location_name: "publicKey"))
    HostKeyAttributes.add_member(:witnessed_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "witnessedAt"))
    HostKeyAttributes.add_member(:fingerprint_sha1, Shapes::ShapeRef.new(shape: string, location_name: "fingerprintSHA1"))
    HostKeyAttributes.add_member(:fingerprint_sha256, Shapes::ShapeRef.new(shape: string, location_name: "fingerprintSHA256"))
    HostKeyAttributes.add_member(:not_valid_before, Shapes::ShapeRef.new(shape: IsoDate, location_name: "notValidBefore"))
    HostKeyAttributes.add_member(:not_valid_after, Shapes::ShapeRef.new(shape: IsoDate, location_name: "notValidAfter"))
    HostKeyAttributes.struct_class = Types::HostKeyAttributes

    HostKeysList.member = Shapes::ShapeRef.new(shape: HostKeyAttributes)

    ImportKeyPairRequest.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "keyPairName"))
    ImportKeyPairRequest.add_member(:public_key_base_64, Shapes::ShapeRef.new(shape: Base64, required: true, location_name: "publicKeyBase64"))
    ImportKeyPairRequest.struct_class = Types::ImportKeyPairRequest

    ImportKeyPairResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    ImportKeyPairResult.struct_class = Types::ImportKeyPairResult

    InputOrigin.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InputOrigin.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    InputOrigin.add_member(:protocol_policy, Shapes::ShapeRef.new(shape: OriginProtocolPolicyEnum, location_name: "protocolPolicy"))
    InputOrigin.struct_class = Types::InputOrigin

    Instance.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Instance.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Instance.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    Instance.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Instance.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Instance.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Instance.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Instance.add_member(:blueprint_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintId"))
    Instance.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintName"))
    Instance.add_member(:bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    Instance.add_member(:add_ons, Shapes::ShapeRef.new(shape: AddOnList, location_name: "addOns"))
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
    InstanceAccessDetails.add_member(:host_keys, Shapes::ShapeRef.new(shape: HostKeysList, location_name: "hostKeys"))
    InstanceAccessDetails.struct_class = Types::InstanceAccessDetails

    InstanceEntry.add_member(:source_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "sourceName"))
    InstanceEntry.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "instanceType"))
    InstanceEntry.add_member(:port_info_source, Shapes::ShapeRef.new(shape: PortInfoSourceType, required: true, location_name: "portInfoSource"))
    InstanceEntry.add_member(:user_data, Shapes::ShapeRef.new(shape: string, location_name: "userData"))
    InstanceEntry.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, required: true, location_name: "availabilityZone"))
    InstanceEntry.struct_class = Types::InstanceEntry

    InstanceEntryList.member = Shapes::ShapeRef.new(shape: InstanceEntry)

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
    InstancePortInfo.add_member(:cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    InstancePortInfo.add_member(:cidr_list_aliases, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrListAliases"))
    InstancePortInfo.struct_class = Types::InstancePortInfo

    InstancePortInfoList.member = Shapes::ShapeRef.new(shape: InstancePortInfo)

    InstancePortState.add_member(:from_port, Shapes::ShapeRef.new(shape: Port, location_name: "fromPort"))
    InstancePortState.add_member(:to_port, Shapes::ShapeRef.new(shape: Port, location_name: "toPort"))
    InstancePortState.add_member(:protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    InstancePortState.add_member(:state, Shapes::ShapeRef.new(shape: PortState, location_name: "state"))
    InstancePortState.add_member(:cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    InstancePortState.add_member(:cidr_list_aliases, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrListAliases"))
    InstancePortState.struct_class = Types::InstancePortState

    InstancePortStateList.member = Shapes::ShapeRef.new(shape: InstancePortState)

    InstanceSnapshot.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InstanceSnapshot.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    InstanceSnapshot.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    InstanceSnapshot.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    InstanceSnapshot.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    InstanceSnapshot.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    InstanceSnapshot.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    InstanceSnapshot.add_member(:state, Shapes::ShapeRef.new(shape: InstanceSnapshotState, location_name: "state"))
    InstanceSnapshot.add_member(:progress, Shapes::ShapeRef.new(shape: string, location_name: "progress"))
    InstanceSnapshot.add_member(:from_attached_disks, Shapes::ShapeRef.new(shape: DiskList, location_name: "fromAttachedDisks"))
    InstanceSnapshot.add_member(:from_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromInstanceName"))
    InstanceSnapshot.add_member(:from_instance_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromInstanceArn"))
    InstanceSnapshot.add_member(:from_blueprint_id, Shapes::ShapeRef.new(shape: string, location_name: "fromBlueprintId"))
    InstanceSnapshot.add_member(:from_bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "fromBundleId"))
    InstanceSnapshot.add_member(:is_from_auto_snapshot, Shapes::ShapeRef.new(shape: boolean, location_name: "isFromAutoSnapshot"))
    InstanceSnapshot.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    InstanceSnapshot.struct_class = Types::InstanceSnapshot

    InstanceSnapshotInfo.add_member(:from_bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromBundleId"))
    InstanceSnapshotInfo.add_member(:from_blueprint_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromBlueprintId"))
    InstanceSnapshotInfo.add_member(:from_disk_info, Shapes::ShapeRef.new(shape: DiskInfoList, location_name: "fromDiskInfo"))
    InstanceSnapshotInfo.struct_class = Types::InstanceSnapshotInfo

    InstanceSnapshotList.member = Shapes::ShapeRef.new(shape: InstanceSnapshot)

    InstanceState.add_member(:code, Shapes::ShapeRef.new(shape: integer, location_name: "code"))
    InstanceState.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    InstanceState.struct_class = Types::InstanceState

    InvalidInputException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    InvalidInputException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InvalidInputException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    InvalidInputException.struct_class = Types::InvalidInputException

    IsVpcPeeredRequest.struct_class = Types::IsVpcPeeredRequest

    IsVpcPeeredResult.add_member(:is_peered, Shapes::ShapeRef.new(shape: boolean, location_name: "isPeered"))
    IsVpcPeeredResult.struct_class = Types::IsVpcPeeredResult

    KeyPair.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    KeyPair.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    KeyPair.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    KeyPair.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    KeyPair.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    KeyPair.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    KeyPair.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    KeyPair.add_member(:fingerprint, Shapes::ShapeRef.new(shape: Base64, location_name: "fingerprint"))
    KeyPair.struct_class = Types::KeyPair

    KeyPairList.member = Shapes::ShapeRef.new(shape: KeyPair)

    LightsailDistribution.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LightsailDistribution.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LightsailDistribution.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    LightsailDistribution.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LightsailDistribution.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LightsailDistribution.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LightsailDistribution.add_member(:alternative_domain_names, Shapes::ShapeRef.new(shape: StringList, location_name: "alternativeDomainNames"))
    LightsailDistribution.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    LightsailDistribution.add_member(:is_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "isEnabled"))
    LightsailDistribution.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, location_name: "domainName"))
    LightsailDistribution.add_member(:bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "bundleId"))
    LightsailDistribution.add_member(:certificate_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName"))
    LightsailDistribution.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, location_name: "origin"))
    LightsailDistribution.add_member(:origin_public_dns, Shapes::ShapeRef.new(shape: string, location_name: "originPublicDNS"))
    LightsailDistribution.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "defaultCacheBehavior"))
    LightsailDistribution.add_member(:cache_behavior_settings, Shapes::ShapeRef.new(shape: CacheSettings, location_name: "cacheBehaviorSettings"))
    LightsailDistribution.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "cacheBehaviors"))
    LightsailDistribution.add_member(:able_to_update_bundle, Shapes::ShapeRef.new(shape: boolean, location_name: "ableToUpdateBundle"))
    LightsailDistribution.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    LightsailDistribution.struct_class = Types::LightsailDistribution

    LoadBalancer.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancer.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LoadBalancer.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    LoadBalancer.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LoadBalancer.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LoadBalancer.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LoadBalancer.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    LoadBalancerTlsCertificate.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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

    LogEvent.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LogEvent.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    LogEvent.struct_class = Types::LogEvent

    LogEventList.member = Shapes::ShapeRef.new(shape: LogEvent)

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

    MonitoredResourceInfo.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    MonitoredResourceInfo.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    MonitoredResourceInfo.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    MonitoredResourceInfo.struct_class = Types::MonitoredResourceInfo

    MonthlyTransfer.add_member(:gb_per_month_allocated, Shapes::ShapeRef.new(shape: integer, location_name: "gbPerMonthAllocated"))
    MonthlyTransfer.struct_class = Types::MonthlyTransfer

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    NotFoundException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    NotFoundException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    NotFoundException.struct_class = Types::NotFoundException

    NotificationTriggerList.member = Shapes::ShapeRef.new(shape: AlarmState)

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

    OperationFailureException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    OperationFailureException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    OperationFailureException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    OperationFailureException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    OperationFailureException.struct_class = Types::OperationFailureException

    OperationList.member = Shapes::ShapeRef.new(shape: Operation)

    Origin.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Origin.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Origin.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    Origin.add_member(:protocol_policy, Shapes::ShapeRef.new(shape: OriginProtocolPolicyEnum, location_name: "protocolPolicy"))
    Origin.struct_class = Types::Origin

    PasswordData.add_member(:ciphertext, Shapes::ShapeRef.new(shape: string, location_name: "ciphertext"))
    PasswordData.add_member(:key_pair_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    PasswordData.struct_class = Types::PasswordData

    PeerVpcRequest.struct_class = Types::PeerVpcRequest

    PeerVpcResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    PeerVpcResult.struct_class = Types::PeerVpcResult

    PendingMaintenanceAction.add_member(:action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "action"))
    PendingMaintenanceAction.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    PendingMaintenanceAction.add_member(:current_apply_date, Shapes::ShapeRef.new(shape: IsoDate, location_name: "currentApplyDate"))
    PendingMaintenanceAction.struct_class = Types::PendingMaintenanceAction

    PendingMaintenanceActionList.member = Shapes::ShapeRef.new(shape: PendingMaintenanceAction)

    PendingModifiedRelationalDatabaseValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: string, location_name: "masterUserPassword"))
    PendingModifiedRelationalDatabaseValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: string, location_name: "engineVersion"))
    PendingModifiedRelationalDatabaseValues.add_member(:backup_retention_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "backupRetentionEnabled"))
    PendingModifiedRelationalDatabaseValues.struct_class = Types::PendingModifiedRelationalDatabaseValues

    PortInfo.add_member(:from_port, Shapes::ShapeRef.new(shape: Port, location_name: "fromPort"))
    PortInfo.add_member(:to_port, Shapes::ShapeRef.new(shape: Port, location_name: "toPort"))
    PortInfo.add_member(:protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    PortInfo.add_member(:cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    PortInfo.add_member(:cidr_list_aliases, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrListAliases"))
    PortInfo.struct_class = Types::PortInfo

    PortInfoList.member = Shapes::ShapeRef.new(shape: PortInfo)

    PortList.member = Shapes::ShapeRef.new(shape: Port)

    PutAlarmRequest.add_member(:alarm_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "alarmName"))
    PutAlarmRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "metricName"))
    PutAlarmRequest.add_member(:monitored_resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitoredResourceName"))
    PutAlarmRequest.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "comparisonOperator"))
    PutAlarmRequest.add_member(:threshold, Shapes::ShapeRef.new(shape: double, required: true, location_name: "threshold"))
    PutAlarmRequest.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "evaluationPeriods"))
    PutAlarmRequest.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: integer, location_name: "datapointsToAlarm"))
    PutAlarmRequest.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "treatMissingData"))
    PutAlarmRequest.add_member(:contact_protocols, Shapes::ShapeRef.new(shape: ContactProtocolsList, location_name: "contactProtocols"))
    PutAlarmRequest.add_member(:notification_triggers, Shapes::ShapeRef.new(shape: NotificationTriggerList, location_name: "notificationTriggers"))
    PutAlarmRequest.add_member(:notification_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "notificationEnabled"))
    PutAlarmRequest.struct_class = Types::PutAlarmRequest

    PutAlarmResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    PutAlarmResult.struct_class = Types::PutAlarmResult

    PutInstancePublicPortsRequest.add_member(:port_infos, Shapes::ShapeRef.new(shape: PortInfoList, required: true, location_name: "portInfos"))
    PutInstancePublicPortsRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    PutInstancePublicPortsRequest.struct_class = Types::PutInstancePublicPortsRequest

    PutInstancePublicPortsResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    PutInstancePublicPortsResult.struct_class = Types::PutInstancePublicPortsResult

    QueryStringObject.add_member(:option, Shapes::ShapeRef.new(shape: boolean, location_name: "option"))
    QueryStringObject.add_member(:query_strings_allow_list, Shapes::ShapeRef.new(shape: StringList, location_name: "queryStringsAllowList"))
    QueryStringObject.struct_class = Types::QueryStringObject

    RebootInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    RebootInstanceRequest.struct_class = Types::RebootInstanceRequest

    RebootInstanceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    RebootInstanceResult.struct_class = Types::RebootInstanceResult

    RebootRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    RebootRelationalDatabaseRequest.struct_class = Types::RebootRelationalDatabaseRequest

    RebootRelationalDatabaseResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    RebootRelationalDatabaseResult.struct_class = Types::RebootRelationalDatabaseResult

    Region.add_member(:continent_code, Shapes::ShapeRef.new(shape: string, location_name: "continentCode"))
    Region.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    Region.add_member(:display_name, Shapes::ShapeRef.new(shape: string, location_name: "displayName"))
    Region.add_member(:name, Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "availabilityZones"))
    Region.add_member(:relational_database_availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "relationalDatabaseAvailabilityZones"))
    Region.struct_class = Types::Region

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    RelationalDatabase.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    RelationalDatabase.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    RelationalDatabase.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    RelationalDatabase.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    RelationalDatabase.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    RelationalDatabase.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RelationalDatabase.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    RelationalDatabase.add_member(:relational_database_blueprint_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "relationalDatabaseBlueprintId"))
    RelationalDatabase.add_member(:relational_database_bundle_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "relationalDatabaseBundleId"))
    RelationalDatabase.add_member(:master_database_name, Shapes::ShapeRef.new(shape: string, location_name: "masterDatabaseName"))
    RelationalDatabase.add_member(:hardware, Shapes::ShapeRef.new(shape: RelationalDatabaseHardware, location_name: "hardware"))
    RelationalDatabase.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "state"))
    RelationalDatabase.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: string, location_name: "secondaryAvailabilityZone"))
    RelationalDatabase.add_member(:backup_retention_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "backupRetentionEnabled"))
    RelationalDatabase.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedRelationalDatabaseValues, location_name: "pendingModifiedValues"))
    RelationalDatabase.add_member(:engine, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engine"))
    RelationalDatabase.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engineVersion"))
    RelationalDatabase.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: IsoDate, location_name: "latestRestorableTime"))
    RelationalDatabase.add_member(:master_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "masterUsername"))
    RelationalDatabase.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parameterApplyStatus"))
    RelationalDatabase.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "preferredBackupWindow"))
    RelationalDatabase.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "preferredMaintenanceWindow"))
    RelationalDatabase.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: boolean, location_name: "publiclyAccessible"))
    RelationalDatabase.add_member(:master_endpoint, Shapes::ShapeRef.new(shape: RelationalDatabaseEndpoint, location_name: "masterEndpoint"))
    RelationalDatabase.add_member(:pending_maintenance_actions, Shapes::ShapeRef.new(shape: PendingMaintenanceActionList, location_name: "pendingMaintenanceActions"))
    RelationalDatabase.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: string, location_name: "caCertificateIdentifier"))
    RelationalDatabase.struct_class = Types::RelationalDatabase

    RelationalDatabaseBlueprint.add_member(:blueprint_id, Shapes::ShapeRef.new(shape: string, location_name: "blueprintId"))
    RelationalDatabaseBlueprint.add_member(:engine, Shapes::ShapeRef.new(shape: RelationalDatabaseEngine, location_name: "engine"))
    RelationalDatabaseBlueprint.add_member(:engine_version, Shapes::ShapeRef.new(shape: string, location_name: "engineVersion"))
    RelationalDatabaseBlueprint.add_member(:engine_description, Shapes::ShapeRef.new(shape: string, location_name: "engineDescription"))
    RelationalDatabaseBlueprint.add_member(:engine_version_description, Shapes::ShapeRef.new(shape: string, location_name: "engineVersionDescription"))
    RelationalDatabaseBlueprint.add_member(:is_engine_default, Shapes::ShapeRef.new(shape: boolean, location_name: "isEngineDefault"))
    RelationalDatabaseBlueprint.struct_class = Types::RelationalDatabaseBlueprint

    RelationalDatabaseBlueprintList.member = Shapes::ShapeRef.new(shape: RelationalDatabaseBlueprint)

    RelationalDatabaseBundle.add_member(:bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "bundleId"))
    RelationalDatabaseBundle.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    RelationalDatabaseBundle.add_member(:price, Shapes::ShapeRef.new(shape: float, location_name: "price"))
    RelationalDatabaseBundle.add_member(:ram_size_in_gb, Shapes::ShapeRef.new(shape: float, location_name: "ramSizeInGb"))
    RelationalDatabaseBundle.add_member(:disk_size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "diskSizeInGb"))
    RelationalDatabaseBundle.add_member(:transfer_per_month_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "transferPerMonthInGb"))
    RelationalDatabaseBundle.add_member(:cpu_count, Shapes::ShapeRef.new(shape: integer, location_name: "cpuCount"))
    RelationalDatabaseBundle.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "isEncrypted"))
    RelationalDatabaseBundle.add_member(:is_active, Shapes::ShapeRef.new(shape: boolean, location_name: "isActive"))
    RelationalDatabaseBundle.struct_class = Types::RelationalDatabaseBundle

    RelationalDatabaseBundleList.member = Shapes::ShapeRef.new(shape: RelationalDatabaseBundle)

    RelationalDatabaseEndpoint.add_member(:port, Shapes::ShapeRef.new(shape: integer, location_name: "port"))
    RelationalDatabaseEndpoint.add_member(:address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "address"))
    RelationalDatabaseEndpoint.struct_class = Types::RelationalDatabaseEndpoint

    RelationalDatabaseEvent.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resource"))
    RelationalDatabaseEvent.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    RelationalDatabaseEvent.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    RelationalDatabaseEvent.add_member(:event_categories, Shapes::ShapeRef.new(shape: StringList, location_name: "eventCategories"))
    RelationalDatabaseEvent.struct_class = Types::RelationalDatabaseEvent

    RelationalDatabaseEventList.member = Shapes::ShapeRef.new(shape: RelationalDatabaseEvent)

    RelationalDatabaseHardware.add_member(:cpu_count, Shapes::ShapeRef.new(shape: integer, location_name: "cpuCount"))
    RelationalDatabaseHardware.add_member(:disk_size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "diskSizeInGb"))
    RelationalDatabaseHardware.add_member(:ram_size_in_gb, Shapes::ShapeRef.new(shape: float, location_name: "ramSizeInGb"))
    RelationalDatabaseHardware.struct_class = Types::RelationalDatabaseHardware

    RelationalDatabaseList.member = Shapes::ShapeRef.new(shape: RelationalDatabase)

    RelationalDatabaseParameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: string, location_name: "allowedValues"))
    RelationalDatabaseParameter.add_member(:apply_method, Shapes::ShapeRef.new(shape: string, location_name: "applyMethod"))
    RelationalDatabaseParameter.add_member(:apply_type, Shapes::ShapeRef.new(shape: string, location_name: "applyType"))
    RelationalDatabaseParameter.add_member(:data_type, Shapes::ShapeRef.new(shape: string, location_name: "dataType"))
    RelationalDatabaseParameter.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    RelationalDatabaseParameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: boolean, location_name: "isModifiable"))
    RelationalDatabaseParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: string, location_name: "parameterName"))
    RelationalDatabaseParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: string, location_name: "parameterValue"))
    RelationalDatabaseParameter.struct_class = Types::RelationalDatabaseParameter

    RelationalDatabaseParameterList.member = Shapes::ShapeRef.new(shape: RelationalDatabaseParameter)

    RelationalDatabaseSnapshot.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    RelationalDatabaseSnapshot.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    RelationalDatabaseSnapshot.add_member(:support_code, Shapes::ShapeRef.new(shape: string, location_name: "supportCode"))
    RelationalDatabaseSnapshot.add_member(:created_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    RelationalDatabaseSnapshot.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    RelationalDatabaseSnapshot.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RelationalDatabaseSnapshot.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    RelationalDatabaseSnapshot.add_member(:engine, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engine"))
    RelationalDatabaseSnapshot.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engineVersion"))
    RelationalDatabaseSnapshot.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: integer, location_name: "sizeInGb"))
    RelationalDatabaseSnapshot.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "state"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromRelationalDatabaseName"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromRelationalDatabaseArn"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "fromRelationalDatabaseBundleId"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_blueprint_id, Shapes::ShapeRef.new(shape: string, location_name: "fromRelationalDatabaseBlueprintId"))
    RelationalDatabaseSnapshot.struct_class = Types::RelationalDatabaseSnapshot

    RelationalDatabaseSnapshotList.member = Shapes::ShapeRef.new(shape: RelationalDatabaseSnapshot)

    ReleaseStaticIpRequest.add_member(:static_ip_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "staticIpName"))
    ReleaseStaticIpRequest.struct_class = Types::ReleaseStaticIpRequest

    ReleaseStaticIpResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    ReleaseStaticIpResult.struct_class = Types::ReleaseStaticIpResult

    RenewalSummary.add_member(:domain_validation_records, Shapes::ShapeRef.new(shape: DomainValidationRecordList, location_name: "domainValidationRecords"))
    RenewalSummary.add_member(:renewal_status, Shapes::ShapeRef.new(shape: RenewalStatus, location_name: "renewalStatus"))
    RenewalSummary.add_member(:renewal_status_reason, Shapes::ShapeRef.new(shape: RenewalStatusReason, location_name: "renewalStatusReason"))
    RenewalSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: IsoDate, location_name: "updatedAt"))
    RenewalSummary.struct_class = Types::RenewalSummary

    ResetDistributionCacheRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    ResetDistributionCacheRequest.struct_class = Types::ResetDistributionCacheRequest

    ResetDistributionCacheResult.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    ResetDistributionCacheResult.add_member(:create_time, Shapes::ShapeRef.new(shape: IsoDate, location_name: "createTime"))
    ResetDistributionCacheResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    ResetDistributionCacheResult.struct_class = Types::ResetDistributionCacheResult

    ResourceLocation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: string, location_name: "availabilityZone"))
    ResourceLocation.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    ResourceLocation.struct_class = Types::ResourceLocation

    ResourceNameList.member = Shapes::ShapeRef.new(shape: ResourceName)

    ResourceRecord.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    ResourceRecord.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "type"))
    ResourceRecord.add_member(:value, Shapes::ShapeRef.new(shape: string, location_name: "value"))
    ResourceRecord.struct_class = Types::ResourceRecord

    SendContactMethodVerificationRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: ContactMethodVerificationProtocol, required: true, location_name: "protocol"))
    SendContactMethodVerificationRequest.struct_class = Types::SendContactMethodVerificationRequest

    SendContactMethodVerificationResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    SendContactMethodVerificationResult.struct_class = Types::SendContactMethodVerificationResult

    ServiceException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    ServiceException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    ServiceException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    ServiceException.struct_class = Types::ServiceException

    StartInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "instanceName"))
    StartInstanceRequest.struct_class = Types::StartInstanceRequest

    StartInstanceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StartInstanceResult.struct_class = Types::StartInstanceResult

    StartRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    StartRelationalDatabaseRequest.struct_class = Types::StartRelationalDatabaseRequest

    StartRelationalDatabaseResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StartRelationalDatabaseResult.struct_class = Types::StartRelationalDatabaseResult

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

    StopRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    StopRelationalDatabaseRequest.add_member(:relational_database_snapshot_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName"))
    StopRelationalDatabaseRequest.struct_class = Types::StopRelationalDatabaseRequest

    StopRelationalDatabaseResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StopRelationalDatabaseResult.struct_class = Types::StopRelationalDatabaseResult

    StringList.member = Shapes::ShapeRef.new(shape: string)

    SubjectAlternativeNameList.member = Shapes::ShapeRef.new(shape: DomainName)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    TagResourceResult.struct_class = Types::TagResourceResult

    TestAlarmRequest.add_member(:alarm_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "alarmName"))
    TestAlarmRequest.add_member(:state, Shapes::ShapeRef.new(shape: AlarmState, required: true, location_name: "state"))
    TestAlarmRequest.struct_class = Types::TestAlarmRequest

    TestAlarmResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    TestAlarmResult.struct_class = Types::TestAlarmResult

    UnauthenticatedException.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    UnauthenticatedException.add_member(:docs, Shapes::ShapeRef.new(shape: string, location_name: "docs"))
    UnauthenticatedException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    UnauthenticatedException.add_member(:tip, Shapes::ShapeRef.new(shape: string, location_name: "tip"))
    UnauthenticatedException.struct_class = Types::UnauthenticatedException

    UnpeerVpcRequest.struct_class = Types::UnpeerVpcRequest

    UnpeerVpcResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UnpeerVpcResult.struct_class = Types::UnpeerVpcResult

    UntagResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "resourceName"))
    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateDistributionBundleRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    UpdateDistributionBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: string, location_name: "bundleId"))
    UpdateDistributionBundleRequest.struct_class = Types::UpdateDistributionBundleRequest

    UpdateDistributionBundleResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UpdateDistributionBundleResult.struct_class = Types::UpdateDistributionBundleResult

    UpdateDistributionRequest.add_member(:distribution_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "distributionName"))
    UpdateDistributionRequest.add_member(:origin, Shapes::ShapeRef.new(shape: InputOrigin, location_name: "origin"))
    UpdateDistributionRequest.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "defaultCacheBehavior"))
    UpdateDistributionRequest.add_member(:cache_behavior_settings, Shapes::ShapeRef.new(shape: CacheSettings, location_name: "cacheBehaviorSettings"))
    UpdateDistributionRequest.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "cacheBehaviors"))
    UpdateDistributionRequest.add_member(:is_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "isEnabled"))
    UpdateDistributionRequest.struct_class = Types::UpdateDistributionRequest

    UpdateDistributionResult.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UpdateDistributionResult.struct_class = Types::UpdateDistributionResult

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

    UpdateRelationalDatabaseParametersRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    UpdateRelationalDatabaseParametersRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: RelationalDatabaseParameterList, required: true, location_name: "parameters"))
    UpdateRelationalDatabaseParametersRequest.struct_class = Types::UpdateRelationalDatabaseParametersRequest

    UpdateRelationalDatabaseParametersResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateRelationalDatabaseParametersResult.struct_class = Types::UpdateRelationalDatabaseParametersResult

    UpdateRelationalDatabaseRequest.add_member(:relational_database_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "relationalDatabaseName"))
    UpdateRelationalDatabaseRequest.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "masterUserPassword"))
    UpdateRelationalDatabaseRequest.add_member(:rotate_master_user_password, Shapes::ShapeRef.new(shape: boolean, location_name: "rotateMasterUserPassword"))
    UpdateRelationalDatabaseRequest.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: string, location_name: "preferredBackupWindow"))
    UpdateRelationalDatabaseRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: string, location_name: "preferredMaintenanceWindow"))
    UpdateRelationalDatabaseRequest.add_member(:enable_backup_retention, Shapes::ShapeRef.new(shape: boolean, location_name: "enableBackupRetention"))
    UpdateRelationalDatabaseRequest.add_member(:disable_backup_retention, Shapes::ShapeRef.new(shape: boolean, location_name: "disableBackupRetention"))
    UpdateRelationalDatabaseRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: boolean, location_name: "publiclyAccessible"))
    UpdateRelationalDatabaseRequest.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: boolean, location_name: "applyImmediately"))
    UpdateRelationalDatabaseRequest.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: string, location_name: "caCertificateIdentifier"))
    UpdateRelationalDatabaseRequest.struct_class = Types::UpdateRelationalDatabaseRequest

    UpdateRelationalDatabaseResult.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateRelationalDatabaseResult.struct_class = Types::UpdateRelationalDatabaseResult


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

      api.add_operation(:attach_certificate_to_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachCertificateToDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachCertificateToDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachCertificateToDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:copy_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopySnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopySnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CopySnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCertificateResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_cloud_formation_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudFormationStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudFormationStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudFormationStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_contact_method, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactMethod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContactMethodRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactMethodResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:create_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:create_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRelationalDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_relational_database_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRelationalDatabaseFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRelationalDatabaseFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRelationalDatabaseFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:create_relational_database_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRelationalDatabaseSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRelationalDatabaseSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRelationalDatabaseSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAlarmResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_auto_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutoSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutoSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutoSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCertificateResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_contact_method, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactMethod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactMethodRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactMethodResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:delete_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:delete_known_host_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKnownHostKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteKnownHostKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKnownHostKeysResult)
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

      api.add_operation(:delete_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:delete_relational_database_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRelationalDatabaseSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:detach_certificate_from_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachCertificateFromDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachCertificateFromDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachCertificateFromDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:disable_add_on, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableAddOn"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableAddOnRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableAddOnResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:enable_add_on, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableAddOn"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableAddOnRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableAddOnResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:export_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportSnapshotResult)
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

      api.add_operation(:get_alarms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAlarms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAlarmsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAlarmsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_auto_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutoSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutoSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutoSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:get_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificatesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_cloud_formation_stack_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudFormationStackRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCloudFormationStackRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudFormationStackRecordsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_contact_methods, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactMethods"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContactMethodsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactMethodsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:get_distribution_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributionBundles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionBundlesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_distribution_latest_cache_reset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributionLatestCacheReset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionLatestCacheResetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionLatestCacheResetResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_distribution_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributionMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionMetricDataResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_distributions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:get_export_snapshot_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExportSnapshotRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExportSnapshotRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExportSnapshotRecordsResult)
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

      api.add_operation(:get_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseBlueprintsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseBundles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseBundlesResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseEventsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogEventsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_log_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseLogStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogStreamsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_master_user_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseMasterUserPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseMasterUserPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseMasterUserPasswordResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseMetricDataResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_database_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabaseSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:get_relational_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationalDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationalDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationalDatabasesResult)
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

      api.add_operation(:put_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAlarmResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:reboot_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootRelationalDatabaseResult)
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

      api.add_operation(:reset_distribution_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDistributionCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetDistributionCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetDistributionCacheResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:send_contact_method_verification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendContactMethodVerification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendContactMethodVerificationRequest)
        o.output = Shapes::ShapeRef.new(shape: SendContactMethodVerificationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:start_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRelationalDatabaseResult)
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

      api.add_operation(:stop_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: StopRelationalDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:test_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: TestAlarmResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:update_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:update_distribution_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDistributionBundle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDistributionBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDistributionBundleResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:update_relational_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRelationalDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthenticatedException)
      end)

      api.add_operation(:update_relational_database_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRelationalDatabaseParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseParametersResult)
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
