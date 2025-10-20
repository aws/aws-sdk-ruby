# frozen_string_literal: true

# This is generated code!

module Aws::Lightsail
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AccessDirection", name: "AccessDirection")
    AccessKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AccessKey", name: "AccessKey")
    AccessKeyLastUsed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AccessKeyLastUsed", name: "AccessKeyLastUsed")
    AccessKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AccessKeyList", name: "AccessKeyList")
    AccessReceiverList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AccessReceiverList", name: "AccessReceiverList")
    AccessRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AccessRules", name: "AccessRules")
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AccessType", name: "AccessType")
    AccountLevelBpaSync = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AccountLevelBpaSync", name: "AccountLevelBpaSync")
    AccountLevelBpaSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AccountLevelBpaSyncStatus", name: "AccountLevelBpaSyncStatus")
    AccountSetupInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AccountSetupInProgressException", name: "AccountSetupInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 428})
    AddOn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AddOn", name: "AddOn")
    AddOnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AddOnList", name: "AddOnList")
    AddOnRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AddOnRequest", name: "AddOnRequest")
    AddOnRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AddOnRequestList", name: "AddOnRequestList")
    AddOnType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AddOnType", name: "AddOnType")
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Alarm", name: "Alarm")
    AlarmState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AlarmState", name: "AlarmState")
    AlarmsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AlarmsList", name: "AlarmsList")
    AllocateStaticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AllocateStaticIpRequest", name: "AllocateStaticIpRequest")
    AllocateStaticIpResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AllocateStaticIpResult", name: "AllocateStaticIpResult")
    AppCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AppCategory", name: "AppCategory")
    AppCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AppCategoryList", name: "AppCategoryList")
    AttachCertificateToDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachCertificateToDistributionRequest", name: "AttachCertificateToDistributionRequest")
    AttachCertificateToDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachCertificateToDistributionResult", name: "AttachCertificateToDistributionResult")
    AttachDiskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachDiskRequest", name: "AttachDiskRequest")
    AttachDiskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachDiskResult", name: "AttachDiskResult")
    AttachInstancesToLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachInstancesToLoadBalancerRequest", name: "AttachInstancesToLoadBalancerRequest")
    AttachInstancesToLoadBalancerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachInstancesToLoadBalancerResult", name: "AttachInstancesToLoadBalancerResult")
    AttachLoadBalancerTlsCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachLoadBalancerTlsCertificateRequest", name: "AttachLoadBalancerTlsCertificateRequest")
    AttachLoadBalancerTlsCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachLoadBalancerTlsCertificateResult", name: "AttachLoadBalancerTlsCertificateResult")
    AttachStaticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachStaticIpRequest", name: "AttachStaticIpRequest")
    AttachStaticIpResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachStaticIpResult", name: "AttachStaticIpResult")
    AttachedDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AttachedDisk", name: "AttachedDisk")
    AttachedDiskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AttachedDiskList", name: "AttachedDiskList")
    AttachedDiskMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#AttachedDiskMap", name: "AttachedDiskMap")
    AutoMountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AutoMountStatus", name: "AutoMountStatus")
    AutoSnapshotAddOnRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AutoSnapshotAddOnRequest", name: "AutoSnapshotAddOnRequest")
    AutoSnapshotDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#AutoSnapshotDate", name: "AutoSnapshotDate", traits: {"smithy.api#pattern" => "^[0-9]{4}-[0-9]{2}-[0-9]{2}$"})
    AutoSnapshotDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AutoSnapshotDetails", name: "AutoSnapshotDetails")
    AutoSnapshotDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AutoSnapshotDetailsList", name: "AutoSnapshotDetailsList")
    AutoSnapshotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#AutoSnapshotStatus", name: "AutoSnapshotStatus")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#AvailabilityZoneList", name: "AvailabilityZoneList")
    BPAStatusMessage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#BPAStatusMessage", name: "BPAStatusMessage")
    Base64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#Base64", name: "Base64")
    BehaviorEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#BehaviorEnum", name: "BehaviorEnum")
    Blueprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Blueprint", name: "Blueprint")
    BlueprintList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#BlueprintList", name: "BlueprintList")
    BlueprintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#BlueprintType", name: "BlueprintType")
    Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Bucket", name: "Bucket")
    BucketAccessLogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#BucketAccessLogConfig", name: "BucketAccessLogConfig")
    BucketAccessLogPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#BucketAccessLogPrefix", name: "BucketAccessLogPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w/!.*')(-]+$"})
    BucketBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#BucketBundle", name: "BucketBundle")
    BucketBundleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#BucketBundleList", name: "BucketBundleList")
    BucketList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#BucketList", name: "BucketList")
    BucketMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#BucketMetricName", name: "BucketMetricName")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 54}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9-]{1,52}[a-z0-9]$"})
    BucketState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#BucketState", name: "BucketState")
    Bundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Bundle", name: "Bundle")
    BundleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#BundleList", name: "BundleList")
    CacheBehavior = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CacheBehavior", name: "CacheBehavior")
    CacheBehaviorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#CacheBehaviorList", name: "CacheBehaviorList")
    CacheBehaviorPerPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CacheBehaviorPerPath", name: "CacheBehaviorPerPath")
    CacheSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CacheSettings", name: "CacheSettings")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Certificate", name: "Certificate")
    CertificateDomainValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#CertificateDomainValidationStatus", name: "CertificateDomainValidationStatus")
    CertificateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#CertificateName", name: "CertificateName")
    CertificateProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#CertificateProvider", name: "CertificateProvider")
    CertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#CertificateStatus", name: "CertificateStatus")
    CertificateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#CertificateStatusList", name: "CertificateStatusList")
    CertificateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CertificateSummary", name: "CertificateSummary")
    CertificateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#CertificateSummaryList", name: "CertificateSummaryList")
    CloseInstancePublicPortsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CloseInstancePublicPortsRequest", name: "CloseInstancePublicPortsRequest")
    CloseInstancePublicPortsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CloseInstancePublicPortsResult", name: "CloseInstancePublicPortsResult")
    CloudFormationStackRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CloudFormationStackRecord", name: "CloudFormationStackRecord")
    CloudFormationStackRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#CloudFormationStackRecordList", name: "CloudFormationStackRecordList")
    CloudFormationStackRecordSourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CloudFormationStackRecordSourceInfo", name: "CloudFormationStackRecordSourceInfo")
    CloudFormationStackRecordSourceInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#CloudFormationStackRecordSourceInfoList", name: "CloudFormationStackRecordSourceInfoList")
    CloudFormationStackRecordSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#CloudFormationStackRecordSourceType", name: "CloudFormationStackRecordSourceType")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ComparisonOperator", name: "ComparisonOperator")
    ContactMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContactMethod", name: "ContactMethod")
    ContactMethodStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContactMethodStatus", name: "ContactMethodStatus")
    ContactMethodVerificationProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContactMethodVerificationProtocol", name: "ContactMethodVerificationProtocol")
    ContactMethodsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContactMethodsList", name: "ContactMethodsList")
    ContactProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContactProtocol", name: "ContactProtocol")
    ContactProtocolsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContactProtocolsList", name: "ContactProtocolsList")
    Container = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Container", name: "Container")
    ContainerImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerImage", name: "ContainerImage")
    ContainerImageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerImageList", name: "ContainerImageList")
    ContainerLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#ContainerLabel", name: "ContainerLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 53}, "smithy.api#pattern" => "^[a-z0-9]{1,2}|[a-z0-9][a-z0-9-]+[a-z0-9]$"})
    ContainerMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#ContainerMap", name: "ContainerMap")
    ContainerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#ContainerName", name: "ContainerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 53}, "smithy.api#pattern" => "^[a-z0-9]{1,2}|[a-z0-9][a-z0-9-]+[a-z0-9]$"})
    ContainerService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerService", name: "ContainerService")
    ContainerServiceDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceDeployment", name: "ContainerServiceDeployment")
    ContainerServiceDeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerServiceDeploymentList", name: "ContainerServiceDeploymentList")
    ContainerServiceDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceDeploymentRequest", name: "ContainerServiceDeploymentRequest")
    ContainerServiceDeploymentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContainerServiceDeploymentState", name: "ContainerServiceDeploymentState")
    ContainerServiceECRImagePullerRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceECRImagePullerRole", name: "ContainerServiceECRImagePullerRole")
    ContainerServiceECRImagePullerRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceECRImagePullerRoleRequest", name: "ContainerServiceECRImagePullerRoleRequest")
    ContainerServiceEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceEndpoint", name: "ContainerServiceEndpoint")
    ContainerServiceHealthCheckConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceHealthCheckConfig", name: "ContainerServiceHealthCheckConfig")
    ContainerServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerServiceList", name: "ContainerServiceList")
    ContainerServiceLogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceLogEvent", name: "ContainerServiceLogEvent")
    ContainerServiceLogEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerServiceLogEventList", name: "ContainerServiceLogEventList")
    ContainerServiceMetadataEntry = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#ContainerServiceMetadataEntry", name: "ContainerServiceMetadataEntry")
    ContainerServiceMetadataEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerServiceMetadataEntryList", name: "ContainerServiceMetadataEntryList")
    ContainerServiceMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContainerServiceMetricName", name: "ContainerServiceMetricName")
    ContainerServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#ContainerServiceName", name: "ContainerServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]{1,2}|[a-z0-9][a-z0-9-]+[a-z0-9]$"})
    ContainerServicePower = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServicePower", name: "ContainerServicePower")
    ContainerServicePowerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerServicePowerList", name: "ContainerServicePowerList")
    ContainerServicePowerName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContainerServicePowerName", name: "ContainerServicePowerName")
    ContainerServiceProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContainerServiceProtocol", name: "ContainerServiceProtocol")
    ContainerServicePublicDomains = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#ContainerServicePublicDomains", name: "ContainerServicePublicDomains")
    ContainerServicePublicDomainsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ContainerServicePublicDomainsList", name: "ContainerServicePublicDomainsList")
    ContainerServiceRegistryLogin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceRegistryLogin", name: "ContainerServiceRegistryLogin")
    ContainerServiceScale = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lightsail#ContainerServiceScale", name: "ContainerServiceScale", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ContainerServiceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContainerServiceState", name: "ContainerServiceState")
    ContainerServiceStateDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServiceStateDetail", name: "ContainerServiceStateDetail")
    ContainerServiceStateDetailCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ContainerServiceStateDetailCode", name: "ContainerServiceStateDetailCode")
    ContainerServicesListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ContainerServicesListResult", name: "ContainerServicesListResult")
    CookieObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CookieObject", name: "CookieObject")
    CopySnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CopySnapshotRequest", name: "CopySnapshotRequest")
    CopySnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CopySnapshotResult", name: "CopySnapshotResult")
    CostEstimate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CostEstimate", name: "CostEstimate")
    CostEstimates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#CostEstimates", name: "CostEstimates")
    CreateBucketAccessKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateBucketAccessKeyRequest", name: "CreateBucketAccessKeyRequest")
    CreateBucketAccessKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateBucketAccessKeyResult", name: "CreateBucketAccessKeyResult")
    CreateBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateBucketRequest", name: "CreateBucketRequest")
    CreateBucketResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateBucketResult", name: "CreateBucketResult")
    CreateCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateCertificateRequest", name: "CreateCertificateRequest")
    CreateCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateCertificateResult", name: "CreateCertificateResult")
    CreateCloudFormationStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateCloudFormationStackRequest", name: "CreateCloudFormationStackRequest")
    CreateCloudFormationStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateCloudFormationStackResult", name: "CreateCloudFormationStackResult")
    CreateContactMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContactMethodRequest", name: "CreateContactMethodRequest")
    CreateContactMethodResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContactMethodResult", name: "CreateContactMethodResult")
    CreateContainerServiceDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContainerServiceDeploymentRequest", name: "CreateContainerServiceDeploymentRequest")
    CreateContainerServiceDeploymentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContainerServiceDeploymentResult", name: "CreateContainerServiceDeploymentResult")
    CreateContainerServiceRegistryLoginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContainerServiceRegistryLoginRequest", name: "CreateContainerServiceRegistryLoginRequest")
    CreateContainerServiceRegistryLoginResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContainerServiceRegistryLoginResult", name: "CreateContainerServiceRegistryLoginResult")
    CreateContainerServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContainerServiceRequest", name: "CreateContainerServiceRequest")
    CreateContainerServiceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateContainerServiceResult", name: "CreateContainerServiceResult")
    CreateDiskFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDiskFromSnapshotRequest", name: "CreateDiskFromSnapshotRequest")
    CreateDiskFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDiskFromSnapshotResult", name: "CreateDiskFromSnapshotResult")
    CreateDiskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDiskRequest", name: "CreateDiskRequest")
    CreateDiskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDiskResult", name: "CreateDiskResult")
    CreateDiskSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDiskSnapshotRequest", name: "CreateDiskSnapshotRequest")
    CreateDiskSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDiskSnapshotResult", name: "CreateDiskSnapshotResult")
    CreateDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDistributionRequest", name: "CreateDistributionRequest")
    CreateDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDistributionResult", name: "CreateDistributionResult")
    CreateDomainEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDomainEntryRequest", name: "CreateDomainEntryRequest")
    CreateDomainEntryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDomainEntryResult", name: "CreateDomainEntryResult")
    CreateDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDomainRequest", name: "CreateDomainRequest")
    CreateDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateDomainResult", name: "CreateDomainResult")
    CreateGUISessionAccessDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateGUISessionAccessDetailsRequest", name: "CreateGUISessionAccessDetailsRequest")
    CreateGUISessionAccessDetailsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateGUISessionAccessDetailsResult", name: "CreateGUISessionAccessDetailsResult")
    CreateInstanceSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateInstanceSnapshotRequest", name: "CreateInstanceSnapshotRequest")
    CreateInstanceSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateInstanceSnapshotResult", name: "CreateInstanceSnapshotResult")
    CreateInstancesFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateInstancesFromSnapshotRequest", name: "CreateInstancesFromSnapshotRequest")
    CreateInstancesFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateInstancesFromSnapshotResult", name: "CreateInstancesFromSnapshotResult")
    CreateInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateInstancesRequest", name: "CreateInstancesRequest")
    CreateInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateInstancesResult", name: "CreateInstancesResult")
    CreateKeyPairRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateKeyPairRequest", name: "CreateKeyPairRequest")
    CreateKeyPairResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateKeyPairResult", name: "CreateKeyPairResult")
    CreateLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateLoadBalancerRequest", name: "CreateLoadBalancerRequest")
    CreateLoadBalancerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateLoadBalancerResult", name: "CreateLoadBalancerResult")
    CreateLoadBalancerTlsCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateLoadBalancerTlsCertificateRequest", name: "CreateLoadBalancerTlsCertificateRequest")
    CreateLoadBalancerTlsCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateLoadBalancerTlsCertificateResult", name: "CreateLoadBalancerTlsCertificateResult")
    CreateRelationalDatabaseFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateRelationalDatabaseFromSnapshotRequest", name: "CreateRelationalDatabaseFromSnapshotRequest")
    CreateRelationalDatabaseFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateRelationalDatabaseFromSnapshotResult", name: "CreateRelationalDatabaseFromSnapshotResult")
    CreateRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateRelationalDatabaseRequest", name: "CreateRelationalDatabaseRequest")
    CreateRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateRelationalDatabaseResult", name: "CreateRelationalDatabaseResult")
    CreateRelationalDatabaseSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateRelationalDatabaseSnapshotRequest", name: "CreateRelationalDatabaseSnapshotRequest")
    CreateRelationalDatabaseSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#CreateRelationalDatabaseSnapshotResult", name: "CreateRelationalDatabaseSnapshotResult")
    Currency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#Currency", name: "Currency")
    DeleteAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteAlarmRequest", name: "DeleteAlarmRequest")
    DeleteAlarmResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteAlarmResult", name: "DeleteAlarmResult")
    DeleteAutoSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteAutoSnapshotRequest", name: "DeleteAutoSnapshotRequest")
    DeleteAutoSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteAutoSnapshotResult", name: "DeleteAutoSnapshotResult")
    DeleteBucketAccessKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteBucketAccessKeyRequest", name: "DeleteBucketAccessKeyRequest")
    DeleteBucketAccessKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteBucketAccessKeyResult", name: "DeleteBucketAccessKeyResult")
    DeleteBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteBucketRequest", name: "DeleteBucketRequest")
    DeleteBucketResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteBucketResult", name: "DeleteBucketResult")
    DeleteCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteCertificateRequest", name: "DeleteCertificateRequest")
    DeleteCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteCertificateResult", name: "DeleteCertificateResult")
    DeleteContactMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteContactMethodRequest", name: "DeleteContactMethodRequest")
    DeleteContactMethodResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteContactMethodResult", name: "DeleteContactMethodResult")
    DeleteContainerImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteContainerImageRequest", name: "DeleteContainerImageRequest")
    DeleteContainerImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteContainerImageResult", name: "DeleteContainerImageResult")
    DeleteContainerServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteContainerServiceRequest", name: "DeleteContainerServiceRequest")
    DeleteContainerServiceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteContainerServiceResult", name: "DeleteContainerServiceResult")
    DeleteDiskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDiskRequest", name: "DeleteDiskRequest")
    DeleteDiskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDiskResult", name: "DeleteDiskResult")
    DeleteDiskSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDiskSnapshotRequest", name: "DeleteDiskSnapshotRequest")
    DeleteDiskSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDiskSnapshotResult", name: "DeleteDiskSnapshotResult")
    DeleteDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDistributionRequest", name: "DeleteDistributionRequest")
    DeleteDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDistributionResult", name: "DeleteDistributionResult")
    DeleteDomainEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDomainEntryRequest", name: "DeleteDomainEntryRequest")
    DeleteDomainEntryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDomainEntryResult", name: "DeleteDomainEntryResult")
    DeleteDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDomainRequest", name: "DeleteDomainRequest")
    DeleteDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteDomainResult", name: "DeleteDomainResult")
    DeleteInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteInstanceRequest", name: "DeleteInstanceRequest")
    DeleteInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteInstanceResult", name: "DeleteInstanceResult")
    DeleteInstanceSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteInstanceSnapshotRequest", name: "DeleteInstanceSnapshotRequest")
    DeleteInstanceSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteInstanceSnapshotResult", name: "DeleteInstanceSnapshotResult")
    DeleteKeyPairRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteKeyPairRequest", name: "DeleteKeyPairRequest")
    DeleteKeyPairResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteKeyPairResult", name: "DeleteKeyPairResult")
    DeleteKnownHostKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteKnownHostKeysRequest", name: "DeleteKnownHostKeysRequest")
    DeleteKnownHostKeysResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteKnownHostKeysResult", name: "DeleteKnownHostKeysResult")
    DeleteLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteLoadBalancerRequest", name: "DeleteLoadBalancerRequest")
    DeleteLoadBalancerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteLoadBalancerResult", name: "DeleteLoadBalancerResult")
    DeleteLoadBalancerTlsCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteLoadBalancerTlsCertificateRequest", name: "DeleteLoadBalancerTlsCertificateRequest")
    DeleteLoadBalancerTlsCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteLoadBalancerTlsCertificateResult", name: "DeleteLoadBalancerTlsCertificateResult")
    DeleteRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteRelationalDatabaseRequest", name: "DeleteRelationalDatabaseRequest")
    DeleteRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteRelationalDatabaseResult", name: "DeleteRelationalDatabaseResult")
    DeleteRelationalDatabaseSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteRelationalDatabaseSnapshotRequest", name: "DeleteRelationalDatabaseSnapshotRequest")
    DeleteRelationalDatabaseSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DeleteRelationalDatabaseSnapshotResult", name: "DeleteRelationalDatabaseSnapshotResult")
    DestinationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DestinationInfo", name: "DestinationInfo")
    DetachCertificateFromDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachCertificateFromDistributionRequest", name: "DetachCertificateFromDistributionRequest")
    DetachCertificateFromDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachCertificateFromDistributionResult", name: "DetachCertificateFromDistributionResult")
    DetachDiskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachDiskRequest", name: "DetachDiskRequest")
    DetachDiskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachDiskResult", name: "DetachDiskResult")
    DetachInstancesFromLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachInstancesFromLoadBalancerRequest", name: "DetachInstancesFromLoadBalancerRequest")
    DetachInstancesFromLoadBalancerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachInstancesFromLoadBalancerResult", name: "DetachInstancesFromLoadBalancerResult")
    DetachStaticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachStaticIpRequest", name: "DetachStaticIpRequest")
    DetachStaticIpResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DetachStaticIpResult", name: "DetachStaticIpResult")
    DisableAddOnRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DisableAddOnRequest", name: "DisableAddOnRequest")
    DisableAddOnResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DisableAddOnResult", name: "DisableAddOnResult")
    Disk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Disk", name: "Disk")
    DiskInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DiskInfo", name: "DiskInfo")
    DiskInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DiskInfoList", name: "DiskInfoList")
    DiskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DiskList", name: "DiskList")
    DiskMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DiskMap", name: "DiskMap")
    DiskMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DiskMapList", name: "DiskMapList")
    DiskSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DiskSnapshot", name: "DiskSnapshot")
    DiskSnapshotInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DiskSnapshotInfo", name: "DiskSnapshotInfo")
    DiskSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DiskSnapshotList", name: "DiskSnapshotList")
    DiskSnapshotState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#DiskSnapshotState", name: "DiskSnapshotState")
    DiskState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#DiskState", name: "DiskState")
    DistributionBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DistributionBundle", name: "DistributionBundle")
    DistributionBundleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DistributionBundleList", name: "DistributionBundleList")
    DistributionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DistributionList", name: "DistributionList")
    DistributionMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#DistributionMetricName", name: "DistributionMetricName")
    DnsRecordCreationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DnsRecordCreationState", name: "DnsRecordCreationState")
    DnsRecordCreationStateCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#DnsRecordCreationStateCode", name: "DnsRecordCreationStateCode")
    Domain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Domain", name: "Domain")
    DomainEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DomainEntry", name: "DomainEntry")
    DomainEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DomainEntryList", name: "DomainEntryList")
    DomainEntryOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#DomainEntryOptions", name: "DomainEntryOptions")
    DomainEntryOptionsKeys = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#DomainEntryOptionsKeys", name: "DomainEntryOptionsKeys")
    DomainEntryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#DomainEntryType", name: "DomainEntryType")
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DomainList", name: "DomainList")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#DomainName", name: "DomainName")
    DomainNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DomainNameList", name: "DomainNameList")
    DomainValidationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DomainValidationRecord", name: "DomainValidationRecord")
    DomainValidationRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#DomainValidationRecordList", name: "DomainValidationRecordList")
    DownloadDefaultKeyPairRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DownloadDefaultKeyPairRequest", name: "DownloadDefaultKeyPairRequest")
    DownloadDefaultKeyPairResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#DownloadDefaultKeyPairResult", name: "DownloadDefaultKeyPairResult")
    EligibleToRenew = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#EligibleToRenew", name: "EligibleToRenew")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#EmailAddress", name: "EmailAddress", traits: {"smithy.api#length" => {"min" => 6, "max" => 254}, "smithy.api#pattern" => "^[\\w!\#$%&.'*+\\/=?^_\\x60{|}~\\-]{1,64}@[a-zA-Z0-9\\-]{1,63}(\\.[a-zA-Z0-9\\-]{1,63}){0,8}(\\.[a-zA-Z]{2,63})$", "smithy.api#sensitive" => {}})
    EnableAddOnRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#EnableAddOnRequest", name: "EnableAddOnRequest")
    EnableAddOnResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#EnableAddOnResult", name: "EnableAddOnResult")
    EndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#EndpointRequest", name: "EndpointRequest")
    Environment = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#Environment", name: "Environment")
    EstimateByTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#EstimateByTime", name: "EstimateByTime")
    EstimatesByTime = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#EstimatesByTime", name: "EstimatesByTime")
    ExportSnapshotRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ExportSnapshotRecord", name: "ExportSnapshotRecord")
    ExportSnapshotRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ExportSnapshotRecordList", name: "ExportSnapshotRecordList")
    ExportSnapshotRecordSourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ExportSnapshotRecordSourceInfo", name: "ExportSnapshotRecordSourceInfo")
    ExportSnapshotRecordSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ExportSnapshotRecordSourceType", name: "ExportSnapshotRecordSourceType")
    ExportSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ExportSnapshotRequest", name: "ExportSnapshotRequest")
    ExportSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ExportSnapshotResult", name: "ExportSnapshotResult")
    ForwardValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ForwardValues", name: "ForwardValues")
    GetActiveNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetActiveNamesRequest", name: "GetActiveNamesRequest")
    GetActiveNamesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetActiveNamesResult", name: "GetActiveNamesResult")
    GetAlarmsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetAlarmsRequest", name: "GetAlarmsRequest")
    GetAlarmsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetAlarmsResult", name: "GetAlarmsResult")
    GetAutoSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetAutoSnapshotsRequest", name: "GetAutoSnapshotsRequest")
    GetAutoSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetAutoSnapshotsResult", name: "GetAutoSnapshotsResult")
    GetBlueprintsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBlueprintsRequest", name: "GetBlueprintsRequest")
    GetBlueprintsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBlueprintsResult", name: "GetBlueprintsResult")
    GetBucketAccessKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketAccessKeysRequest", name: "GetBucketAccessKeysRequest")
    GetBucketAccessKeysResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketAccessKeysResult", name: "GetBucketAccessKeysResult")
    GetBucketBundlesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketBundlesRequest", name: "GetBucketBundlesRequest")
    GetBucketBundlesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketBundlesResult", name: "GetBucketBundlesResult")
    GetBucketMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketMetricDataRequest", name: "GetBucketMetricDataRequest")
    GetBucketMetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketMetricDataResult", name: "GetBucketMetricDataResult")
    GetBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketsRequest", name: "GetBucketsRequest")
    GetBucketsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBucketsResult", name: "GetBucketsResult")
    GetBundlesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBundlesRequest", name: "GetBundlesRequest")
    GetBundlesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetBundlesResult", name: "GetBundlesResult")
    GetCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetCertificatesRequest", name: "GetCertificatesRequest")
    GetCertificatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetCertificatesResult", name: "GetCertificatesResult")
    GetCloudFormationStackRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetCloudFormationStackRecordsRequest", name: "GetCloudFormationStackRecordsRequest")
    GetCloudFormationStackRecordsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetCloudFormationStackRecordsResult", name: "GetCloudFormationStackRecordsResult")
    GetContactMethodsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContactMethodsRequest", name: "GetContactMethodsRequest")
    GetContactMethodsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContactMethodsResult", name: "GetContactMethodsResult")
    GetContainerAPIMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerAPIMetadataRequest", name: "GetContainerAPIMetadataRequest")
    GetContainerAPIMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerAPIMetadataResult", name: "GetContainerAPIMetadataResult")
    GetContainerImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerImagesRequest", name: "GetContainerImagesRequest")
    GetContainerImagesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerImagesResult", name: "GetContainerImagesResult")
    GetContainerLogRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerLogRequest", name: "GetContainerLogRequest")
    GetContainerLogResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerLogResult", name: "GetContainerLogResult")
    GetContainerServiceDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServiceDeploymentsRequest", name: "GetContainerServiceDeploymentsRequest")
    GetContainerServiceDeploymentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServiceDeploymentsResult", name: "GetContainerServiceDeploymentsResult")
    GetContainerServiceMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServiceMetricDataRequest", name: "GetContainerServiceMetricDataRequest")
    GetContainerServiceMetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServiceMetricDataResult", name: "GetContainerServiceMetricDataResult")
    GetContainerServicePowersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServicePowersRequest", name: "GetContainerServicePowersRequest")
    GetContainerServicePowersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServicePowersResult", name: "GetContainerServicePowersResult")
    GetContainerServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetContainerServicesRequest", name: "GetContainerServicesRequest")
    GetCostEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetCostEstimateRequest", name: "GetCostEstimateRequest")
    GetCostEstimateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetCostEstimateResult", name: "GetCostEstimateResult")
    GetDiskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDiskRequest", name: "GetDiskRequest")
    GetDiskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDiskResult", name: "GetDiskResult")
    GetDiskSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDiskSnapshotRequest", name: "GetDiskSnapshotRequest")
    GetDiskSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDiskSnapshotResult", name: "GetDiskSnapshotResult")
    GetDiskSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDiskSnapshotsRequest", name: "GetDiskSnapshotsRequest")
    GetDiskSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDiskSnapshotsResult", name: "GetDiskSnapshotsResult")
    GetDisksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDisksRequest", name: "GetDisksRequest")
    GetDisksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDisksResult", name: "GetDisksResult")
    GetDistributionBundlesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionBundlesRequest", name: "GetDistributionBundlesRequest")
    GetDistributionBundlesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionBundlesResult", name: "GetDistributionBundlesResult")
    GetDistributionLatestCacheResetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionLatestCacheResetRequest", name: "GetDistributionLatestCacheResetRequest")
    GetDistributionLatestCacheResetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionLatestCacheResetResult", name: "GetDistributionLatestCacheResetResult")
    GetDistributionMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionMetricDataRequest", name: "GetDistributionMetricDataRequest")
    GetDistributionMetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionMetricDataResult", name: "GetDistributionMetricDataResult")
    GetDistributionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionsRequest", name: "GetDistributionsRequest")
    GetDistributionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDistributionsResult", name: "GetDistributionsResult")
    GetDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDomainRequest", name: "GetDomainRequest")
    GetDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDomainResult", name: "GetDomainResult")
    GetDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDomainsRequest", name: "GetDomainsRequest")
    GetDomainsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetDomainsResult", name: "GetDomainsResult")
    GetExportSnapshotRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetExportSnapshotRecordsRequest", name: "GetExportSnapshotRecordsRequest")
    GetExportSnapshotRecordsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetExportSnapshotRecordsResult", name: "GetExportSnapshotRecordsResult")
    GetInstanceAccessDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceAccessDetailsRequest", name: "GetInstanceAccessDetailsRequest")
    GetInstanceAccessDetailsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceAccessDetailsResult", name: "GetInstanceAccessDetailsResult")
    GetInstanceMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceMetricDataRequest", name: "GetInstanceMetricDataRequest")
    GetInstanceMetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceMetricDataResult", name: "GetInstanceMetricDataResult")
    GetInstancePortStatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstancePortStatesRequest", name: "GetInstancePortStatesRequest")
    GetInstancePortStatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstancePortStatesResult", name: "GetInstancePortStatesResult")
    GetInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceRequest", name: "GetInstanceRequest")
    GetInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceResult", name: "GetInstanceResult")
    GetInstanceSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceSnapshotRequest", name: "GetInstanceSnapshotRequest")
    GetInstanceSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceSnapshotResult", name: "GetInstanceSnapshotResult")
    GetInstanceSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceSnapshotsRequest", name: "GetInstanceSnapshotsRequest")
    GetInstanceSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceSnapshotsResult", name: "GetInstanceSnapshotsResult")
    GetInstanceStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceStateRequest", name: "GetInstanceStateRequest")
    GetInstanceStateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstanceStateResult", name: "GetInstanceStateResult")
    GetInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstancesRequest", name: "GetInstancesRequest")
    GetInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetInstancesResult", name: "GetInstancesResult")
    GetKeyPairRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetKeyPairRequest", name: "GetKeyPairRequest")
    GetKeyPairResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetKeyPairResult", name: "GetKeyPairResult")
    GetKeyPairsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetKeyPairsRequest", name: "GetKeyPairsRequest")
    GetKeyPairsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetKeyPairsResult", name: "GetKeyPairsResult")
    GetLoadBalancerMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerMetricDataRequest", name: "GetLoadBalancerMetricDataRequest")
    GetLoadBalancerMetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerMetricDataResult", name: "GetLoadBalancerMetricDataResult")
    GetLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerRequest", name: "GetLoadBalancerRequest")
    GetLoadBalancerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerResult", name: "GetLoadBalancerResult")
    GetLoadBalancerTlsCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerTlsCertificatesRequest", name: "GetLoadBalancerTlsCertificatesRequest")
    GetLoadBalancerTlsCertificatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerTlsCertificatesResult", name: "GetLoadBalancerTlsCertificatesResult")
    GetLoadBalancerTlsPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerTlsPoliciesRequest", name: "GetLoadBalancerTlsPoliciesRequest")
    GetLoadBalancerTlsPoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancerTlsPoliciesResult", name: "GetLoadBalancerTlsPoliciesResult")
    GetLoadBalancersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancersRequest", name: "GetLoadBalancersRequest")
    GetLoadBalancersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetLoadBalancersResult", name: "GetLoadBalancersResult")
    GetOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetOperationRequest", name: "GetOperationRequest")
    GetOperationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetOperationResult", name: "GetOperationResult")
    GetOperationsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetOperationsForResourceRequest", name: "GetOperationsForResourceRequest")
    GetOperationsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetOperationsForResourceResult", name: "GetOperationsForResourceResult")
    GetOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetOperationsRequest", name: "GetOperationsRequest")
    GetOperationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetOperationsResult", name: "GetOperationsResult")
    GetRegionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRegionsRequest", name: "GetRegionsRequest")
    GetRegionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRegionsResult", name: "GetRegionsResult")
    GetRelationalDatabaseBlueprintsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseBlueprintsRequest", name: "GetRelationalDatabaseBlueprintsRequest")
    GetRelationalDatabaseBlueprintsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseBlueprintsResult", name: "GetRelationalDatabaseBlueprintsResult")
    GetRelationalDatabaseBundlesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseBundlesRequest", name: "GetRelationalDatabaseBundlesRequest")
    GetRelationalDatabaseBundlesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseBundlesResult", name: "GetRelationalDatabaseBundlesResult")
    GetRelationalDatabaseEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseEventsRequest", name: "GetRelationalDatabaseEventsRequest")
    GetRelationalDatabaseEventsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseEventsResult", name: "GetRelationalDatabaseEventsResult")
    GetRelationalDatabaseLogEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseLogEventsRequest", name: "GetRelationalDatabaseLogEventsRequest")
    GetRelationalDatabaseLogEventsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseLogEventsResult", name: "GetRelationalDatabaseLogEventsResult")
    GetRelationalDatabaseLogStreamsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseLogStreamsRequest", name: "GetRelationalDatabaseLogStreamsRequest")
    GetRelationalDatabaseLogStreamsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseLogStreamsResult", name: "GetRelationalDatabaseLogStreamsResult")
    GetRelationalDatabaseMasterUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseMasterUserPasswordRequest", name: "GetRelationalDatabaseMasterUserPasswordRequest")
    GetRelationalDatabaseMasterUserPasswordResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseMasterUserPasswordResult", name: "GetRelationalDatabaseMasterUserPasswordResult")
    GetRelationalDatabaseMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseMetricDataRequest", name: "GetRelationalDatabaseMetricDataRequest")
    GetRelationalDatabaseMetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseMetricDataResult", name: "GetRelationalDatabaseMetricDataResult")
    GetRelationalDatabaseParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseParametersRequest", name: "GetRelationalDatabaseParametersRequest")
    GetRelationalDatabaseParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseParametersResult", name: "GetRelationalDatabaseParametersResult")
    GetRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseRequest", name: "GetRelationalDatabaseRequest")
    GetRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseResult", name: "GetRelationalDatabaseResult")
    GetRelationalDatabaseSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseSnapshotRequest", name: "GetRelationalDatabaseSnapshotRequest")
    GetRelationalDatabaseSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseSnapshotResult", name: "GetRelationalDatabaseSnapshotResult")
    GetRelationalDatabaseSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseSnapshotsRequest", name: "GetRelationalDatabaseSnapshotsRequest")
    GetRelationalDatabaseSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabaseSnapshotsResult", name: "GetRelationalDatabaseSnapshotsResult")
    GetRelationalDatabasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabasesRequest", name: "GetRelationalDatabasesRequest")
    GetRelationalDatabasesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetRelationalDatabasesResult", name: "GetRelationalDatabasesResult")
    GetSetupHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetSetupHistoryRequest", name: "GetSetupHistoryRequest")
    GetSetupHistoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetSetupHistoryResult", name: "GetSetupHistoryResult")
    GetStaticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetStaticIpRequest", name: "GetStaticIpRequest")
    GetStaticIpResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetStaticIpResult", name: "GetStaticIpResult")
    GetStaticIpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetStaticIpsRequest", name: "GetStaticIpsRequest")
    GetStaticIpsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#GetStaticIpsResult", name: "GetStaticIpsResult")
    HeaderEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#HeaderEnum", name: "HeaderEnum")
    HeaderForwardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#HeaderForwardList", name: "HeaderForwardList")
    HeaderObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#HeaderObject", name: "HeaderObject")
    HostKeyAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#HostKeyAttributes", name: "HostKeyAttributes")
    HostKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#HostKeysList", name: "HostKeysList")
    HttpEndpoint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#HttpEndpoint", name: "HttpEndpoint")
    HttpProtocolIpv6 = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#HttpProtocolIpv6", name: "HttpProtocolIpv6")
    HttpTokens = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#HttpTokens", name: "HttpTokens")
    IAMAccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#IAMAccessKeyId", name: "IAMAccessKeyId", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^[A-Z0-9]{20}$", "smithy.api#sensitive" => {}})
    ImportKeyPairRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ImportKeyPairRequest", name: "ImportKeyPairRequest")
    ImportKeyPairResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ImportKeyPairResult", name: "ImportKeyPairResult")
    InUseResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lightsail#InUseResourceCount", name: "InUseResourceCount", traits: {"smithy.api#default" => 0})
    IncludeCertificateDetails = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lightsail#IncludeCertificateDetails", name: "IncludeCertificateDetails", traits: {"smithy.api#default" => false})
    InputOrigin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InputOrigin", name: "InputOrigin")
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Instance", name: "Instance")
    InstanceAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceAccessDetails", name: "InstanceAccessDetails")
    InstanceAccessProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstanceAccessProtocol", name: "InstanceAccessProtocol")
    InstanceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceEntry", name: "InstanceEntry")
    InstanceEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstanceEntryList", name: "InstanceEntryList")
    InstanceHardware = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceHardware", name: "InstanceHardware")
    InstanceHealthReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstanceHealthReason", name: "InstanceHealthReason")
    InstanceHealthState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstanceHealthState", name: "InstanceHealthState")
    InstanceHealthSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceHealthSummary", name: "InstanceHealthSummary")
    InstanceHealthSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstanceHealthSummaryList", name: "InstanceHealthSummaryList")
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstanceList", name: "InstanceList")
    InstanceMetadataOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceMetadataOptions", name: "InstanceMetadataOptions")
    InstanceMetadataState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstanceMetadataState", name: "InstanceMetadataState")
    InstanceMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstanceMetricName", name: "InstanceMetricName")
    InstanceNetworking = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceNetworking", name: "InstanceNetworking")
    InstancePlatform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstancePlatform", name: "InstancePlatform")
    InstancePlatformList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstancePlatformList", name: "InstancePlatformList")
    InstancePortInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstancePortInfo", name: "InstancePortInfo")
    InstancePortInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstancePortInfoList", name: "InstancePortInfoList")
    InstancePortState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstancePortState", name: "InstancePortState")
    InstancePortStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstancePortStateList", name: "InstancePortStateList")
    InstanceSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceSnapshot", name: "InstanceSnapshot")
    InstanceSnapshotInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceSnapshotInfo", name: "InstanceSnapshotInfo")
    InstanceSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#InstanceSnapshotList", name: "InstanceSnapshotList")
    InstanceSnapshotState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#InstanceSnapshotState", name: "InstanceSnapshotState")
    InstanceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InstanceState", name: "InstanceState")
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#IpAddress", name: "IpAddress", traits: {"smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}$"})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#IpAddressType", name: "IpAddressType")
    Ipv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#Ipv6Address", name: "Ipv6Address", traits: {"smithy.api#pattern" => "^([A-F0-9]{1,4}:){7}[A-F0-9]{1,4}$"})
    Ipv6AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#Ipv6AddressList", name: "Ipv6AddressList")
    IsVpcPeeredRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#IsVpcPeeredRequest", name: "IsVpcPeeredRequest")
    IsVpcPeeredResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#IsVpcPeeredResult", name: "IsVpcPeeredResult")
    IsoDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lightsail#IsoDate", name: "IsoDate")
    IssuerCA = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#IssuerCA", name: "IssuerCA")
    KeyAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#KeyAlgorithm", name: "KeyAlgorithm")
    KeyPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#KeyPair", name: "KeyPair")
    KeyPairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#KeyPairList", name: "KeyPairList")
    LightsailDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LightsailDistribution", name: "LightsailDistribution")
    LoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancer", name: "LoadBalancer")
    LoadBalancerAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerAttributeName", name: "LoadBalancerAttributeName")
    LoadBalancerConfigurationOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#LoadBalancerConfigurationOptions", name: "LoadBalancerConfigurationOptions")
    LoadBalancerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LoadBalancerList", name: "LoadBalancerList")
    LoadBalancerMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerMetricName", name: "LoadBalancerMetricName")
    LoadBalancerProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerProtocol", name: "LoadBalancerProtocol")
    LoadBalancerState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerState", name: "LoadBalancerState")
    LoadBalancerTlsCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificate", name: "LoadBalancerTlsCertificate")
    LoadBalancerTlsCertificateDnsRecordCreationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDnsRecordCreationState", name: "LoadBalancerTlsCertificateDnsRecordCreationState")
    LoadBalancerTlsCertificateDnsRecordCreationStateCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDnsRecordCreationStateCode", name: "LoadBalancerTlsCertificateDnsRecordCreationStateCode")
    LoadBalancerTlsCertificateDomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDomainStatus", name: "LoadBalancerTlsCertificateDomainStatus")
    LoadBalancerTlsCertificateDomainValidationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDomainValidationOption", name: "LoadBalancerTlsCertificateDomainValidationOption")
    LoadBalancerTlsCertificateDomainValidationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDomainValidationOptionList", name: "LoadBalancerTlsCertificateDomainValidationOptionList")
    LoadBalancerTlsCertificateDomainValidationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDomainValidationRecord", name: "LoadBalancerTlsCertificateDomainValidationRecord")
    LoadBalancerTlsCertificateDomainValidationRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateDomainValidationRecordList", name: "LoadBalancerTlsCertificateDomainValidationRecordList")
    LoadBalancerTlsCertificateFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateFailureReason", name: "LoadBalancerTlsCertificateFailureReason")
    LoadBalancerTlsCertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateList", name: "LoadBalancerTlsCertificateList")
    LoadBalancerTlsCertificateRenewalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateRenewalStatus", name: "LoadBalancerTlsCertificateRenewalStatus")
    LoadBalancerTlsCertificateRenewalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateRenewalSummary", name: "LoadBalancerTlsCertificateRenewalSummary")
    LoadBalancerTlsCertificateRevocationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateRevocationReason", name: "LoadBalancerTlsCertificateRevocationReason")
    LoadBalancerTlsCertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateStatus", name: "LoadBalancerTlsCertificateStatus")
    LoadBalancerTlsCertificateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateSummary", name: "LoadBalancerTlsCertificateSummary")
    LoadBalancerTlsCertificateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsCertificateSummaryList", name: "LoadBalancerTlsCertificateSummaryList")
    LoadBalancerTlsPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsPolicy", name: "LoadBalancerTlsPolicy")
    LoadBalancerTlsPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LoadBalancerTlsPolicyList", name: "LoadBalancerTlsPolicyList")
    LogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#LogEvent", name: "LogEvent")
    LogEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#LogEventList", name: "LogEventList")
    MetricDatapoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#MetricDatapoint", name: "MetricDatapoint")
    MetricDatapointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#MetricDatapointList", name: "MetricDatapointList")
    MetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#MetricName", name: "MetricName")
    MetricPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lightsail#MetricPeriod", name: "MetricPeriod", traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    MetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#MetricStatistic", name: "MetricStatistic")
    MetricStatisticList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#MetricStatisticList", name: "MetricStatisticList")
    MetricUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#MetricUnit", name: "MetricUnit")
    MonitoredResourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#MonitoredResourceInfo", name: "MonitoredResourceInfo")
    MonthlyTransfer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#MonthlyTransfer", name: "MonthlyTransfer")
    NameServersUpdateState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#NameServersUpdateState", name: "NameServersUpdateState")
    NameServersUpdateStateCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#NameServersUpdateStateCode", name: "NameServersUpdateStateCode")
    NetworkProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#NetworkProtocol", name: "NetworkProtocol")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#pattern" => "\\S"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NotificationTriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#NotificationTriggerList", name: "NotificationTriggerList")
    OpenInstancePublicPortsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#OpenInstancePublicPortsRequest", name: "OpenInstancePublicPortsRequest")
    OpenInstancePublicPortsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#OpenInstancePublicPortsResult", name: "OpenInstancePublicPortsResult")
    Operation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Operation", name: "Operation")
    OperationFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#OperationFailureException", name: "OperationFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#OperationList", name: "OperationList")
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#OperationStatus", name: "OperationStatus")
    OperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#OperationType", name: "OperationType")
    Origin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Origin", name: "Origin")
    OriginProtocolPolicyEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#OriginProtocolPolicyEnum", name: "OriginProtocolPolicyEnum")
    PartnerIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#PartnerIdList", name: "PartnerIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PasswordData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PasswordData", name: "PasswordData")
    PeerVpcRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PeerVpcRequest", name: "PeerVpcRequest")
    PeerVpcResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PeerVpcResult", name: "PeerVpcResult")
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PendingMaintenanceAction", name: "PendingMaintenanceAction")
    PendingMaintenanceActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#PendingMaintenanceActionList", name: "PendingMaintenanceActionList")
    PendingModifiedRelationalDatabaseValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PendingModifiedRelationalDatabaseValues", name: "PendingModifiedRelationalDatabaseValues")
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lightsail#Port", name: "Port", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1, "max" => 65535}})
    PortAccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#PortAccessType", name: "PortAccessType")
    PortInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PortInfo", name: "PortInfo")
    PortInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#PortInfoList", name: "PortInfoList")
    PortInfoSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#PortInfoSourceType", name: "PortInfoSourceType")
    PortList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#PortList", name: "PortList")
    PortMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lightsail#PortMap", name: "PortMap")
    PortState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#PortState", name: "PortState")
    PricingUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#PricingUnit", name: "PricingUnit")
    PrivateRegistryAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PrivateRegistryAccess", name: "PrivateRegistryAccess")
    PrivateRegistryAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PrivateRegistryAccessRequest", name: "PrivateRegistryAccessRequest")
    PutAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PutAlarmRequest", name: "PutAlarmRequest")
    PutAlarmResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PutAlarmResult", name: "PutAlarmResult")
    PutInstancePublicPortsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PutInstancePublicPortsRequest", name: "PutInstancePublicPortsRequest")
    PutInstancePublicPortsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#PutInstancePublicPortsResult", name: "PutInstancePublicPortsResult")
    QueryStringObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#QueryStringObject", name: "QueryStringObject")
    R53HostedZoneDeletionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#R53HostedZoneDeletionState", name: "R53HostedZoneDeletionState")
    R53HostedZoneDeletionStateCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#R53HostedZoneDeletionStateCode", name: "R53HostedZoneDeletionStateCode")
    RebootInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RebootInstanceRequest", name: "RebootInstanceRequest")
    RebootInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RebootInstanceResult", name: "RebootInstanceResult")
    RebootRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RebootRelationalDatabaseRequest", name: "RebootRelationalDatabaseRequest")
    RebootRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RebootRelationalDatabaseResult", name: "RebootRelationalDatabaseResult")
    RecordState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#RecordState", name: "RecordState")
    Region = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Region", name: "Region")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RegionList", name: "RegionList")
    RegionName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#RegionName", name: "RegionName")
    RegionSetupInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RegionSetupInProgressException", name: "RegionSetupInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 428})
    RegisterContainerImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RegisterContainerImageRequest", name: "RegisterContainerImageRequest")
    RegisterContainerImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RegisterContainerImageResult", name: "RegisterContainerImageResult")
    RegisteredDomainDelegationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RegisteredDomainDelegationInfo", name: "RegisteredDomainDelegationInfo")
    RelationalDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabase", name: "RelationalDatabase")
    RelationalDatabaseBlueprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseBlueprint", name: "RelationalDatabaseBlueprint")
    RelationalDatabaseBlueprintList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseBlueprintList", name: "RelationalDatabaseBlueprintList")
    RelationalDatabaseBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseBundle", name: "RelationalDatabaseBundle")
    RelationalDatabaseBundleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseBundleList", name: "RelationalDatabaseBundleList")
    RelationalDatabaseEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseEndpoint", name: "RelationalDatabaseEndpoint")
    RelationalDatabaseEngine = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseEngine", name: "RelationalDatabaseEngine")
    RelationalDatabaseEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseEvent", name: "RelationalDatabaseEvent")
    RelationalDatabaseEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseEventList", name: "RelationalDatabaseEventList")
    RelationalDatabaseHardware = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseHardware", name: "RelationalDatabaseHardware")
    RelationalDatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseList", name: "RelationalDatabaseList")
    RelationalDatabaseMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseMetricName", name: "RelationalDatabaseMetricName")
    RelationalDatabaseParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseParameter", name: "RelationalDatabaseParameter")
    RelationalDatabaseParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseParameterList", name: "RelationalDatabaseParameterList")
    RelationalDatabasePasswordVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#RelationalDatabasePasswordVersion", name: "RelationalDatabasePasswordVersion")
    RelationalDatabaseSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseSnapshot", name: "RelationalDatabaseSnapshot")
    RelationalDatabaseSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#RelationalDatabaseSnapshotList", name: "RelationalDatabaseSnapshotList")
    ReleaseStaticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ReleaseStaticIpRequest", name: "ReleaseStaticIpRequest")
    ReleaseStaticIpResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ReleaseStaticIpResult", name: "ReleaseStaticIpResult")
    RenewalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#RenewalStatus", name: "RenewalStatus")
    RenewalStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#RenewalStatusReason", name: "RenewalStatusReason")
    RenewalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#RenewalSummary", name: "RenewalSummary")
    RequestFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#RequestFailureReason", name: "RequestFailureReason")
    ResetDistributionCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ResetDistributionCacheRequest", name: "ResetDistributionCacheRequest")
    ResetDistributionCacheResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ResetDistributionCacheResult", name: "ResetDistributionCacheResult")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:(aws[^:]*):([a-zA-Z0-9-]+):([a-z0-9-]+):([0-9]+):([a-zA-Z]+)/([a-zA-Z0-9-]+)$"})
    ResourceBucketAccess = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ResourceBucketAccess", name: "ResourceBucketAccess")
    ResourceBudgetEstimate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ResourceBudgetEstimate", name: "ResourceBudgetEstimate")
    ResourceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ResourceLocation", name: "ResourceLocation")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#ResourceName", name: "ResourceName", traits: {"smithy.api#pattern" => "^\\w[\\w\\-]*\\w$"})
    ResourceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ResourceNameList", name: "ResourceNameList")
    ResourceReceivingAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ResourceReceivingAccess", name: "ResourceReceivingAccess")
    ResourceRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ResourceRecord", name: "ResourceRecord")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ResourceType", name: "ResourceType")
    ResourcesBudgetEstimate = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#ResourcesBudgetEstimate", name: "ResourcesBudgetEstimate")
    RevocationReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#RevocationReason", name: "RevocationReason")
    SendContactMethodVerificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SendContactMethodVerificationRequest", name: "SendContactMethodVerificationRequest")
    SendContactMethodVerificationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SendContactMethodVerificationResult", name: "SendContactMethodVerificationResult")
    SensitiveNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#SensitiveNonEmptyString", name: "SensitiveNonEmptyString", traits: {"smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    SerialNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#SerialNumber", name: "SerialNumber")
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Session", name: "Session")
    Sessions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#Sessions", name: "Sessions")
    SetIpAddressTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetIpAddressTypeRequest", name: "SetIpAddressTypeRequest")
    SetIpAddressTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetIpAddressTypeResult", name: "SetIpAddressTypeResult")
    SetResourceAccessForBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetResourceAccessForBucketRequest", name: "SetResourceAccessForBucketRequest")
    SetResourceAccessForBucketResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetResourceAccessForBucketResult", name: "SetResourceAccessForBucketResult")
    SetupDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#SetupDomainName", name: "SetupDomainName", traits: {"smithy.api#length" => {"min" => 4, "max" => 253}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]{1,63}(\\.[a-zA-Z0-9\\-]{1,63}){0,8}(\\.[a-zA-Z]{2,63})$"})
    SetupDomainNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#SetupDomainNameList", name: "SetupDomainNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SetupExecutionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetupExecutionDetails", name: "SetupExecutionDetails")
    SetupExecutionDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#SetupExecutionDetailsList", name: "SetupExecutionDetailsList")
    SetupHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetupHistory", name: "SetupHistory")
    SetupHistoryPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#SetupHistoryPageToken", name: "SetupHistoryPageToken", traits: {"smithy.api#length" => {"min" => 24, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    SetupHistoryResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetupHistoryResource", name: "SetupHistoryResource")
    SetupInstanceHttpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetupInstanceHttpsRequest", name: "SetupInstanceHttpsRequest")
    SetupInstanceHttpsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetupInstanceHttpsResult", name: "SetupInstanceHttpsResult")
    SetupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#SetupRequest", name: "SetupRequest")
    SetupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#SetupStatus", name: "SetupStatus")
    StartGUISessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StartGUISessionRequest", name: "StartGUISessionRequest")
    StartGUISessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StartGUISessionResult", name: "StartGUISessionResult")
    StartInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StartInstanceRequest", name: "StartInstanceRequest")
    StartInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StartInstanceResult", name: "StartInstanceResult")
    StartRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StartRelationalDatabaseRequest", name: "StartRelationalDatabaseRequest")
    StartRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StartRelationalDatabaseResult", name: "StartRelationalDatabaseResult")
    StaticIp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StaticIp", name: "StaticIp")
    StaticIpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#StaticIpList", name: "StaticIpList")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#Status", name: "Status")
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#StatusType", name: "StatusType")
    StopGUISessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopGUISessionRequest", name: "StopGUISessionRequest")
    StopGUISessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopGUISessionResult", name: "StopGUISessionResult")
    StopInstanceOnIdleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopInstanceOnIdleRequest", name: "StopInstanceOnIdleRequest")
    StopInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopInstanceRequest", name: "StopInstanceRequest")
    StopInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopInstanceResult", name: "StopInstanceResult")
    StopRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopRelationalDatabaseRequest", name: "StopRelationalDatabaseRequest")
    StopRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#StopRelationalDatabaseResult", name: "StopRelationalDatabaseResult")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#StringList", name: "StringList")
    StringMax256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#StringMax256", name: "StringMax256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SubjectAlternativeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#SubjectAlternativeNameList", name: "SubjectAlternativeNameList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#TagResourceResult", name: "TagResourceResult")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#TagValue", name: "TagValue")
    TestAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#TestAlarmRequest", name: "TestAlarmRequest")
    TestAlarmResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#TestAlarmResult", name: "TestAlarmResult")
    TimeOfDay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#TimeOfDay", name: "TimeOfDay", traits: {"smithy.api#pattern" => "^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"})
    TimePeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#TimePeriod", name: "TimePeriod")
    TreatMissingData = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#TreatMissingData", name: "TreatMissingData")
    UnauthenticatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UnauthenticatedException", name: "UnauthenticatedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnpeerVpcRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UnpeerVpcRequest", name: "UnpeerVpcRequest")
    UnpeerVpcResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UnpeerVpcResult", name: "UnpeerVpcResult")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UntagResourceResult", name: "UntagResourceResult")
    UpdateBucketBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateBucketBundleRequest", name: "UpdateBucketBundleRequest")
    UpdateBucketBundleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateBucketBundleResult", name: "UpdateBucketBundleResult")
    UpdateBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateBucketRequest", name: "UpdateBucketRequest")
    UpdateBucketResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateBucketResult", name: "UpdateBucketResult")
    UpdateContainerServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateContainerServiceRequest", name: "UpdateContainerServiceRequest")
    UpdateContainerServiceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateContainerServiceResult", name: "UpdateContainerServiceResult")
    UpdateDistributionBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateDistributionBundleRequest", name: "UpdateDistributionBundleRequest")
    UpdateDistributionBundleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateDistributionBundleResult", name: "UpdateDistributionBundleResult")
    UpdateDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateDistributionRequest", name: "UpdateDistributionRequest")
    UpdateDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateDistributionResult", name: "UpdateDistributionResult")
    UpdateDomainEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateDomainEntryRequest", name: "UpdateDomainEntryRequest")
    UpdateDomainEntryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateDomainEntryResult", name: "UpdateDomainEntryResult")
    UpdateInstanceMetadataOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateInstanceMetadataOptionsRequest", name: "UpdateInstanceMetadataOptionsRequest")
    UpdateInstanceMetadataOptionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateInstanceMetadataOptionsResult", name: "UpdateInstanceMetadataOptionsResult")
    UpdateLoadBalancerAttributeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateLoadBalancerAttributeRequest", name: "UpdateLoadBalancerAttributeRequest")
    UpdateLoadBalancerAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateLoadBalancerAttributeResult", name: "UpdateLoadBalancerAttributeResult")
    UpdateRelationalDatabaseParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateRelationalDatabaseParametersRequest", name: "UpdateRelationalDatabaseParametersRequest")
    UpdateRelationalDatabaseParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateRelationalDatabaseParametersResult", name: "UpdateRelationalDatabaseParametersResult")
    UpdateRelationalDatabaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateRelationalDatabaseRequest", name: "UpdateRelationalDatabaseRequest")
    UpdateRelationalDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lightsail#UpdateRelationalDatabaseResult", name: "UpdateRelationalDatabaseResult")
    ViewerMinimumTlsProtocolVersionEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lightsail#ViewerMinimumTlsProtocolVersionEnum", name: "ViewerMinimumTlsProtocolVersionEnum")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lightsail#boolean", name: "Boolean")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lightsail#double", name: "Double")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lightsail#float", name: "Float")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lightsail#integer", name: "Integer")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lightsail#long", name: "Long")
    SetupHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lightsail#setupHistoryList", name: "SetupHistoryList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lightsail#string", name: "String")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lightsail#timestamp", name: "Timestamp")

    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    AccessDeniedException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDirection.add_member(:inbound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "inbound", traits: {"smithy.api#enumValue" => "inbound"}))
    AccessDirection.add_member(:outbound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "outbound", traits: {"smithy.api#enumValue" => "outbound"}))
    AccessKey.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMAccessKeyId, location_name: "accessKeyId"))
    AccessKey.add_member(:secret_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "secretAccessKey"))
    AccessKey.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "status"))
    AccessKey.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    AccessKey.add_member(:last_used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyLastUsed, location_name: "lastUsed"))
    AccessKey.type = Types::AccessKey
    AccessKeyLastUsed.add_member(:last_used_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "lastUsedDate"))
    AccessKeyLastUsed.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "region"))
    AccessKeyLastUsed.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    AccessKeyLastUsed.type = Types::AccessKeyLastUsed
    AccessKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKey)
    AccessReceiverList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceReceivingAccess)
    AccessRules.add_member(:get_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessType, location_name: "getObject"))
    AccessRules.add_member(:allow_public_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "allowPublicOverrides"))
    AccessRules.type = Types::AccessRules
    AccessType.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Public", traits: {"smithy.api#enumValue" => "public"}))
    AccessType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Private", traits: {"smithy.api#enumValue" => "private"}))
    AccountLevelBpaSync.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLevelBpaSyncStatus, location_name: "status"))
    AccountLevelBpaSync.add_member(:last_synced_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "lastSyncedAt"))
    AccountLevelBpaSync.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BPAStatusMessage, location_name: "message"))
    AccountLevelBpaSync.add_member(:bpa_impacts_lightsail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "bpaImpactsLightsail"))
    AccountLevelBpaSync.type = Types::AccountLevelBpaSync
    AccountLevelBpaSyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InSync", traits: {"smithy.api#enumValue" => "InSync"}))
    AccountLevelBpaSyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    AccountLevelBpaSyncStatus.add_member(:never_synced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NeverSynced", traits: {"smithy.api#enumValue" => "NeverSynced"}))
    AccountLevelBpaSyncStatus.add_member(:defaulted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Defaulted", traits: {"smithy.api#enumValue" => "Defaulted"}))
    AccountSetupInProgressException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    AccountSetupInProgressException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    AccountSetupInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccountSetupInProgressException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    AccountSetupInProgressException.type = Types::AccountSetupInProgressException
    AddOn.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AddOn.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    AddOn.add_member(:snapshot_time_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOfDay, location_name: "snapshotTimeOfDay"))
    AddOn.add_member(:next_snapshot_time_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOfDay, location_name: "nextSnapshotTimeOfDay"))
    AddOn.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "threshold"))
    AddOn.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "duration"))
    AddOn.type = Types::AddOn
    AddOnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOn)
    AddOnRequest.add_member(:add_on_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnType, location_name: "addOnType", traits: {"smithy.api#required" => {}}))
    AddOnRequest.add_member(:auto_snapshot_add_on_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSnapshotAddOnRequest, location_name: "autoSnapshotAddOnRequest"))
    AddOnRequest.add_member(:stop_instance_on_idle_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopInstanceOnIdleRequest, location_name: "stopInstanceOnIdleRequest"))
    AddOnRequest.type = Types::AddOnRequest
    AddOnRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnRequest)
    AddOnType.add_member(:auto_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AutoSnapshot", traits: {"smithy.api#enumValue" => "AutoSnapshot"}))
    AddOnType.add_member(:stop_instance_on_idle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StopInstanceOnIdle", traits: {"smithy.api#enumValue" => "StopInstanceOnIdle"}))
    Alarm.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Alarm.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Alarm.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Alarm.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Alarm.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Alarm.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    Alarm.add_member(:monitored_resource_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoredResourceInfo, location_name: "monitoredResourceInfo"))
    Alarm.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparisonOperator"))
    Alarm.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "evaluationPeriods"))
    Alarm.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period"))
    Alarm.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "threshold"))
    Alarm.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "datapointsToAlarm"))
    Alarm.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "treatMissingData"))
    Alarm.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatistic, location_name: "statistic"))
    Alarm.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName"))
    Alarm.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmState, location_name: "state"))
    Alarm.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit"))
    Alarm.add_member(:contact_protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocolsList, location_name: "contactProtocols"))
    Alarm.add_member(:notification_triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTriggerList, location_name: "notificationTriggers"))
    Alarm.add_member(:notification_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "notificationEnabled"))
    Alarm.type = Types::Alarm
    AlarmState.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    AlarmState.add_member(:alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    AlarmState.add_member(:insufficient_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    AlarmsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alarm)
    AllocateStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "staticIpName", traits: {"smithy.api#required" => {}}))
    AllocateStaticIpRequest.type = Types::AllocateStaticIpRequest
    AllocateStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AllocateStaticIpResult.type = Types::AllocateStaticIpResult
    AppCategory.add_member(:lf_r, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LfR", traits: {"smithy.api#enumValue" => "LfR"}))
    AppCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppCategory)
    AttachCertificateToDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName", traits: {"smithy.api#required" => {}}))
    AttachCertificateToDistributionRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName", traits: {"smithy.api#required" => {}}))
    AttachCertificateToDistributionRequest.type = Types::AttachCertificateToDistributionRequest
    AttachCertificateToDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    AttachCertificateToDistributionResult.type = Types::AttachCertificateToDistributionResult
    AttachDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName", traits: {"smithy.api#required" => {}}))
    AttachDiskRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    AttachDiskRequest.add_member(:disk_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "diskPath", traits: {"smithy.api#required" => {}}))
    AttachDiskRequest.add_member(:auto_mounting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "autoMounting"))
    AttachDiskRequest.type = Types::AttachDiskRequest
    AttachDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachDiskResult.type = Types::AttachDiskResult
    AttachInstancesToLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    AttachInstancesToLoadBalancerRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "instanceNames", traits: {"smithy.api#required" => {}}))
    AttachInstancesToLoadBalancerRequest.type = Types::AttachInstancesToLoadBalancerRequest
    AttachInstancesToLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachInstancesToLoadBalancerResult.type = Types::AttachInstancesToLoadBalancerResult
    AttachLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    AttachLoadBalancerTlsCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName", traits: {"smithy.api#required" => {}}))
    AttachLoadBalancerTlsCertificateRequest.type = Types::AttachLoadBalancerTlsCertificateRequest
    AttachLoadBalancerTlsCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachLoadBalancerTlsCertificateResult.type = Types::AttachLoadBalancerTlsCertificateResult
    AttachStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "staticIpName", traits: {"smithy.api#required" => {}}))
    AttachStaticIpRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    AttachStaticIpRequest.type = Types::AttachStaticIpRequest
    AttachStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    AttachStaticIpResult.type = Types::AttachStaticIpResult
    AttachedDisk.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "path"))
    AttachedDisk.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    AttachedDisk.type = Types::AttachedDisk
    AttachedDiskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachedDisk)
    AttachedDiskMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName)
    AttachedDiskMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskMapList)
    AutoMountStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    AutoMountStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    AutoMountStatus.add_member(:mounted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Mounted", traits: {"smithy.api#enumValue" => "Mounted"}))
    AutoMountStatus.add_member(:not_mounted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotMounted", traits: {"smithy.api#enumValue" => "NotMounted"}))
    AutoSnapshotAddOnRequest.add_member(:snapshot_time_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOfDay, location_name: "snapshotTimeOfDay"))
    AutoSnapshotAddOnRequest.type = Types::AutoSnapshotAddOnRequest
    AutoSnapshotDetails.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "date"))
    AutoSnapshotDetails.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    AutoSnapshotDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSnapshotStatus, location_name: "status"))
    AutoSnapshotDetails.add_member(:from_attached_disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachedDiskList, location_name: "fromAttachedDisks"))
    AutoSnapshotDetails.type = Types::AutoSnapshotDetails
    AutoSnapshotDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSnapshotDetails)
    AutoSnapshotStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    AutoSnapshotStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    AutoSnapshotStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    AutoSnapshotStatus.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NotFound"}))
    AvailabilityZone.add_member(:zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "zoneName"))
    AvailabilityZone.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "state"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    BPAStatusMessage.add_member(:defaulted_for_slr_missing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULTED_FOR_SLR_MISSING", traits: {"smithy.api#enumValue" => "DEFAULTED_FOR_SLR_MISSING"}))
    BPAStatusMessage.add_member(:sync_on_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYNC_ON_HOLD", traits: {"smithy.api#enumValue" => "SYNC_ON_HOLD"}))
    BPAStatusMessage.add_member(:defaulted_for_slr_missing_on_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULTED_FOR_SLR_MISSING_ON_HOLD", traits: {"smithy.api#enumValue" => "DEFAULTED_FOR_SLR_MISSING_ON_HOLD"}))
    BPAStatusMessage.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unknown", traits: {"smithy.api#enumValue" => "Unknown"}))
    BehaviorEnum.add_member(:dont_cache_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DontCacheSetting", traits: {"smithy.api#enumValue" => "dont-cache"}))
    BehaviorEnum.add_member(:cache_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CacheSetting", traits: {"smithy.api#enumValue" => "cache"}))
    Blueprint.add_member(:blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintId"))
    Blueprint.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Blueprint.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "group"))
    Blueprint.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueprintType, location_name: "type"))
    Blueprint.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Blueprint.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    Blueprint.add_member(:min_power, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "minPower"))
    Blueprint.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Blueprint.add_member(:version_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "versionCode"))
    Blueprint.add_member(:product_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "productUrl"))
    Blueprint.add_member(:license_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "licenseUrl"))
    Blueprint.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePlatform, location_name: "platform"))
    Blueprint.add_member(:app_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppCategory, location_name: "appCategory"))
    Blueprint.type = Types::Blueprint
    BlueprintList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blueprint)
    BlueprintType.add_member(:os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "os", traits: {"smithy.api#enumValue" => "os"}))
    BlueprintType.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "app", traits: {"smithy.api#enumValue" => "app"}))
    Bucket.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceType"))
    Bucket.add_member(:access_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRules, location_name: "accessRules"))
    Bucket.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Bucket.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    Bucket.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Bucket.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "url"))
    Bucket.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Bucket.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "name"))
    Bucket.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "supportCode"))
    Bucket.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Bucket.add_member(:object_versioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "objectVersioning"))
    Bucket.add_member(:able_to_update_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ableToUpdateBundle"))
    Bucket.add_member(:readonly_access_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIdList, location_name: "readonlyAccessAccounts"))
    Bucket.add_member(:resources_receiving_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessReceiverList, location_name: "resourcesReceivingAccess"))
    Bucket.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketState, location_name: "state"))
    Bucket.add_member(:access_log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketAccessLogConfig, location_name: "accessLogConfig"))
    Bucket.type = Types::Bucket
    BucketAccessLogConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled", traits: {"smithy.api#required" => {}}))
    BucketAccessLogConfig.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "destination"))
    BucketAccessLogConfig.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketAccessLogPrefix, location_name: "prefix"))
    BucketAccessLogConfig.type = Types::BucketAccessLogConfig
    BucketBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    BucketBundle.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    BucketBundle.add_member(:price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "price"))
    BucketBundle.add_member(:storage_per_month_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "storagePerMonthInGb"))
    BucketBundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "transferPerMonthInGb"))
    BucketBundle.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    BucketBundle.type = Types::BucketBundle
    BucketBundleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketBundle)
    BucketList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket)
    BucketMetricName.add_member(:bucket_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BucketSizeBytes", traits: {"smithy.api#enumValue" => "BucketSizeBytes"}))
    BucketMetricName.add_member(:number_of_objects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NumberOfObjects", traits: {"smithy.api#enumValue" => "NumberOfObjects"}))
    BucketState.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "code"))
    BucketState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BucketState.type = Types::BucketState
    Bundle.add_member(:price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "price"))
    Bundle.add_member(:cpu_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCount"))
    Bundle.add_member(:disk_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "diskSizeInGb"))
    Bundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    Bundle.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    Bundle.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    Bundle.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Bundle.add_member(:power, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "power"))
    Bundle.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "ramSizeInGb"))
    Bundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "transferPerMonthInGb"))
    Bundle.add_member(:supported_platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePlatformList, location_name: "supportedPlatforms"))
    Bundle.add_member(:supported_app_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppCategoryList, location_name: "supportedAppCategories"))
    Bundle.add_member(:public_ipv4_address_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "publicIpv4AddressCount"))
    Bundle.type = Types::Bundle
    BundleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bundle)
    CacheBehavior.add_member(:behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorEnum, location_name: "behavior"))
    CacheBehavior.type = Types::CacheBehavior
    CacheBehaviorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviorPerPath)
    CacheBehaviorPerPath.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "path"))
    CacheBehaviorPerPath.add_member(:behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorEnum, location_name: "behavior"))
    CacheBehaviorPerPath.type = Types::CacheBehaviorPerPath
    CacheSettings.add_member(:default_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "defaultTTL"))
    CacheSettings.add_member(:minimum_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "minimumTTL"))
    CacheSettings.add_member(:maximum_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "maximumTTL"))
    CacheSettings.add_member(:allowed_http_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "allowedHTTPMethods"))
    CacheSettings.add_member(:cached_http_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "cachedHTTPMethods"))
    CacheSettings.add_member(:forwarded_cookies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CookieObject, location_name: "forwardedCookies"))
    CacheSettings.add_member(:forwarded_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderObject, location_name: "forwardedHeaders"))
    CacheSettings.add_member(:forwarded_query_strings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringObject, location_name: "forwardedQueryStrings"))
    CacheSettings.type = Types::CacheSettings
    Certificate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Certificate.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateName, location_name: "name"))
    Certificate.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    Certificate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "status"))
    Certificate.add_member(:serial_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SerialNumber, location_name: "serialNumber"))
    Certificate.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectAlternativeNameList, location_name: "subjectAlternativeNames"))
    Certificate.add_member(:domain_validation_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationRecordList, location_name: "domainValidationRecords"))
    Certificate.add_member(:request_failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailureReason, location_name: "requestFailureReason"))
    Certificate.add_member(:in_use_resource_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InUseResourceCount, location_name: "inUseResourceCount", traits: {"smithy.api#default" => 0}))
    Certificate.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "keyAlgorithm"))
    Certificate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Certificate.add_member(:issued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "issuedAt"))
    Certificate.add_member(:issuer_ca, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssuerCA, location_name: "issuerCA"))
    Certificate.add_member(:not_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "notBefore"))
    Certificate.add_member(:not_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "notAfter"))
    Certificate.add_member(:eligible_to_renew, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EligibleToRenew, location_name: "eligibleToRenew"))
    Certificate.add_member(:renewal_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalSummary, location_name: "renewalSummary"))
    Certificate.add_member(:revoked_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "revokedAt"))
    Certificate.add_member(:revocation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReason, location_name: "revocationReason"))
    Certificate.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Certificate.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    Certificate.type = Types::Certificate
    CertificateDomainValidationStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateDomainValidationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateDomainValidationStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    CertificateProvider.add_member(:lets_encrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LetsEncrypt", traits: {"smithy.api#enumValue" => "LetsEncrypt"}))
    CertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Issued", traits: {"smithy.api#enumValue" => "ISSUED"}))
    CertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Inactive", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Expired", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ValidationTimedOut", traits: {"smithy.api#enumValue" => "VALIDATION_TIMED_OUT"}))
    CertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Revoked", traits: {"smithy.api#enumValue" => "REVOKED"}))
    CertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatus)
    CertificateSummary.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "certificateArn"))
    CertificateSummary.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName"))
    CertificateSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    CertificateSummary.add_member(:certificate_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: "certificateDetail"))
    CertificateSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummary)
    CloseInstancePublicPortsRequest.add_member(:port_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortInfo, location_name: "portInfo", traits: {"smithy.api#required" => {}}))
    CloseInstancePublicPortsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    CloseInstancePublicPortsRequest.type = Types::CloseInstancePublicPortsRequest
    CloseInstancePublicPortsResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CloseInstancePublicPortsResult.type = Types::CloseInstancePublicPortsResult
    CloudFormationStackRecord.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    CloudFormationStackRecord.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    CloudFormationStackRecord.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    CloudFormationStackRecord.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    CloudFormationStackRecord.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    CloudFormationStackRecord.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordState, location_name: "state"))
    CloudFormationStackRecord.add_member(:source_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationStackRecordSourceInfoList, location_name: "sourceInfo"))
    CloudFormationStackRecord.add_member(:destination_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationInfo, location_name: "destinationInfo"))
    CloudFormationStackRecord.type = Types::CloudFormationStackRecord
    CloudFormationStackRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationStackRecord)
    CloudFormationStackRecordSourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationStackRecordSourceType, location_name: "resourceType"))
    CloudFormationStackRecordSourceInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    CloudFormationStackRecordSourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    CloudFormationStackRecordSourceInfo.type = Types::CloudFormationStackRecordSourceInfo
    CloudFormationStackRecordSourceInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationStackRecordSourceInfo)
    CloudFormationStackRecordSourceType.add_member(:export_snapshot_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ExportSnapshotRecord", traits: {"smithy.api#enumValue" => "ExportSnapshotRecord"}))
    ComparisonOperator.add_member(:greater_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:greater_than_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanThreshold", traits: {"smithy.api#enumValue" => "GreaterThanThreshold"}))
    ComparisonOperator.add_member(:less_than_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanThreshold", traits: {"smithy.api#enumValue" => "LessThanThreshold"}))
    ComparisonOperator.add_member(:less_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "LessThanOrEqualToThreshold"}))
    ContactMethod.add_member(:contact_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "contactEndpoint"))
    ContactMethod.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactMethodStatus, location_name: "status"))
    ContactMethod.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocol, location_name: "protocol"))
    ContactMethod.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ContactMethod.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ContactMethod.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ContactMethod.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    ContactMethod.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ContactMethod.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    ContactMethod.type = Types::ContactMethod
    ContactMethodStatus.add_member(:pending_verification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingVerification", traits: {"smithy.api#enumValue" => "PendingVerification"}))
    ContactMethodStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Valid", traits: {"smithy.api#enumValue" => "Valid"}))
    ContactMethodStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Invalid", traits: {"smithy.api#enumValue" => "Invalid"}))
    ContactMethodVerificationProtocol.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Email", traits: {"smithy.api#enumValue" => "Email"}))
    ContactMethodsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactMethod)
    ContactProtocol.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Email", traits: {"smithy.api#enumValue" => "Email"}))
    ContactProtocol.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMS", traits: {"smithy.api#enumValue" => "SMS"}))
    ContactProtocolsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocol)
    Container.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "image"))
    Container.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    Container.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    Container.add_member(:ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMap, location_name: "ports"))
    Container.type = Types::Container
    ContainerImage.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerImage.add_member(:digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "digest"))
    ContainerImage.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ContainerImage.type = Types::ContainerImage
    ContainerImageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerImage)
    ContainerMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName)
    ContainerMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Container)
    ContainerService.add_member(:container_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "containerServiceName"))
    ContainerService.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ContainerService.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ContainerService.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    ContainerService.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ContainerService.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ContainerService.add_member(:power, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePowerName, location_name: "power"))
    ContainerService.add_member(:power_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "powerId"))
    ContainerService.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceState, location_name: "state"))
    ContainerService.add_member(:state_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceStateDetail, location_name: "stateDetail"))
    ContainerService.add_member(:scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceScale, location_name: "scale"))
    ContainerService.add_member(:current_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceDeployment, location_name: "currentDeployment"))
    ContainerService.add_member(:next_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceDeployment, location_name: "nextDeployment"))
    ContainerService.add_member(:is_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isDisabled"))
    ContainerService.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    ContainerService.add_member(:private_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "privateDomainName"))
    ContainerService.add_member(:public_domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePublicDomains, location_name: "publicDomainNames"))
    ContainerService.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "url"))
    ContainerService.add_member(:private_registry_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateRegistryAccess, location_name: "privateRegistryAccess"))
    ContainerService.type = Types::ContainerService
    ContainerServiceDeployment.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "version"))
    ContainerServiceDeployment.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceDeploymentState, location_name: "state"))
    ContainerServiceDeployment.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerMap, location_name: "containers"))
    ContainerServiceDeployment.add_member(:public_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceEndpoint, location_name: "publicEndpoint"))
    ContainerServiceDeployment.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ContainerServiceDeployment.type = Types::ContainerServiceDeployment
    ContainerServiceDeploymentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceDeployment)
    ContainerServiceDeploymentRequest.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerMap, location_name: "containers"))
    ContainerServiceDeploymentRequest.add_member(:public_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointRequest, location_name: "publicEndpoint"))
    ContainerServiceDeploymentRequest.type = Types::ContainerServiceDeploymentRequest
    ContainerServiceDeploymentState.add_member(:activating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    ContainerServiceDeploymentState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerServiceDeploymentState.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ContainerServiceDeploymentState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ContainerServiceECRImagePullerRole.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    ContainerServiceECRImagePullerRole.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    ContainerServiceECRImagePullerRole.type = Types::ContainerServiceECRImagePullerRole
    ContainerServiceECRImagePullerRoleRequest.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    ContainerServiceECRImagePullerRoleRequest.type = Types::ContainerServiceECRImagePullerRoleRequest
    ContainerServiceEndpoint.add_member(:container_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ContainerServiceEndpoint.add_member(:container_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "containerPort"))
    ContainerServiceEndpoint.add_member(:health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceHealthCheckConfig, location_name: "healthCheck"))
    ContainerServiceEndpoint.type = Types::ContainerServiceEndpoint
    ContainerServiceHealthCheckConfig.add_member(:healthy_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "healthyThreshold"))
    ContainerServiceHealthCheckConfig.add_member(:unhealthy_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "unhealthyThreshold"))
    ContainerServiceHealthCheckConfig.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "timeoutSeconds"))
    ContainerServiceHealthCheckConfig.add_member(:interval_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "intervalSeconds"))
    ContainerServiceHealthCheckConfig.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "path"))
    ContainerServiceHealthCheckConfig.add_member(:success_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "successCodes"))
    ContainerServiceHealthCheckConfig.type = Types::ContainerServiceHealthCheckConfig
    ContainerServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerService)
    ContainerServiceLogEvent.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ContainerServiceLogEvent.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ContainerServiceLogEvent.type = Types::ContainerServiceLogEvent
    ContainerServiceLogEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceLogEvent)
    ContainerServiceMetadataEntry.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ContainerServiceMetadataEntry.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ContainerServiceMetadataEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceMetadataEntry)
    ContainerServiceMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    ContainerServiceMetricName.add_member(:memory_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MemoryUtilization", traits: {"smithy.api#enumValue" => "MemoryUtilization"}))
    ContainerServicePower.add_member(:power_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "powerId"))
    ContainerServicePower.add_member(:price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "price"))
    ContainerServicePower.add_member(:cpu_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "cpuCount"))
    ContainerServicePower.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "ramSizeInGb"))
    ContainerServicePower.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContainerServicePower.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    ContainerServicePower.type = Types::ContainerServicePower
    ContainerServicePowerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePower)
    ContainerServicePowerName.add_member(:nano, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "nano", traits: {"smithy.api#enumValue" => "nano"}))
    ContainerServicePowerName.add_member(:micro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "micro", traits: {"smithy.api#enumValue" => "micro"}))
    ContainerServicePowerName.add_member(:small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "small", traits: {"smithy.api#enumValue" => "small"}))
    ContainerServicePowerName.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "medium", traits: {"smithy.api#enumValue" => "medium"}))
    ContainerServicePowerName.add_member(:large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "large", traits: {"smithy.api#enumValue" => "large"}))
    ContainerServicePowerName.add_member(:xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "xlarge", traits: {"smithy.api#enumValue" => "xlarge"}))
    ContainerServiceProtocol.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ContainerServiceProtocol.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    ContainerServiceProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    ContainerServiceProtocol.add_member(:udp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    ContainerServicePublicDomains.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ContainerServicePublicDomains.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePublicDomainsList)
    ContainerServicePublicDomainsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ContainerServiceRegistryLogin.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "username"))
    ContainerServiceRegistryLogin.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "password"))
    ContainerServiceRegistryLogin.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "expiresAt"))
    ContainerServiceRegistryLogin.add_member(:registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "registry"))
    ContainerServiceRegistryLogin.type = Types::ContainerServiceRegistryLogin
    ContainerServiceState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ContainerServiceState.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ContainerServiceState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ContainerServiceState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ContainerServiceState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ContainerServiceState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContainerServiceState.add_member(:deploying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    ContainerServiceStateDetail.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceStateDetailCode, location_name: "code"))
    ContainerServiceStateDetail.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ContainerServiceStateDetail.type = Types::ContainerServiceStateDetail
    ContainerServiceStateDetailCode.add_member(:creating_system_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING_SYSTEM_RESOURCES", traits: {"smithy.api#enumValue" => "CREATING_SYSTEM_RESOURCES"}))
    ContainerServiceStateDetailCode.add_member(:creating_network_infrastructure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING_NETWORK_INFRASTRUCTURE", traits: {"smithy.api#enumValue" => "CREATING_NETWORK_INFRASTRUCTURE"}))
    ContainerServiceStateDetailCode.add_member(:provisioning_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING_CERTIFICATE", traits: {"smithy.api#enumValue" => "PROVISIONING_CERTIFICATE"}))
    ContainerServiceStateDetailCode.add_member(:provisioning_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING_SERVICE", traits: {"smithy.api#enumValue" => "PROVISIONING_SERVICE"}))
    ContainerServiceStateDetailCode.add_member(:creating_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING_DEPLOYMENT", traits: {"smithy.api#enumValue" => "CREATING_DEPLOYMENT"}))
    ContainerServiceStateDetailCode.add_member(:evaluating_health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVALUATING_HEALTH_CHECK", traits: {"smithy.api#enumValue" => "EVALUATING_HEALTH_CHECK"}))
    ContainerServiceStateDetailCode.add_member(:activating_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING_DEPLOYMENT", traits: {"smithy.api#enumValue" => "ACTIVATING_DEPLOYMENT"}))
    ContainerServiceStateDetailCode.add_member(:certificate_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CERTIFICATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "CERTIFICATE_LIMIT_EXCEEDED"}))
    ContainerServiceStateDetailCode.add_member(:unknown_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    ContainerServicesListResult.add_member(:container_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceList, location_name: "containerServices"))
    ContainerServicesListResult.type = Types::ContainerServicesListResult
    CookieObject.add_member(:option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardValues, location_name: "option"))
    CookieObject.add_member(:cookies_allow_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cookiesAllowList"))
    CookieObject.type = Types::CookieObject
    CopySnapshotRequest.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourceSnapshotName"))
    CopySnapshotRequest.add_member(:source_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceResourceName"))
    CopySnapshotRequest.add_member(:restore_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "restoreDate"))
    CopySnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "useLatestRestorableAutoSnapshot"))
    CopySnapshotRequest.add_member(:target_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "targetSnapshotName", traits: {"smithy.api#required" => {}}))
    CopySnapshotRequest.add_member(:source_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "sourceRegion", traits: {"smithy.api#required" => {}}))
    CopySnapshotRequest.type = Types::CopySnapshotRequest
    CopySnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CopySnapshotResult.type = Types::CopySnapshotResult
    CostEstimate.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "usageType"))
    CostEstimate.add_member(:results_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EstimatesByTime, location_name: "resultsByTime"))
    CostEstimate.type = Types::CostEstimate
    CostEstimates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimate)
    CreateBucketAccessKeyRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    CreateBucketAccessKeyRequest.type = Types::CreateBucketAccessKeyRequest
    CreateBucketAccessKeyResult.add_member(:access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKey, location_name: "accessKey"))
    CreateBucketAccessKeyResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateBucketAccessKeyResult.type = Types::CreateBucketAccessKeyResult
    CreateBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    CreateBucketRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateBucketRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateBucketRequest.add_member(:enable_object_versioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enableObjectVersioning"))
    CreateBucketRequest.type = Types::CreateBucketRequest
    CreateBucketResult.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket, location_name: "bucket"))
    CreateBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateBucketResult.type = Types::CreateBucketResult
    CreateCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName", traits: {"smithy.api#required" => {}}))
    CreateCertificateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateCertificateRequest.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectAlternativeNameList, location_name: "subjectAlternativeNames"))
    CreateCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCertificateRequest.type = Types::CreateCertificateRequest
    CreateCertificateResult.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummary, location_name: "certificate"))
    CreateCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateCertificateResult.type = Types::CreateCertificateResult
    CreateCloudFormationStackRequest.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceEntryList, location_name: "instances", traits: {"smithy.api#required" => {}}))
    CreateCloudFormationStackRequest.type = Types::CreateCloudFormationStackRequest
    CreateCloudFormationStackResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateCloudFormationStackResult.type = Types::CreateCloudFormationStackResult
    CreateContactMethodRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    CreateContactMethodRequest.add_member(:contact_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMax256, location_name: "contactEndpoint", traits: {"smithy.api#required" => {}}))
    CreateContactMethodRequest.type = Types::CreateContactMethodRequest
    CreateContactMethodResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateContactMethodResult.type = Types::CreateContactMethodResult
    CreateContainerServiceDeploymentRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContainerServiceDeploymentRequest.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerMap, location_name: "containers"))
    CreateContainerServiceDeploymentRequest.add_member(:public_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointRequest, location_name: "publicEndpoint"))
    CreateContainerServiceDeploymentRequest.type = Types::CreateContainerServiceDeploymentRequest
    CreateContainerServiceDeploymentResult.add_member(:container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerService, location_name: "containerService"))
    CreateContainerServiceDeploymentResult.type = Types::CreateContainerServiceDeploymentResult
    CreateContainerServiceRegistryLoginRequest.type = Types::CreateContainerServiceRegistryLoginRequest
    CreateContainerServiceRegistryLoginResult.add_member(:registry_login, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceRegistryLogin, location_name: "registryLogin"))
    CreateContainerServiceRegistryLoginResult.type = Types::CreateContainerServiceRegistryLoginResult
    CreateContainerServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#required" => {}}))
    CreateContainerServiceRequest.add_member(:power, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePowerName, location_name: "power", traits: {"smithy.api#required" => {}}))
    CreateContainerServiceRequest.add_member(:scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceScale, location_name: "scale", traits: {"smithy.api#required" => {}}))
    CreateContainerServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateContainerServiceRequest.add_member(:public_domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePublicDomains, location_name: "publicDomainNames"))
    CreateContainerServiceRequest.add_member(:deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceDeploymentRequest, location_name: "deployment"))
    CreateContainerServiceRequest.add_member(:private_registry_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateRegistryAccessRequest, location_name: "privateRegistryAccess"))
    CreateContainerServiceRequest.type = Types::CreateContainerServiceRequest
    CreateContainerServiceResult.add_member(:container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerService, location_name: "containerService"))
    CreateContainerServiceResult.type = Types::CreateContainerServiceResult
    CreateDiskFromSnapshotRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName", traits: {"smithy.api#required" => {}}))
    CreateDiskFromSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskSnapshotName"))
    CreateDiskFromSnapshotRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateDiskFromSnapshotRequest.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb", traits: {"smithy.api#required" => {}}))
    CreateDiskFromSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDiskFromSnapshotRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateDiskFromSnapshotRequest.add_member(:source_disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceDiskName"))
    CreateDiskFromSnapshotRequest.add_member(:restore_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "restoreDate"))
    CreateDiskFromSnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "useLatestRestorableAutoSnapshot"))
    CreateDiskFromSnapshotRequest.type = Types::CreateDiskFromSnapshotRequest
    CreateDiskFromSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskFromSnapshotResult.type = Types::CreateDiskFromSnapshotResult
    CreateDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName", traits: {"smithy.api#required" => {}}))
    CreateDiskRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateDiskRequest.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb", traits: {"smithy.api#required" => {}}))
    CreateDiskRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDiskRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateDiskRequest.type = Types::CreateDiskRequest
    CreateDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskResult.type = Types::CreateDiskResult
    CreateDiskSnapshotRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName"))
    CreateDiskSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskSnapshotName", traits: {"smithy.api#required" => {}}))
    CreateDiskSnapshotRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    CreateDiskSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDiskSnapshotRequest.type = Types::CreateDiskSnapshotRequest
    CreateDiskSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateDiskSnapshotResult.type = Types::CreateDiskSnapshotResult
    CreateDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputOrigin, location_name: "origin", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "defaultCacheBehavior", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:cache_behavior_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSettings, location_name: "cacheBehaviorSettings"))
    CreateDistributionRequest.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "cacheBehaviors"))
    CreateDistributionRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateDistributionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDistributionRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName"))
    CreateDistributionRequest.add_member(:viewer_minimum_tls_protocol_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerMinimumTlsProtocolVersionEnum, location_name: "viewerMinimumTlsProtocolVersion"))
    CreateDistributionRequest.type = Types::CreateDistributionRequest
    CreateDistributionResult.add_member(:distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LightsailDistribution, location_name: "distribution"))
    CreateDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDistributionResult.type = Types::CreateDistributionResult
    CreateDomainEntryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainEntryRequest.add_member(:domain_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntry, location_name: "domainEntry", traits: {"smithy.api#required" => {}}))
    CreateDomainEntryRequest.type = Types::CreateDomainEntryRequest
    CreateDomainEntryResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDomainEntryResult.type = Types::CreateDomainEntryResult
    CreateDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateDomainResult.type = Types::CreateDomainResult
    CreateGUISessionAccessDetailsRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    CreateGUISessionAccessDetailsRequest.type = Types::CreateGUISessionAccessDetailsRequest
    CreateGUISessionAccessDetailsResult.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    CreateGUISessionAccessDetailsResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CreateGUISessionAccessDetailsResult.add_member(:percentage_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "percentageComplete"))
    CreateGUISessionAccessDetailsResult.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    CreateGUISessionAccessDetailsResult.add_member(:sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sessions, location_name: "sessions"))
    CreateGUISessionAccessDetailsResult.type = Types::CreateGUISessionAccessDetailsResult
    CreateInstanceSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceSnapshotName", traits: {"smithy.api#required" => {}}))
    CreateInstanceSnapshotRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    CreateInstanceSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInstanceSnapshotRequest.type = Types::CreateInstanceSnapshotRequest
    CreateInstanceSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstanceSnapshotResult.type = Types::CreateInstanceSnapshotResult
    CreateInstancesFromSnapshotRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "instanceNames", traits: {"smithy.api#required" => {}}))
    CreateInstancesFromSnapshotRequest.add_member(:attached_disk_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachedDiskMap, location_name: "attachedDiskMapping"))
    CreateInstancesFromSnapshotRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateInstancesFromSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceSnapshotName"))
    CreateInstancesFromSnapshotRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateInstancesFromSnapshotRequest.add_member(:user_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "userData"))
    CreateInstancesFromSnapshotRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    CreateInstancesFromSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInstancesFromSnapshotRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateInstancesFromSnapshotRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateInstancesFromSnapshotRequest.add_member(:source_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceInstanceName"))
    CreateInstancesFromSnapshotRequest.add_member(:restore_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "restoreDate"))
    CreateInstancesFromSnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "useLatestRestorableAutoSnapshot"))
    CreateInstancesFromSnapshotRequest.type = Types::CreateInstancesFromSnapshotRequest
    CreateInstancesFromSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstancesFromSnapshotResult.type = Types::CreateInstancesFromSnapshotResult
    CreateInstancesRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "instanceNames", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:custom_image_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "customImageName", traits: {"smithy.api#deprecated" => {}}))
    CreateInstancesRequest.add_member(:blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintId", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:user_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "userData"))
    CreateInstancesRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    CreateInstancesRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInstancesRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnRequestList, location_name: "addOns"))
    CreateInstancesRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateInstancesRequest.type = Types::CreateInstancesRequest
    CreateInstancesResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateInstancesResult.type = Types::CreateInstancesResult
    CreateKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName", traits: {"smithy.api#required" => {}}))
    CreateKeyPairRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateKeyPairRequest.type = Types::CreateKeyPairRequest
    CreateKeyPairResult.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair, location_name: "keyPair"))
    CreateKeyPairResult.add_member(:public_key_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "publicKeyBase64"))
    CreateKeyPairResult.add_member(:private_key_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "privateKeyBase64"))
    CreateKeyPairResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    CreateKeyPairResult.type = Types::CreateKeyPairResult
    CreateLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerRequest.add_member(:instance_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "instancePort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateLoadBalancerRequest.add_member(:health_check_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "healthCheckPath"))
    CreateLoadBalancerRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName"))
    CreateLoadBalancerRequest.add_member(:certificate_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "certificateDomainName"))
    CreateLoadBalancerRequest.add_member(:certificate_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameList, location_name: "certificateAlternativeNames"))
    CreateLoadBalancerRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateLoadBalancerRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateLoadBalancerRequest.add_member(:tls_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tlsPolicyName"))
    CreateLoadBalancerRequest.type = Types::CreateLoadBalancerRequest
    CreateLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateLoadBalancerResult.type = Types::CreateLoadBalancerResult
    CreateLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "certificateDomainName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameList, location_name: "certificateAlternativeNames"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateLoadBalancerTlsCertificateRequest.type = Types::CreateLoadBalancerTlsCertificateRequest
    CreateLoadBalancerTlsCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateLoadBalancerTlsCertificateResult.type = Types::CreateLoadBalancerTlsCertificateResult
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "relationalDatabaseBundleId"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:source_relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourceRelationalDatabaseName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:restore_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "restoreTime"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "useLatestRestorableTime"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationalDatabaseFromSnapshotRequest.type = Types::CreateRelationalDatabaseFromSnapshotRequest
    CreateRelationalDatabaseFromSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateRelationalDatabaseFromSnapshotResult.type = Types::CreateRelationalDatabaseFromSnapshotResult
    CreateRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateRelationalDatabaseRequest.add_member(:relational_database_blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "relationalDatabaseBlueprintId", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:relational_database_bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "relationalDatabaseBundleId", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:master_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "masterDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "masterUsername", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "masterUserPassword"))
    CreateRelationalDatabaseRequest.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "preferredBackupWindow"))
    CreateRelationalDatabaseRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "preferredMaintenanceWindow"))
    CreateRelationalDatabaseRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateRelationalDatabaseRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationalDatabaseRequest.type = Types::CreateRelationalDatabaseRequest
    CreateRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateRelationalDatabaseResult.type = Types::CreateRelationalDatabaseResult
    CreateRelationalDatabaseSnapshotRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationalDatabaseSnapshotRequest.type = Types::CreateRelationalDatabaseSnapshotRequest
    CreateRelationalDatabaseSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    CreateRelationalDatabaseSnapshotResult.type = Types::CreateRelationalDatabaseSnapshotResult
    Currency.add_member(:usd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    DeleteAlarmRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "alarmName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAlarmRequest.type = Types::DeleteAlarmRequest
    DeleteAlarmResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteAlarmResult.type = Types::DeleteAlarmResult
    DeleteAutoSnapshotRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    DeleteAutoSnapshotRequest.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSnapshotDate, location_name: "date", traits: {"smithy.api#required" => {}}))
    DeleteAutoSnapshotRequest.type = Types::DeleteAutoSnapshotRequest
    DeleteAutoSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteAutoSnapshotResult.type = Types::DeleteAutoSnapshotResult
    DeleteBucketAccessKeyRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    DeleteBucketAccessKeyRequest.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    DeleteBucketAccessKeyRequest.type = Types::DeleteBucketAccessKeyRequest
    DeleteBucketAccessKeyResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteBucketAccessKeyResult.type = Types::DeleteBucketAccessKeyResult
    DeleteBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    DeleteBucketRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "forceDelete"))
    DeleteBucketRequest.type = Types::DeleteBucketRequest
    DeleteBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteBucketResult.type = Types::DeleteBucketResult
    DeleteCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName", traits: {"smithy.api#required" => {}}))
    DeleteCertificateRequest.type = Types::DeleteCertificateRequest
    DeleteCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteCertificateResult.type = Types::DeleteCertificateResult
    DeleteContactMethodRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    DeleteContactMethodRequest.type = Types::DeleteContactMethodRequest
    DeleteContactMethodResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteContactMethodResult.type = Types::DeleteContactMethodResult
    DeleteContainerImageRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContainerImageRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "image", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContainerImageRequest.type = Types::DeleteContainerImageRequest
    DeleteContainerImageResult.type = Types::DeleteContainerImageResult
    DeleteContainerServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContainerServiceRequest.type = Types::DeleteContainerServiceRequest
    DeleteContainerServiceResult.type = Types::DeleteContainerServiceResult
    DeleteDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName", traits: {"smithy.api#required" => {}}))
    DeleteDiskRequest.add_member(:force_delete_add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "forceDeleteAddOns"))
    DeleteDiskRequest.type = Types::DeleteDiskRequest
    DeleteDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteDiskResult.type = Types::DeleteDiskResult
    DeleteDiskSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskSnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteDiskSnapshotRequest.type = Types::DeleteDiskSnapshotRequest
    DeleteDiskSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteDiskSnapshotResult.type = Types::DeleteDiskSnapshotResult
    DeleteDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    DeleteDistributionRequest.type = Types::DeleteDistributionRequest
    DeleteDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteDistributionResult.type = Types::DeleteDistributionResult
    DeleteDomainEntryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    DeleteDomainEntryRequest.add_member(:domain_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntry, location_name: "domainEntry", traits: {"smithy.api#required" => {}}))
    DeleteDomainEntryRequest.type = Types::DeleteDomainEntryRequest
    DeleteDomainEntryResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteDomainEntryResult.type = Types::DeleteDomainEntryResult
    DeleteDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteDomainResult.type = Types::DeleteDomainResult
    DeleteInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    DeleteInstanceRequest.add_member(:force_delete_add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "forceDeleteAddOns"))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteInstanceResult.type = Types::DeleteInstanceResult
    DeleteInstanceSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceSnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteInstanceSnapshotRequest.type = Types::DeleteInstanceSnapshotRequest
    DeleteInstanceSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteInstanceSnapshotResult.type = Types::DeleteInstanceSnapshotResult
    DeleteKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName", traits: {"smithy.api#required" => {}}))
    DeleteKeyPairRequest.add_member(:expected_fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "expectedFingerprint"))
    DeleteKeyPairRequest.type = Types::DeleteKeyPairRequest
    DeleteKeyPairResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DeleteKeyPairResult.type = Types::DeleteKeyPairResult
    DeleteKnownHostKeysRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    DeleteKnownHostKeysRequest.type = Types::DeleteKnownHostKeysRequest
    DeleteKnownHostKeysResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteKnownHostKeysResult.type = Types::DeleteKnownHostKeysResult
    DeleteLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerRequest.type = Types::DeleteLoadBalancerRequest
    DeleteLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteLoadBalancerResult.type = Types::DeleteLoadBalancerResult
    DeleteLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerTlsCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerTlsCertificateRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    DeleteLoadBalancerTlsCertificateRequest.type = Types::DeleteLoadBalancerTlsCertificateRequest
    DeleteLoadBalancerTlsCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteLoadBalancerTlsCertificateResult.type = Types::DeleteLoadBalancerTlsCertificateResult
    DeleteRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    DeleteRelationalDatabaseRequest.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "skipFinalSnapshot"))
    DeleteRelationalDatabaseRequest.add_member(:final_relational_database_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "finalRelationalDatabaseSnapshotName"))
    DeleteRelationalDatabaseRequest.type = Types::DeleteRelationalDatabaseRequest
    DeleteRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteRelationalDatabaseResult.type = Types::DeleteRelationalDatabaseResult
    DeleteRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteRelationalDatabaseSnapshotRequest.type = Types::DeleteRelationalDatabaseSnapshotRequest
    DeleteRelationalDatabaseSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DeleteRelationalDatabaseSnapshotResult.type = Types::DeleteRelationalDatabaseSnapshotResult
    DestinationInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    DestinationInfo.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "service"))
    DestinationInfo.type = Types::DestinationInfo
    DetachCertificateFromDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName", traits: {"smithy.api#required" => {}}))
    DetachCertificateFromDistributionRequest.type = Types::DetachCertificateFromDistributionRequest
    DetachCertificateFromDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    DetachCertificateFromDistributionResult.type = Types::DetachCertificateFromDistributionResult
    DetachDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName", traits: {"smithy.api#required" => {}}))
    DetachDiskRequest.type = Types::DetachDiskRequest
    DetachDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DetachDiskResult.type = Types::DetachDiskResult
    DetachInstancesFromLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    DetachInstancesFromLoadBalancerRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "instanceNames", traits: {"smithy.api#required" => {}}))
    DetachInstancesFromLoadBalancerRequest.type = Types::DetachInstancesFromLoadBalancerRequest
    DetachInstancesFromLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DetachInstancesFromLoadBalancerResult.type = Types::DetachInstancesFromLoadBalancerResult
    DetachStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "staticIpName", traits: {"smithy.api#required" => {}}))
    DetachStaticIpRequest.type = Types::DetachStaticIpRequest
    DetachStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DetachStaticIpResult.type = Types::DetachStaticIpResult
    DisableAddOnRequest.add_member(:add_on_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnType, location_name: "addOnType", traits: {"smithy.api#required" => {}}))
    DisableAddOnRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    DisableAddOnRequest.type = Types::DisableAddOnRequest
    DisableAddOnResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    DisableAddOnResult.type = Types::DisableAddOnResult
    Disk.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Disk.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Disk.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    Disk.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Disk.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Disk.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Disk.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Disk.add_member(:add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnList, location_name: "addOns"))
    Disk.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    Disk.add_member(:is_system_disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSystemDisk"))
    Disk.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "iops"))
    Disk.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "path"))
    Disk.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskState, location_name: "state"))
    Disk.add_member(:attached_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "attachedTo"))
    Disk.add_member(:is_attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAttached"))
    Disk.add_member(:attachment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "attachmentState", traits: {"smithy.api#deprecated" => {}}))
    Disk.add_member(:gb_in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "gbInUse", traits: {"smithy.api#deprecated" => {}}))
    Disk.add_member(:auto_mount_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoMountStatus, location_name: "autoMountStatus"))
    Disk.type = Types::Disk
    DiskInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DiskInfo.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "path"))
    DiskInfo.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    DiskInfo.add_member(:is_system_disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSystemDisk"))
    DiskInfo.type = Types::DiskInfo
    DiskInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskInfo)
    DiskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Disk)
    DiskMap.add_member(:original_disk_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "originalDiskPath"))
    DiskMap.add_member(:new_disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "newDiskName"))
    DiskMap.type = Types::DiskMap
    DiskMapList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskMap)
    DiskSnapshot.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    DiskSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    DiskSnapshot.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    DiskSnapshot.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    DiskSnapshot.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    DiskSnapshot.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    DiskSnapshot.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    DiskSnapshot.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    DiskSnapshot.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSnapshotState, location_name: "state"))
    DiskSnapshot.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "progress"))
    DiskSnapshot.add_member(:from_disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromDiskName"))
    DiskSnapshot.add_member(:from_disk_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromDiskArn"))
    DiskSnapshot.add_member(:from_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromInstanceName"))
    DiskSnapshot.add_member(:from_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromInstanceArn"))
    DiskSnapshot.add_member(:is_from_auto_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isFromAutoSnapshot"))
    DiskSnapshot.type = Types::DiskSnapshot
    DiskSnapshotInfo.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    DiskSnapshotInfo.type = Types::DiskSnapshotInfo
    DiskSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSnapshot)
    DiskSnapshotState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "pending"}))
    DiskSnapshotState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Completed", traits: {"smithy.api#enumValue" => "completed"}))
    DiskSnapshotState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Error", traits: {"smithy.api#enumValue" => "error"}))
    DiskSnapshotState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unknown", traits: {"smithy.api#enumValue" => "unknown"}))
    DiskState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "pending"}))
    DiskState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Error", traits: {"smithy.api#enumValue" => "error"}))
    DiskState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Available", traits: {"smithy.api#enumValue" => "available"}))
    DiskState.add_member(:in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InUse", traits: {"smithy.api#enumValue" => "in-use"}))
    DiskState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unknown", traits: {"smithy.api#enumValue" => "unknown"}))
    DistributionBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "bundleId"))
    DistributionBundle.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DistributionBundle.add_member(:price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "price"))
    DistributionBundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "transferPerMonthInGb"))
    DistributionBundle.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    DistributionBundle.type = Types::DistributionBundle
    DistributionBundleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionBundle)
    DistributionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LightsailDistribution)
    DistributionMetricName.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Requests", traits: {"smithy.api#enumValue" => "Requests"}))
    DistributionMetricName.add_member(:bytes_downloaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BytesDownloaded", traits: {"smithy.api#enumValue" => "BytesDownloaded"}))
    DistributionMetricName.add_member(:bytes_uploaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BytesUploaded", traits: {"smithy.api#enumValue" => "BytesUploaded"}))
    DistributionMetricName.add_member(:total_error_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TotalErrorRate", traits: {"smithy.api#enumValue" => "TotalErrorRate"}))
    DistributionMetricName.add_member(:http4xx_error_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Http4xxErrorRate", traits: {"smithy.api#enumValue" => "Http4xxErrorRate"}))
    DistributionMetricName.add_member(:http5xx_error_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Http5xxErrorRate", traits: {"smithy.api#enumValue" => "Http5xxErrorRate"}))
    DnsRecordCreationState.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRecordCreationStateCode, location_name: "code"))
    DnsRecordCreationState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DnsRecordCreationState.type = Types::DnsRecordCreationState
    DnsRecordCreationStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DnsRecordCreationStateCode.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    DnsRecordCreationStateCode.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    Domain.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Domain.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Domain.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    Domain.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Domain.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Domain.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Domain.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Domain.add_member(:domain_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntryList, location_name: "domainEntries"))
    Domain.add_member(:registered_domain_delegation_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisteredDomainDelegationInfo, location_name: "registeredDomainDelegationInfo"))
    Domain.type = Types::Domain
    DomainEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    DomainEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "name"))
    DomainEntry.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "target"))
    DomainEntry.add_member(:is_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAlias"))
    DomainEntry.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntryType, location_name: "type"))
    DomainEntry.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntryOptions, location_name: "options", traits: {"smithy.api#deprecated" => {}}))
    DomainEntry.type = Types::DomainEntry
    DomainEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntry)
    DomainEntryOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntryOptionsKeys)
    DomainEntryOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DomainList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain)
    DomainNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    DomainValidationRecord.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    DomainValidationRecord.add_member(:resource_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "resourceRecord"))
    DomainValidationRecord.add_member(:dns_record_creation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRecordCreationState, location_name: "dnsRecordCreationState"))
    DomainValidationRecord.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDomainValidationStatus, location_name: "validationStatus"))
    DomainValidationRecord.type = Types::DomainValidationRecord
    DomainValidationRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationRecord)
    DownloadDefaultKeyPairRequest.type = Types::DownloadDefaultKeyPairRequest
    DownloadDefaultKeyPairResult.add_member(:public_key_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "publicKeyBase64"))
    DownloadDefaultKeyPairResult.add_member(:private_key_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "privateKeyBase64"))
    DownloadDefaultKeyPairResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    DownloadDefaultKeyPairResult.type = Types::DownloadDefaultKeyPairResult
    EnableAddOnRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    EnableAddOnRequest.add_member(:add_on_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnRequest, location_name: "addOnRequest", traits: {"smithy.api#required" => {}}))
    EnableAddOnRequest.type = Types::EnableAddOnRequest
    EnableAddOnResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    EnableAddOnResult.type = Types::EnableAddOnResult
    EndpointRequest.add_member(:container_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "containerName", traits: {"smithy.api#required" => {}}))
    EndpointRequest.add_member(:container_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "containerPort", traits: {"smithy.api#required" => {}}))
    EndpointRequest.add_member(:health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceHealthCheckConfig, location_name: "healthCheck"))
    EndpointRequest.type = Types::EndpointRequest
    Environment.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Environment.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EstimateByTime.add_member(:usage_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "usageCost"))
    EstimateByTime.add_member(:pricing_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingUnit, location_name: "pricingUnit"))
    EstimateByTime.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "unit"))
    EstimateByTime.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: "currency"))
    EstimateByTime.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimePeriod, location_name: "timePeriod"))
    EstimateByTime.type = Types::EstimateByTime
    EstimatesByTime.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EstimateByTime)
    ExportSnapshotRecord.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ExportSnapshotRecord.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ExportSnapshotRecord.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ExportSnapshotRecord.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    ExportSnapshotRecord.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ExportSnapshotRecord.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordState, location_name: "state"))
    ExportSnapshotRecord.add_member(:source_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSnapshotRecordSourceInfo, location_name: "sourceInfo"))
    ExportSnapshotRecord.add_member(:destination_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationInfo, location_name: "destinationInfo"))
    ExportSnapshotRecord.type = Types::ExportSnapshotRecord
    ExportSnapshotRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSnapshotRecord)
    ExportSnapshotRecordSourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSnapshotRecordSourceType, location_name: "resourceType"))
    ExportSnapshotRecordSourceInfo.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    ExportSnapshotRecordSourceInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ExportSnapshotRecordSourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ExportSnapshotRecordSourceInfo.add_member(:from_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromResourceName"))
    ExportSnapshotRecordSourceInfo.add_member(:from_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromResourceArn"))
    ExportSnapshotRecordSourceInfo.add_member(:instance_snapshot_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSnapshotInfo, location_name: "instanceSnapshotInfo"))
    ExportSnapshotRecordSourceInfo.add_member(:disk_snapshot_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSnapshotInfo, location_name: "diskSnapshotInfo"))
    ExportSnapshotRecordSourceInfo.type = Types::ExportSnapshotRecordSourceInfo
    ExportSnapshotRecordSourceType.add_member(:instance_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceSnapshot", traits: {"smithy.api#enumValue" => "InstanceSnapshot"}))
    ExportSnapshotRecordSourceType.add_member(:disk_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DiskSnapshot", traits: {"smithy.api#enumValue" => "DiskSnapshot"}))
    ExportSnapshotRequest.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourceSnapshotName", traits: {"smithy.api#required" => {}}))
    ExportSnapshotRequest.type = Types::ExportSnapshotRequest
    ExportSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    ExportSnapshotResult.type = Types::ExportSnapshotResult
    ForwardValues.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "none", traits: {"smithy.api#enumValue" => "none"}))
    ForwardValues.add_member(:allow_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "allowList", traits: {"smithy.api#enumValue" => "allow-list"}))
    ForwardValues.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "all", traits: {"smithy.api#enumValue" => "all"}))
    GetActiveNamesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetActiveNamesRequest.type = Types::GetActiveNamesRequest
    GetActiveNamesResult.add_member(:active_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "activeNames"))
    GetActiveNamesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetActiveNamesResult.type = Types::GetActiveNamesResult
    GetAlarmsRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "alarmName", traits: {"smithy.api#httpQuery" => "alarmName"}))
    GetAlarmsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken", traits: {"smithy.api#httpQuery" => "pageToken"}))
    GetAlarmsRequest.add_member(:monitored_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "monitoredResourceName", traits: {"smithy.api#httpQuery" => "monitoredResourceName"}))
    GetAlarmsRequest.type = Types::GetAlarmsRequest
    GetAlarmsResult.add_member(:alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmsList, location_name: "alarms"))
    GetAlarmsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetAlarmsResult.type = Types::GetAlarmsResult
    GetAutoSnapshotsRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetAutoSnapshotsRequest.type = Types::GetAutoSnapshotsRequest
    GetAutoSnapshotsResult.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    GetAutoSnapshotsResult.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    GetAutoSnapshotsResult.add_member(:auto_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSnapshotDetailsList, location_name: "autoSnapshots"))
    GetAutoSnapshotsResult.type = Types::GetAutoSnapshotsResult
    GetBlueprintsRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeInactive"))
    GetBlueprintsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetBlueprintsRequest.add_member(:app_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppCategory, location_name: "appCategory"))
    GetBlueprintsRequest.type = Types::GetBlueprintsRequest
    GetBlueprintsResult.add_member(:blueprints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueprintList, location_name: "blueprints"))
    GetBlueprintsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetBlueprintsResult.type = Types::GetBlueprintsResult
    GetBucketAccessKeysRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    GetBucketAccessKeysRequest.type = Types::GetBucketAccessKeysRequest
    GetBucketAccessKeysResult.add_member(:access_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyList, location_name: "accessKeys"))
    GetBucketAccessKeysResult.type = Types::GetBucketAccessKeysResult
    GetBucketBundlesRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeInactive"))
    GetBucketBundlesRequest.type = Types::GetBucketBundlesRequest
    GetBucketBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketBundleList, location_name: "bundles"))
    GetBucketBundlesResult.type = Types::GetBucketBundlesResult
    GetBucketMetricDataRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatisticList, location_name: "statistics", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.type = Types::GetBucketMetricDataRequest
    GetBucketMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetricName, location_name: "metricName"))
    GetBucketMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetBucketMetricDataResult.type = Types::GetBucketMetricDataResult
    GetBucketsRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    GetBucketsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetBucketsRequest.add_member(:include_connected_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeConnectedResources"))
    GetBucketsRequest.type = Types::GetBucketsRequest
    GetBucketsResult.add_member(:buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketList, location_name: "buckets"))
    GetBucketsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetBucketsResult.add_member(:account_level_bpa_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLevelBpaSync, location_name: "accountLevelBpaSync"))
    GetBucketsResult.type = Types::GetBucketsResult
    GetBundlesRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeInactive"))
    GetBundlesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetBundlesRequest.add_member(:app_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppCategory, location_name: "appCategory"))
    GetBundlesRequest.type = Types::GetBundlesRequest
    GetBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BundleList, location_name: "bundles"))
    GetBundlesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetBundlesResult.type = Types::GetBundlesResult
    GetCertificatesRequest.add_member(:certificate_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatusList, location_name: "certificateStatuses"))
    GetCertificatesRequest.add_member(:include_certificate_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeCertificateDetails, location_name: "includeCertificateDetails", traits: {"smithy.api#default" => false}))
    GetCertificatesRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName"))
    GetCertificatesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetCertificatesRequest.type = Types::GetCertificatesRequest
    GetCertificatesResult.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: "certificates"))
    GetCertificatesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetCertificatesResult.type = Types::GetCertificatesResult
    GetCloudFormationStackRecordsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetCloudFormationStackRecordsRequest.type = Types::GetCloudFormationStackRecordsRequest
    GetCloudFormationStackRecordsResult.add_member(:cloud_formation_stack_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationStackRecordList, location_name: "cloudFormationStackRecords"))
    GetCloudFormationStackRecordsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetCloudFormationStackRecordsResult.type = Types::GetCloudFormationStackRecordsResult
    GetContactMethodsRequest.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocolsList, location_name: "protocols", traits: {"smithy.api#httpQuery" => "protocols"}))
    GetContactMethodsRequest.type = Types::GetContactMethodsRequest
    GetContactMethodsResult.add_member(:contact_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactMethodsList, location_name: "contactMethods"))
    GetContactMethodsResult.type = Types::GetContactMethodsResult
    GetContainerAPIMetadataRequest.type = Types::GetContainerAPIMetadataRequest
    GetContainerAPIMetadataResult.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceMetadataEntryList, location_name: "metadata"))
    GetContainerAPIMetadataResult.type = Types::GetContainerAPIMetadataResult
    GetContainerImagesRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerImagesRequest.type = Types::GetContainerImagesRequest
    GetContainerImagesResult.add_member(:container_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerImageList, location_name: "containerImages"))
    GetContainerImagesResult.type = Types::GetContainerImagesResult
    GetContainerLogRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerLogRequest.add_member(:container_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "containerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerLogRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    GetContainerLogRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    GetContainerLogRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "filterPattern", traits: {"smithy.api#httpQuery" => "filterPattern"}))
    GetContainerLogRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken", traits: {"smithy.api#httpQuery" => "pageToken"}))
    GetContainerLogRequest.type = Types::GetContainerLogRequest
    GetContainerLogResult.add_member(:log_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceLogEventList, location_name: "logEvents"))
    GetContainerLogResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetContainerLogResult.type = Types::GetContainerLogResult
    GetContainerServiceDeploymentsRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerServiceDeploymentsRequest.type = Types::GetContainerServiceDeploymentsRequest
    GetContainerServiceDeploymentsResult.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceDeploymentList, location_name: "deployments"))
    GetContainerServiceDeploymentsResult.type = Types::GetContainerServiceDeploymentsResult
    GetContainerServiceMetricDataRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceMetricName, location_name: "metricName", traits: {"smithy.api#httpQuery" => "metricName", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period", traits: {"smithy.api#httpQuery" => "period", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatisticList, location_name: "statistics", traits: {"smithy.api#httpQuery" => "statistics", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.type = Types::GetContainerServiceMetricDataRequest
    GetContainerServiceMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceMetricName, location_name: "metricName"))
    GetContainerServiceMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetContainerServiceMetricDataResult.type = Types::GetContainerServiceMetricDataResult
    GetContainerServicePowersRequest.type = Types::GetContainerServicePowersRequest
    GetContainerServicePowersResult.add_member(:powers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePowerList, location_name: "powers"))
    GetContainerServicePowersResult.type = Types::GetContainerServicePowersResult
    GetContainerServicesRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpQuery" => "serviceName"}))
    GetContainerServicesRequest.type = Types::GetContainerServicesRequest
    GetCostEstimateRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetCostEstimateRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    GetCostEstimateRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    GetCostEstimateRequest.type = Types::GetCostEstimateRequest
    GetCostEstimateResult.add_member(:resources_budget_estimate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesBudgetEstimate, location_name: "resourcesBudgetEstimate"))
    GetCostEstimateResult.type = Types::GetCostEstimateResult
    GetDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskName", traits: {"smithy.api#required" => {}}))
    GetDiskRequest.type = Types::GetDiskRequest
    GetDiskResult.add_member(:disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Disk, location_name: "disk"))
    GetDiskResult.type = Types::GetDiskResult
    GetDiskSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "diskSnapshotName", traits: {"smithy.api#required" => {}}))
    GetDiskSnapshotRequest.type = Types::GetDiskSnapshotRequest
    GetDiskSnapshotResult.add_member(:disk_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSnapshot, location_name: "diskSnapshot"))
    GetDiskSnapshotResult.type = Types::GetDiskSnapshotResult
    GetDiskSnapshotsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetDiskSnapshotsRequest.type = Types::GetDiskSnapshotsRequest
    GetDiskSnapshotsResult.add_member(:disk_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSnapshotList, location_name: "diskSnapshots"))
    GetDiskSnapshotsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetDiskSnapshotsResult.type = Types::GetDiskSnapshotsResult
    GetDisksRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetDisksRequest.type = Types::GetDisksRequest
    GetDisksResult.add_member(:disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskList, location_name: "disks"))
    GetDisksResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetDisksResult.type = Types::GetDisksResult
    GetDistributionBundlesRequest.type = Types::GetDistributionBundlesRequest
    GetDistributionBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionBundleList, location_name: "bundles"))
    GetDistributionBundlesResult.type = Types::GetDistributionBundlesResult
    GetDistributionLatestCacheResetRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    GetDistributionLatestCacheResetRequest.type = Types::GetDistributionLatestCacheResetRequest
    GetDistributionLatestCacheResetResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    GetDistributionLatestCacheResetResult.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createTime"))
    GetDistributionLatestCacheResetResult.type = Types::GetDistributionLatestCacheResetResult
    GetDistributionMetricDataRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionMetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatisticList, location_name: "statistics", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.type = Types::GetDistributionMetricDataRequest
    GetDistributionMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionMetricName, location_name: "metricName"))
    GetDistributionMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetDistributionMetricDataResult.type = Types::GetDistributionMetricDataResult
    GetDistributionsRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    GetDistributionsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetDistributionsRequest.type = Types::GetDistributionsRequest
    GetDistributionsResult.add_member(:distributions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionList, location_name: "distributions"))
    GetDistributionsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetDistributionsResult.type = Types::GetDistributionsResult
    GetDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    GetDomainRequest.type = Types::GetDomainRequest
    GetDomainResult.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: "domain"))
    GetDomainResult.type = Types::GetDomainResult
    GetDomainsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetDomainsRequest.type = Types::GetDomainsRequest
    GetDomainsResult.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: "domains"))
    GetDomainsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetDomainsResult.type = Types::GetDomainsResult
    GetExportSnapshotRecordsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetExportSnapshotRecordsRequest.type = Types::GetExportSnapshotRecordsRequest
    GetExportSnapshotRecordsResult.add_member(:export_snapshot_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSnapshotRecordList, location_name: "exportSnapshotRecords"))
    GetExportSnapshotRecordsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetExportSnapshotRecordsResult.type = Types::GetExportSnapshotRecordsResult
    GetInstanceAccessDetailsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceAccessDetailsRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessProtocol, location_name: "protocol"))
    GetInstanceAccessDetailsRequest.type = Types::GetInstanceAccessDetailsRequest
    GetInstanceAccessDetailsResult.add_member(:access_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessDetails, location_name: "accessDetails"))
    GetInstanceAccessDetailsResult.type = Types::GetInstanceAccessDetailsResult
    GetInstanceMetricDataRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatisticList, location_name: "statistics", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.type = Types::GetInstanceMetricDataRequest
    GetInstanceMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetricName, location_name: "metricName"))
    GetInstanceMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetInstanceMetricDataResult.type = Types::GetInstanceMetricDataResult
    GetInstancePortStatesRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstancePortStatesRequest.type = Types::GetInstancePortStatesRequest
    GetInstancePortStatesResult.add_member(:port_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePortStateList, location_name: "portStates"))
    GetInstancePortStatesResult.type = Types::GetInstancePortStatesResult
    GetInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceRequest.type = Types::GetInstanceRequest
    GetInstanceResult.add_member(:instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance, location_name: "instance"))
    GetInstanceResult.type = Types::GetInstanceResult
    GetInstanceSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceSnapshotName", traits: {"smithy.api#required" => {}}))
    GetInstanceSnapshotRequest.type = Types::GetInstanceSnapshotRequest
    GetInstanceSnapshotResult.add_member(:instance_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSnapshot, location_name: "instanceSnapshot"))
    GetInstanceSnapshotResult.type = Types::GetInstanceSnapshotResult
    GetInstanceSnapshotsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetInstanceSnapshotsRequest.type = Types::GetInstanceSnapshotsRequest
    GetInstanceSnapshotsResult.add_member(:instance_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSnapshotList, location_name: "instanceSnapshots"))
    GetInstanceSnapshotsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetInstanceSnapshotsResult.type = Types::GetInstanceSnapshotsResult
    GetInstanceStateRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceStateRequest.type = Types::GetInstanceStateRequest
    GetInstanceStateResult.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState, location_name: "state"))
    GetInstanceStateResult.type = Types::GetInstanceStateResult
    GetInstancesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetInstancesRequest.type = Types::GetInstancesRequest
    GetInstancesResult.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: "instances"))
    GetInstancesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetInstancesResult.type = Types::GetInstancesResult
    GetKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName", traits: {"smithy.api#required" => {}}))
    GetKeyPairRequest.type = Types::GetKeyPairRequest
    GetKeyPairResult.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair, location_name: "keyPair"))
    GetKeyPairResult.type = Types::GetKeyPairResult
    GetKeyPairsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetKeyPairsRequest.add_member(:include_default_key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeDefaultKeyPair"))
    GetKeyPairsRequest.type = Types::GetKeyPairsRequest
    GetKeyPairsResult.add_member(:key_pairs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPairList, location_name: "keyPairs"))
    GetKeyPairsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetKeyPairsResult.type = Types::GetKeyPairsResult
    GetLoadBalancerMetricDataRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerMetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatisticList, location_name: "statistics", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.type = Types::GetLoadBalancerMetricDataRequest
    GetLoadBalancerMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerMetricName, location_name: "metricName"))
    GetLoadBalancerMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetLoadBalancerMetricDataResult.type = Types::GetLoadBalancerMetricDataResult
    GetLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerRequest.type = Types::GetLoadBalancerRequest
    GetLoadBalancerResult.add_member(:load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancer, location_name: "loadBalancer"))
    GetLoadBalancerResult.type = Types::GetLoadBalancerResult
    GetLoadBalancerTlsCertificatesRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerTlsCertificatesRequest.type = Types::GetLoadBalancerTlsCertificatesRequest
    GetLoadBalancerTlsCertificatesResult.add_member(:tls_certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateList, location_name: "tlsCertificates"))
    GetLoadBalancerTlsCertificatesResult.type = Types::GetLoadBalancerTlsCertificatesResult
    GetLoadBalancerTlsPoliciesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetLoadBalancerTlsPoliciesRequest.type = Types::GetLoadBalancerTlsPoliciesRequest
    GetLoadBalancerTlsPoliciesResult.add_member(:tls_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsPolicyList, location_name: "tlsPolicies"))
    GetLoadBalancerTlsPoliciesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetLoadBalancerTlsPoliciesResult.type = Types::GetLoadBalancerTlsPoliciesResult
    GetLoadBalancersRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetLoadBalancersRequest.type = Types::GetLoadBalancersRequest
    GetLoadBalancersResult.add_member(:load_balancers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerList, location_name: "loadBalancers"))
    GetLoadBalancersResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetLoadBalancersResult.type = Types::GetLoadBalancersResult
    GetOperationRequest.add_member(:operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "operationId", traits: {"smithy.api#required" => {}}))
    GetOperationRequest.type = Types::GetOperationRequest
    GetOperationResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    GetOperationResult.type = Types::GetOperationResult
    GetOperationsForResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetOperationsForResourceRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetOperationsForResourceRequest.type = Types::GetOperationsForResourceRequest
    GetOperationsForResourceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    GetOperationsForResourceResult.add_member(:next_page_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageCount", traits: {"smithy.api#deprecated" => {}}))
    GetOperationsForResourceResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetOperationsForResourceResult.type = Types::GetOperationsForResourceResult
    GetOperationsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetOperationsRequest.type = Types::GetOperationsRequest
    GetOperationsResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    GetOperationsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetOperationsResult.type = Types::GetOperationsResult
    GetRegionsRequest.add_member(:include_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeAvailabilityZones"))
    GetRegionsRequest.add_member(:include_relational_database_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeRelationalDatabaseAvailabilityZones"))
    GetRegionsRequest.type = Types::GetRegionsRequest
    GetRegionsResult.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    GetRegionsResult.type = Types::GetRegionsResult
    GetRelationalDatabaseBlueprintsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabaseBlueprintsRequest.type = Types::GetRelationalDatabaseBlueprintsRequest
    GetRelationalDatabaseBlueprintsResult.add_member(:blueprints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseBlueprintList, location_name: "blueprints"))
    GetRelationalDatabaseBlueprintsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetRelationalDatabaseBlueprintsResult.type = Types::GetRelationalDatabaseBlueprintsResult
    GetRelationalDatabaseBundlesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabaseBundlesRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeInactive"))
    GetRelationalDatabaseBundlesRequest.type = Types::GetRelationalDatabaseBundlesRequest
    GetRelationalDatabaseBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseBundleList, location_name: "bundles"))
    GetRelationalDatabaseBundlesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetRelationalDatabaseBundlesResult.type = Types::GetRelationalDatabaseBundlesResult
    GetRelationalDatabaseEventsRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseEventsRequest.add_member(:duration_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "durationInMinutes"))
    GetRelationalDatabaseEventsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabaseEventsRequest.type = Types::GetRelationalDatabaseEventsRequest
    GetRelationalDatabaseEventsResult.add_member(:relational_database_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseEventList, location_name: "relationalDatabaseEvents"))
    GetRelationalDatabaseEventsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetRelationalDatabaseEventsResult.type = Types::GetRelationalDatabaseEventsResult
    GetRelationalDatabaseLogEventsRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseLogEventsRequest.add_member(:log_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "logStreamName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseLogEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime"))
    GetRelationalDatabaseLogEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime"))
    GetRelationalDatabaseLogEventsRequest.add_member(:start_from_head, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "startFromHead"))
    GetRelationalDatabaseLogEventsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabaseLogEventsRequest.type = Types::GetRelationalDatabaseLogEventsRequest
    GetRelationalDatabaseLogEventsResult.add_member(:resource_log_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogEventList, location_name: "resourceLogEvents"))
    GetRelationalDatabaseLogEventsResult.add_member(:next_backward_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextBackwardToken"))
    GetRelationalDatabaseLogEventsResult.add_member(:next_forward_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextForwardToken"))
    GetRelationalDatabaseLogEventsResult.type = Types::GetRelationalDatabaseLogEventsResult
    GetRelationalDatabaseLogStreamsRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseLogStreamsRequest.type = Types::GetRelationalDatabaseLogStreamsRequest
    GetRelationalDatabaseLogStreamsResult.add_member(:log_streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "logStreams"))
    GetRelationalDatabaseLogStreamsResult.type = Types::GetRelationalDatabaseLogStreamsResult
    GetRelationalDatabaseMasterUserPasswordRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMasterUserPasswordRequest.add_member(:password_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabasePasswordVersion, location_name: "passwordVersion"))
    GetRelationalDatabaseMasterUserPasswordRequest.type = Types::GetRelationalDatabaseMasterUserPasswordRequest
    GetRelationalDatabaseMasterUserPasswordResult.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "masterUserPassword"))
    GetRelationalDatabaseMasterUserPasswordResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    GetRelationalDatabaseMasterUserPasswordResult.type = Types::GetRelationalDatabaseMasterUserPasswordResult
    GetRelationalDatabaseMetricDataRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseMetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPeriod, location_name: "period", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatisticList, location_name: "statistics", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.type = Types::GetRelationalDatabaseMetricDataRequest
    GetRelationalDatabaseMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseMetricName, location_name: "metricName"))
    GetRelationalDatabaseMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapointList, location_name: "metricData"))
    GetRelationalDatabaseMetricDataResult.type = Types::GetRelationalDatabaseMetricDataResult
    GetRelationalDatabaseParametersRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseParametersRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabaseParametersRequest.type = Types::GetRelationalDatabaseParametersRequest
    GetRelationalDatabaseParametersResult.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseParameterList, location_name: "parameters"))
    GetRelationalDatabaseParametersResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetRelationalDatabaseParametersResult.type = Types::GetRelationalDatabaseParametersResult
    GetRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseRequest.type = Types::GetRelationalDatabaseRequest
    GetRelationalDatabaseResult.add_member(:relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabase, location_name: "relationalDatabase"))
    GetRelationalDatabaseResult.type = Types::GetRelationalDatabaseResult
    GetRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseSnapshotRequest.type = Types::GetRelationalDatabaseSnapshotRequest
    GetRelationalDatabaseSnapshotResult.add_member(:relational_database_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseSnapshot, location_name: "relationalDatabaseSnapshot"))
    GetRelationalDatabaseSnapshotResult.type = Types::GetRelationalDatabaseSnapshotResult
    GetRelationalDatabaseSnapshotsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabaseSnapshotsRequest.type = Types::GetRelationalDatabaseSnapshotsRequest
    GetRelationalDatabaseSnapshotsResult.add_member(:relational_database_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseSnapshotList, location_name: "relationalDatabaseSnapshots"))
    GetRelationalDatabaseSnapshotsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetRelationalDatabaseSnapshotsResult.type = Types::GetRelationalDatabaseSnapshotsResult
    GetRelationalDatabasesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetRelationalDatabasesRequest.type = Types::GetRelationalDatabasesRequest
    GetRelationalDatabasesResult.add_member(:relational_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseList, location_name: "relationalDatabases"))
    GetRelationalDatabasesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetRelationalDatabasesResult.type = Types::GetRelationalDatabasesResult
    GetSetupHistoryRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetSetupHistoryRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupHistoryPageToken, location_name: "pageToken"))
    GetSetupHistoryRequest.type = Types::GetSetupHistoryRequest
    GetSetupHistoryResult.add_member(:setup_history, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupHistoryList, location_name: "setupHistory"))
    GetSetupHistoryResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupHistoryPageToken, location_name: "nextPageToken"))
    GetSetupHistoryResult.type = Types::GetSetupHistoryResult
    GetStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "staticIpName", traits: {"smithy.api#required" => {}}))
    GetStaticIpRequest.type = Types::GetStaticIpRequest
    GetStaticIpResult.add_member(:static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StaticIp, location_name: "staticIp"))
    GetStaticIpResult.type = Types::GetStaticIpResult
    GetStaticIpsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pageToken"))
    GetStaticIpsRequest.type = Types::GetStaticIpsRequest
    GetStaticIpsResult.add_member(:static_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StaticIpList, location_name: "staticIps"))
    GetStaticIpsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextPageToken"))
    GetStaticIpsResult.type = Types::GetStaticIpsResult
    HeaderEnum.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "accept", traits: {"smithy.api#enumValue" => "Accept"}))
    HeaderEnum.add_member(:accept_charset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "acceptCharset", traits: {"smithy.api#enumValue" => "Accept-Charset"}))
    HeaderEnum.add_member(:accept_datetime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "acceptDatetime", traits: {"smithy.api#enumValue" => "Accept-Datetime"}))
    HeaderEnum.add_member(:accept_encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "acceptEncoding", traits: {"smithy.api#enumValue" => "Accept-Encoding"}))
    HeaderEnum.add_member(:accept_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "acceptLanguage", traits: {"smithy.api#enumValue" => "Accept-Language"}))
    HeaderEnum.add_member(:authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "authorization", traits: {"smithy.api#enumValue" => "Authorization"}))
    HeaderEnum.add_member(:cloud_front_forwarded_proto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cloudFrontForwardedProto", traits: {"smithy.api#enumValue" => "CloudFront-Forwarded-Proto"}))
    HeaderEnum.add_member(:cloud_front_is_desktop_viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cloudFrontIsDesktopViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-Desktop-Viewer"}))
    HeaderEnum.add_member(:cloud_front_is_mobile_viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cloudFrontIsMobileViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-Mobile-Viewer"}))
    HeaderEnum.add_member(:cloud_front_is_smart_tv_viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cloudFrontIsSmartTVViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-SmartTV-Viewer"}))
    HeaderEnum.add_member(:cloud_front_is_tablet_viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cloudFrontIsTabletViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-Tablet-Viewer"}))
    HeaderEnum.add_member(:cloud_front_viewer_country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cloudFrontViewerCountry", traits: {"smithy.api#enumValue" => "CloudFront-Viewer-Country"}))
    HeaderEnum.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "host", traits: {"smithy.api#enumValue" => "Host"}))
    HeaderEnum.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "origin", traits: {"smithy.api#enumValue" => "Origin"}))
    HeaderEnum.add_member(:referer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "referer", traits: {"smithy.api#enumValue" => "Referer"}))
    HeaderForwardList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderEnum)
    HeaderObject.add_member(:option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardValues, location_name: "option"))
    HeaderObject.add_member(:headers_allow_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderForwardList, location_name: "headersAllowList"))
    HeaderObject.type = Types::HeaderObject
    HostKeyAttributes.add_member(:algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "algorithm"))
    HostKeyAttributes.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "publicKey"))
    HostKeyAttributes.add_member(:witnessed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "witnessedAt"))
    HostKeyAttributes.add_member(:fingerprint_sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fingerprintSHA1"))
    HostKeyAttributes.add_member(:fingerprint_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fingerprintSHA256"))
    HostKeyAttributes.add_member(:not_valid_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "notValidBefore"))
    HostKeyAttributes.add_member(:not_valid_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "notValidAfter"))
    HostKeyAttributes.type = Types::HostKeyAttributes
    HostKeysList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyAttributes)
    HttpEndpoint.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "disabled", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpEndpoint.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "enabled", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpProtocolIpv6.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "disabled", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpProtocolIpv6.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "enabled", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpTokens.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "optional", traits: {"smithy.api#enumValue" => "optional"}))
    HttpTokens.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "required", traits: {"smithy.api#enumValue" => "required"}))
    ImportKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName", traits: {"smithy.api#required" => {}}))
    ImportKeyPairRequest.add_member(:public_key_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "publicKeyBase64", traits: {"smithy.api#required" => {}}))
    ImportKeyPairRequest.type = Types::ImportKeyPairRequest
    ImportKeyPairResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    ImportKeyPairResult.type = Types::ImportKeyPairResult
    InputOrigin.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InputOrigin.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    InputOrigin.add_member(:protocol_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginProtocolPolicyEnum, location_name: "protocolPolicy"))
    InputOrigin.add_member(:response_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "responseTimeout"))
    InputOrigin.type = Types::InputOrigin
    Instance.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Instance.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Instance.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    Instance.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Instance.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Instance.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Instance.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Instance.add_member(:blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintId"))
    Instance.add_member(:blueprint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "blueprintName"))
    Instance.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId"))
    Instance.add_member(:add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddOnList, location_name: "addOns"))
    Instance.add_member(:is_static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isStaticIp"))
    Instance.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: "privateIpAddress"))
    Instance.add_member(:public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: "publicIpAddress"))
    Instance.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6AddressList, location_name: "ipv6Addresses"))
    Instance.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    Instance.add_member(:hardware, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHardware, location_name: "hardware"))
    Instance.add_member(:networking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNetworking, location_name: "networking"))
    Instance.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState, location_name: "state"))
    Instance.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "username"))
    Instance.add_member(:ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "sshKeyName"))
    Instance.add_member(:metadata_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetadataOptions, location_name: "metadataOptions"))
    Instance.type = Types::Instance
    InstanceAccessDetails.add_member(:cert_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "certKey"))
    InstanceAccessDetails.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "expiresAt"))
    InstanceAccessDetails.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    InstanceAccessDetails.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6AddressList, location_name: "ipv6Addresses"))
    InstanceAccessDetails.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "password"))
    InstanceAccessDetails.add_member(:password_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordData, location_name: "passwordData"))
    InstanceAccessDetails.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "privateKey"))
    InstanceAccessDetails.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessProtocol, location_name: "protocol"))
    InstanceAccessDetails.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    InstanceAccessDetails.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "username"))
    InstanceAccessDetails.add_member(:host_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeysList, location_name: "hostKeys"))
    InstanceAccessDetails.type = Types::InstanceAccessDetails
    InstanceAccessProtocol.add_member(:ssh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ssh", traits: {"smithy.api#enumValue" => "ssh"}))
    InstanceAccessProtocol.add_member(:rdp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rdp", traits: {"smithy.api#enumValue" => "rdp"}))
    InstanceEntry.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourceName", traits: {"smithy.api#required" => {}}))
    InstanceEntry.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "instanceType", traits: {"smithy.api#required" => {}}))
    InstanceEntry.add_member(:port_info_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortInfoSourceType, location_name: "portInfoSource", traits: {"smithy.api#required" => {}}))
    InstanceEntry.add_member(:user_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "userData"))
    InstanceEntry.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    InstanceEntry.type = Types::InstanceEntry
    InstanceEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceEntry)
    InstanceHardware.add_member(:cpu_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCount"))
    InstanceHardware.add_member(:disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskList, location_name: "disks"))
    InstanceHardware.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "ramSizeInGb"))
    InstanceHardware.type = Types::InstanceHardware
    InstanceHealthReason.add_member(:lb_registration_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LbRegistrationInProgress", traits: {"smithy.api#enumValue" => "Lb.RegistrationInProgress"}))
    InstanceHealthReason.add_member(:lb_initial_health_checking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LbInitialHealthChecking", traits: {"smithy.api#enumValue" => "Lb.InitialHealthChecking"}))
    InstanceHealthReason.add_member(:lb_internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LbInternalError", traits: {"smithy.api#enumValue" => "Lb.InternalError"}))
    InstanceHealthReason.add_member(:instance_response_code_mismatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceResponseCodeMismatch", traits: {"smithy.api#enumValue" => "Instance.ResponseCodeMismatch"}))
    InstanceHealthReason.add_member(:instance_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceTimeout", traits: {"smithy.api#enumValue" => "Instance.Timeout"}))
    InstanceHealthReason.add_member(:instance_failed_health_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceFailedHealthChecks", traits: {"smithy.api#enumValue" => "Instance.FailedHealthChecks"}))
    InstanceHealthReason.add_member(:instance_not_registered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceNotRegistered", traits: {"smithy.api#enumValue" => "Instance.NotRegistered"}))
    InstanceHealthReason.add_member(:instance_not_in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceNotInUse", traits: {"smithy.api#enumValue" => "Instance.NotInUse"}))
    InstanceHealthReason.add_member(:instance_deregistration_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceDeregistrationInProgress", traits: {"smithy.api#enumValue" => "Instance.DeregistrationInProgress"}))
    InstanceHealthReason.add_member(:instance_invalid_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceInvalidState", traits: {"smithy.api#enumValue" => "Instance.InvalidState"}))
    InstanceHealthReason.add_member(:instance_ip_unusable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceIpUnusable", traits: {"smithy.api#enumValue" => "Instance.IpUnusable"}))
    InstanceHealthState.add_member(:initial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Initial", traits: {"smithy.api#enumValue" => "initial"}))
    InstanceHealthState.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Healthy", traits: {"smithy.api#enumValue" => "healthy"}))
    InstanceHealthState.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unhealthy", traits: {"smithy.api#enumValue" => "unhealthy"}))
    InstanceHealthState.add_member(:unused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unused", traits: {"smithy.api#enumValue" => "unused"}))
    InstanceHealthState.add_member(:draining, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Draining", traits: {"smithy.api#enumValue" => "draining"}))
    InstanceHealthState.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unavailable", traits: {"smithy.api#enumValue" => "unavailable"}))
    InstanceHealthSummary.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    InstanceHealthSummary.add_member(:instance_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHealthState, location_name: "instanceHealth"))
    InstanceHealthSummary.add_member(:instance_health_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHealthReason, location_name: "instanceHealthReason"))
    InstanceHealthSummary.type = Types::InstanceHealthSummary
    InstanceHealthSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHealthSummary)
    InstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InstanceMetadataOptions.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetadataState, location_name: "state"))
    InstanceMetadataOptions.add_member(:http_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpTokens, location_name: "httpTokens"))
    InstanceMetadataOptions.add_member(:http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpoint, location_name: "httpEndpoint"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "httpPutResponseHopLimit"))
    InstanceMetadataOptions.add_member(:http_protocol_ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpProtocolIpv6, location_name: "httpProtocolIpv6"))
    InstanceMetadataOptions.type = Types::InstanceMetadataOptions
    InstanceMetadataState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "pending", traits: {"smithy.api#enumValue" => "pending"}))
    InstanceMetadataState.add_member(:applied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "applied", traits: {"smithy.api#enumValue" => "applied"}))
    InstanceMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    InstanceMetricName.add_member(:network_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkIn", traits: {"smithy.api#enumValue" => "NetworkIn"}))
    InstanceMetricName.add_member(:network_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkOut", traits: {"smithy.api#enumValue" => "NetworkOut"}))
    InstanceMetricName.add_member(:status_check_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StatusCheckFailed", traits: {"smithy.api#enumValue" => "StatusCheckFailed"}))
    InstanceMetricName.add_member(:status_check_failed_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StatusCheckFailed_Instance", traits: {"smithy.api#enumValue" => "StatusCheckFailed_Instance"}))
    InstanceMetricName.add_member(:status_check_failed_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StatusCheckFailed_System", traits: {"smithy.api#enumValue" => "StatusCheckFailed_System"}))
    InstanceMetricName.add_member(:burst_capacity_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BurstCapacityTime", traits: {"smithy.api#enumValue" => "BurstCapacityTime"}))
    InstanceMetricName.add_member(:burst_capacity_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BurstCapacityPercentage", traits: {"smithy.api#enumValue" => "BurstCapacityPercentage"}))
    InstanceMetricName.add_member(:metadata_no_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MetadataNoToken", traits: {"smithy.api#enumValue" => "MetadataNoToken"}))
    InstanceNetworking.add_member(:monthly_transfer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyTransfer, location_name: "monthlyTransfer"))
    InstanceNetworking.add_member(:ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePortInfoList, location_name: "ports"))
    InstanceNetworking.type = Types::InstanceNetworking
    InstancePlatform.add_member(:linux_unix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LinuxUnix", traits: {"smithy.api#enumValue" => "LINUX_UNIX"}))
    InstancePlatform.add_member(:windows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Windows", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    InstancePlatformList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePlatform)
    InstancePortInfo.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "fromPort", traits: {"smithy.api#default" => 0}))
    InstancePortInfo.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "toPort", traits: {"smithy.api#default" => 0}))
    InstancePortInfo.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    InstancePortInfo.add_member(:access_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "accessFrom"))
    InstancePortInfo.add_member(:access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortAccessType, location_name: "accessType"))
    InstancePortInfo.add_member(:common_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "commonName"))
    InstancePortInfo.add_member(:access_direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDirection, location_name: "accessDirection"))
    InstancePortInfo.add_member(:cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    InstancePortInfo.add_member(:ipv6_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "ipv6Cidrs"))
    InstancePortInfo.add_member(:cidr_list_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cidrListAliases"))
    InstancePortInfo.type = Types::InstancePortInfo
    InstancePortInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePortInfo)
    InstancePortState.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "fromPort", traits: {"smithy.api#default" => 0}))
    InstancePortState.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "toPort", traits: {"smithy.api#default" => 0}))
    InstancePortState.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    InstancePortState.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortState, location_name: "state"))
    InstancePortState.add_member(:cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    InstancePortState.add_member(:ipv6_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "ipv6Cidrs"))
    InstancePortState.add_member(:cidr_list_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cidrListAliases"))
    InstancePortState.type = Types::InstancePortState
    InstancePortStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePortState)
    InstanceSnapshot.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InstanceSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    InstanceSnapshot.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    InstanceSnapshot.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    InstanceSnapshot.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    InstanceSnapshot.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    InstanceSnapshot.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    InstanceSnapshot.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSnapshotState, location_name: "state"))
    InstanceSnapshot.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "progress"))
    InstanceSnapshot.add_member(:from_attached_disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskList, location_name: "fromAttachedDisks"))
    InstanceSnapshot.add_member(:from_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "fromInstanceName"))
    InstanceSnapshot.add_member(:from_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromInstanceArn"))
    InstanceSnapshot.add_member(:from_blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fromBlueprintId"))
    InstanceSnapshot.add_member(:from_bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fromBundleId"))
    InstanceSnapshot.add_member(:is_from_auto_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isFromAutoSnapshot"))
    InstanceSnapshot.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    InstanceSnapshot.type = Types::InstanceSnapshot
    InstanceSnapshotInfo.add_member(:from_bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromBundleId"))
    InstanceSnapshotInfo.add_member(:from_blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromBlueprintId"))
    InstanceSnapshotInfo.add_member(:from_disk_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskInfoList, location_name: "fromDiskInfo"))
    InstanceSnapshotInfo.type = Types::InstanceSnapshotInfo
    InstanceSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSnapshot)
    InstanceSnapshotState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "pending"}))
    InstanceSnapshotState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Error", traits: {"smithy.api#enumValue" => "error"}))
    InstanceSnapshotState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Available", traits: {"smithy.api#enumValue" => "available"}))
    InstanceState.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "code"))
    InstanceState.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    InstanceState.type = Types::InstanceState
    InvalidInputException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    InvalidInputException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidInputException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    InvalidInputException.type = Types::InvalidInputException
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUALSTACK", traits: {"smithy.api#enumValue" => "dualstack"}))
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    Ipv6AddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address)
    IsVpcPeeredRequest.type = Types::IsVpcPeeredRequest
    IsVpcPeeredResult.add_member(:is_peered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isPeered"))
    IsVpcPeeredResult.type = Types::IsVpcPeeredResult
    KeyPair.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    KeyPair.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    KeyPair.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    KeyPair.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    KeyPair.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    KeyPair.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    KeyPair.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    KeyPair.add_member(:fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "fingerprint"))
    KeyPair.type = Types::KeyPair
    KeyPairList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair)
    LightsailDistribution.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LightsailDistribution.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LightsailDistribution.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    LightsailDistribution.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LightsailDistribution.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LightsailDistribution.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LightsailDistribution.add_member(:alternative_domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "alternativeDomainNames"))
    LightsailDistribution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    LightsailDistribution.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isEnabled"))
    LightsailDistribution.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    LightsailDistribution.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "bundleId"))
    LightsailDistribution.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName"))
    LightsailDistribution.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: "origin"))
    LightsailDistribution.add_member(:origin_public_dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "originPublicDNS"))
    LightsailDistribution.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "defaultCacheBehavior"))
    LightsailDistribution.add_member(:cache_behavior_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSettings, location_name: "cacheBehaviorSettings"))
    LightsailDistribution.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "cacheBehaviors"))
    LightsailDistribution.add_member(:able_to_update_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ableToUpdateBundle"))
    LightsailDistribution.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    LightsailDistribution.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    LightsailDistribution.add_member(:viewer_minimum_tls_protocol_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "viewerMinimumTlsProtocolVersion"))
    LightsailDistribution.type = Types::LightsailDistribution
    LoadBalancer.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancer.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LoadBalancer.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    LoadBalancer.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LoadBalancer.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LoadBalancer.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LoadBalancer.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    LoadBalancer.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "dnsName"))
    LoadBalancer.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerState, location_name: "state"))
    LoadBalancer.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerProtocol, location_name: "protocol"))
    LoadBalancer.add_member(:public_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortList, location_name: "publicPorts"))
    LoadBalancer.add_member(:health_check_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "healthCheckPath"))
    LoadBalancer.add_member(:instance_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "instancePort"))
    LoadBalancer.add_member(:instance_health_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHealthSummaryList, location_name: "instanceHealthSummary"))
    LoadBalancer.add_member(:tls_certificate_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateSummaryList, location_name: "tlsCertificateSummaries"))
    LoadBalancer.add_member(:configuration_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerConfigurationOptions, location_name: "configurationOptions"))
    LoadBalancer.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    LoadBalancer.add_member(:https_redirection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "httpsRedirectionEnabled"))
    LoadBalancer.add_member(:tls_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "tlsPolicyName"))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancerAttributeName.add_member(:health_check_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HealthCheckPath", traits: {"smithy.api#enumValue" => "HealthCheckPath"}))
    LoadBalancerAttributeName.add_member(:session_stickiness_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SessionStickinessEnabled", traits: {"smithy.api#enumValue" => "SessionStickinessEnabled"}))
    LoadBalancerAttributeName.add_member(:session_stickiness_lb_cookie_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SessionStickiness_LB_CookieDurationSeconds", traits: {"smithy.api#enumValue" => "SessionStickiness_LB_CookieDurationSeconds"}))
    LoadBalancerAttributeName.add_member(:https_redirection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HttpsRedirectionEnabled", traits: {"smithy.api#enumValue" => "HttpsRedirectionEnabled"}))
    LoadBalancerAttributeName.add_member(:tls_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TlsPolicyName", traits: {"smithy.api#enumValue" => "TlsPolicyName"}))
    LoadBalancerConfigurationOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributeName)
    LoadBalancerConfigurationOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LoadBalancerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancer)
    LoadBalancerMetricName.add_member(:client_tls_negotiation_error_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ClientTLSNegotiationErrorCount", traits: {"smithy.api#enumValue" => "ClientTLSNegotiationErrorCount"}))
    LoadBalancerMetricName.add_member(:healthy_host_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HealthyHostCount", traits: {"smithy.api#enumValue" => "HealthyHostCount"}))
    LoadBalancerMetricName.add_member(:unhealthy_host_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UnhealthyHostCount", traits: {"smithy.api#enumValue" => "UnhealthyHostCount"}))
    LoadBalancerMetricName.add_member(:http_code_lb_4_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_LB_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_4XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_lb_5_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_LB_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_5XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_2_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_2XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_2XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_3_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_3XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_3XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_4_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_4XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_5_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_5XX_Count"}))
    LoadBalancerMetricName.add_member(:instance_response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceResponseTime", traits: {"smithy.api#enumValue" => "InstanceResponseTime"}))
    LoadBalancerMetricName.add_member(:rejected_connection_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RejectedConnectionCount", traits: {"smithy.api#enumValue" => "RejectedConnectionCount"}))
    LoadBalancerMetricName.add_member(:request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequestCount", traits: {"smithy.api#enumValue" => "RequestCount"}))
    LoadBalancerProtocol.add_member(:http_https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_HTTPS", traits: {"smithy.api#enumValue" => "HTTP_HTTPS"}))
    LoadBalancerProtocol.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    LoadBalancerState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "active"}))
    LoadBalancerState.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Provisioning", traits: {"smithy.api#enumValue" => "provisioning"}))
    LoadBalancerState.add_member(:active_impaired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ActiveImpaired", traits: {"smithy.api#enumValue" => "active_impaired"}))
    LoadBalancerState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "failed"}))
    LoadBalancerState.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unknown", traits: {"smithy.api#enumValue" => "unknown"}))
    LoadBalancerTlsCertificate.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancerTlsCertificate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    LoadBalancerTlsCertificate.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    LoadBalancerTlsCertificate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LoadBalancerTlsCertificate.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    LoadBalancerTlsCertificate.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    LoadBalancerTlsCertificate.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    LoadBalancerTlsCertificate.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName"))
    LoadBalancerTlsCertificate.add_member(:is_attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAttached"))
    LoadBalancerTlsCertificate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateStatus, location_name: "status"))
    LoadBalancerTlsCertificate.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    LoadBalancerTlsCertificate.add_member(:domain_validation_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationRecordList, location_name: "domainValidationRecords"))
    LoadBalancerTlsCertificate.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateFailureReason, location_name: "failureReason"))
    LoadBalancerTlsCertificate.add_member(:issued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "issuedAt"))
    LoadBalancerTlsCertificate.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "issuer"))
    LoadBalancerTlsCertificate.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyAlgorithm"))
    LoadBalancerTlsCertificate.add_member(:not_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "notAfter"))
    LoadBalancerTlsCertificate.add_member(:not_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "notBefore"))
    LoadBalancerTlsCertificate.add_member(:renewal_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateRenewalSummary, location_name: "renewalSummary"))
    LoadBalancerTlsCertificate.add_member(:revocation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateRevocationReason, location_name: "revocationReason"))
    LoadBalancerTlsCertificate.add_member(:revoked_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "revokedAt"))
    LoadBalancerTlsCertificate.add_member(:serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serial"))
    LoadBalancerTlsCertificate.add_member(:signature_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "signatureAlgorithm"))
    LoadBalancerTlsCertificate.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subject"))
    LoadBalancerTlsCertificate.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "subjectAlternativeNames"))
    LoadBalancerTlsCertificate.type = Types::LoadBalancerTlsCertificate
    LoadBalancerTlsCertificateDnsRecordCreationState.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDnsRecordCreationStateCode, location_name: "code"))
    LoadBalancerTlsCertificateDnsRecordCreationState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LoadBalancerTlsCertificateDnsRecordCreationState.type = Types::LoadBalancerTlsCertificateDnsRecordCreationState
    LoadBalancerTlsCertificateDnsRecordCreationStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LoadBalancerTlsCertificateDnsRecordCreationStateCode.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    LoadBalancerTlsCertificateDnsRecordCreationStateCode.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateDomainStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    LoadBalancerTlsCertificateDomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateDomainStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LoadBalancerTlsCertificateDomainValidationOption.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    LoadBalancerTlsCertificateDomainValidationOption.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainStatus, location_name: "validationStatus"))
    LoadBalancerTlsCertificateDomainValidationOption.type = Types::LoadBalancerTlsCertificateDomainValidationOption
    LoadBalancerTlsCertificateDomainValidationOptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationOption)
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "type"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "value"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainStatus, location_name: "validationStatus"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:dns_record_creation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDnsRecordCreationState, location_name: "dnsRecordCreationState"))
    LoadBalancerTlsCertificateDomainValidationRecord.type = Types::LoadBalancerTlsCertificateDomainValidationRecord
    LoadBalancerTlsCertificateDomainValidationRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationRecord)
    LoadBalancerTlsCertificateFailureReason.add_member(:no_available_contacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NoAvailableContacts", traits: {"smithy.api#enumValue" => "NO_AVAILABLE_CONTACTS"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:additional_verification_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AdditionalVerificationRequired", traits: {"smithy.api#enumValue" => "ADDITIONAL_VERIFICATION_REQUIRED"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:domain_not_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DomainNotAllowed", traits: {"smithy.api#enumValue" => "DOMAIN_NOT_ALLOWED"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:invalid_public_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InvalidPublicDomain", traits: {"smithy.api#enumValue" => "INVALID_PUBLIC_DOMAIN"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Other", traits: {"smithy.api#enumValue" => "OTHER"}))
    LoadBalancerTlsCertificateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificate)
    LoadBalancerTlsCertificateRenewalStatus.add_member(:pending_auto_renewal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingAutoRenewal", traits: {"smithy.api#enumValue" => "PENDING_AUTO_RENEWAL"}))
    LoadBalancerTlsCertificateRenewalStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    LoadBalancerTlsCertificateRenewalStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LoadBalancerTlsCertificateRenewalStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateRenewalSummary.add_member(:renewal_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateRenewalStatus, location_name: "renewalStatus"))
    LoadBalancerTlsCertificateRenewalSummary.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateDomainValidationOptionList, location_name: "domainValidationOptions"))
    LoadBalancerTlsCertificateRenewalSummary.type = Types::LoadBalancerTlsCertificateRenewalSummary
    LoadBalancerTlsCertificateRevocationReason.add_member(:unspecified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unspecified", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:key_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KeyCompromise", traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:ca_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CaCompromise", traits: {"smithy.api#enumValue" => "CA_COMPROMISE"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:affiliation_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AffiliationChanged", traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:superceded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Superceded", traits: {"smithy.api#enumValue" => "SUPERCEDED"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:cessation_of_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CessationOfOperation", traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:certificate_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CertificateHold", traits: {"smithy.api#enumValue" => "CERTIFICATE_HOLD"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:remove_from_crl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RemoveFromCrl", traits: {"smithy.api#enumValue" => "REMOVE_FROM_CRL"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:privilege_withdrawn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PrivilegeWithdrawn", traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:aa_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AACompromise", traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    LoadBalancerTlsCertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    LoadBalancerTlsCertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Issued", traits: {"smithy.api#enumValue" => "ISSUED"}))
    LoadBalancerTlsCertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Inactive", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    LoadBalancerTlsCertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Expired", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LoadBalancerTlsCertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ValidationTimedOut", traits: {"smithy.api#enumValue" => "VALIDATION_TIMED_OUT"}))
    LoadBalancerTlsCertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Revoked", traits: {"smithy.api#enumValue" => "REVOKED"}))
    LoadBalancerTlsCertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unknown", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    LoadBalancerTlsCertificateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancerTlsCertificateSummary.add_member(:is_attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAttached"))
    LoadBalancerTlsCertificateSummary.type = Types::LoadBalancerTlsCertificateSummary
    LoadBalancerTlsCertificateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsCertificateSummary)
    LoadBalancerTlsPolicy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LoadBalancerTlsPolicy.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isDefault"))
    LoadBalancerTlsPolicy.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "description"))
    LoadBalancerTlsPolicy.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "protocols"))
    LoadBalancerTlsPolicy.add_member(:ciphers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "ciphers"))
    LoadBalancerTlsPolicy.type = Types::LoadBalancerTlsPolicy
    LoadBalancerTlsPolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTlsPolicy)
    LogEvent.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    LogEvent.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LogEvent.type = Types::LogEvent
    LogEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogEvent)
    MetricDatapoint.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "average"))
    MetricDatapoint.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "maximum"))
    MetricDatapoint.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "minimum"))
    MetricDatapoint.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "sampleCount"))
    MetricDatapoint.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "sum"))
    MetricDatapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    MetricDatapoint.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit"))
    MetricDatapoint.type = Types::MetricDatapoint
    MetricDatapointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatapoint)
    MetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    MetricName.add_member(:network_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkIn", traits: {"smithy.api#enumValue" => "NetworkIn"}))
    MetricName.add_member(:network_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkOut", traits: {"smithy.api#enumValue" => "NetworkOut"}))
    MetricName.add_member(:status_check_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StatusCheckFailed", traits: {"smithy.api#enumValue" => "StatusCheckFailed"}))
    MetricName.add_member(:status_check_failed_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StatusCheckFailed_Instance", traits: {"smithy.api#enumValue" => "StatusCheckFailed_Instance"}))
    MetricName.add_member(:status_check_failed_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StatusCheckFailed_System", traits: {"smithy.api#enumValue" => "StatusCheckFailed_System"}))
    MetricName.add_member(:client_tls_negotiation_error_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ClientTLSNegotiationErrorCount", traits: {"smithy.api#enumValue" => "ClientTLSNegotiationErrorCount"}))
    MetricName.add_member(:healthy_host_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HealthyHostCount", traits: {"smithy.api#enumValue" => "HealthyHostCount"}))
    MetricName.add_member(:unhealthy_host_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UnhealthyHostCount", traits: {"smithy.api#enumValue" => "UnhealthyHostCount"}))
    MetricName.add_member(:http_code_lb_4_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_LB_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_4XX_Count"}))
    MetricName.add_member(:http_code_lb_5_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_LB_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_5XX_Count"}))
    MetricName.add_member(:http_code_instance_2_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_2XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_2XX_Count"}))
    MetricName.add_member(:http_code_instance_3_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_3XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_3XX_Count"}))
    MetricName.add_member(:http_code_instance_4_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_4XX_Count"}))
    MetricName.add_member(:http_code_instance_5_xx_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPCode_Instance_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_5XX_Count"}))
    MetricName.add_member(:instance_response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceResponseTime", traits: {"smithy.api#enumValue" => "InstanceResponseTime"}))
    MetricName.add_member(:rejected_connection_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RejectedConnectionCount", traits: {"smithy.api#enumValue" => "RejectedConnectionCount"}))
    MetricName.add_member(:request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequestCount", traits: {"smithy.api#enumValue" => "RequestCount"}))
    MetricName.add_member(:database_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DatabaseConnections", traits: {"smithy.api#enumValue" => "DatabaseConnections"}))
    MetricName.add_member(:disk_queue_depth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DiskQueueDepth", traits: {"smithy.api#enumValue" => "DiskQueueDepth"}))
    MetricName.add_member(:free_storage_space, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FreeStorageSpace", traits: {"smithy.api#enumValue" => "FreeStorageSpace"}))
    MetricName.add_member(:network_receive_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkReceiveThroughput", traits: {"smithy.api#enumValue" => "NetworkReceiveThroughput"}))
    MetricName.add_member(:network_transmit_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkTransmitThroughput", traits: {"smithy.api#enumValue" => "NetworkTransmitThroughput"}))
    MetricName.add_member(:burst_capacity_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BurstCapacityTime", traits: {"smithy.api#enumValue" => "BurstCapacityTime"}))
    MetricName.add_member(:burst_capacity_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BurstCapacityPercentage", traits: {"smithy.api#enumValue" => "BurstCapacityPercentage"}))
    MetricStatistic.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    MetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricStatistic.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    MetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    MetricStatistic.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SampleCount", traits: {"smithy.api#enumValue" => "SampleCount"}))
    MetricStatisticList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatistic)
    MetricUnit.add_member(:seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Seconds", traits: {"smithy.api#enumValue" => "Seconds"}))
    MetricUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Microseconds", traits: {"smithy.api#enumValue" => "Microseconds"}))
    MetricUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Milliseconds", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    MetricUnit.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bytes", traits: {"smithy.api#enumValue" => "Bytes"}))
    MetricUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobytes", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    MetricUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabytes", traits: {"smithy.api#enumValue" => "Megabytes"}))
    MetricUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabytes", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    MetricUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabytes", traits: {"smithy.api#enumValue" => "Terabytes"}))
    MetricUnit.add_member(:bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bits", traits: {"smithy.api#enumValue" => "Bits"}))
    MetricUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobits", traits: {"smithy.api#enumValue" => "Kilobits"}))
    MetricUnit.add_member(:megabits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabits", traits: {"smithy.api#enumValue" => "Megabits"}))
    MetricUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabits", traits: {"smithy.api#enumValue" => "Gigabits"}))
    MetricUnit.add_member(:terabits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabits", traits: {"smithy.api#enumValue" => "Terabits"}))
    MetricUnit.add_member(:percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Percent", traits: {"smithy.api#enumValue" => "Percent"}))
    MetricUnit.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    MetricUnit.add_member(:bytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BytesSecond", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    MetricUnit.add_member(:kilobytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KilobytesSecond", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    MetricUnit.add_member(:megabytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MegabytesSecond", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    MetricUnit.add_member(:gigabytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GigabytesSecond", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    MetricUnit.add_member(:terabytes_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TerabytesSecond", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    MetricUnit.add_member(:bits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BitsSecond", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    MetricUnit.add_member(:kilobits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KilobitsSecond", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    MetricUnit.add_member(:megabits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MegabitsSecond", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    MetricUnit.add_member(:gigabits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GigabitsSecond", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    MetricUnit.add_member(:terabits_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TerabitsSecond", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    MetricUnit.add_member(:count_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CountSecond", traits: {"smithy.api#enumValue" => "Count/Second"}))
    MetricUnit.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "None", traits: {"smithy.api#enumValue" => "None"}))
    MonitoredResourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    MonitoredResourceInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    MonitoredResourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    MonitoredResourceInfo.type = Types::MonitoredResourceInfo
    MonthlyTransfer.add_member(:gb_per_month_allocated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "gbPerMonthAllocated"))
    MonthlyTransfer.type = Types::MonthlyTransfer
    NameServersUpdateState.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameServersUpdateStateCode, location_name: "code"))
    NameServersUpdateState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NameServersUpdateState.type = Types::NameServersUpdateState
    NameServersUpdateStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    NameServersUpdateStateCode.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    NameServersUpdateStateCode.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    NameServersUpdateStateCode.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    NetworkProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "tcp"}))
    NetworkProtocol.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "all"}))
    NetworkProtocol.add_member(:udp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "udp"}))
    NetworkProtocol.add_member(:icmp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICMP", traits: {"smithy.api#enumValue" => "icmp"}))
    NetworkProtocol.add_member(:icmpv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICMPV6", traits: {"smithy.api#enumValue" => "icmpv6"}))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    NotFoundException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    NotFoundException.type = Types::NotFoundException
    NotificationTriggerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmState)
    OpenInstancePublicPortsRequest.add_member(:port_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortInfo, location_name: "portInfo", traits: {"smithy.api#required" => {}}))
    OpenInstancePublicPortsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    OpenInstancePublicPortsRequest.type = Types::OpenInstancePublicPortsRequest
    OpenInstancePublicPortsResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    OpenInstancePublicPortsResult.type = Types::OpenInstancePublicPortsResult
    Operation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    Operation.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    Operation.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Operation.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    Operation.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    Operation.add_member(:is_terminal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isTerminal"))
    Operation.add_member(:operation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "operationDetails"))
    Operation.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationType, location_name: "operationType"))
    Operation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatus, location_name: "status"))
    Operation.add_member(:status_changed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "statusChangedAt"))
    Operation.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    Operation.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorDetails"))
    Operation.type = Types::Operation
    OperationFailureException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    OperationFailureException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    OperationFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OperationFailureException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    OperationFailureException.type = Types::OperationFailureException
    OperationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation)
    OperationStatus.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotStarted", traits: {"smithy.api#enumValue" => "NotStarted"}))
    OperationStatus.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "Started"}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    OperationStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    OperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    OperationType.add_member(:delete_known_host_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteKnownHostKeys", traits: {"smithy.api#enumValue" => "DeleteKnownHostKeys"}))
    OperationType.add_member(:delete_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteInstance", traits: {"smithy.api#enumValue" => "DeleteInstance"}))
    OperationType.add_member(:create_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateInstance", traits: {"smithy.api#enumValue" => "CreateInstance"}))
    OperationType.add_member(:stop_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StopInstance", traits: {"smithy.api#enumValue" => "StopInstance"}))
    OperationType.add_member(:start_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StartInstance", traits: {"smithy.api#enumValue" => "StartInstance"}))
    OperationType.add_member(:reboot_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RebootInstance", traits: {"smithy.api#enumValue" => "RebootInstance"}))
    OperationType.add_member(:open_instance_public_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OpenInstancePublicPorts", traits: {"smithy.api#enumValue" => "OpenInstancePublicPorts"}))
    OperationType.add_member(:put_instance_public_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PutInstancePublicPorts", traits: {"smithy.api#enumValue" => "PutInstancePublicPorts"}))
    OperationType.add_member(:close_instance_public_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CloseInstancePublicPorts", traits: {"smithy.api#enumValue" => "CloseInstancePublicPorts"}))
    OperationType.add_member(:allocate_static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AllocateStaticIp", traits: {"smithy.api#enumValue" => "AllocateStaticIp"}))
    OperationType.add_member(:release_static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ReleaseStaticIp", traits: {"smithy.api#enumValue" => "ReleaseStaticIp"}))
    OperationType.add_member(:attach_static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AttachStaticIp", traits: {"smithy.api#enumValue" => "AttachStaticIp"}))
    OperationType.add_member(:detach_static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DetachStaticIp", traits: {"smithy.api#enumValue" => "DetachStaticIp"}))
    OperationType.add_member(:update_domain_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateDomainEntry", traits: {"smithy.api#enumValue" => "UpdateDomainEntry"}))
    OperationType.add_member(:delete_domain_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteDomainEntry", traits: {"smithy.api#enumValue" => "DeleteDomainEntry"}))
    OperationType.add_member(:create_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateDomain", traits: {"smithy.api#enumValue" => "CreateDomain"}))
    OperationType.add_member(:delete_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteDomain", traits: {"smithy.api#enumValue" => "DeleteDomain"}))
    OperationType.add_member(:create_instance_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateInstanceSnapshot", traits: {"smithy.api#enumValue" => "CreateInstanceSnapshot"}))
    OperationType.add_member(:delete_instance_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteInstanceSnapshot", traits: {"smithy.api#enumValue" => "DeleteInstanceSnapshot"}))
    OperationType.add_member(:create_instances_from_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateInstancesFromSnapshot", traits: {"smithy.api#enumValue" => "CreateInstancesFromSnapshot"}))
    OperationType.add_member(:create_load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateLoadBalancer", traits: {"smithy.api#enumValue" => "CreateLoadBalancer"}))
    OperationType.add_member(:delete_load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteLoadBalancer", traits: {"smithy.api#enumValue" => "DeleteLoadBalancer"}))
    OperationType.add_member(:attach_instances_to_load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AttachInstancesToLoadBalancer", traits: {"smithy.api#enumValue" => "AttachInstancesToLoadBalancer"}))
    OperationType.add_member(:detach_instances_from_load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DetachInstancesFromLoadBalancer", traits: {"smithy.api#enumValue" => "DetachInstancesFromLoadBalancer"}))
    OperationType.add_member(:update_load_balancer_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateLoadBalancerAttribute", traits: {"smithy.api#enumValue" => "UpdateLoadBalancerAttribute"}))
    OperationType.add_member(:create_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateLoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "CreateLoadBalancerTlsCertificate"}))
    OperationType.add_member(:delete_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteLoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "DeleteLoadBalancerTlsCertificate"}))
    OperationType.add_member(:attach_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AttachLoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "AttachLoadBalancerTlsCertificate"}))
    OperationType.add_member(:create_disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateDisk", traits: {"smithy.api#enumValue" => "CreateDisk"}))
    OperationType.add_member(:delete_disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteDisk", traits: {"smithy.api#enumValue" => "DeleteDisk"}))
    OperationType.add_member(:attach_disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AttachDisk", traits: {"smithy.api#enumValue" => "AttachDisk"}))
    OperationType.add_member(:detach_disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DetachDisk", traits: {"smithy.api#enumValue" => "DetachDisk"}))
    OperationType.add_member(:create_disk_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateDiskSnapshot", traits: {"smithy.api#enumValue" => "CreateDiskSnapshot"}))
    OperationType.add_member(:delete_disk_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteDiskSnapshot", traits: {"smithy.api#enumValue" => "DeleteDiskSnapshot"}))
    OperationType.add_member(:create_disk_from_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateDiskFromSnapshot", traits: {"smithy.api#enumValue" => "CreateDiskFromSnapshot"}))
    OperationType.add_member(:create_relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateRelationalDatabase", traits: {"smithy.api#enumValue" => "CreateRelationalDatabase"}))
    OperationType.add_member(:update_relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateRelationalDatabase", traits: {"smithy.api#enumValue" => "UpdateRelationalDatabase"}))
    OperationType.add_member(:delete_relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteRelationalDatabase", traits: {"smithy.api#enumValue" => "DeleteRelationalDatabase"}))
    OperationType.add_member(:create_relational_database_from_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateRelationalDatabaseFromSnapshot", traits: {"smithy.api#enumValue" => "CreateRelationalDatabaseFromSnapshot"}))
    OperationType.add_member(:create_relational_database_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateRelationalDatabaseSnapshot", traits: {"smithy.api#enumValue" => "CreateRelationalDatabaseSnapshot"}))
    OperationType.add_member(:delete_relational_database_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteRelationalDatabaseSnapshot", traits: {"smithy.api#enumValue" => "DeleteRelationalDatabaseSnapshot"}))
    OperationType.add_member(:update_relational_database_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateRelationalDatabaseParameters", traits: {"smithy.api#enumValue" => "UpdateRelationalDatabaseParameters"}))
    OperationType.add_member(:start_relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StartRelationalDatabase", traits: {"smithy.api#enumValue" => "StartRelationalDatabase"}))
    OperationType.add_member(:reboot_relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RebootRelationalDatabase", traits: {"smithy.api#enumValue" => "RebootRelationalDatabase"}))
    OperationType.add_member(:stop_relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StopRelationalDatabase", traits: {"smithy.api#enumValue" => "StopRelationalDatabase"}))
    OperationType.add_member(:enable_add_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EnableAddOn", traits: {"smithy.api#enumValue" => "EnableAddOn"}))
    OperationType.add_member(:disable_add_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DisableAddOn", traits: {"smithy.api#enumValue" => "DisableAddOn"}))
    OperationType.add_member(:put_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PutAlarm", traits: {"smithy.api#enumValue" => "PutAlarm"}))
    OperationType.add_member(:get_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetAlarms", traits: {"smithy.api#enumValue" => "GetAlarms"}))
    OperationType.add_member(:delete_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteAlarm", traits: {"smithy.api#enumValue" => "DeleteAlarm"}))
    OperationType.add_member(:test_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TestAlarm", traits: {"smithy.api#enumValue" => "TestAlarm"}))
    OperationType.add_member(:create_contact_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateContactMethod", traits: {"smithy.api#enumValue" => "CreateContactMethod"}))
    OperationType.add_member(:get_contact_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetContactMethods", traits: {"smithy.api#enumValue" => "GetContactMethods"}))
    OperationType.add_member(:send_contact_method_verification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SendContactMethodVerification", traits: {"smithy.api#enumValue" => "SendContactMethodVerification"}))
    OperationType.add_member(:delete_contact_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteContactMethod", traits: {"smithy.api#enumValue" => "DeleteContactMethod"}))
    OperationType.add_member(:create_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateDistribution", traits: {"smithy.api#enumValue" => "CreateDistribution"}))
    OperationType.add_member(:update_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateDistribution", traits: {"smithy.api#enumValue" => "UpdateDistribution"}))
    OperationType.add_member(:delete_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteDistribution", traits: {"smithy.api#enumValue" => "DeleteDistribution"}))
    OperationType.add_member(:reset_distribution_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ResetDistributionCache", traits: {"smithy.api#enumValue" => "ResetDistributionCache"}))
    OperationType.add_member(:attach_certificate_to_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AttachCertificateToDistribution", traits: {"smithy.api#enumValue" => "AttachCertificateToDistribution"}))
    OperationType.add_member(:detach_certificate_from_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DetachCertificateFromDistribution", traits: {"smithy.api#enumValue" => "DetachCertificateFromDistribution"}))
    OperationType.add_member(:update_distribution_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateDistributionBundle", traits: {"smithy.api#enumValue" => "UpdateDistributionBundle"}))
    OperationType.add_member(:set_ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SetIpAddressType", traits: {"smithy.api#enumValue" => "SetIpAddressType"}))
    OperationType.add_member(:create_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateCertificate", traits: {"smithy.api#enumValue" => "CreateCertificate"}))
    OperationType.add_member(:delete_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteCertificate", traits: {"smithy.api#enumValue" => "DeleteCertificate"}))
    OperationType.add_member(:create_container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateContainerService", traits: {"smithy.api#enumValue" => "CreateContainerService"}))
    OperationType.add_member(:update_container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateContainerService", traits: {"smithy.api#enumValue" => "UpdateContainerService"}))
    OperationType.add_member(:delete_container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteContainerService", traits: {"smithy.api#enumValue" => "DeleteContainerService"}))
    OperationType.add_member(:create_container_service_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateContainerServiceDeployment", traits: {"smithy.api#enumValue" => "CreateContainerServiceDeployment"}))
    OperationType.add_member(:create_container_service_registry_login, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateContainerServiceRegistryLogin", traits: {"smithy.api#enumValue" => "CreateContainerServiceRegistryLogin"}))
    OperationType.add_member(:register_container_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RegisterContainerImage", traits: {"smithy.api#enumValue" => "RegisterContainerImage"}))
    OperationType.add_member(:delete_container_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteContainerImage", traits: {"smithy.api#enumValue" => "DeleteContainerImage"}))
    OperationType.add_member(:create_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateBucket", traits: {"smithy.api#enumValue" => "CreateBucket"}))
    OperationType.add_member(:delete_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteBucket", traits: {"smithy.api#enumValue" => "DeleteBucket"}))
    OperationType.add_member(:create_bucket_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateBucketAccessKey", traits: {"smithy.api#enumValue" => "CreateBucketAccessKey"}))
    OperationType.add_member(:delete_bucket_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteBucketAccessKey", traits: {"smithy.api#enumValue" => "DeleteBucketAccessKey"}))
    OperationType.add_member(:update_bucket_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateBucketBundle", traits: {"smithy.api#enumValue" => "UpdateBucketBundle"}))
    OperationType.add_member(:update_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateBucket", traits: {"smithy.api#enumValue" => "UpdateBucket"}))
    OperationType.add_member(:set_resource_access_for_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SetResourceAccessForBucket", traits: {"smithy.api#enumValue" => "SetResourceAccessForBucket"}))
    OperationType.add_member(:update_instance_metadata_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateInstanceMetadataOptions", traits: {"smithy.api#enumValue" => "UpdateInstanceMetadataOptions"}))
    OperationType.add_member(:start_gui_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StartGUISession", traits: {"smithy.api#enumValue" => "StartGUISession"}))
    OperationType.add_member(:stop_gui_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StopGUISession", traits: {"smithy.api#enumValue" => "StopGUISession"}))
    OperationType.add_member(:setup_instance_https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SetupInstanceHttps", traits: {"smithy.api#enumValue" => "SetupInstanceHttps"}))
    Origin.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Origin.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Origin.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    Origin.add_member(:protocol_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginProtocolPolicyEnum, location_name: "protocolPolicy"))
    Origin.add_member(:response_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "responseTimeout"))
    Origin.type = Types::Origin
    OriginProtocolPolicyEnum.add_member(:http_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPOnly", traits: {"smithy.api#enumValue" => "http-only"}))
    OriginProtocolPolicyEnum.add_member(:https_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPSOnly", traits: {"smithy.api#enumValue" => "https-only"}))
    PartnerIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    PasswordData.add_member(:ciphertext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ciphertext"))
    PasswordData.add_member(:key_pair_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "keyPairName"))
    PasswordData.type = Types::PasswordData
    PeerVpcRequest.type = Types::PeerVpcRequest
    PeerVpcResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    PeerVpcResult.type = Types::PeerVpcResult
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "action"))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "currentApplyDate"))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceAction)
    PendingModifiedRelationalDatabaseValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "masterUserPassword"))
    PendingModifiedRelationalDatabaseValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "engineVersion"))
    PendingModifiedRelationalDatabaseValues.add_member(:backup_retention_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "backupRetentionEnabled"))
    PendingModifiedRelationalDatabaseValues.type = Types::PendingModifiedRelationalDatabaseValues
    PortAccessType.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    PortAccessType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Private", traits: {"smithy.api#enumValue" => "Private"}))
    PortInfo.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "fromPort", traits: {"smithy.api#default" => 0}))
    PortInfo.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "toPort", traits: {"smithy.api#default" => 0}))
    PortInfo.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "protocol"))
    PortInfo.add_member(:cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    PortInfo.add_member(:ipv6_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "ipv6Cidrs"))
    PortInfo.add_member(:cidr_list_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "cidrListAliases"))
    PortInfo.type = Types::PortInfo
    PortInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortInfo)
    PortInfoSourceType.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Default", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    PortInfoSourceType.add_member(:instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Instance", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    PortInfoSourceType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "None", traits: {"smithy.api#enumValue" => "NONE"}))
    PortInfoSourceType.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Closed", traits: {"smithy.api#enumValue" => "CLOSED"}))
    PortList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port)
    PortMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PortMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceProtocol)
    PortState.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Open", traits: {"smithy.api#enumValue" => "open"}))
    PortState.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Closed", traits: {"smithy.api#enumValue" => "closed"}))
    PricingUnit.add_member(:gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    PricingUnit.add_member(:hrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Hrs", traits: {"smithy.api#enumValue" => "Hrs"}))
    PricingUnit.add_member(:gb_mo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GBMo", traits: {"smithy.api#enumValue" => "GB-Mo"}))
    PricingUnit.add_member(:bundles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bundles", traits: {"smithy.api#enumValue" => "Bundles"}))
    PricingUnit.add_member(:queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Queries", traits: {"smithy.api#enumValue" => "Queries"}))
    PrivateRegistryAccess.add_member(:ecr_image_puller_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceECRImagePullerRole, location_name: "ecrImagePullerRole"))
    PrivateRegistryAccess.type = Types::PrivateRegistryAccess
    PrivateRegistryAccessRequest.add_member(:ecr_image_puller_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceECRImagePullerRoleRequest, location_name: "ecrImagePullerRole"))
    PrivateRegistryAccessRequest.type = Types::PrivateRegistryAccessRequest
    PutAlarmRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "alarmName", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:monitored_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "monitoredResourceName", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparisonOperator", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "threshold", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "evaluationPeriods", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "datapointsToAlarm"))
    PutAlarmRequest.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatMissingData, location_name: "treatMissingData"))
    PutAlarmRequest.add_member(:contact_protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactProtocolsList, location_name: "contactProtocols"))
    PutAlarmRequest.add_member(:notification_triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTriggerList, location_name: "notificationTriggers"))
    PutAlarmRequest.add_member(:notification_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "notificationEnabled"))
    PutAlarmRequest.type = Types::PutAlarmRequest
    PutAlarmResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    PutAlarmResult.type = Types::PutAlarmResult
    PutInstancePublicPortsRequest.add_member(:port_infos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortInfoList, location_name: "portInfos", traits: {"smithy.api#required" => {}}))
    PutInstancePublicPortsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    PutInstancePublicPortsRequest.type = Types::PutInstancePublicPortsRequest
    PutInstancePublicPortsResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    PutInstancePublicPortsResult.type = Types::PutInstancePublicPortsResult
    QueryStringObject.add_member(:option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "option"))
    QueryStringObject.add_member(:query_strings_allow_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "queryStringsAllowList"))
    QueryStringObject.type = Types::QueryStringObject
    R53HostedZoneDeletionState.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: R53HostedZoneDeletionStateCode, location_name: "code"))
    R53HostedZoneDeletionState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    R53HostedZoneDeletionState.type = Types::R53HostedZoneDeletionState
    R53HostedZoneDeletionStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    R53HostedZoneDeletionStateCode.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    R53HostedZoneDeletionStateCode.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    R53HostedZoneDeletionStateCode.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    RebootInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    RebootInstanceRequest.type = Types::RebootInstanceRequest
    RebootInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    RebootInstanceResult.type = Types::RebootInstanceResult
    RebootRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    RebootRelationalDatabaseRequest.type = Types::RebootRelationalDatabaseRequest
    RebootRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    RebootRelationalDatabaseResult.type = Types::RebootRelationalDatabaseResult
    RecordState.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "Started"}))
    RecordState.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    RecordState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    Region.add_member(:continent_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "continentCode"))
    Region.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Region.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    Region.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "availabilityZones"))
    Region.add_member(:relational_database_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "relationalDatabaseAvailabilityZones"))
    Region.type = Types::Region
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RegionName.add_member(:us_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    RegionName.add_member(:us_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    RegionName.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_WEST_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    RegionName.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    RegionName.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    RegionName.add_member(:eu_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    RegionName.add_member(:eu_west_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_WEST_3", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    RegionName.add_member(:eu_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    RegionName.add_member(:ca_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    RegionName.add_member(:ap_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTH_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    RegionName.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    RegionName.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    RegionName.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    RegionName.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    RegionName.add_member(:eu_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_NORTH_1", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    RegionName.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    RegionSetupInProgressException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    RegionSetupInProgressException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    RegionSetupInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RegionSetupInProgressException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    RegionSetupInProgressException.type = Types::RegionSetupInProgressException
    RegisterContainerImageRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterContainerImageRequest.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerLabel, location_name: "label", traits: {"smithy.api#required" => {}}))
    RegisterContainerImageRequest.add_member(:digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "digest", traits: {"smithy.api#required" => {}}))
    RegisterContainerImageRequest.type = Types::RegisterContainerImageRequest
    RegisterContainerImageResult.add_member(:container_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerImage, location_name: "containerImage"))
    RegisterContainerImageResult.type = Types::RegisterContainerImageResult
    RegisteredDomainDelegationInfo.add_member(:name_servers_update_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameServersUpdateState, location_name: "nameServersUpdateState"))
    RegisteredDomainDelegationInfo.add_member(:r53_hosted_zone_deletion_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: R53HostedZoneDeletionState, location_name: "r53HostedZoneDeletionState"))
    RegisteredDomainDelegationInfo.type = Types::RegisteredDomainDelegationInfo
    RelationalDatabase.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    RelationalDatabase.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    RelationalDatabase.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    RelationalDatabase.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    RelationalDatabase.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    RelationalDatabase.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RelationalDatabase.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    RelationalDatabase.add_member(:relational_database_blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "relationalDatabaseBlueprintId"))
    RelationalDatabase.add_member(:relational_database_bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "relationalDatabaseBundleId"))
    RelationalDatabase.add_member(:master_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "masterDatabaseName"))
    RelationalDatabase.add_member(:hardware, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseHardware, location_name: "hardware"))
    RelationalDatabase.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "state"))
    RelationalDatabase.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "secondaryAvailabilityZone"))
    RelationalDatabase.add_member(:backup_retention_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "backupRetentionEnabled"))
    RelationalDatabase.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedRelationalDatabaseValues, location_name: "pendingModifiedValues"))
    RelationalDatabase.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engine"))
    RelationalDatabase.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engineVersion"))
    RelationalDatabase.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "latestRestorableTime"))
    RelationalDatabase.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "masterUsername"))
    RelationalDatabase.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parameterApplyStatus"))
    RelationalDatabase.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "preferredBackupWindow"))
    RelationalDatabase.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "preferredMaintenanceWindow"))
    RelationalDatabase.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    RelationalDatabase.add_member(:master_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseEndpoint, location_name: "masterEndpoint"))
    RelationalDatabase.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionList, location_name: "pendingMaintenanceActions"))
    RelationalDatabase.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "caCertificateIdentifier"))
    RelationalDatabase.type = Types::RelationalDatabase
    RelationalDatabaseBlueprint.add_member(:blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "blueprintId"))
    RelationalDatabaseBlueprint.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseEngine, location_name: "engine"))
    RelationalDatabaseBlueprint.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "engineVersion"))
    RelationalDatabaseBlueprint.add_member(:engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "engineDescription"))
    RelationalDatabaseBlueprint.add_member(:engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "engineVersionDescription"))
    RelationalDatabaseBlueprint.add_member(:is_engine_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isEngineDefault"))
    RelationalDatabaseBlueprint.type = Types::RelationalDatabaseBlueprint
    RelationalDatabaseBlueprintList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseBlueprint)
    RelationalDatabaseBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "bundleId"))
    RelationalDatabaseBundle.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    RelationalDatabaseBundle.add_member(:price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "price"))
    RelationalDatabaseBundle.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "ramSizeInGb"))
    RelationalDatabaseBundle.add_member(:disk_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "diskSizeInGb"))
    RelationalDatabaseBundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "transferPerMonthInGb"))
    RelationalDatabaseBundle.add_member(:cpu_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCount"))
    RelationalDatabaseBundle.add_member(:is_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isEncrypted"))
    RelationalDatabaseBundle.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    RelationalDatabaseBundle.type = Types::RelationalDatabaseBundle
    RelationalDatabaseBundleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseBundle)
    RelationalDatabaseEndpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    RelationalDatabaseEndpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "address"))
    RelationalDatabaseEndpoint.type = Types::RelationalDatabaseEndpoint
    RelationalDatabaseEngine.add_member(:mysql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MYSQL", traits: {"smithy.api#enumValue" => "mysql"}))
    RelationalDatabaseEvent.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resource"))
    RelationalDatabaseEvent.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    RelationalDatabaseEvent.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RelationalDatabaseEvent.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "eventCategories"))
    RelationalDatabaseEvent.type = Types::RelationalDatabaseEvent
    RelationalDatabaseEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseEvent)
    RelationalDatabaseHardware.add_member(:cpu_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCount"))
    RelationalDatabaseHardware.add_member(:disk_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "diskSizeInGb"))
    RelationalDatabaseHardware.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "ramSizeInGb"))
    RelationalDatabaseHardware.type = Types::RelationalDatabaseHardware
    RelationalDatabaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabase)
    RelationalDatabaseMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    RelationalDatabaseMetricName.add_member(:database_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DatabaseConnections", traits: {"smithy.api#enumValue" => "DatabaseConnections"}))
    RelationalDatabaseMetricName.add_member(:disk_queue_depth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DiskQueueDepth", traits: {"smithy.api#enumValue" => "DiskQueueDepth"}))
    RelationalDatabaseMetricName.add_member(:free_storage_space, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FreeStorageSpace", traits: {"smithy.api#enumValue" => "FreeStorageSpace"}))
    RelationalDatabaseMetricName.add_member(:network_receive_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkReceiveThroughput", traits: {"smithy.api#enumValue" => "NetworkReceiveThroughput"}))
    RelationalDatabaseMetricName.add_member(:network_transmit_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NetworkTransmitThroughput", traits: {"smithy.api#enumValue" => "NetworkTransmitThroughput"}))
    RelationalDatabaseParameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "allowedValues"))
    RelationalDatabaseParameter.add_member(:apply_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "applyMethod"))
    RelationalDatabaseParameter.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "applyType"))
    RelationalDatabaseParameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "dataType"))
    RelationalDatabaseParameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "description"))
    RelationalDatabaseParameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isModifiable"))
    RelationalDatabaseParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "parameterName"))
    RelationalDatabaseParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "parameterValue"))
    RelationalDatabaseParameter.type = Types::RelationalDatabaseParameter
    RelationalDatabaseParameterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseParameter)
    RelationalDatabasePasswordVersion.add_member(:current, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    RelationalDatabasePasswordVersion.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREVIOUS", traits: {"smithy.api#enumValue" => "PREVIOUS"}))
    RelationalDatabasePasswordVersion.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RelationalDatabaseSnapshot.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    RelationalDatabaseSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    RelationalDatabaseSnapshot.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    RelationalDatabaseSnapshot.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    RelationalDatabaseSnapshot.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    RelationalDatabaseSnapshot.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RelationalDatabaseSnapshot.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    RelationalDatabaseSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engine"))
    RelationalDatabaseSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "engineVersion"))
    RelationalDatabaseSnapshot.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGb"))
    RelationalDatabaseSnapshot.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "state"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromRelationalDatabaseName"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fromRelationalDatabaseArn"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fromRelationalDatabaseBundleId"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fromRelationalDatabaseBlueprintId"))
    RelationalDatabaseSnapshot.type = Types::RelationalDatabaseSnapshot
    RelationalDatabaseSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseSnapshot)
    ReleaseStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "staticIpName", traits: {"smithy.api#required" => {}}))
    ReleaseStaticIpRequest.type = Types::ReleaseStaticIpRequest
    ReleaseStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    ReleaseStaticIpResult.type = Types::ReleaseStaticIpResult
    RenewalStatus.add_member(:pending_auto_renewal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingAutoRenewal", traits: {"smithy.api#enumValue" => "PendingAutoRenewal"}))
    RenewalStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PendingValidation", traits: {"smithy.api#enumValue" => "PendingValidation"}))
    RenewalStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    RenewalStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    RenewalSummary.add_member(:domain_validation_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationRecordList, location_name: "domainValidationRecords"))
    RenewalSummary.add_member(:renewal_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalStatus, location_name: "renewalStatus"))
    RenewalSummary.add_member(:renewal_status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalStatusReason, location_name: "renewalStatusReason"))
    RenewalSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "updatedAt"))
    RenewalSummary.type = Types::RenewalSummary
    ResetDistributionCacheRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    ResetDistributionCacheRequest.type = Types::ResetDistributionCacheRequest
    ResetDistributionCacheResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    ResetDistributionCacheResult.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createTime"))
    ResetDistributionCacheResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    ResetDistributionCacheResult.type = Types::ResetDistributionCacheResult
    ResourceBucketAccess.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Allow", traits: {"smithy.api#enumValue" => "allow"}))
    ResourceBucketAccess.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deny", traits: {"smithy.api#enumValue" => "deny"}))
    ResourceBudgetEstimate.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    ResourceBudgetEstimate.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceBudgetEstimate.add_member(:cost_estimates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostEstimates, location_name: "costEstimates"))
    ResourceBudgetEstimate.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "startTime"))
    ResourceBudgetEstimate.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "endTime"))
    ResourceBudgetEstimate.type = Types::ResourceBudgetEstimate
    ResourceLocation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    ResourceLocation.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "regionName"))
    ResourceLocation.type = Types::ResourceLocation
    ResourceNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName)
    ResourceReceivingAccess.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ResourceReceivingAccess.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceType"))
    ResourceReceivingAccess.type = Types::ResourceReceivingAccess
    ResourceRecord.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ResourceRecord.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ResourceRecord.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ResourceRecord.type = Types::ResourceRecord
    ResourceType.add_member(:container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ContainerService", traits: {"smithy.api#enumValue" => "ContainerService"}))
    ResourceType.add_member(:instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Instance", traits: {"smithy.api#enumValue" => "Instance"}))
    ResourceType.add_member(:static_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StaticIp", traits: {"smithy.api#enumValue" => "StaticIp"}))
    ResourceType.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KeyPair", traits: {"smithy.api#enumValue" => "KeyPair"}))
    ResourceType.add_member(:instance_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InstanceSnapshot", traits: {"smithy.api#enumValue" => "InstanceSnapshot"}))
    ResourceType.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Domain", traits: {"smithy.api#enumValue" => "Domain"}))
    ResourceType.add_member(:peered_vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PeeredVpc", traits: {"smithy.api#enumValue" => "PeeredVpc"}))
    ResourceType.add_member(:load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LoadBalancer", traits: {"smithy.api#enumValue" => "LoadBalancer"}))
    ResourceType.add_member(:load_balancer_tls_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "LoadBalancerTlsCertificate"}))
    ResourceType.add_member(:disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disk", traits: {"smithy.api#enumValue" => "Disk"}))
    ResourceType.add_member(:disk_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DiskSnapshot", traits: {"smithy.api#enumValue" => "DiskSnapshot"}))
    ResourceType.add_member(:relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RelationalDatabase", traits: {"smithy.api#enumValue" => "RelationalDatabase"}))
    ResourceType.add_member(:relational_database_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RelationalDatabaseSnapshot", traits: {"smithy.api#enumValue" => "RelationalDatabaseSnapshot"}))
    ResourceType.add_member(:export_snapshot_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ExportSnapshotRecord", traits: {"smithy.api#enumValue" => "ExportSnapshotRecord"}))
    ResourceType.add_member(:cloud_formation_stack_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CloudFormationStackRecord", traits: {"smithy.api#enumValue" => "CloudFormationStackRecord"}))
    ResourceType.add_member(:alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Alarm", traits: {"smithy.api#enumValue" => "Alarm"}))
    ResourceType.add_member(:contact_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ContactMethod", traits: {"smithy.api#enumValue" => "ContactMethod"}))
    ResourceType.add_member(:distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Distribution", traits: {"smithy.api#enumValue" => "Distribution"}))
    ResourceType.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Certificate", traits: {"smithy.api#enumValue" => "Certificate"}))
    ResourceType.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bucket", traits: {"smithy.api#enumValue" => "Bucket"}))
    ResourcesBudgetEstimate.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceBudgetEstimate)
    SendContactMethodVerificationRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactMethodVerificationProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    SendContactMethodVerificationRequest.type = Types::SendContactMethodVerificationRequest
    SendContactMethodVerificationResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    SendContactMethodVerificationResult.type = Types::SendContactMethodVerificationResult
    ServiceException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ServiceException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    ServiceException.type = Types::ServiceException
    Session.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    Session.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "url"))
    Session.add_member(:is_primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    Session.type = Types::Session
    Sessions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Session)
    SetIpAddressTypeRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    SetIpAddressTypeRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    SetIpAddressTypeRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    SetIpAddressTypeRequest.add_member(:accept_bundle_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "acceptBundleUpdate"))
    SetIpAddressTypeRequest.type = Types::SetIpAddressTypeRequest
    SetIpAddressTypeResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    SetIpAddressTypeResult.type = Types::SetIpAddressTypeResult
    SetResourceAccessForBucketRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    SetResourceAccessForBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    SetResourceAccessForBucketRequest.add_member(:access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceBucketAccess, location_name: "access", traits: {"smithy.api#required" => {}}))
    SetResourceAccessForBucketRequest.type = Types::SetResourceAccessForBucketRequest
    SetResourceAccessForBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    SetResourceAccessForBucketResult.type = Types::SetResourceAccessForBucketResult
    SetupDomainNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupDomainName)
    SetupExecutionDetails.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "command"))
    SetupExecutionDetails.add_member(:date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "dateTime"))
    SetupExecutionDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    SetupExecutionDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupStatus, location_name: "status"))
    SetupExecutionDetails.add_member(:standard_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "standardError"))
    SetupExecutionDetails.add_member(:standard_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "standardOutput"))
    SetupExecutionDetails.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "version"))
    SetupExecutionDetails.type = Types::SetupExecutionDetails
    SetupExecutionDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupExecutionDetails)
    SetupHistory.add_member(:operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "operationId"))
    SetupHistory.add_member(:request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupRequest, location_name: "request"))
    SetupHistory.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupHistoryResource, location_name: "resource"))
    SetupHistory.add_member(:execution_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupExecutionDetailsList, location_name: "executionDetails"))
    SetupHistory.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupStatus, location_name: "status"))
    SetupHistory.type = Types::SetupHistory
    SetupHistoryResource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    SetupHistoryResource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    SetupHistoryResource.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    SetupHistoryResource.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    SetupHistoryResource.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    SetupHistoryResource.type = Types::SetupHistoryResource
    SetupInstanceHttpsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: "emailAddress", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupDomainNameList, location_name: "domainNames", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.add_member(:certificate_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateProvider, location_name: "certificateProvider", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.type = Types::SetupInstanceHttpsRequest
    SetupInstanceHttpsResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    SetupInstanceHttpsResult.type = Types::SetupInstanceHttpsResult
    SetupRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName"))
    SetupRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupDomainNameList, location_name: "domainNames"))
    SetupRequest.add_member(:certificate_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateProvider, location_name: "certificateProvider"))
    SetupRequest.type = Types::SetupRequest
    SetupStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Succeeded", traits: {"smithy.api#enumValue" => "succeeded"}))
    SetupStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "failed"}))
    SetupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InProgress", traits: {"smithy.api#enumValue" => "inProgress"}))
    StartGUISessionRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    StartGUISessionRequest.type = Types::StartGUISessionRequest
    StartGUISessionResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StartGUISessionResult.type = Types::StartGUISessionResult
    StartInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    StartInstanceRequest.type = Types::StartInstanceRequest
    StartInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StartInstanceResult.type = Types::StartInstanceResult
    StartRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    StartRelationalDatabaseRequest.type = Types::StartRelationalDatabaseRequest
    StartRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StartRelationalDatabaseResult.type = Types::StartRelationalDatabaseResult
    StaticIp.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    StaticIp.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    StaticIp.add_member(:support_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "supportCode"))
    StaticIp.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "createdAt"))
    StaticIp.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLocation, location_name: "location"))
    StaticIp.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    StaticIp.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    StaticIp.add_member(:attached_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "attachedTo"))
    StaticIp.add_member(:is_attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAttached"))
    StaticIp.type = Types::StaticIp
    StaticIpList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StaticIp)
    Status.add_member(:start_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StartExpired", traits: {"smithy.api#enumValue" => "startExpired"}))
    Status.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotStarted", traits: {"smithy.api#enumValue" => "notStarted"}))
    Status.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Started", traits: {"smithy.api#enumValue" => "started"}))
    Status.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Starting", traits: {"smithy.api#enumValue" => "starting"}))
    Status.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Stopped", traits: {"smithy.api#enumValue" => "stopped"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Stopping", traits: {"smithy.api#enumValue" => "stopping"}))
    Status.add_member(:setting_up_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SettingUpInstance", traits: {"smithy.api#enumValue" => "settingUpInstance"}))
    Status.add_member(:failed_instance_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedInstanceCreation", traits: {"smithy.api#enumValue" => "failedInstanceCreation"}))
    Status.add_member(:failed_starting_gui_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedStartingGUISession", traits: {"smithy.api#enumValue" => "failedStartingGUISession"}))
    Status.add_member(:failed_stopping_gui_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedStoppingGUISession", traits: {"smithy.api#enumValue" => "failedStoppingGUISession"}))
    StatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    StatusType.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    StopGUISessionRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    StopGUISessionRequest.type = Types::StopGUISessionRequest
    StopGUISessionResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StopGUISessionResult.type = Types::StopGUISessionResult
    StopInstanceOnIdleRequest.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "threshold"))
    StopInstanceOnIdleRequest.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "duration"))
    StopInstanceOnIdleRequest.type = Types::StopInstanceOnIdleRequest
    StopInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    StopInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    StopInstanceRequest.type = Types::StopInstanceRequest
    StopInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StopInstanceResult.type = Types::StopInstanceResult
    StopRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    StopRelationalDatabaseRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseSnapshotName"))
    StopRelationalDatabaseRequest.type = Types::StopRelationalDatabaseRequest
    StopRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    StopRelationalDatabaseResult.type = Types::StopRelationalDatabaseResult
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubjectAlternativeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    TagResourceResult.type = Types::TagResourceResult
    TestAlarmRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "alarmName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestAlarmRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmState, location_name: "state", traits: {"smithy.api#httpQuery" => "state", "smithy.api#required" => {}}))
    TestAlarmRequest.type = Types::TestAlarmRequest
    TestAlarmResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    TestAlarmResult.type = Types::TestAlarmResult
    TimePeriod.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "start"))
    TimePeriod.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoDate, location_name: "end"))
    TimePeriod.type = Types::TimePeriod
    TreatMissingData.add_member(:breaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Breaching", traits: {"smithy.api#enumValue" => "breaching"}))
    TreatMissingData.add_member(:not_breaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotBreaching", traits: {"smithy.api#enumValue" => "notBreaching"}))
    TreatMissingData.add_member(:ignore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Ignore", traits: {"smithy.api#enumValue" => "ignore"}))
    TreatMissingData.add_member(:missing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Missing", traits: {"smithy.api#enumValue" => "missing"}))
    UnauthenticatedException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    UnauthenticatedException.add_member(:docs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "docs"))
    UnauthenticatedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnauthenticatedException.add_member(:tip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tip"))
    UnauthenticatedException.type = Types::UnauthenticatedException
    UnpeerVpcRequest.type = Types::UnpeerVpcRequest
    UnpeerVpcResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UnpeerVpcResult.type = Types::UnpeerVpcResult
    UntagResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateBucketBundleRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    UpdateBucketBundleRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bundleId", traits: {"smithy.api#required" => {}}))
    UpdateBucketBundleRequest.type = Types::UpdateBucketBundleRequest
    UpdateBucketBundleResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateBucketBundleResult.type = Types::UpdateBucketBundleResult
    UpdateBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    UpdateBucketRequest.add_member(:access_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRules, location_name: "accessRules"))
    UpdateBucketRequest.add_member(:versioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "versioning"))
    UpdateBucketRequest.add_member(:readonly_access_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIdList, location_name: "readonlyAccessAccounts"))
    UpdateBucketRequest.add_member(:access_log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketAccessLogConfig, location_name: "accessLogConfig"))
    UpdateBucketRequest.type = Types::UpdateBucketRequest
    UpdateBucketResult.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket, location_name: "bucket"))
    UpdateBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateBucketResult.type = Types::UpdateBucketResult
    UpdateContainerServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceName, location_name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContainerServiceRequest.add_member(:power, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePowerName, location_name: "power"))
    UpdateContainerServiceRequest.add_member(:scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServiceScale, location_name: "scale"))
    UpdateContainerServiceRequest.add_member(:is_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isDisabled"))
    UpdateContainerServiceRequest.add_member(:public_domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicePublicDomains, location_name: "publicDomainNames"))
    UpdateContainerServiceRequest.add_member(:private_registry_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateRegistryAccessRequest, location_name: "privateRegistryAccess"))
    UpdateContainerServiceRequest.type = Types::UpdateContainerServiceRequest
    UpdateContainerServiceResult.add_member(:container_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerService, location_name: "containerService"))
    UpdateContainerServiceResult.type = Types::UpdateContainerServiceResult
    UpdateDistributionBundleRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName"))
    UpdateDistributionBundleRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "bundleId"))
    UpdateDistributionBundleRequest.type = Types::UpdateDistributionBundleRequest
    UpdateDistributionBundleResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UpdateDistributionBundleResult.type = Types::UpdateDistributionBundleResult
    UpdateDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "distributionName", traits: {"smithy.api#required" => {}}))
    UpdateDistributionRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputOrigin, location_name: "origin"))
    UpdateDistributionRequest.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "defaultCacheBehavior"))
    UpdateDistributionRequest.add_member(:cache_behavior_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSettings, location_name: "cacheBehaviorSettings"))
    UpdateDistributionRequest.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "cacheBehaviors"))
    UpdateDistributionRequest.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isEnabled"))
    UpdateDistributionRequest.add_member(:viewer_minimum_tls_protocol_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerMinimumTlsProtocolVersionEnum, location_name: "viewerMinimumTlsProtocolVersion"))
    UpdateDistributionRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "certificateName"))
    UpdateDistributionRequest.add_member(:use_default_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "useDefaultCertificate"))
    UpdateDistributionRequest.type = Types::UpdateDistributionRequest
    UpdateDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UpdateDistributionResult.type = Types::UpdateDistributionResult
    UpdateDomainEntryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainEntryRequest.add_member(:domain_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntry, location_name: "domainEntry", traits: {"smithy.api#required" => {}}))
    UpdateDomainEntryRequest.type = Types::UpdateDomainEntryRequest
    UpdateDomainEntryResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateDomainEntryResult.type = Types::UpdateDomainEntryResult
    UpdateInstanceMetadataOptionsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "instanceName", traits: {"smithy.api#required" => {}}))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpTokens, location_name: "httpTokens"))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpEndpoint, location_name: "httpEndpoint"))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "httpPutResponseHopLimit"))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_protocol_ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpProtocolIpv6, location_name: "httpProtocolIpv6"))
    UpdateInstanceMetadataOptionsRequest.type = Types::UpdateInstanceMetadataOptionsRequest
    UpdateInstanceMetadataOptionsResult.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation"))
    UpdateInstanceMetadataOptionsResult.type = Types::UpdateInstanceMetadataOptionsResult
    UpdateLoadBalancerAttributeRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    UpdateLoadBalancerAttributeRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributeName, location_name: "attributeName", traits: {"smithy.api#required" => {}}))
    UpdateLoadBalancerAttributeRequest.add_member(:attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMax256, location_name: "attributeValue", traits: {"smithy.api#required" => {}}))
    UpdateLoadBalancerAttributeRequest.type = Types::UpdateLoadBalancerAttributeRequest
    UpdateLoadBalancerAttributeResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateLoadBalancerAttributeResult.type = Types::UpdateLoadBalancerAttributeResult
    UpdateRelationalDatabaseParametersRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateRelationalDatabaseParametersRequest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseParameterList, location_name: "parameters", traits: {"smithy.api#required" => {}}))
    UpdateRelationalDatabaseParametersRequest.type = Types::UpdateRelationalDatabaseParametersRequest
    UpdateRelationalDatabaseParametersResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateRelationalDatabaseParametersResult.type = Types::UpdateRelationalDatabaseParametersResult
    UpdateRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateRelationalDatabaseRequest.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "masterUserPassword"))
    UpdateRelationalDatabaseRequest.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "rotateMasterUserPassword"))
    UpdateRelationalDatabaseRequest.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "preferredBackupWindow"))
    UpdateRelationalDatabaseRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "preferredMaintenanceWindow"))
    UpdateRelationalDatabaseRequest.add_member(:enable_backup_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "enableBackupRetention"))
    UpdateRelationalDatabaseRequest.add_member(:disable_backup_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "disableBackupRetention"))
    UpdateRelationalDatabaseRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    UpdateRelationalDatabaseRequest.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "applyImmediately"))
    UpdateRelationalDatabaseRequest.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "caCertificateIdentifier"))
    UpdateRelationalDatabaseRequest.add_member(:relational_database_blueprint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "relationalDatabaseBlueprintId"))
    UpdateRelationalDatabaseRequest.type = Types::UpdateRelationalDatabaseRequest
    UpdateRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: "operations"))
    UpdateRelationalDatabaseResult.type = Types::UpdateRelationalDatabaseResult
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv11_2016, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLSv11_2016", traits: {"smithy.api#enumValue" => "TLSv1.1_2016"}))
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv12_2018, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLSv12_2018", traits: {"smithy.api#enumValue" => "TLSv1.2_2018"}))
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv12_2019, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLSv12_2019", traits: {"smithy.api#enumValue" => "TLSv1.2_2019"}))
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv12_2021, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLSv12_2021", traits: {"smithy.api#enumValue" => "TLSv1.2_2021"}))
    SetupHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupHistory)

    Lightsail20161128 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lightsail#Lightsail_20161128"
      service.name = "Lightsail20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Lightsail", "arnNamespace" => "lightsail", "cloudFormationName" => "Lightsail", "cloudTrailEventSource" => "lightsail.amazonaws.com", "endpointPrefix" => "lightsail"}, "aws.auth#sigv4" => {"name" => "lightsail"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Lightsail"}
      service.add_operation(:allocate_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AllocateStaticIp"
        operation.name = "AllocateStaticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateStaticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocateStaticIpResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AllocateStaticIp", "code" => 200}}
      end)
      service.add_operation(:attach_certificate_to_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachCertificateToDistribution"
        operation.name = "AttachCertificateToDistribution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachCertificateToDistributionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachCertificateToDistributionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachCertificateToDistribution", "code" => 200}}
      end)
      service.add_operation(:attach_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachDisk"
        operation.name = "AttachDisk"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachDiskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachDiskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachDisk", "code" => 200}}
      end)
      service.add_operation(:attach_instances_to_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachInstancesToLoadBalancer"
        operation.name = "AttachInstancesToLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachInstancesToLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachInstancesToLoadBalancerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachInstancesToLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:attach_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachLoadBalancerTlsCertificate"
        operation.name = "AttachLoadBalancerTlsCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachLoadBalancerTlsCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachLoadBalancerTlsCertificateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachLoadBalancerTlsCertificate", "code" => 200}}
      end)
      service.add_operation(:attach_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachStaticIp"
        operation.name = "AttachStaticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachStaticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachStaticIpResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachStaticIp", "code" => 200}}
      end)
      service.add_operation(:close_instance_public_ports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CloseInstancePublicPorts"
        operation.name = "CloseInstancePublicPorts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseInstancePublicPortsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseInstancePublicPortsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CloseInstancePublicPorts", "code" => 200}}
      end)
      service.add_operation(:copy_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CopySnapshot"
        operation.name = "CopySnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopySnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopySnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CopySnapshot", "code" => 200}}
      end)
      service.add_operation(:create_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateBucket"
        operation.name = "CreateBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateBucket", "code" => 200}}
      end)
      service.add_operation(:create_bucket_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateBucketAccessKey"
        operation.name = "CreateBucketAccessKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketAccessKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketAccessKeyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateBucketAccessKey", "code" => 200}}
      end)
      service.add_operation(:create_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateCertificate"
        operation.name = "CreateCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateCertificate", "code" => 200}}
      end)
      service.add_operation(:create_cloud_formation_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateCloudFormationStack"
        operation.name = "CreateCloudFormationStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFormationStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFormationStackResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateCloudFormationStack", "code" => 200}}
      end)
      service.add_operation(:create_contact_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContactMethod"
        operation.name = "CreateContactMethod"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactMethodRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactMethodResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateContactMethod", "code" => 200}}
      end)
      service.add_operation(:create_container_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContainerService"
        operation.name = "CreateContainerService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerServiceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerServiceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-services", "code" => 201}}
      end)
      service.add_operation(:create_container_service_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContainerServiceDeployment"
        operation.name = "CreateContainerServiceDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerServiceDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerServiceDeploymentResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/deployments", "code" => 201}}
      end)
      service.add_operation(:create_container_service_registry_login, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContainerServiceRegistryLogin"
        operation.name = "CreateContainerServiceRegistryLogin"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerServiceRegistryLoginRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerServiceRegistryLoginResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-registry-login", "code" => 200}}
      end)
      service.add_operation(:create_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDisk"
        operation.name = "CreateDisk"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDiskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDiskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDisk", "code" => 200}}
      end)
      service.add_operation(:create_disk_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDiskFromSnapshot"
        operation.name = "CreateDiskFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDiskFromSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDiskFromSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDiskFromSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_disk_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDiskSnapshot"
        operation.name = "CreateDiskSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDiskSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDiskSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDiskSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDistribution"
        operation.name = "CreateDistribution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDistribution", "code" => 200}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDomain", "code" => 200}}
      end)
      service.add_operation(:create_domain_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDomainEntry"
        operation.name = "CreateDomainEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainEntryResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDomainEntry", "code" => 200}}
      end)
      service.add_operation(:create_gui_session_access_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateGUISessionAccessDetails"
        operation.name = "CreateGUISessionAccessDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGUISessionAccessDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGUISessionAccessDetailsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/create-gui-session-access-details", "code" => 200}}
      end)
      service.add_operation(:create_instance_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateInstanceSnapshot"
        operation.name = "CreateInstanceSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateInstanceSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateInstances"
        operation.name = "CreateInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstancesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateInstances", "code" => 200}}
      end)
      service.add_operation(:create_instances_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateInstancesFromSnapshot"
        operation.name = "CreateInstancesFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstancesFromSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstancesFromSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateInstancesFromSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateKeyPair"
        operation.name = "CreateKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyPairRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyPairResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateKeyPair", "code" => 200}}
      end)
      service.add_operation(:create_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateLoadBalancer"
        operation.name = "CreateLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoadBalancerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:create_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateLoadBalancerTlsCertificate"
        operation.name = "CreateLoadBalancerTlsCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoadBalancerTlsCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoadBalancerTlsCertificateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateLoadBalancerTlsCertificate", "code" => 200}}
      end)
      service.add_operation(:create_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateRelationalDatabase"
        operation.name = "CreateRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:create_relational_database_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateRelationalDatabaseFromSnapshot"
        operation.name = "CreateRelationalDatabaseFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelationalDatabaseFromSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelationalDatabaseFromSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateRelationalDatabaseFromSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_relational_database_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateRelationalDatabaseSnapshot"
        operation.name = "CreateRelationalDatabaseSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelationalDatabaseSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelationalDatabaseSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateRelationalDatabaseSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteAlarm"
        operation.name = "DeleteAlarm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ls/api/2016-11-28/DeleteAlarm/{alarmName}", "code" => 200}}
      end)
      service.add_operation(:delete_auto_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteAutoSnapshot"
        operation.name = "DeleteAutoSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutoSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutoSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteAutoSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteBucket"
        operation.name = "DeleteBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteBucket", "code" => 200}}
      end)
      service.add_operation(:delete_bucket_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteBucketAccessKey"
        operation.name = "DeleteBucketAccessKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketAccessKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketAccessKeyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteBucketAccessKey", "code" => 200}}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteCertificate", "code" => 200}}
      end)
      service.add_operation(:delete_contact_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteContactMethod"
        operation.name = "DeleteContactMethod"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactMethodRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactMethodResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteContactMethod", "code" => 200}}
      end)
      service.add_operation(:delete_container_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteContainerImage"
        operation.name = "DeleteContainerImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerImageResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/images/{image}", "code" => 204}}
      end)
      service.add_operation(:delete_container_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteContainerService"
        operation.name = "DeleteContainerService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerServiceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerServiceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}", "code" => 204}}
      end)
      service.add_operation(:delete_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDisk"
        operation.name = "DeleteDisk"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDiskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDiskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDisk", "code" => 200}}
      end)
      service.add_operation(:delete_disk_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDiskSnapshot"
        operation.name = "DeleteDiskSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDiskSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDiskSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDiskSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDistribution"
        operation.name = "DeleteDistribution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDistributionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDistributionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDistribution", "code" => 200}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDomain", "code" => 200}}
      end)
      service.add_operation(:delete_domain_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDomainEntry"
        operation.name = "DeleteDomainEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainEntryResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDomainEntry", "code" => 200}}
      end)
      service.add_operation(:delete_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteInstance", "code" => 200}}
      end)
      service.add_operation(:delete_instance_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteInstanceSnapshot"
        operation.name = "DeleteInstanceSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteInstanceSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteKeyPair"
        operation.name = "DeleteKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyPairRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyPairResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteKeyPair", "code" => 200}}
      end)
      service.add_operation(:delete_known_host_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteKnownHostKeys"
        operation.name = "DeleteKnownHostKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnownHostKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnownHostKeysResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteKnownHostKeys", "code" => 200}}
      end)
      service.add_operation(:delete_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteLoadBalancer"
        operation.name = "DeleteLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoadBalancerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:delete_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteLoadBalancerTlsCertificate"
        operation.name = "DeleteLoadBalancerTlsCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoadBalancerTlsCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoadBalancerTlsCertificateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteLoadBalancerTlsCertificate", "code" => 200}}
      end)
      service.add_operation(:delete_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteRelationalDatabase"
        operation.name = "DeleteRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:delete_relational_database_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteRelationalDatabaseSnapshot"
        operation.name = "DeleteRelationalDatabaseSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelationalDatabaseSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteRelationalDatabaseSnapshot", "code" => 200}}
      end)
      service.add_operation(:detach_certificate_from_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachCertificateFromDistribution"
        operation.name = "DetachCertificateFromDistribution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachCertificateFromDistributionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachCertificateFromDistributionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachCertificateFromDistribution", "code" => 200}}
      end)
      service.add_operation(:detach_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachDisk"
        operation.name = "DetachDisk"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachDiskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachDiskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachDisk", "code" => 200}}
      end)
      service.add_operation(:detach_instances_from_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachInstancesFromLoadBalancer"
        operation.name = "DetachInstancesFromLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachInstancesFromLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachInstancesFromLoadBalancerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachInstancesFromLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:detach_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachStaticIp"
        operation.name = "DetachStaticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachStaticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachStaticIpResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachStaticIp", "code" => 200}}
      end)
      service.add_operation(:disable_add_on, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DisableAddOn"
        operation.name = "DisableAddOn"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAddOnRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAddOnResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DisableAddOn", "code" => 200}}
      end)
      service.add_operation(:download_default_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DownloadDefaultKeyPair"
        operation.name = "DownloadDefaultKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DownloadDefaultKeyPairRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DownloadDefaultKeyPairResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DownloadDefaultKeyPair", "code" => 200}}
      end)
      service.add_operation(:enable_add_on, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#EnableAddOn"
        operation.name = "EnableAddOn"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAddOnRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAddOnResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/EnableAddOn", "code" => 200}}
      end)
      service.add_operation(:export_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ExportSnapshot"
        operation.name = "ExportSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ExportSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_active_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetActiveNames"
        operation.name = "GetActiveNames"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetActiveNamesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetActiveNamesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetActiveNames", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetActiveNamesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetAlarms"
        operation.name = "GetAlarms"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAlarmsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAlarmsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/GetAlarms", "code" => 200}}
      end)
      service.add_operation(:get_auto_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetAutoSnapshots"
        operation.name = "GetAutoSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutoSnapshotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutoSnapshotsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetAutoSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_blueprints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBlueprints"
        operation.name = "GetBlueprints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlueprintsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlueprintsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBlueprints", "code" => 200}}
      end)
      service.add_operation(:get_bucket_access_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBucketAccessKeys"
        operation.name = "GetBucketAccessKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketAccessKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketAccessKeysResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBucketAccessKeys", "code" => 200}}
      end)
      service.add_operation(:get_bucket_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBucketBundles"
        operation.name = "GetBucketBundles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketBundlesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketBundlesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBucketBundles", "code" => 200}}
      end)
      service.add_operation(:get_bucket_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBucketMetricData"
        operation.name = "GetBucketMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketMetricDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketMetricDataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBucketMetricData", "code" => 200}}
      end)
      service.add_operation(:get_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBuckets"
        operation.name = "GetBuckets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBuckets", "code" => 200}}
      end)
      service.add_operation(:get_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBundles"
        operation.name = "GetBundles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBundlesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBundlesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBundles", "code" => 200}}
      end)
      service.add_operation(:get_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetCertificates"
        operation.name = "GetCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificatesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetCertificates", "code" => 200}}
      end)
      service.add_operation(:get_cloud_formation_stack_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetCloudFormationStackRecords"
        operation.name = "GetCloudFormationStackRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCloudFormationStackRecordsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCloudFormationStackRecordsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetCloudFormationStackRecords", "code" => 200}}
      end)
      service.add_operation(:get_contact_methods, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContactMethods"
        operation.name = "GetContactMethods"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactMethodsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactMethodsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/GetContactMethods", "code" => 200}}
      end)
      service.add_operation(:get_container_api_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerAPIMetadata"
        operation.name = "GetContainerAPIMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerAPIMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerAPIMetadataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-api-metadata", "code" => 200}}
      end)
      service.add_operation(:get_container_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerImages"
        operation.name = "GetContainerImages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerImagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerImagesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/images", "code" => 200}}
      end)
      service.add_operation(:get_container_log, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerLog"
        operation.name = "GetContainerLog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerLogRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerLogResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/containers/{containerName}/log", "code" => 200}}
      end)
      service.add_operation(:get_container_service_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServiceDeployments"
        operation.name = "GetContainerServiceDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServiceDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServiceDeploymentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/deployments", "code" => 200}}
      end)
      service.add_operation(:get_container_service_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServiceMetricData"
        operation.name = "GetContainerServiceMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServiceMetricDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServiceMetricDataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/metrics", "code" => 200}}
      end)
      service.add_operation(:get_container_service_powers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServicePowers"
        operation.name = "GetContainerServicePowers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServicePowersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServicePowersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-service-powers", "code" => 200}}
      end)
      service.add_operation(:get_container_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServices"
        operation.name = "GetContainerServices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerServicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerServicesListResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services", "code" => 200}}
      end)
      service.add_operation(:get_cost_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetCostEstimate"
        operation.name = "GetCostEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostEstimateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/budgettracker/getCostEstimate", "code" => 200}}
      end)
      service.add_operation(:get_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDisk"
        operation.name = "GetDisk"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDisk", "code" => 200}}
      end)
      service.add_operation(:get_disk_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDiskSnapshot"
        operation.name = "GetDiskSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiskSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiskSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDiskSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_disk_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDiskSnapshots"
        operation.name = "GetDiskSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiskSnapshotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiskSnapshotsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDiskSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_disks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDisks"
        operation.name = "GetDisks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDisksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDisksResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDisks", "code" => 200}}
      end)
      service.add_operation(:get_distribution_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributionBundles"
        operation.name = "GetDistributionBundles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionBundlesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionBundlesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributionBundles", "code" => 200}}
      end)
      service.add_operation(:get_distribution_latest_cache_reset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributionLatestCacheReset"
        operation.name = "GetDistributionLatestCacheReset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionLatestCacheResetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionLatestCacheResetResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributionLatestCacheReset", "code" => 200}}
      end)
      service.add_operation(:get_distribution_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributionMetricData"
        operation.name = "GetDistributionMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionMetricDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionMetricDataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributionMetricData", "code" => 200}}
      end)
      service.add_operation(:get_distributions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributions"
        operation.name = "GetDistributions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributions", "code" => 200}}
      end)
      service.add_operation(:get_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDomain"
        operation.name = "GetDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDomain", "code" => 200}}
      end)
      service.add_operation(:get_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDomains"
        operation.name = "GetDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDomains", "code" => 200}}
      end)
      service.add_operation(:get_export_snapshot_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetExportSnapshotRecords"
        operation.name = "GetExportSnapshotRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportSnapshotRecordsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportSnapshotRecordsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetExportSnapshotRecords", "code" => 200}}
      end)
      service.add_operation(:get_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstance"
        operation.name = "GetInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstance", "code" => 200}}
      end)
      service.add_operation(:get_instance_access_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceAccessDetails"
        operation.name = "GetInstanceAccessDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceAccessDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceAccessDetailsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceAccessDetails", "code" => 200}}
      end)
      service.add_operation(:get_instance_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceMetricData"
        operation.name = "GetInstanceMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceMetricDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceMetricDataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceMetricData", "code" => 200}}
      end)
      service.add_operation(:get_instance_port_states, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstancePortStates"
        operation.name = "GetInstancePortStates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstancePortStatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstancePortStatesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstancePortStates", "code" => 200}}
      end)
      service.add_operation(:get_instance_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceSnapshot"
        operation.name = "GetInstanceSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_instance_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceSnapshots"
        operation.name = "GetInstanceSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceSnapshotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceSnapshotsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_instance_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceState"
        operation.name = "GetInstanceState"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceStateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceStateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceState", "code" => 200}}
      end)
      service.add_operation(:get_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstances"
        operation.name = "GetInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstancesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstances", "code" => 200}}
      end)
      service.add_operation(:get_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetKeyPair"
        operation.name = "GetKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyPairRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyPairResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetKeyPair", "code" => 200}}
      end)
      service.add_operation(:get_key_pairs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetKeyPairs"
        operation.name = "GetKeyPairs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyPairsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyPairsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetKeyPairs", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancer"
        operation.name = "GetLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancerMetricData"
        operation.name = "GetLoadBalancerMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerMetricDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerMetricDataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancerMetricData", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer_tls_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancerTlsCertificates"
        operation.name = "GetLoadBalancerTlsCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerTlsCertificatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerTlsCertificatesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancerTlsCertificates", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer_tls_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancerTlsPolicies"
        operation.name = "GetLoadBalancerTlsPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerTlsPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancerTlsPoliciesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancerTlsPolicies", "code" => 200}}
      end)
      service.add_operation(:get_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancers"
        operation.name = "GetLoadBalancers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoadBalancersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancers", "code" => 200}}
      end)
      service.add_operation(:get_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetOperation"
        operation.name = "GetOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetOperation", "code" => 200}}
      end)
      service.add_operation(:get_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetOperations"
        operation.name = "GetOperations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetOperations", "code" => 200}}
      end)
      service.add_operation(:get_operations_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetOperationsForResource"
        operation.name = "GetOperationsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationsForResourceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetOperationsForResource", "code" => 200}}
      end)
      service.add_operation(:get_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRegions"
        operation.name = "GetRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRegions", "code" => 200}}
      end)
      service.add_operation(:get_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabase"
        operation.name = "GetRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_blueprints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseBlueprints"
        operation.name = "GetRelationalDatabaseBlueprints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseBlueprintsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseBlueprintsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseBlueprints", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseBundles"
        operation.name = "GetRelationalDatabaseBundles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseBundlesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseBundlesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseBundles", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseEvents"
        operation.name = "GetRelationalDatabaseEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseEventsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseEvents", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_log_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseLogEvents"
        operation.name = "GetRelationalDatabaseLogEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogEventsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseLogEvents", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_log_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseLogStreams"
        operation.name = "GetRelationalDatabaseLogStreams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogStreamsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseLogStreamsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseLogStreams", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_master_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseMasterUserPassword"
        operation.name = "GetRelationalDatabaseMasterUserPassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseMasterUserPasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseMasterUserPasswordResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseMasterUserPassword", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseMetricData"
        operation.name = "GetRelationalDatabaseMetricData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseMetricDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseMetricDataResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseMetricData", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseParameters"
        operation.name = "GetRelationalDatabaseParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseParametersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseParametersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseParameters", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseSnapshot"
        operation.name = "GetRelationalDatabaseSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseSnapshots"
        operation.name = "GetRelationalDatabaseSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabaseSnapshotsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_relational_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabases"
        operation.name = "GetRelationalDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelationalDatabasesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabases", "code" => 200}}
      end)
      service.add_operation(:get_setup_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetSetupHistory"
        operation.name = "GetSetupHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSetupHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSetupHistoryResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/get-setup-history", "code" => 200}}
      end)
      service.add_operation(:get_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetStaticIp"
        operation.name = "GetStaticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStaticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStaticIpResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetStaticIp", "code" => 200}}
      end)
      service.add_operation(:get_static_ips, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetStaticIps"
        operation.name = "GetStaticIps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStaticIpsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStaticIpsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetStaticIps", "code" => 200}}
      end)
      service.add_operation(:import_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ImportKeyPair"
        operation.name = "ImportKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyPairRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyPairResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ImportKeyPair", "code" => 200}}
      end)
      service.add_operation(:is_vpc_peered, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#IsVpcPeered"
        operation.name = "IsVpcPeered"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsVpcPeeredRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsVpcPeeredResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/IsVpcPeered", "code" => 200}}
      end)
      service.add_operation(:open_instance_public_ports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#OpenInstancePublicPorts"
        operation.name = "OpenInstancePublicPorts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenInstancePublicPortsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenInstancePublicPortsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/OpenInstancePublicPorts", "code" => 200}}
      end)
      service.add_operation(:peer_vpc, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#PeerVpc"
        operation.name = "PeerVpc"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PeerVpcRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PeerVpcResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/PeerVpc", "code" => 200}}
      end)
      service.add_operation(:put_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#PutAlarm"
        operation.name = "PutAlarm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlarmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlarmResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/PutAlarm", "code" => 200}}
      end)
      service.add_operation(:put_instance_public_ports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#PutInstancePublicPorts"
        operation.name = "PutInstancePublicPorts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInstancePublicPortsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInstancePublicPortsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/PutInstancePublicPorts", "code" => 200}}
      end)
      service.add_operation(:reboot_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#RebootInstance"
        operation.name = "RebootInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/RebootInstance", "code" => 200}}
      end)
      service.add_operation(:reboot_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#RebootRelationalDatabase"
        operation.name = "RebootRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/RebootRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:register_container_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#RegisterContainerImage"
        operation.name = "RegisterContainerImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterContainerImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterContainerImageResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/images", "code" => 200}}
      end)
      service.add_operation(:release_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ReleaseStaticIp"
        operation.name = "ReleaseStaticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseStaticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseStaticIpResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ReleaseStaticIp", "code" => 200}}
      end)
      service.add_operation(:reset_distribution_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ResetDistributionCache"
        operation.name = "ResetDistributionCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDistributionCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDistributionCacheResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ResetDistributionCache", "code" => 200}}
      end)
      service.add_operation(:send_contact_method_verification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SendContactMethodVerification"
        operation.name = "SendContactMethodVerification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendContactMethodVerificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendContactMethodVerificationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/SendContactMethodVerification", "code" => 200}}
      end)
      service.add_operation(:set_ip_address_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SetIpAddressType"
        operation.name = "SetIpAddressType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetIpAddressTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetIpAddressTypeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/SetIpAddressType", "code" => 200}}
      end)
      service.add_operation(:set_resource_access_for_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SetResourceAccessForBucket"
        operation.name = "SetResourceAccessForBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetResourceAccessForBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetResourceAccessForBucketResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/SetResourceAccessForBucket", "code" => 200}}
      end)
      service.add_operation(:setup_instance_https, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SetupInstanceHttps"
        operation.name = "SetupInstanceHttps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupInstanceHttpsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetupInstanceHttpsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/setup-instance-https", "code" => 200}}
      end)
      service.add_operation(:start_gui_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StartGUISession"
        operation.name = "StartGUISession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartGUISessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartGUISessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/start-gui-session", "code" => 200}}
      end)
      service.add_operation(:start_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StartInstance"
        operation.name = "StartInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StartInstance", "code" => 200}}
      end)
      service.add_operation(:start_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StartRelationalDatabase"
        operation.name = "StartRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StartRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:stop_gui_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StopGUISession"
        operation.name = "StopGUISession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopGUISessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopGUISessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/stop-gui-session", "code" => 200}}
      end)
      service.add_operation(:stop_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StopInstance"
        operation.name = "StopInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StopInstance", "code" => 200}}
      end)
      service.add_operation(:stop_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StopRelationalDatabase"
        operation.name = "StopRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StopRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/TagResource", "code" => 200}}
      end)
      service.add_operation(:test_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#TestAlarm"
        operation.name = "TestAlarm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestAlarmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestAlarmResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/TestAlarm/{alarmName}", "code" => 200}}
      end)
      service.add_operation(:unpeer_vpc, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UnpeerVpc"
        operation.name = "UnpeerVpc"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnpeerVpcRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnpeerVpcResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UnpeerVpc", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UntagResource", "code" => 200}}
      end)
      service.add_operation(:update_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateBucket"
        operation.name = "UpdateBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBucketResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateBucket", "code" => 200}}
      end)
      service.add_operation(:update_bucket_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateBucketBundle"
        operation.name = "UpdateBucketBundle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBucketBundleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBucketBundleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateBucketBundle", "code" => 200}}
      end)
      service.add_operation(:update_container_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateContainerService"
        operation.name = "UpdateContainerService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContainerServiceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContainerServiceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}", "code" => 200}}
      end)
      service.add_operation(:update_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateDistribution"
        operation.name = "UpdateDistribution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateDistribution", "code" => 200}}
      end)
      service.add_operation(:update_distribution_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateDistributionBundle"
        operation.name = "UpdateDistributionBundle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionBundleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionBundleResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateDistributionBundle", "code" => 200}}
      end)
      service.add_operation(:update_domain_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateDomainEntry"
        operation.name = "UpdateDomainEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainEntryResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateDomainEntry", "code" => 200}}
      end)
      service.add_operation(:update_instance_metadata_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateInstanceMetadataOptions"
        operation.name = "UpdateInstanceMetadataOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceMetadataOptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceMetadataOptionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateInstanceMetadataOptions", "code" => 200}}
      end)
      service.add_operation(:update_load_balancer_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateLoadBalancerAttribute"
        operation.name = "UpdateLoadBalancerAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoadBalancerAttributeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoadBalancerAttributeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateLoadBalancerAttribute", "code" => 200}}
      end)
      service.add_operation(:update_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateRelationalDatabase"
        operation.name = "UpdateRelationalDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:update_relational_database_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateRelationalDatabaseParameters"
        operation.name = "UpdateRelationalDatabaseParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseParametersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRelationalDatabaseParametersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSetupInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthenticatedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateRelationalDatabaseParameters", "code" => 200}}
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
