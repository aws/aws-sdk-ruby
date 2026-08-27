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

    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    AccessDeniedException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccessDeniedException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDirection.add_member(:inbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "inbound", traits: {"smithy.api#enumValue" => "inbound"}))
    AccessDirection.add_member(:outbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "outbound", traits: {"smithy.api#enumValue" => "outbound"}))
    AccessKey.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMAccessKeyId, name: "accessKeyId"))
    AccessKey.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "secretAccessKey"))
    AccessKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "status"))
    AccessKey.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    AccessKey.add_member(:last_used, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyLastUsed, name: "lastUsed"))
    AccessKey.type = Types::AccessKey
    AccessKeyLastUsed.add_member(:last_used_date, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "lastUsedDate"))
    AccessKeyLastUsed.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "region"))
    AccessKeyLastUsed.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName"))
    AccessKeyLastUsed.type = Types::AccessKeyLastUsed
    AccessKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKey, name: "member")
    AccessReceiverList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceReceivingAccess, name: "member")
    AccessRules.add_member(:get_object, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "getObject"))
    AccessRules.add_member(:allow_public_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowPublicOverrides"))
    AccessRules.type = Types::AccessRules
    AccessType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "public"}))
    AccessType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Private", traits: {"smithy.api#enumValue" => "private"}))
    AccountLevelBpaSync.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLevelBpaSyncStatus, name: "status"))
    AccountLevelBpaSync.add_member(:last_synced_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "lastSyncedAt"))
    AccountLevelBpaSync.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BPAStatusMessage, name: "message"))
    AccountLevelBpaSync.add_member(:bpa_impacts_lightsail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "bpaImpactsLightsail"))
    AccountLevelBpaSync.type = Types::AccountLevelBpaSync
    AccountLevelBpaSyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InSync", traits: {"smithy.api#enumValue" => "InSync"}))
    AccountLevelBpaSyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    AccountLevelBpaSyncStatus.add_member(:never_synced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NeverSynced", traits: {"smithy.api#enumValue" => "NeverSynced"}))
    AccountLevelBpaSyncStatus.add_member(:defaulted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Defaulted", traits: {"smithy.api#enumValue" => "Defaulted"}))
    AccountSetupInProgressException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    AccountSetupInProgressException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    AccountSetupInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccountSetupInProgressException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    AccountSetupInProgressException.type = Types::AccountSetupInProgressException
    AddOn.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    AddOn.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    AddOn.add_member(:snapshot_time_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, name: "snapshotTimeOfDay"))
    AddOn.add_member(:next_snapshot_time_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, name: "nextSnapshotTimeOfDay"))
    AddOn.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "threshold"))
    AddOn.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "duration"))
    AddOn.type = Types::AddOn
    AddOnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddOn, name: "member")
    AddOnRequest.add_member(:add_on_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnType, name: "addOnType", traits: {"smithy.api#required" => {}}))
    AddOnRequest.add_member(:auto_snapshot_add_on_request, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSnapshotAddOnRequest, name: "autoSnapshotAddOnRequest"))
    AddOnRequest.add_member(:stop_instance_on_idle_request, ::Smithy::Schema::Shapes::MemberShape.new(target: StopInstanceOnIdleRequest, name: "stopInstanceOnIdleRequest"))
    AddOnRequest.type = Types::AddOnRequest
    AddOnRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnRequest, name: "member")
    AddOnType.add_member(:auto_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutoSnapshot", traits: {"smithy.api#enumValue" => "AutoSnapshot"}))
    AddOnType.add_member(:stop_instance_on_idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StopInstanceOnIdle", traits: {"smithy.api#enumValue" => "StopInstanceOnIdle"}))
    Alarm.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Alarm.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Alarm.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Alarm.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    Alarm.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Alarm.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    Alarm.add_member(:monitored_resource_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoredResourceInfo, name: "monitoredResourceInfo"))
    Alarm.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "comparisonOperator"))
    Alarm.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "evaluationPeriods"))
    Alarm.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period"))
    Alarm.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "threshold"))
    Alarm.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "datapointsToAlarm"))
    Alarm.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatMissingData, name: "treatMissingData"))
    Alarm.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "statistic"))
    Alarm.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "metricName"))
    Alarm.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmState, name: "state"))
    Alarm.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit"))
    Alarm.add_member(:contact_protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocolsList, name: "contactProtocols"))
    Alarm.add_member(:notification_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTriggerList, name: "notificationTriggers"))
    Alarm.add_member(:notification_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "notificationEnabled"))
    Alarm.type = Types::Alarm
    AlarmState.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    AlarmState.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    AlarmState.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    AlarmsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "member")
    AllocateStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "staticIpName", traits: {"smithy.api#required" => {}}))
    AllocateStaticIpRequest.type = Types::AllocateStaticIpRequest
    AllocateStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    AllocateStaticIpResult.type = Types::AllocateStaticIpResult
    AppCategory.add_member(:lf_r, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LfR", traits: {"smithy.api#enumValue" => "LfR"}))
    AppCategoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppCategory, name: "member")
    AttachCertificateToDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName", traits: {"smithy.api#required" => {}}))
    AttachCertificateToDistributionRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName", traits: {"smithy.api#required" => {}}))
    AttachCertificateToDistributionRequest.type = Types::AttachCertificateToDistributionRequest
    AttachCertificateToDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    AttachCertificateToDistributionResult.type = Types::AttachCertificateToDistributionResult
    AttachDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName", traits: {"smithy.api#required" => {}}))
    AttachDiskRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    AttachDiskRequest.add_member(:disk_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "diskPath", traits: {"smithy.api#required" => {}}))
    AttachDiskRequest.add_member(:auto_mounting, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoMounting"))
    AttachDiskRequest.type = Types::AttachDiskRequest
    AttachDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    AttachDiskResult.type = Types::AttachDiskResult
    AttachInstancesToLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    AttachInstancesToLoadBalancerRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    AttachInstancesToLoadBalancerRequest.type = Types::AttachInstancesToLoadBalancerRequest
    AttachInstancesToLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    AttachInstancesToLoadBalancerResult.type = Types::AttachInstancesToLoadBalancerResult
    AttachLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    AttachLoadBalancerTlsCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName", traits: {"smithy.api#required" => {}}))
    AttachLoadBalancerTlsCertificateRequest.type = Types::AttachLoadBalancerTlsCertificateRequest
    AttachLoadBalancerTlsCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    AttachLoadBalancerTlsCertificateResult.type = Types::AttachLoadBalancerTlsCertificateResult
    AttachStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "staticIpName", traits: {"smithy.api#required" => {}}))
    AttachStaticIpRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    AttachStaticIpRequest.type = Types::AttachStaticIpRequest
    AttachStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    AttachStaticIpResult.type = Types::AttachStaticIpResult
    AttachedDisk.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    AttachedDisk.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    AttachedDisk.type = Types::AttachedDisk
    AttachedDiskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedDisk, name: "member")
    AttachedDiskMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "key")
    AttachedDiskMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DiskMapList, name: "value")
    AutoMountStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    AutoMountStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    AutoMountStatus.add_member(:mounted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mounted", traits: {"smithy.api#enumValue" => "Mounted"}))
    AutoMountStatus.add_member(:not_mounted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotMounted", traits: {"smithy.api#enumValue" => "NotMounted"}))
    AutoSnapshotAddOnRequest.add_member(:snapshot_time_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, name: "snapshotTimeOfDay"))
    AutoSnapshotAddOnRequest.type = Types::AutoSnapshotAddOnRequest
    AutoSnapshotDetails.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "date"))
    AutoSnapshotDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    AutoSnapshotDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSnapshotStatus, name: "status"))
    AutoSnapshotDetails.add_member(:from_attached_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedDiskList, name: "fromAttachedDisks"))
    AutoSnapshotDetails.type = Types::AutoSnapshotDetails
    AutoSnapshotDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSnapshotDetails, name: "member")
    AutoSnapshotStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    AutoSnapshotStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    AutoSnapshotStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    AutoSnapshotStatus.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NotFound"}))
    AvailabilityZone.add_member(:zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "zoneName"))
    AvailabilityZone.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "state"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member")
    BPAStatusMessage.add_member(:defaulted_for_slr_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULTED_FOR_SLR_MISSING", traits: {"smithy.api#enumValue" => "DEFAULTED_FOR_SLR_MISSING"}))
    BPAStatusMessage.add_member(:sync_on_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC_ON_HOLD", traits: {"smithy.api#enumValue" => "SYNC_ON_HOLD"}))
    BPAStatusMessage.add_member(:defaulted_for_slr_missing_on_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULTED_FOR_SLR_MISSING_ON_HOLD", traits: {"smithy.api#enumValue" => "DEFAULTED_FOR_SLR_MISSING_ON_HOLD"}))
    BPAStatusMessage.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "Unknown"}))
    BehaviorEnum.add_member(:dont_cache_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DontCacheSetting", traits: {"smithy.api#enumValue" => "dont-cache"}))
    BehaviorEnum.add_member(:cache_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CacheSetting", traits: {"smithy.api#enumValue" => "cache"}))
    Blueprint.add_member(:blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "blueprintId"))
    Blueprint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Blueprint.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "group"))
    Blueprint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintType, name: "type"))
    Blueprint.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Blueprint.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    Blueprint.add_member(:min_power, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minPower"))
    Blueprint.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    Blueprint.add_member(:version_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "versionCode"))
    Blueprint.add_member(:product_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productUrl"))
    Blueprint.add_member(:license_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "licenseUrl"))
    Blueprint.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePlatform, name: "platform"))
    Blueprint.add_member(:app_category, ::Smithy::Schema::Shapes::MemberShape.new(target: AppCategory, name: "appCategory"))
    Blueprint.type = Types::Blueprint
    BlueprintList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "member")
    BlueprintType.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "os", traits: {"smithy.api#enumValue" => "os"}))
    BlueprintType.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "app", traits: {"smithy.api#enumValue" => "app"}))
    Bucket.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceType"))
    Bucket.add_member(:access_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRules, name: "accessRules"))
    Bucket.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Bucket.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId"))
    Bucket.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Bucket.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "url"))
    Bucket.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    Bucket.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "name"))
    Bucket.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "supportCode"))
    Bucket.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Bucket.add_member(:object_versioning, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "objectVersioning"))
    Bucket.add_member(:able_to_update_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ableToUpdateBundle"))
    Bucket.add_member(:readonly_access_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdList, name: "readonlyAccessAccounts"))
    Bucket.add_member(:resources_receiving_access, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessReceiverList, name: "resourcesReceivingAccess"))
    Bucket.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketState, name: "state"))
    Bucket.add_member(:access_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketAccessLogConfig, name: "accessLogConfig"))
    Bucket.type = Types::Bucket
    BucketAccessLogConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    BucketAccessLogConfig.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "destination"))
    BucketAccessLogConfig.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketAccessLogPrefix, name: "prefix"))
    BucketAccessLogConfig.type = Types::BucketAccessLogConfig
    BucketBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId"))
    BucketBundle.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    BucketBundle.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "price"))
    BucketBundle.add_member(:storage_per_month_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "storagePerMonthInGb"))
    BucketBundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "transferPerMonthInGb"))
    BucketBundle.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    BucketBundle.type = Types::BucketBundle
    BucketBundleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BucketBundle, name: "member")
    BucketList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "member")
    BucketMetricName.add_member(:bucket_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketSizeBytes", traits: {"smithy.api#enumValue" => "BucketSizeBytes"}))
    BucketMetricName.add_member(:number_of_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NumberOfObjects", traits: {"smithy.api#enumValue" => "NumberOfObjects"}))
    BucketState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "code"))
    BucketState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BucketState.type = Types::BucketState
    Bundle.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "price"))
    Bundle.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpuCount"))
    Bundle.add_member(:disk_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "diskSizeInGb"))
    Bundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId"))
    Bundle.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceType"))
    Bundle.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    Bundle.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Bundle.add_member(:power, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "power"))
    Bundle.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "ramSizeInGb"))
    Bundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "transferPerMonthInGb"))
    Bundle.add_member(:supported_platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePlatformList, name: "supportedPlatforms"))
    Bundle.add_member(:supported_app_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: AppCategoryList, name: "supportedAppCategories"))
    Bundle.add_member(:public_ipv4_address_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "publicIpv4AddressCount"))
    Bundle.type = Types::Bundle
    BundleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Bundle, name: "member")
    CacheBehavior.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorEnum, name: "behavior"))
    CacheBehavior.type = Types::CacheBehavior
    CacheBehaviorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviorPerPath, name: "member")
    CacheBehaviorPerPath.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    CacheBehaviorPerPath.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorEnum, name: "behavior"))
    CacheBehaviorPerPath.type = Types::CacheBehaviorPerPath
    CacheSettings.add_member(:default_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "defaultTTL"))
    CacheSettings.add_member(:minimum_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "minimumTTL"))
    CacheSettings.add_member(:maximum_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "maximumTTL"))
    CacheSettings.add_member(:allowed_http_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "allowedHTTPMethods"))
    CacheSettings.add_member(:cached_http_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "cachedHTTPMethods"))
    CacheSettings.add_member(:forwarded_cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieObject, name: "forwardedCookies"))
    CacheSettings.add_member(:forwarded_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderObject, name: "forwardedHeaders"))
    CacheSettings.add_member(:forwarded_query_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringObject, name: "forwardedQueryStrings"))
    CacheSettings.type = Types::CacheSettings
    Certificate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Certificate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateName, name: "name"))
    Certificate.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    Certificate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "status"))
    Certificate.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, name: "serialNumber"))
    Certificate.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNameList, name: "subjectAlternativeNames"))
    Certificate.add_member(:domain_validation_records, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationRecordList, name: "domainValidationRecords"))
    Certificate.add_member(:request_failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestFailureReason, name: "requestFailureReason"))
    Certificate.add_member(:in_use_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InUseResourceCount, name: "inUseResourceCount", traits: {"smithy.api#default" => 0}))
    Certificate.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "keyAlgorithm"))
    Certificate.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Certificate.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "issuedAt"))
    Certificate.add_member(:issuer_ca, ::Smithy::Schema::Shapes::MemberShape.new(target: IssuerCA, name: "issuerCA"))
    Certificate.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "notBefore"))
    Certificate.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "notAfter"))
    Certificate.add_member(:eligible_to_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: EligibleToRenew, name: "eligibleToRenew"))
    Certificate.add_member(:renewal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalSummary, name: "renewalSummary"))
    Certificate.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "revokedAt"))
    Certificate.add_member(:revocation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReason, name: "revocationReason"))
    Certificate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Certificate.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    Certificate.type = Types::Certificate
    CertificateDomainValidationStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateDomainValidationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateDomainValidationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    CertificateProvider.add_member(:lets_encrypt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LetsEncrypt", traits: {"smithy.api#enumValue" => "LetsEncrypt"}))
    CertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Issued", traits: {"smithy.api#enumValue" => "ISSUED"}))
    CertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expired", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationTimedOut", traits: {"smithy.api#enumValue" => "VALIDATION_TIMED_OUT"}))
    CertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Revoked", traits: {"smithy.api#enumValue" => "REVOKED"}))
    CertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "member")
    CertificateSummary.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "certificateArn"))
    CertificateSummary.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateName, name: "certificateName"))
    CertificateSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    CertificateSummary.add_member(:certificate_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "certificateDetail"))
    CertificateSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummary, name: "member")
    CloseInstancePublicPortsRequest.add_member(:port_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PortInfo, name: "portInfo", traits: {"smithy.api#required" => {}}))
    CloseInstancePublicPortsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    CloseInstancePublicPortsRequest.type = Types::CloseInstancePublicPortsRequest
    CloseInstancePublicPortsResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    CloseInstancePublicPortsResult.type = Types::CloseInstancePublicPortsResult
    CloudFormationStackRecord.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    CloudFormationStackRecord.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    CloudFormationStackRecord.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    CloudFormationStackRecord.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    CloudFormationStackRecord.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    CloudFormationStackRecord.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordState, name: "state"))
    CloudFormationStackRecord.add_member(:source_info, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationStackRecordSourceInfoList, name: "sourceInfo"))
    CloudFormationStackRecord.add_member(:destination_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationInfo, name: "destinationInfo"))
    CloudFormationStackRecord.type = Types::CloudFormationStackRecord
    CloudFormationStackRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationStackRecord, name: "member")
    CloudFormationStackRecordSourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationStackRecordSourceType, name: "resourceType"))
    CloudFormationStackRecordSourceInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    CloudFormationStackRecordSourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    CloudFormationStackRecordSourceInfo.type = Types::CloudFormationStackRecordSourceInfo
    CloudFormationStackRecordSourceInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationStackRecordSourceInfo, name: "member")
    CloudFormationStackRecordSourceType.add_member(:export_snapshot_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExportSnapshotRecord", traits: {"smithy.api#enumValue" => "ExportSnapshotRecord"}))
    ComparisonOperator.add_member(:greater_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:greater_than_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanThreshold", traits: {"smithy.api#enumValue" => "GreaterThanThreshold"}))
    ComparisonOperator.add_member(:less_than_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanThreshold", traits: {"smithy.api#enumValue" => "LessThanThreshold"}))
    ComparisonOperator.add_member(:less_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "LessThanOrEqualToThreshold"}))
    ContactMethod.add_member(:contact_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "contactEndpoint"))
    ContactMethod.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactMethodStatus, name: "status"))
    ContactMethod.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocol, name: "protocol"))
    ContactMethod.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ContactMethod.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    ContactMethod.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ContactMethod.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    ContactMethod.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ContactMethod.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    ContactMethod.type = Types::ContactMethod
    ContactMethodStatus.add_member(:pending_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingVerification", traits: {"smithy.api#enumValue" => "PendingVerification"}))
    ContactMethodStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Valid", traits: {"smithy.api#enumValue" => "Valid"}))
    ContactMethodStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Invalid", traits: {"smithy.api#enumValue" => "Invalid"}))
    ContactMethodVerificationProtocol.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Email", traits: {"smithy.api#enumValue" => "Email"}))
    ContactMethodsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContactMethod, name: "member")
    ContactProtocol.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Email", traits: {"smithy.api#enumValue" => "Email"}))
    ContactProtocol.add_member(:sms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS", traits: {"smithy.api#enumValue" => "SMS"}))
    ContactProtocolsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocol, name: "member")
    Container.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    Container.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    Container.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "environment"))
    Container.add_member(:ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortMap, name: "ports"))
    Container.type = Types::Container
    ContainerImage.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    ContainerImage.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "digest"))
    ContainerImage.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ContainerImage.type = Types::ContainerImage
    ContainerImageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImage, name: "member")
    ContainerMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "key")
    ContainerMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "value")
    ContainerService.add_member(:container_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "containerServiceName"))
    ContainerService.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    ContainerService.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ContainerService.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    ContainerService.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ContainerService.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ContainerService.add_member(:power, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePowerName, name: "power"))
    ContainerService.add_member(:power_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "powerId"))
    ContainerService.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceState, name: "state"))
    ContainerService.add_member(:state_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceStateDetail, name: "stateDetail"))
    ContainerService.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceScale, name: "scale"))
    ContainerService.add_member(:current_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceDeployment, name: "currentDeployment"))
    ContainerService.add_member(:next_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceDeployment, name: "nextDeployment"))
    ContainerService.add_member(:is_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDisabled"))
    ContainerService.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    ContainerService.add_member(:private_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "privateDomainName"))
    ContainerService.add_member(:public_domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePublicDomains, name: "publicDomainNames"))
    ContainerService.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "url"))
    ContainerService.add_member(:private_registry_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateRegistryAccess, name: "privateRegistryAccess"))
    ContainerService.type = Types::ContainerService
    ContainerServiceDeployment.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "version"))
    ContainerServiceDeployment.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceDeploymentState, name: "state"))
    ContainerServiceDeployment.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMap, name: "containers"))
    ContainerServiceDeployment.add_member(:public_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceEndpoint, name: "publicEndpoint"))
    ContainerServiceDeployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ContainerServiceDeployment.type = Types::ContainerServiceDeployment
    ContainerServiceDeploymentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceDeployment, name: "member")
    ContainerServiceDeploymentRequest.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMap, name: "containers"))
    ContainerServiceDeploymentRequest.add_member(:public_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointRequest, name: "publicEndpoint"))
    ContainerServiceDeploymentRequest.type = Types::ContainerServiceDeploymentRequest
    ContainerServiceDeploymentState.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    ContainerServiceDeploymentState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerServiceDeploymentState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ContainerServiceDeploymentState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ContainerServiceECRImagePullerRole.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    ContainerServiceECRImagePullerRole.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    ContainerServiceECRImagePullerRole.type = Types::ContainerServiceECRImagePullerRole
    ContainerServiceECRImagePullerRoleRequest.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    ContainerServiceECRImagePullerRoleRequest.type = Types::ContainerServiceECRImagePullerRoleRequest
    ContainerServiceEndpoint.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    ContainerServiceEndpoint.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "containerPort"))
    ContainerServiceEndpoint.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceHealthCheckConfig, name: "healthCheck"))
    ContainerServiceEndpoint.type = Types::ContainerServiceEndpoint
    ContainerServiceHealthCheckConfig.add_member(:healthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "healthyThreshold"))
    ContainerServiceHealthCheckConfig.add_member(:unhealthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "unhealthyThreshold"))
    ContainerServiceHealthCheckConfig.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "timeoutSeconds"))
    ContainerServiceHealthCheckConfig.add_member(:interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "intervalSeconds"))
    ContainerServiceHealthCheckConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    ContainerServiceHealthCheckConfig.add_member(:success_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "successCodes"))
    ContainerServiceHealthCheckConfig.type = Types::ContainerServiceHealthCheckConfig
    ContainerServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerService, name: "member")
    ContainerServiceLogEvent.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ContainerServiceLogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ContainerServiceLogEvent.type = Types::ContainerServiceLogEvent
    ContainerServiceLogEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceLogEvent, name: "member")
    ContainerServiceMetadataEntry.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    ContainerServiceMetadataEntry.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    ContainerServiceMetadataEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceMetadataEntry, name: "member")
    ContainerServiceMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    ContainerServiceMetricName.add_member(:memory_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MemoryUtilization", traits: {"smithy.api#enumValue" => "MemoryUtilization"}))
    ContainerServicePower.add_member(:power_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "powerId"))
    ContainerServicePower.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "price"))
    ContainerServicePower.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "cpuCount"))
    ContainerServicePower.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "ramSizeInGb"))
    ContainerServicePower.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ContainerServicePower.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    ContainerServicePower.type = Types::ContainerServicePower
    ContainerServicePowerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePower, name: "member")
    ContainerServicePowerName.add_member(:nano, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nano", traits: {"smithy.api#enumValue" => "nano"}))
    ContainerServicePowerName.add_member(:micro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "micro", traits: {"smithy.api#enumValue" => "micro"}))
    ContainerServicePowerName.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "small", traits: {"smithy.api#enumValue" => "small"}))
    ContainerServicePowerName.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "medium", traits: {"smithy.api#enumValue" => "medium"}))
    ContainerServicePowerName.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "large", traits: {"smithy.api#enumValue" => "large"}))
    ContainerServicePowerName.add_member(:xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "xlarge", traits: {"smithy.api#enumValue" => "xlarge"}))
    ContainerServiceProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ContainerServiceProtocol.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    ContainerServiceProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    ContainerServiceProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    ContainerServicePublicDomains.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    ContainerServicePublicDomains.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePublicDomainsList, name: "value")
    ContainerServicePublicDomainsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    ContainerServiceRegistryLogin.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "username"))
    ContainerServiceRegistryLogin.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "password"))
    ContainerServiceRegistryLogin.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "expiresAt"))
    ContainerServiceRegistryLogin.add_member(:registry, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "registry"))
    ContainerServiceRegistryLogin.type = Types::ContainerServiceRegistryLogin
    ContainerServiceState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ContainerServiceState.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ContainerServiceState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ContainerServiceState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ContainerServiceState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ContainerServiceState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContainerServiceState.add_member(:deploying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    ContainerServiceStateDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceStateDetailCode, name: "code"))
    ContainerServiceStateDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ContainerServiceStateDetail.type = Types::ContainerServiceStateDetail
    ContainerServiceStateDetailCode.add_member(:creating_system_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING_SYSTEM_RESOURCES", traits: {"smithy.api#enumValue" => "CREATING_SYSTEM_RESOURCES"}))
    ContainerServiceStateDetailCode.add_member(:creating_network_infrastructure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING_NETWORK_INFRASTRUCTURE", traits: {"smithy.api#enumValue" => "CREATING_NETWORK_INFRASTRUCTURE"}))
    ContainerServiceStateDetailCode.add_member(:provisioning_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING_CERTIFICATE", traits: {"smithy.api#enumValue" => "PROVISIONING_CERTIFICATE"}))
    ContainerServiceStateDetailCode.add_member(:provisioning_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING_SERVICE", traits: {"smithy.api#enumValue" => "PROVISIONING_SERVICE"}))
    ContainerServiceStateDetailCode.add_member(:creating_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING_DEPLOYMENT", traits: {"smithy.api#enumValue" => "CREATING_DEPLOYMENT"}))
    ContainerServiceStateDetailCode.add_member(:evaluating_health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATING_HEALTH_CHECK", traits: {"smithy.api#enumValue" => "EVALUATING_HEALTH_CHECK"}))
    ContainerServiceStateDetailCode.add_member(:activating_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING_DEPLOYMENT", traits: {"smithy.api#enumValue" => "ACTIVATING_DEPLOYMENT"}))
    ContainerServiceStateDetailCode.add_member(:certificate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "CERTIFICATE_LIMIT_EXCEEDED"}))
    ContainerServiceStateDetailCode.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    ContainerServicesListResult.add_member(:container_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceList, name: "containerServices"))
    ContainerServicesListResult.type = Types::ContainerServicesListResult
    CookieObject.add_member(:option, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardValues, name: "option"))
    CookieObject.add_member(:cookies_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cookiesAllowList"))
    CookieObject.type = Types::CookieObject
    CopySnapshotRequest.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "sourceSnapshotName"))
    CopySnapshotRequest.add_member(:source_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceResourceName"))
    CopySnapshotRequest.add_member(:restore_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restoreDate"))
    CopySnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useLatestRestorableAutoSnapshot"))
    CopySnapshotRequest.add_member(:target_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "targetSnapshotName", traits: {"smithy.api#required" => {}}))
    CopySnapshotRequest.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "sourceRegion", traits: {"smithy.api#required" => {}}))
    CopySnapshotRequest.type = Types::CopySnapshotRequest
    CopySnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CopySnapshotResult.type = Types::CopySnapshotResult
    CostEstimate.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "usageType"))
    CostEstimate.add_member(:results_by_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatesByTime, name: "resultsByTime"))
    CostEstimate.type = Types::CostEstimate
    CostEstimates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimate, name: "member")
    CreateBucketAccessKeyRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    CreateBucketAccessKeyRequest.type = Types::CreateBucketAccessKeyRequest
    CreateBucketAccessKeyResult.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKey, name: "accessKey"))
    CreateBucketAccessKeyResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateBucketAccessKeyResult.type = Types::CreateBucketAccessKeyResult
    CreateBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    CreateBucketRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateBucketRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateBucketRequest.add_member(:enable_object_versioning, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableObjectVersioning"))
    CreateBucketRequest.type = Types::CreateBucketRequest
    CreateBucketResult.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "bucket"))
    CreateBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateBucketResult.type = Types::CreateBucketResult
    CreateCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateName, name: "certificateName", traits: {"smithy.api#required" => {}}))
    CreateCertificateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateCertificateRequest.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNameList, name: "subjectAlternativeNames"))
    CreateCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateCertificateRequest.type = Types::CreateCertificateRequest
    CreateCertificateResult.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummary, name: "certificate"))
    CreateCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateCertificateResult.type = Types::CreateCertificateResult
    CreateCloudFormationStackRequest.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceEntryList, name: "instances", traits: {"smithy.api#required" => {}}))
    CreateCloudFormationStackRequest.type = Types::CreateCloudFormationStackRequest
    CreateCloudFormationStackResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateCloudFormationStackResult.type = Types::CreateCloudFormationStackResult
    CreateContactMethodRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    CreateContactMethodRequest.add_member(:contact_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMax256, name: "contactEndpoint", traits: {"smithy.api#required" => {}}))
    CreateContactMethodRequest.type = Types::CreateContactMethodRequest
    CreateContactMethodResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateContactMethodResult.type = Types::CreateContactMethodResult
    CreateContainerServiceDeploymentRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContainerServiceDeploymentRequest.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMap, name: "containers"))
    CreateContainerServiceDeploymentRequest.add_member(:public_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointRequest, name: "publicEndpoint"))
    CreateContainerServiceDeploymentRequest.type = Types::CreateContainerServiceDeploymentRequest
    CreateContainerServiceDeploymentResult.add_member(:container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerService, name: "containerService"))
    CreateContainerServiceDeploymentResult.type = Types::CreateContainerServiceDeploymentResult
    CreateContainerServiceRegistryLoginRequest.type = Types::CreateContainerServiceRegistryLoginRequest
    CreateContainerServiceRegistryLoginResult.add_member(:registry_login, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceRegistryLogin, name: "registryLogin"))
    CreateContainerServiceRegistryLoginResult.type = Types::CreateContainerServiceRegistryLoginResult
    CreateContainerServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#required" => {}}))
    CreateContainerServiceRequest.add_member(:power, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePowerName, name: "power", traits: {"smithy.api#required" => {}}))
    CreateContainerServiceRequest.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceScale, name: "scale", traits: {"smithy.api#required" => {}}))
    CreateContainerServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateContainerServiceRequest.add_member(:public_domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePublicDomains, name: "publicDomainNames"))
    CreateContainerServiceRequest.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceDeploymentRequest, name: "deployment"))
    CreateContainerServiceRequest.add_member(:private_registry_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateRegistryAccessRequest, name: "privateRegistryAccess"))
    CreateContainerServiceRequest.type = Types::CreateContainerServiceRequest
    CreateContainerServiceResult.add_member(:container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerService, name: "containerService"))
    CreateContainerServiceResult.type = Types::CreateContainerServiceResult
    CreateDiskFromSnapshotRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName", traits: {"smithy.api#required" => {}}))
    CreateDiskFromSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskSnapshotName"))
    CreateDiskFromSnapshotRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateDiskFromSnapshotRequest.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb", traits: {"smithy.api#required" => {}}))
    CreateDiskFromSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDiskFromSnapshotRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnRequestList, name: "addOns"))
    CreateDiskFromSnapshotRequest.add_member(:source_disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceDiskName"))
    CreateDiskFromSnapshotRequest.add_member(:restore_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restoreDate"))
    CreateDiskFromSnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useLatestRestorableAutoSnapshot"))
    CreateDiskFromSnapshotRequest.type = Types::CreateDiskFromSnapshotRequest
    CreateDiskFromSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateDiskFromSnapshotResult.type = Types::CreateDiskFromSnapshotResult
    CreateDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName", traits: {"smithy.api#required" => {}}))
    CreateDiskRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateDiskRequest.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb", traits: {"smithy.api#required" => {}}))
    CreateDiskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDiskRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnRequestList, name: "addOns"))
    CreateDiskRequest.type = Types::CreateDiskRequest
    CreateDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateDiskResult.type = Types::CreateDiskResult
    CreateDiskSnapshotRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName"))
    CreateDiskSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskSnapshotName", traits: {"smithy.api#required" => {}}))
    CreateDiskSnapshotRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName"))
    CreateDiskSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDiskSnapshotRequest.type = Types::CreateDiskSnapshotRequest
    CreateDiskSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateDiskSnapshotResult.type = Types::CreateDiskSnapshotResult
    CreateDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: InputOrigin, name: "origin", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, name: "defaultCacheBehavior", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:cache_behavior_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSettings, name: "cacheBehaviorSettings"))
    CreateDistributionRequest.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviorList, name: "cacheBehaviors"))
    CreateDistributionRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateDistributionRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    CreateDistributionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDistributionRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName"))
    CreateDistributionRequest.add_member(:viewer_minimum_tls_protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewerMinimumTlsProtocolVersionEnum, name: "viewerMinimumTlsProtocolVersion"))
    CreateDistributionRequest.type = Types::CreateDistributionRequest
    CreateDistributionResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: LightsailDistribution, name: "distribution"))
    CreateDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    CreateDistributionResult.type = Types::CreateDistributionResult
    CreateDomainEntryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainEntryRequest.add_member(:domain_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntry, name: "domainEntry", traits: {"smithy.api#required" => {}}))
    CreateDomainEntryRequest.type = Types::CreateDomainEntryRequest
    CreateDomainEntryResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    CreateDomainEntryResult.type = Types::CreateDomainEntryResult
    CreateDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    CreateDomainResult.type = Types::CreateDomainResult
    CreateGUISessionAccessDetailsRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    CreateGUISessionAccessDetailsRequest.type = Types::CreateGUISessionAccessDetailsRequest
    CreateGUISessionAccessDetailsResult.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    CreateGUISessionAccessDetailsResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    CreateGUISessionAccessDetailsResult.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "percentageComplete"))
    CreateGUISessionAccessDetailsResult.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "failureReason"))
    CreateGUISessionAccessDetailsResult.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Sessions, name: "sessions"))
    CreateGUISessionAccessDetailsResult.type = Types::CreateGUISessionAccessDetailsResult
    CreateInstanceSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceSnapshotName", traits: {"smithy.api#required" => {}}))
    CreateInstanceSnapshotRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    CreateInstanceSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateInstanceSnapshotRequest.type = Types::CreateInstanceSnapshotRequest
    CreateInstanceSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateInstanceSnapshotResult.type = Types::CreateInstanceSnapshotResult
    CreateInstancesFromSnapshotRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    CreateInstancesFromSnapshotRequest.add_member(:attached_disk_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedDiskMap, name: "attachedDiskMapping"))
    CreateInstancesFromSnapshotRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateInstancesFromSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceSnapshotName"))
    CreateInstancesFromSnapshotRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateInstancesFromSnapshotRequest.add_member(:user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userData"))
    CreateInstancesFromSnapshotRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName"))
    CreateInstancesFromSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateInstancesFromSnapshotRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnRequestList, name: "addOns"))
    CreateInstancesFromSnapshotRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    CreateInstancesFromSnapshotRequest.add_member(:source_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceInstanceName"))
    CreateInstancesFromSnapshotRequest.add_member(:restore_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restoreDate"))
    CreateInstancesFromSnapshotRequest.add_member(:use_latest_restorable_auto_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useLatestRestorableAutoSnapshot"))
    CreateInstancesFromSnapshotRequest.type = Types::CreateInstancesFromSnapshotRequest
    CreateInstancesFromSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateInstancesFromSnapshotResult.type = Types::CreateInstancesFromSnapshotResult
    CreateInstancesRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:custom_image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "customImageName", traits: {"smithy.api#deprecated" => {}}))
    CreateInstancesRequest.add_member(:blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "blueprintId", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId", traits: {"smithy.api#required" => {}}))
    CreateInstancesRequest.add_member(:user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userData"))
    CreateInstancesRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName"))
    CreateInstancesRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateInstancesRequest.add_member(:add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnRequestList, name: "addOns"))
    CreateInstancesRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    CreateInstancesRequest.type = Types::CreateInstancesRequest
    CreateInstancesResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateInstancesResult.type = Types::CreateInstancesResult
    CreateKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName", traits: {"smithy.api#required" => {}}))
    CreateKeyPairRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateKeyPairRequest.type = Types::CreateKeyPairRequest
    CreateKeyPairResult.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPair, name: "keyPair"))
    CreateKeyPairResult.add_member(:public_key_base64, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "publicKeyBase64"))
    CreateKeyPairResult.add_member(:private_key_base64, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "privateKeyBase64"))
    CreateKeyPairResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    CreateKeyPairResult.type = Types::CreateKeyPairResult
    CreateLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerRequest.add_member(:instance_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "instancePort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateLoadBalancerRequest.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "healthCheckPath"))
    CreateLoadBalancerRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName"))
    CreateLoadBalancerRequest.add_member(:certificate_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "certificateDomainName"))
    CreateLoadBalancerRequest.add_member(:certificate_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameList, name: "certificateAlternativeNames"))
    CreateLoadBalancerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateLoadBalancerRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    CreateLoadBalancerRequest.add_member(:tls_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tlsPolicyName"))
    CreateLoadBalancerRequest.type = Types::CreateLoadBalancerRequest
    CreateLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateLoadBalancerResult.type = Types::CreateLoadBalancerResult
    CreateLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "certificateDomainName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerTlsCertificateRequest.add_member(:certificate_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameList, name: "certificateAlternativeNames"))
    CreateLoadBalancerTlsCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateLoadBalancerTlsCertificateRequest.type = Types::CreateLoadBalancerTlsCertificateRequest
    CreateLoadBalancerTlsCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateLoadBalancerTlsCertificateResult.type = Types::CreateLoadBalancerTlsCertificateResult
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "publiclyAccessible"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseSnapshotName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:relational_database_bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "relationalDatabaseBundleId"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:source_relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "sourceRelationalDatabaseName"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:restore_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "restoreTime"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useLatestRestorableTime"))
    CreateRelationalDatabaseFromSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateRelationalDatabaseFromSnapshotRequest.type = Types::CreateRelationalDatabaseFromSnapshotRequest
    CreateRelationalDatabaseFromSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateRelationalDatabaseFromSnapshotResult.type = Types::CreateRelationalDatabaseFromSnapshotResult
    CreateRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone"))
    CreateRelationalDatabaseRequest.add_member(:relational_database_blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "relationalDatabaseBlueprintId", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:relational_database_bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "relationalDatabaseBundleId", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:master_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "masterDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "masterUsername", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseRequest.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "masterUserPassword"))
    CreateRelationalDatabaseRequest.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "preferredBackupWindow"))
    CreateRelationalDatabaseRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "preferredMaintenanceWindow"))
    CreateRelationalDatabaseRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "publiclyAccessible"))
    CreateRelationalDatabaseRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateRelationalDatabaseRequest.type = Types::CreateRelationalDatabaseRequest
    CreateRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateRelationalDatabaseResult.type = Types::CreateRelationalDatabaseResult
    CreateRelationalDatabaseSnapshotRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseSnapshotName", traits: {"smithy.api#required" => {}}))
    CreateRelationalDatabaseSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateRelationalDatabaseSnapshotRequest.type = Types::CreateRelationalDatabaseSnapshotRequest
    CreateRelationalDatabaseSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    CreateRelationalDatabaseSnapshotResult.type = Types::CreateRelationalDatabaseSnapshotResult
    Currency.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    DeleteAlarmRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "alarmName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAlarmRequest.type = Types::DeleteAlarmRequest
    DeleteAlarmResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteAlarmResult.type = Types::DeleteAlarmResult
    DeleteAutoSnapshotRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    DeleteAutoSnapshotRequest.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSnapshotDate, name: "date", traits: {"smithy.api#required" => {}}))
    DeleteAutoSnapshotRequest.type = Types::DeleteAutoSnapshotRequest
    DeleteAutoSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteAutoSnapshotResult.type = Types::DeleteAutoSnapshotResult
    DeleteBucketAccessKeyRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    DeleteBucketAccessKeyRequest.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    DeleteBucketAccessKeyRequest.type = Types::DeleteBucketAccessKeyRequest
    DeleteBucketAccessKeyResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteBucketAccessKeyResult.type = Types::DeleteBucketAccessKeyResult
    DeleteBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    DeleteBucketRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "forceDelete"))
    DeleteBucketRequest.type = Types::DeleteBucketRequest
    DeleteBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteBucketResult.type = Types::DeleteBucketResult
    DeleteCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateName, name: "certificateName", traits: {"smithy.api#required" => {}}))
    DeleteCertificateRequest.type = Types::DeleteCertificateRequest
    DeleteCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteCertificateResult.type = Types::DeleteCertificateResult
    DeleteContactMethodRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    DeleteContactMethodRequest.type = Types::DeleteContactMethodRequest
    DeleteContactMethodResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteContactMethodResult.type = Types::DeleteContactMethodResult
    DeleteContainerImageRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContainerImageRequest.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContainerImageRequest.type = Types::DeleteContainerImageRequest
    DeleteContainerImageResult.type = Types::DeleteContainerImageResult
    DeleteContainerServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContainerServiceRequest.type = Types::DeleteContainerServiceRequest
    DeleteContainerServiceResult.type = Types::DeleteContainerServiceResult
    DeleteDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName", traits: {"smithy.api#required" => {}}))
    DeleteDiskRequest.add_member(:force_delete_add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "forceDeleteAddOns"))
    DeleteDiskRequest.type = Types::DeleteDiskRequest
    DeleteDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteDiskResult.type = Types::DeleteDiskResult
    DeleteDiskSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskSnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteDiskSnapshotRequest.type = Types::DeleteDiskSnapshotRequest
    DeleteDiskSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteDiskSnapshotResult.type = Types::DeleteDiskSnapshotResult
    DeleteDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName"))
    DeleteDistributionRequest.type = Types::DeleteDistributionRequest
    DeleteDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    DeleteDistributionResult.type = Types::DeleteDistributionResult
    DeleteDomainEntryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    DeleteDomainEntryRequest.add_member(:domain_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntry, name: "domainEntry", traits: {"smithy.api#required" => {}}))
    DeleteDomainEntryRequest.type = Types::DeleteDomainEntryRequest
    DeleteDomainEntryResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    DeleteDomainEntryResult.type = Types::DeleteDomainEntryResult
    DeleteDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    DeleteDomainResult.type = Types::DeleteDomainResult
    DeleteInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    DeleteInstanceRequest.add_member(:force_delete_add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "forceDeleteAddOns"))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteInstanceResult.type = Types::DeleteInstanceResult
    DeleteInstanceSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceSnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteInstanceSnapshotRequest.type = Types::DeleteInstanceSnapshotRequest
    DeleteInstanceSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteInstanceSnapshotResult.type = Types::DeleteInstanceSnapshotResult
    DeleteKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName", traits: {"smithy.api#required" => {}}))
    DeleteKeyPairRequest.add_member(:expected_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "expectedFingerprint"))
    DeleteKeyPairRequest.type = Types::DeleteKeyPairRequest
    DeleteKeyPairResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    DeleteKeyPairResult.type = Types::DeleteKeyPairResult
    DeleteKnownHostKeysRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    DeleteKnownHostKeysRequest.type = Types::DeleteKnownHostKeysRequest
    DeleteKnownHostKeysResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteKnownHostKeysResult.type = Types::DeleteKnownHostKeysResult
    DeleteLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerRequest.type = Types::DeleteLoadBalancerRequest
    DeleteLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteLoadBalancerResult.type = Types::DeleteLoadBalancerResult
    DeleteLoadBalancerTlsCertificateRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerTlsCertificateRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerTlsCertificateRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "force"))
    DeleteLoadBalancerTlsCertificateRequest.type = Types::DeleteLoadBalancerTlsCertificateRequest
    DeleteLoadBalancerTlsCertificateResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteLoadBalancerTlsCertificateResult.type = Types::DeleteLoadBalancerTlsCertificateResult
    DeleteRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    DeleteRelationalDatabaseRequest.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "skipFinalSnapshot"))
    DeleteRelationalDatabaseRequest.add_member(:final_relational_database_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "finalRelationalDatabaseSnapshotName"))
    DeleteRelationalDatabaseRequest.type = Types::DeleteRelationalDatabaseRequest
    DeleteRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteRelationalDatabaseResult.type = Types::DeleteRelationalDatabaseResult
    DeleteRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseSnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteRelationalDatabaseSnapshotRequest.type = Types::DeleteRelationalDatabaseSnapshotRequest
    DeleteRelationalDatabaseSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DeleteRelationalDatabaseSnapshotResult.type = Types::DeleteRelationalDatabaseSnapshotResult
    DestinationInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    DestinationInfo.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "service"))
    DestinationInfo.type = Types::DestinationInfo
    DetachCertificateFromDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName", traits: {"smithy.api#required" => {}}))
    DetachCertificateFromDistributionRequest.type = Types::DetachCertificateFromDistributionRequest
    DetachCertificateFromDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    DetachCertificateFromDistributionResult.type = Types::DetachCertificateFromDistributionResult
    DetachDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName", traits: {"smithy.api#required" => {}}))
    DetachDiskRequest.type = Types::DetachDiskRequest
    DetachDiskResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DetachDiskResult.type = Types::DetachDiskResult
    DetachInstancesFromLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    DetachInstancesFromLoadBalancerRequest.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    DetachInstancesFromLoadBalancerRequest.type = Types::DetachInstancesFromLoadBalancerRequest
    DetachInstancesFromLoadBalancerResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DetachInstancesFromLoadBalancerResult.type = Types::DetachInstancesFromLoadBalancerResult
    DetachStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "staticIpName", traits: {"smithy.api#required" => {}}))
    DetachStaticIpRequest.type = Types::DetachStaticIpRequest
    DetachStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DetachStaticIpResult.type = Types::DetachStaticIpResult
    DisableAddOnRequest.add_member(:add_on_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnType, name: "addOnType", traits: {"smithy.api#required" => {}}))
    DisableAddOnRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    DisableAddOnRequest.type = Types::DisableAddOnRequest
    DisableAddOnResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    DisableAddOnResult.type = Types::DisableAddOnResult
    Disk.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Disk.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Disk.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    Disk.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Disk.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    Disk.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Disk.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Disk.add_member(:add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnList, name: "addOns"))
    Disk.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    Disk.add_member(:is_system_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSystemDisk"))
    Disk.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "iops"))
    Disk.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    Disk.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskState, name: "state"))
    Disk.add_member(:attached_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "attachedTo"))
    Disk.add_member(:is_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAttached"))
    Disk.add_member(:attachment_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attachmentState", traits: {"smithy.api#deprecated" => {}}))
    Disk.add_member(:gb_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "gbInUse", traits: {"smithy.api#deprecated" => {}}))
    Disk.add_member(:auto_mount_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMountStatus, name: "autoMountStatus"))
    Disk.type = Types::Disk
    DiskInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DiskInfo.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "path"))
    DiskInfo.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    DiskInfo.add_member(:is_system_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSystemDisk"))
    DiskInfo.type = Types::DiskInfo
    DiskInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiskInfo, name: "member")
    DiskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Disk, name: "member")
    DiskMap.add_member(:original_disk_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "originalDiskPath"))
    DiskMap.add_member(:new_disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "newDiskName"))
    DiskMap.type = Types::DiskMap
    DiskMapList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiskMap, name: "member")
    DiskSnapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    DiskSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    DiskSnapshot.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    DiskSnapshot.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    DiskSnapshot.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    DiskSnapshot.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    DiskSnapshot.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    DiskSnapshot.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    DiskSnapshot.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSnapshotState, name: "state"))
    DiskSnapshot.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "progress"))
    DiskSnapshot.add_member(:from_disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fromDiskName"))
    DiskSnapshot.add_member(:from_disk_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromDiskArn"))
    DiskSnapshot.add_member(:from_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fromInstanceName"))
    DiskSnapshot.add_member(:from_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromInstanceArn"))
    DiskSnapshot.add_member(:is_from_auto_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isFromAutoSnapshot"))
    DiskSnapshot.type = Types::DiskSnapshot
    DiskSnapshotInfo.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    DiskSnapshotInfo.type = Types::DiskSnapshotInfo
    DiskSnapshotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSnapshot, name: "member")
    DiskSnapshotState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "pending"}))
    DiskSnapshotState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "completed"}))
    DiskSnapshotState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Error", traits: {"smithy.api#enumValue" => "error"}))
    DiskSnapshotState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "unknown"}))
    DiskState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "pending"}))
    DiskState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Error", traits: {"smithy.api#enumValue" => "error"}))
    DiskState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "available"}))
    DiskState.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InUse", traits: {"smithy.api#enumValue" => "in-use"}))
    DiskState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "unknown"}))
    DistributionBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bundleId"))
    DistributionBundle.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DistributionBundle.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "price"))
    DistributionBundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "transferPerMonthInGb"))
    DistributionBundle.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    DistributionBundle.type = Types::DistributionBundle
    DistributionBundleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionBundle, name: "member")
    DistributionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LightsailDistribution, name: "member")
    DistributionMetricName.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Requests", traits: {"smithy.api#enumValue" => "Requests"}))
    DistributionMetricName.add_member(:bytes_downloaded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BytesDownloaded", traits: {"smithy.api#enumValue" => "BytesDownloaded"}))
    DistributionMetricName.add_member(:bytes_uploaded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BytesUploaded", traits: {"smithy.api#enumValue" => "BytesUploaded"}))
    DistributionMetricName.add_member(:total_error_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TotalErrorRate", traits: {"smithy.api#enumValue" => "TotalErrorRate"}))
    DistributionMetricName.add_member(:http4xx_error_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Http4xxErrorRate", traits: {"smithy.api#enumValue" => "Http4xxErrorRate"}))
    DistributionMetricName.add_member(:http5xx_error_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Http5xxErrorRate", traits: {"smithy.api#enumValue" => "Http5xxErrorRate"}))
    DnsRecordCreationState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRecordCreationStateCode, name: "code"))
    DnsRecordCreationState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DnsRecordCreationState.type = Types::DnsRecordCreationState
    DnsRecordCreationStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DnsRecordCreationStateCode.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    DnsRecordCreationStateCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    Domain.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Domain.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Domain.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    Domain.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Domain.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    Domain.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Domain.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Domain.add_member(:domain_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntryList, name: "domainEntries"))
    Domain.add_member(:registered_domain_delegation_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredDomainDelegationInfo, name: "registeredDomainDelegationInfo"))
    Domain.type = Types::Domain
    DomainEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    DomainEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name"))
    DomainEntry.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "target"))
    DomainEntry.add_member(:is_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAlias"))
    DomainEntry.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntryType, name: "type"))
    DomainEntry.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntryOptions, name: "options", traits: {"smithy.api#deprecated" => {}}))
    DomainEntry.type = Types::DomainEntry
    DomainEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntry, name: "member")
    DomainEntryOptions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntryOptionsKeys, name: "key")
    DomainEntryOptions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    DomainList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "member")
    DomainNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "member")
    DomainValidationRecord.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    DomainValidationRecord.add_member(:resource_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRecord, name: "resourceRecord"))
    DomainValidationRecord.add_member(:dns_record_creation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRecordCreationState, name: "dnsRecordCreationState"))
    DomainValidationRecord.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDomainValidationStatus, name: "validationStatus"))
    DomainValidationRecord.type = Types::DomainValidationRecord
    DomainValidationRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationRecord, name: "member")
    DownloadDefaultKeyPairRequest.type = Types::DownloadDefaultKeyPairRequest
    DownloadDefaultKeyPairResult.add_member(:public_key_base64, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "publicKeyBase64"))
    DownloadDefaultKeyPairResult.add_member(:private_key_base64, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "privateKeyBase64"))
    DownloadDefaultKeyPairResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    DownloadDefaultKeyPairResult.type = Types::DownloadDefaultKeyPairResult
    EnableAddOnRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    EnableAddOnRequest.add_member(:add_on_request, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnRequest, name: "addOnRequest", traits: {"smithy.api#required" => {}}))
    EnableAddOnRequest.type = Types::EnableAddOnRequest
    EnableAddOnResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    EnableAddOnResult.type = Types::EnableAddOnResult
    EndpointRequest.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName", traits: {"smithy.api#required" => {}}))
    EndpointRequest.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "containerPort", traits: {"smithy.api#required" => {}}))
    EndpointRequest.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceHealthCheckConfig, name: "healthCheck"))
    EndpointRequest.type = Types::EndpointRequest
    Environment.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    Environment.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    EstimateByTime.add_member(:usage_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "usageCost"))
    EstimateByTime.add_member(:pricing_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingUnit, name: "pricingUnit"))
    EstimateByTime.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "unit"))
    EstimateByTime.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    EstimateByTime.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "timePeriod"))
    EstimateByTime.type = Types::EstimateByTime
    EstimatesByTime.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EstimateByTime, name: "member")
    ExportSnapshotRecord.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ExportSnapshotRecord.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    ExportSnapshotRecord.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ExportSnapshotRecord.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    ExportSnapshotRecord.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ExportSnapshotRecord.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordState, name: "state"))
    ExportSnapshotRecord.add_member(:source_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSnapshotRecordSourceInfo, name: "sourceInfo"))
    ExportSnapshotRecord.add_member(:destination_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationInfo, name: "destinationInfo"))
    ExportSnapshotRecord.type = Types::ExportSnapshotRecord
    ExportSnapshotRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSnapshotRecord, name: "member")
    ExportSnapshotRecordSourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSnapshotRecordSourceType, name: "resourceType"))
    ExportSnapshotRecordSourceInfo.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    ExportSnapshotRecordSourceInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    ExportSnapshotRecordSourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    ExportSnapshotRecordSourceInfo.add_member(:from_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromResourceName"))
    ExportSnapshotRecordSourceInfo.add_member(:from_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromResourceArn"))
    ExportSnapshotRecordSourceInfo.add_member(:instance_snapshot_info, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSnapshotInfo, name: "instanceSnapshotInfo"))
    ExportSnapshotRecordSourceInfo.add_member(:disk_snapshot_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSnapshotInfo, name: "diskSnapshotInfo"))
    ExportSnapshotRecordSourceInfo.type = Types::ExportSnapshotRecordSourceInfo
    ExportSnapshotRecordSourceType.add_member(:instance_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceSnapshot", traits: {"smithy.api#enumValue" => "InstanceSnapshot"}))
    ExportSnapshotRecordSourceType.add_member(:disk_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskSnapshot", traits: {"smithy.api#enumValue" => "DiskSnapshot"}))
    ExportSnapshotRequest.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "sourceSnapshotName", traits: {"smithy.api#required" => {}}))
    ExportSnapshotRequest.type = Types::ExportSnapshotRequest
    ExportSnapshotResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    ExportSnapshotResult.type = Types::ExportSnapshotResult
    ForwardValues.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    ForwardValues.add_member(:allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allowList", traits: {"smithy.api#enumValue" => "allow-list"}))
    ForwardValues.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    GetActiveNamesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetActiveNamesRequest.type = Types::GetActiveNamesRequest
    GetActiveNamesResult.add_member(:active_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "activeNames"))
    GetActiveNamesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetActiveNamesResult.type = Types::GetActiveNamesResult
    GetAlarmsRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "alarmName", traits: {"smithy.api#httpQuery" => "alarmName"}))
    GetAlarmsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken", traits: {"smithy.api#httpQuery" => "pageToken"}))
    GetAlarmsRequest.add_member(:monitored_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "monitoredResourceName", traits: {"smithy.api#httpQuery" => "monitoredResourceName"}))
    GetAlarmsRequest.type = Types::GetAlarmsRequest
    GetAlarmsResult.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmsList, name: "alarms"))
    GetAlarmsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetAlarmsResult.type = Types::GetAlarmsResult
    GetAutoSnapshotsRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetAutoSnapshotsRequest.type = Types::GetAutoSnapshotsRequest
    GetAutoSnapshotsResult.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    GetAutoSnapshotsResult.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    GetAutoSnapshotsResult.add_member(:auto_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSnapshotDetailsList, name: "autoSnapshots"))
    GetAutoSnapshotsResult.type = Types::GetAutoSnapshotsResult
    GetBlueprintsRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeInactive"))
    GetBlueprintsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetBlueprintsRequest.add_member(:app_category, ::Smithy::Schema::Shapes::MemberShape.new(target: AppCategory, name: "appCategory"))
    GetBlueprintsRequest.type = Types::GetBlueprintsRequest
    GetBlueprintsResult.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintList, name: "blueprints"))
    GetBlueprintsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetBlueprintsResult.type = Types::GetBlueprintsResult
    GetBucketAccessKeysRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    GetBucketAccessKeysRequest.type = Types::GetBucketAccessKeysRequest
    GetBucketAccessKeysResult.add_member(:access_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyList, name: "accessKeys"))
    GetBucketAccessKeysResult.type = Types::GetBucketAccessKeysResult
    GetBucketBundlesRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeInactive"))
    GetBucketBundlesRequest.type = Types::GetBucketBundlesRequest
    GetBucketBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketBundleList, name: "bundles"))
    GetBucketBundlesResult.type = Types::GetBucketBundlesResult
    GetBucketMetricDataRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketMetricName, name: "metricName", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatisticList, name: "statistics", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit", traits: {"smithy.api#required" => {}}))
    GetBucketMetricDataRequest.type = Types::GetBucketMetricDataRequest
    GetBucketMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketMetricName, name: "metricName"))
    GetBucketMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapointList, name: "metricData"))
    GetBucketMetricDataResult.type = Types::GetBucketMetricDataResult
    GetBucketsRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName"))
    GetBucketsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetBucketsRequest.add_member(:include_connected_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeConnectedResources"))
    GetBucketsRequest.type = Types::GetBucketsRequest
    GetBucketsResult.add_member(:buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketList, name: "buckets"))
    GetBucketsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetBucketsResult.add_member(:account_level_bpa_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLevelBpaSync, name: "accountLevelBpaSync"))
    GetBucketsResult.type = Types::GetBucketsResult
    GetBundlesRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeInactive"))
    GetBundlesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetBundlesRequest.add_member(:app_category, ::Smithy::Schema::Shapes::MemberShape.new(target: AppCategory, name: "appCategory"))
    GetBundlesRequest.type = Types::GetBundlesRequest
    GetBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleList, name: "bundles"))
    GetBundlesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetBundlesResult.type = Types::GetBundlesResult
    GetCertificatesRequest.add_member(:certificate_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatusList, name: "certificateStatuses"))
    GetCertificatesRequest.add_member(:include_certificate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeCertificateDetails, name: "includeCertificateDetails", traits: {"smithy.api#default" => false}))
    GetCertificatesRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateName, name: "certificateName"))
    GetCertificatesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetCertificatesRequest.type = Types::GetCertificatesRequest
    GetCertificatesResult.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummaryList, name: "certificates"))
    GetCertificatesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetCertificatesResult.type = Types::GetCertificatesResult
    GetCloudFormationStackRecordsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetCloudFormationStackRecordsRequest.type = Types::GetCloudFormationStackRecordsRequest
    GetCloudFormationStackRecordsResult.add_member(:cloud_formation_stack_records, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationStackRecordList, name: "cloudFormationStackRecords"))
    GetCloudFormationStackRecordsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetCloudFormationStackRecordsResult.type = Types::GetCloudFormationStackRecordsResult
    GetContactMethodsRequest.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocolsList, name: "protocols", traits: {"smithy.api#httpQuery" => "protocols"}))
    GetContactMethodsRequest.type = Types::GetContactMethodsRequest
    GetContactMethodsResult.add_member(:contact_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactMethodsList, name: "contactMethods"))
    GetContactMethodsResult.type = Types::GetContactMethodsResult
    GetContainerAPIMetadataRequest.type = Types::GetContainerAPIMetadataRequest
    GetContainerAPIMetadataResult.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceMetadataEntryList, name: "metadata"))
    GetContainerAPIMetadataResult.type = Types::GetContainerAPIMetadataResult
    GetContainerImagesRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerImagesRequest.type = Types::GetContainerImagesRequest
    GetContainerImagesResult.add_member(:container_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImageList, name: "containerImages"))
    GetContainerImagesResult.type = Types::GetContainerImagesResult
    GetContainerLogRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerLogRequest.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerLogRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    GetContainerLogRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    GetContainerLogRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "filterPattern", traits: {"smithy.api#httpQuery" => "filterPattern"}))
    GetContainerLogRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken", traits: {"smithy.api#httpQuery" => "pageToken"}))
    GetContainerLogRequest.type = Types::GetContainerLogRequest
    GetContainerLogResult.add_member(:log_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceLogEventList, name: "logEvents"))
    GetContainerLogResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetContainerLogResult.type = Types::GetContainerLogResult
    GetContainerServiceDeploymentsRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerServiceDeploymentsRequest.type = Types::GetContainerServiceDeploymentsRequest
    GetContainerServiceDeploymentsResult.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceDeploymentList, name: "deployments"))
    GetContainerServiceDeploymentsResult.type = Types::GetContainerServiceDeploymentsResult
    GetContainerServiceMetricDataRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceMetricName, name: "metricName", traits: {"smithy.api#httpQuery" => "metricName", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period", traits: {"smithy.api#httpQuery" => "period", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatisticList, name: "statistics", traits: {"smithy.api#httpQuery" => "statistics", "smithy.api#required" => {}}))
    GetContainerServiceMetricDataRequest.type = Types::GetContainerServiceMetricDataRequest
    GetContainerServiceMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceMetricName, name: "metricName"))
    GetContainerServiceMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapointList, name: "metricData"))
    GetContainerServiceMetricDataResult.type = Types::GetContainerServiceMetricDataResult
    GetContainerServicePowersRequest.type = Types::GetContainerServicePowersRequest
    GetContainerServicePowersResult.add_member(:powers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePowerList, name: "powers"))
    GetContainerServicePowersResult.type = Types::GetContainerServicePowersResult
    GetContainerServicesRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpQuery" => "serviceName"}))
    GetContainerServicesRequest.type = Types::GetContainerServicesRequest
    GetCostEstimateRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetCostEstimateRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetCostEstimateRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetCostEstimateRequest.type = Types::GetCostEstimateRequest
    GetCostEstimateResult.add_member(:resources_budget_estimate, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesBudgetEstimate, name: "resourcesBudgetEstimate"))
    GetCostEstimateResult.type = Types::GetCostEstimateResult
    GetDiskRequest.add_member(:disk_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskName", traits: {"smithy.api#required" => {}}))
    GetDiskRequest.type = Types::GetDiskRequest
    GetDiskResult.add_member(:disk, ::Smithy::Schema::Shapes::MemberShape.new(target: Disk, name: "disk"))
    GetDiskResult.type = Types::GetDiskResult
    GetDiskSnapshotRequest.add_member(:disk_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "diskSnapshotName", traits: {"smithy.api#required" => {}}))
    GetDiskSnapshotRequest.type = Types::GetDiskSnapshotRequest
    GetDiskSnapshotResult.add_member(:disk_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSnapshot, name: "diskSnapshot"))
    GetDiskSnapshotResult.type = Types::GetDiskSnapshotResult
    GetDiskSnapshotsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetDiskSnapshotsRequest.type = Types::GetDiskSnapshotsRequest
    GetDiskSnapshotsResult.add_member(:disk_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSnapshotList, name: "diskSnapshots"))
    GetDiskSnapshotsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetDiskSnapshotsResult.type = Types::GetDiskSnapshotsResult
    GetDisksRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetDisksRequest.type = Types::GetDisksRequest
    GetDisksResult.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskList, name: "disks"))
    GetDisksResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetDisksResult.type = Types::GetDisksResult
    GetDistributionBundlesRequest.type = Types::GetDistributionBundlesRequest
    GetDistributionBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionBundleList, name: "bundles"))
    GetDistributionBundlesResult.type = Types::GetDistributionBundlesResult
    GetDistributionLatestCacheResetRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName"))
    GetDistributionLatestCacheResetRequest.type = Types::GetDistributionLatestCacheResetRequest
    GetDistributionLatestCacheResetResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    GetDistributionLatestCacheResetResult.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createTime"))
    GetDistributionLatestCacheResetResult.type = Types::GetDistributionLatestCacheResetResult
    GetDistributionMetricDataRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionMetricName, name: "metricName", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatisticList, name: "statistics", traits: {"smithy.api#required" => {}}))
    GetDistributionMetricDataRequest.type = Types::GetDistributionMetricDataRequest
    GetDistributionMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionMetricName, name: "metricName"))
    GetDistributionMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapointList, name: "metricData"))
    GetDistributionMetricDataResult.type = Types::GetDistributionMetricDataResult
    GetDistributionsRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName"))
    GetDistributionsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetDistributionsRequest.type = Types::GetDistributionsRequest
    GetDistributionsResult.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "distributions"))
    GetDistributionsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetDistributionsResult.type = Types::GetDistributionsResult
    GetDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    GetDomainRequest.type = Types::GetDomainRequest
    GetDomainResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "domain"))
    GetDomainResult.type = Types::GetDomainResult
    GetDomainsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetDomainsRequest.type = Types::GetDomainsRequest
    GetDomainsResult.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "domains"))
    GetDomainsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetDomainsResult.type = Types::GetDomainsResult
    GetExportSnapshotRecordsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetExportSnapshotRecordsRequest.type = Types::GetExportSnapshotRecordsRequest
    GetExportSnapshotRecordsResult.add_member(:export_snapshot_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSnapshotRecordList, name: "exportSnapshotRecords"))
    GetExportSnapshotRecordsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetExportSnapshotRecordsResult.type = Types::GetExportSnapshotRecordsResult
    GetInstanceAccessDetailsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceAccessDetailsRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessProtocol, name: "protocol"))
    GetInstanceAccessDetailsRequest.type = Types::GetInstanceAccessDetailsRequest
    GetInstanceAccessDetailsResult.add_member(:access_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessDetails, name: "accessDetails"))
    GetInstanceAccessDetailsResult.type = Types::GetInstanceAccessDetailsResult
    GetInstanceMetricDataRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetricName, name: "metricName", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatisticList, name: "statistics", traits: {"smithy.api#required" => {}}))
    GetInstanceMetricDataRequest.type = Types::GetInstanceMetricDataRequest
    GetInstanceMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetricName, name: "metricName"))
    GetInstanceMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapointList, name: "metricData"))
    GetInstanceMetricDataResult.type = Types::GetInstanceMetricDataResult
    GetInstancePortStatesRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstancePortStatesRequest.type = Types::GetInstancePortStatesRequest
    GetInstancePortStatesResult.add_member(:port_states, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePortStateList, name: "portStates"))
    GetInstancePortStatesResult.type = Types::GetInstancePortStatesResult
    GetInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceRequest.type = Types::GetInstanceRequest
    GetInstanceResult.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "instance"))
    GetInstanceResult.type = Types::GetInstanceResult
    GetInstanceSnapshotRequest.add_member(:instance_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceSnapshotName", traits: {"smithy.api#required" => {}}))
    GetInstanceSnapshotRequest.type = Types::GetInstanceSnapshotRequest
    GetInstanceSnapshotResult.add_member(:instance_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSnapshot, name: "instanceSnapshot"))
    GetInstanceSnapshotResult.type = Types::GetInstanceSnapshotResult
    GetInstanceSnapshotsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetInstanceSnapshotsRequest.type = Types::GetInstanceSnapshotsRequest
    GetInstanceSnapshotsResult.add_member(:instance_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSnapshotList, name: "instanceSnapshots"))
    GetInstanceSnapshotsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetInstanceSnapshotsResult.type = Types::GetInstanceSnapshotsResult
    GetInstanceStateRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetInstanceStateRequest.type = Types::GetInstanceStateRequest
    GetInstanceStateResult.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "state"))
    GetInstanceStateResult.type = Types::GetInstanceStateResult
    GetInstancesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetInstancesRequest.type = Types::GetInstancesRequest
    GetInstancesResult.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "instances"))
    GetInstancesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetInstancesResult.type = Types::GetInstancesResult
    GetKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName", traits: {"smithy.api#required" => {}}))
    GetKeyPairRequest.type = Types::GetKeyPairRequest
    GetKeyPairResult.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPair, name: "keyPair"))
    GetKeyPairResult.type = Types::GetKeyPairResult
    GetKeyPairsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetKeyPairsRequest.add_member(:include_default_key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeDefaultKeyPair"))
    GetKeyPairsRequest.type = Types::GetKeyPairsRequest
    GetKeyPairsResult.add_member(:key_pairs, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPairList, name: "keyPairs"))
    GetKeyPairsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetKeyPairsResult.type = Types::GetKeyPairsResult
    GetLoadBalancerMetricDataRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerMetricName, name: "metricName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatisticList, name: "statistics", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerMetricDataRequest.type = Types::GetLoadBalancerMetricDataRequest
    GetLoadBalancerMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerMetricName, name: "metricName"))
    GetLoadBalancerMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapointList, name: "metricData"))
    GetLoadBalancerMetricDataResult.type = Types::GetLoadBalancerMetricDataResult
    GetLoadBalancerRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerRequest.type = Types::GetLoadBalancerRequest
    GetLoadBalancerResult.add_member(:load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancer, name: "loadBalancer"))
    GetLoadBalancerResult.type = Types::GetLoadBalancerResult
    GetLoadBalancerTlsCertificatesRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    GetLoadBalancerTlsCertificatesRequest.type = Types::GetLoadBalancerTlsCertificatesRequest
    GetLoadBalancerTlsCertificatesResult.add_member(:tls_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateList, name: "tlsCertificates"))
    GetLoadBalancerTlsCertificatesResult.type = Types::GetLoadBalancerTlsCertificatesResult
    GetLoadBalancerTlsPoliciesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetLoadBalancerTlsPoliciesRequest.type = Types::GetLoadBalancerTlsPoliciesRequest
    GetLoadBalancerTlsPoliciesResult.add_member(:tls_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsPolicyList, name: "tlsPolicies"))
    GetLoadBalancerTlsPoliciesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetLoadBalancerTlsPoliciesResult.type = Types::GetLoadBalancerTlsPoliciesResult
    GetLoadBalancersRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetLoadBalancersRequest.type = Types::GetLoadBalancersRequest
    GetLoadBalancersResult.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerList, name: "loadBalancers"))
    GetLoadBalancersResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetLoadBalancersResult.type = Types::GetLoadBalancersResult
    GetOperationRequest.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "operationId", traits: {"smithy.api#required" => {}}))
    GetOperationRequest.type = Types::GetOperationRequest
    GetOperationResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    GetOperationResult.type = Types::GetOperationResult
    GetOperationsForResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetOperationsForResourceRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetOperationsForResourceRequest.type = Types::GetOperationsForResourceRequest
    GetOperationsForResourceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    GetOperationsForResourceResult.add_member(:next_page_count, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageCount", traits: {"smithy.api#deprecated" => {}}))
    GetOperationsForResourceResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetOperationsForResourceResult.type = Types::GetOperationsForResourceResult
    GetOperationsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetOperationsRequest.type = Types::GetOperationsRequest
    GetOperationsResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    GetOperationsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetOperationsResult.type = Types::GetOperationsResult
    GetRegionsRequest.add_member(:include_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeAvailabilityZones"))
    GetRegionsRequest.add_member(:include_relational_database_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeRelationalDatabaseAvailabilityZones"))
    GetRegionsRequest.type = Types::GetRegionsRequest
    GetRegionsResult.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    GetRegionsResult.type = Types::GetRegionsResult
    GetRelationalDatabaseBlueprintsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabaseBlueprintsRequest.type = Types::GetRelationalDatabaseBlueprintsRequest
    GetRelationalDatabaseBlueprintsResult.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseBlueprintList, name: "blueprints"))
    GetRelationalDatabaseBlueprintsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetRelationalDatabaseBlueprintsResult.type = Types::GetRelationalDatabaseBlueprintsResult
    GetRelationalDatabaseBundlesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabaseBundlesRequest.add_member(:include_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeInactive"))
    GetRelationalDatabaseBundlesRequest.type = Types::GetRelationalDatabaseBundlesRequest
    GetRelationalDatabaseBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseBundleList, name: "bundles"))
    GetRelationalDatabaseBundlesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetRelationalDatabaseBundlesResult.type = Types::GetRelationalDatabaseBundlesResult
    GetRelationalDatabaseEventsRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseEventsRequest.add_member(:duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "durationInMinutes"))
    GetRelationalDatabaseEventsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabaseEventsRequest.type = Types::GetRelationalDatabaseEventsRequest
    GetRelationalDatabaseEventsResult.add_member(:relational_database_events, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseEventList, name: "relationalDatabaseEvents"))
    GetRelationalDatabaseEventsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetRelationalDatabaseEventsResult.type = Types::GetRelationalDatabaseEventsResult
    GetRelationalDatabaseLogEventsRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseLogEventsRequest.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStreamName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseLogEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime"))
    GetRelationalDatabaseLogEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime"))
    GetRelationalDatabaseLogEventsRequest.add_member(:start_from_head, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "startFromHead"))
    GetRelationalDatabaseLogEventsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabaseLogEventsRequest.type = Types::GetRelationalDatabaseLogEventsRequest
    GetRelationalDatabaseLogEventsResult.add_member(:resource_log_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LogEventList, name: "resourceLogEvents"))
    GetRelationalDatabaseLogEventsResult.add_member(:next_backward_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextBackwardToken"))
    GetRelationalDatabaseLogEventsResult.add_member(:next_forward_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextForwardToken"))
    GetRelationalDatabaseLogEventsResult.type = Types::GetRelationalDatabaseLogEventsResult
    GetRelationalDatabaseLogStreamsRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseLogStreamsRequest.type = Types::GetRelationalDatabaseLogStreamsRequest
    GetRelationalDatabaseLogStreamsResult.add_member(:log_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "logStreams"))
    GetRelationalDatabaseLogStreamsResult.type = Types::GetRelationalDatabaseLogStreamsResult
    GetRelationalDatabaseMasterUserPasswordRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMasterUserPasswordRequest.add_member(:password_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabasePasswordVersion, name: "passwordVersion"))
    GetRelationalDatabaseMasterUserPasswordRequest.type = Types::GetRelationalDatabaseMasterUserPasswordRequest
    GetRelationalDatabaseMasterUserPasswordResult.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "masterUserPassword"))
    GetRelationalDatabaseMasterUserPasswordResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    GetRelationalDatabaseMasterUserPasswordResult.type = Types::GetRelationalDatabaseMasterUserPasswordResult
    GetRelationalDatabaseMetricDataRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseMetricName, name: "metricName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPeriod, name: "period", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatisticList, name: "statistics", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseMetricDataRequest.type = Types::GetRelationalDatabaseMetricDataRequest
    GetRelationalDatabaseMetricDataResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseMetricName, name: "metricName"))
    GetRelationalDatabaseMetricDataResult.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapointList, name: "metricData"))
    GetRelationalDatabaseMetricDataResult.type = Types::GetRelationalDatabaseMetricDataResult
    GetRelationalDatabaseParametersRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseParametersRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabaseParametersRequest.type = Types::GetRelationalDatabaseParametersRequest
    GetRelationalDatabaseParametersResult.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseParameterList, name: "parameters"))
    GetRelationalDatabaseParametersResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetRelationalDatabaseParametersResult.type = Types::GetRelationalDatabaseParametersResult
    GetRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseRequest.type = Types::GetRelationalDatabaseRequest
    GetRelationalDatabaseResult.add_member(:relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabase, name: "relationalDatabase"))
    GetRelationalDatabaseResult.type = Types::GetRelationalDatabaseResult
    GetRelationalDatabaseSnapshotRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseSnapshotName", traits: {"smithy.api#required" => {}}))
    GetRelationalDatabaseSnapshotRequest.type = Types::GetRelationalDatabaseSnapshotRequest
    GetRelationalDatabaseSnapshotResult.add_member(:relational_database_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseSnapshot, name: "relationalDatabaseSnapshot"))
    GetRelationalDatabaseSnapshotResult.type = Types::GetRelationalDatabaseSnapshotResult
    GetRelationalDatabaseSnapshotsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabaseSnapshotsRequest.type = Types::GetRelationalDatabaseSnapshotsRequest
    GetRelationalDatabaseSnapshotsResult.add_member(:relational_database_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseSnapshotList, name: "relationalDatabaseSnapshots"))
    GetRelationalDatabaseSnapshotsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetRelationalDatabaseSnapshotsResult.type = Types::GetRelationalDatabaseSnapshotsResult
    GetRelationalDatabasesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetRelationalDatabasesRequest.type = Types::GetRelationalDatabasesRequest
    GetRelationalDatabasesResult.add_member(:relational_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseList, name: "relationalDatabases"))
    GetRelationalDatabasesResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetRelationalDatabasesResult.type = Types::GetRelationalDatabasesResult
    GetSetupHistoryRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    GetSetupHistoryRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupHistoryPageToken, name: "pageToken"))
    GetSetupHistoryRequest.type = Types::GetSetupHistoryRequest
    GetSetupHistoryResult.add_member(:setup_history, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupHistoryList, name: "setupHistory"))
    GetSetupHistoryResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupHistoryPageToken, name: "nextPageToken"))
    GetSetupHistoryResult.type = Types::GetSetupHistoryResult
    GetStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "staticIpName", traits: {"smithy.api#required" => {}}))
    GetStaticIpRequest.type = Types::GetStaticIpRequest
    GetStaticIpResult.add_member(:static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticIp, name: "staticIp"))
    GetStaticIpResult.type = Types::GetStaticIpResult
    GetStaticIpsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pageToken"))
    GetStaticIpsRequest.type = Types::GetStaticIpsRequest
    GetStaticIpsResult.add_member(:static_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticIpList, name: "staticIps"))
    GetStaticIpsResult.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextPageToken"))
    GetStaticIpsResult.type = Types::GetStaticIpsResult
    HeaderEnum.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "accept", traits: {"smithy.api#enumValue" => "Accept"}))
    HeaderEnum.add_member(:accept_charset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "acceptCharset", traits: {"smithy.api#enumValue" => "Accept-Charset"}))
    HeaderEnum.add_member(:accept_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "acceptDatetime", traits: {"smithy.api#enumValue" => "Accept-Datetime"}))
    HeaderEnum.add_member(:accept_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "acceptEncoding", traits: {"smithy.api#enumValue" => "Accept-Encoding"}))
    HeaderEnum.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "acceptLanguage", traits: {"smithy.api#enumValue" => "Accept-Language"}))
    HeaderEnum.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "authorization", traits: {"smithy.api#enumValue" => "Authorization"}))
    HeaderEnum.add_member(:cloud_front_forwarded_proto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudFrontForwardedProto", traits: {"smithy.api#enumValue" => "CloudFront-Forwarded-Proto"}))
    HeaderEnum.add_member(:cloud_front_is_desktop_viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudFrontIsDesktopViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-Desktop-Viewer"}))
    HeaderEnum.add_member(:cloud_front_is_mobile_viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudFrontIsMobileViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-Mobile-Viewer"}))
    HeaderEnum.add_member(:cloud_front_is_smart_tv_viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudFrontIsSmartTVViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-SmartTV-Viewer"}))
    HeaderEnum.add_member(:cloud_front_is_tablet_viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudFrontIsTabletViewer", traits: {"smithy.api#enumValue" => "CloudFront-Is-Tablet-Viewer"}))
    HeaderEnum.add_member(:cloud_front_viewer_country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudFrontViewerCountry", traits: {"smithy.api#enumValue" => "CloudFront-Viewer-Country"}))
    HeaderEnum.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "host", traits: {"smithy.api#enumValue" => "Host"}))
    HeaderEnum.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "origin", traits: {"smithy.api#enumValue" => "Origin"}))
    HeaderEnum.add_member(:referer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "referer", traits: {"smithy.api#enumValue" => "Referer"}))
    HeaderForwardList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderEnum, name: "member")
    HeaderObject.add_member(:option, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardValues, name: "option"))
    HeaderObject.add_member(:headers_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderForwardList, name: "headersAllowList"))
    HeaderObject.type = Types::HeaderObject
    HostKeyAttributes.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "algorithm"))
    HostKeyAttributes.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "publicKey"))
    HostKeyAttributes.add_member(:witnessed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "witnessedAt"))
    HostKeyAttributes.add_member(:fingerprint_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fingerprintSHA1"))
    HostKeyAttributes.add_member(:fingerprint_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fingerprintSHA256"))
    HostKeyAttributes.add_member(:not_valid_before, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "notValidBefore"))
    HostKeyAttributes.add_member(:not_valid_after, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "notValidAfter"))
    HostKeyAttributes.type = Types::HostKeyAttributes
    HostKeysList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HostKeyAttributes, name: "member")
    HttpEndpoint.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "disabled", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpEndpoint.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "enabled", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpProtocolIpv6.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "disabled", traits: {"smithy.api#enumValue" => "disabled"}))
    HttpProtocolIpv6.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "enabled", traits: {"smithy.api#enumValue" => "enabled"}))
    HttpTokens.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "optional", traits: {"smithy.api#enumValue" => "optional"}))
    HttpTokens.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "required", traits: {"smithy.api#enumValue" => "required"}))
    ImportKeyPairRequest.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName", traits: {"smithy.api#required" => {}}))
    ImportKeyPairRequest.add_member(:public_key_base64, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "publicKeyBase64", traits: {"smithy.api#required" => {}}))
    ImportKeyPairRequest.type = Types::ImportKeyPairRequest
    ImportKeyPairResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    ImportKeyPairResult.type = Types::ImportKeyPairResult
    InputOrigin.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    InputOrigin.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "regionName"))
    InputOrigin.add_member(:protocol_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginProtocolPolicyEnum, name: "protocolPolicy"))
    InputOrigin.add_member(:response_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "responseTimeout"))
    InputOrigin.type = Types::InputOrigin
    Instance.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Instance.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Instance.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    Instance.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Instance.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    Instance.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Instance.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Instance.add_member(:blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "blueprintId"))
    Instance.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "blueprintName"))
    Instance.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId"))
    Instance.add_member(:add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOnList, name: "addOns"))
    Instance.add_member(:is_static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isStaticIp"))
    Instance.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "privateIpAddress"))
    Instance.add_member(:public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "publicIpAddress"))
    Instance.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressList, name: "ipv6Addresses"))
    Instance.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    Instance.add_member(:hardware, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHardware, name: "hardware"))
    Instance.add_member(:networking, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNetworking, name: "networking"))
    Instance.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "state"))
    Instance.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "username"))
    Instance.add_member(:ssh_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "sshKeyName"))
    Instance.add_member(:metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, name: "metadataOptions"))
    Instance.type = Types::Instance
    InstanceAccessDetails.add_member(:cert_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certKey"))
    InstanceAccessDetails.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "expiresAt"))
    InstanceAccessDetails.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "ipAddress"))
    InstanceAccessDetails.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressList, name: "ipv6Addresses"))
    InstanceAccessDetails.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "password"))
    InstanceAccessDetails.add_member(:password_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordData, name: "passwordData"))
    InstanceAccessDetails.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "privateKey"))
    InstanceAccessDetails.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessProtocol, name: "protocol"))
    InstanceAccessDetails.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName"))
    InstanceAccessDetails.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "username"))
    InstanceAccessDetails.add_member(:host_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: HostKeysList, name: "hostKeys"))
    InstanceAccessDetails.type = Types::InstanceAccessDetails
    InstanceAccessProtocol.add_member(:ssh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ssh", traits: {"smithy.api#enumValue" => "ssh"}))
    InstanceAccessProtocol.add_member(:rdp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "rdp", traits: {"smithy.api#enumValue" => "rdp"}))
    InstanceEntry.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "sourceName", traits: {"smithy.api#required" => {}}))
    InstanceEntry.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "instanceType", traits: {"smithy.api#required" => {}}))
    InstanceEntry.add_member(:port_info_source, ::Smithy::Schema::Shapes::MemberShape.new(target: PortInfoSourceType, name: "portInfoSource", traits: {"smithy.api#required" => {}}))
    InstanceEntry.add_member(:user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userData"))
    InstanceEntry.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone", traits: {"smithy.api#required" => {}}))
    InstanceEntry.type = Types::InstanceEntry
    InstanceEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceEntry, name: "member")
    InstanceHardware.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpuCount"))
    InstanceHardware.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskList, name: "disks"))
    InstanceHardware.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "ramSizeInGb"))
    InstanceHardware.type = Types::InstanceHardware
    InstanceHealthReason.add_member(:lb_registration_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LbRegistrationInProgress", traits: {"smithy.api#enumValue" => "Lb.RegistrationInProgress"}))
    InstanceHealthReason.add_member(:lb_initial_health_checking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LbInitialHealthChecking", traits: {"smithy.api#enumValue" => "Lb.InitialHealthChecking"}))
    InstanceHealthReason.add_member(:lb_internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LbInternalError", traits: {"smithy.api#enumValue" => "Lb.InternalError"}))
    InstanceHealthReason.add_member(:instance_response_code_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceResponseCodeMismatch", traits: {"smithy.api#enumValue" => "Instance.ResponseCodeMismatch"}))
    InstanceHealthReason.add_member(:instance_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceTimeout", traits: {"smithy.api#enumValue" => "Instance.Timeout"}))
    InstanceHealthReason.add_member(:instance_failed_health_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceFailedHealthChecks", traits: {"smithy.api#enumValue" => "Instance.FailedHealthChecks"}))
    InstanceHealthReason.add_member(:instance_not_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceNotRegistered", traits: {"smithy.api#enumValue" => "Instance.NotRegistered"}))
    InstanceHealthReason.add_member(:instance_not_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceNotInUse", traits: {"smithy.api#enumValue" => "Instance.NotInUse"}))
    InstanceHealthReason.add_member(:instance_deregistration_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceDeregistrationInProgress", traits: {"smithy.api#enumValue" => "Instance.DeregistrationInProgress"}))
    InstanceHealthReason.add_member(:instance_invalid_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceInvalidState", traits: {"smithy.api#enumValue" => "Instance.InvalidState"}))
    InstanceHealthReason.add_member(:instance_ip_unusable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceIpUnusable", traits: {"smithy.api#enumValue" => "Instance.IpUnusable"}))
    InstanceHealthState.add_member(:initial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initial", traits: {"smithy.api#enumValue" => "initial"}))
    InstanceHealthState.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Healthy", traits: {"smithy.api#enumValue" => "healthy"}))
    InstanceHealthState.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unhealthy", traits: {"smithy.api#enumValue" => "unhealthy"}))
    InstanceHealthState.add_member(:unused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unused", traits: {"smithy.api#enumValue" => "unused"}))
    InstanceHealthState.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draining", traits: {"smithy.api#enumValue" => "draining"}))
    InstanceHealthState.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unavailable", traits: {"smithy.api#enumValue" => "unavailable"}))
    InstanceHealthSummary.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName"))
    InstanceHealthSummary.add_member(:instance_health, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthState, name: "instanceHealth"))
    InstanceHealthSummary.add_member(:instance_health_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthReason, name: "instanceHealthReason"))
    InstanceHealthSummary.type = Types::InstanceHealthSummary
    InstanceHealthSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthSummary, name: "member")
    InstanceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "member")
    InstanceMetadataOptions.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataState, name: "state"))
    InstanceMetadataOptions.add_member(:http_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTokens, name: "httpTokens"))
    InstanceMetadataOptions.add_member(:http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpoint, name: "httpEndpoint"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "httpPutResponseHopLimit"))
    InstanceMetadataOptions.add_member(:http_protocol_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpProtocolIpv6, name: "httpProtocolIpv6"))
    InstanceMetadataOptions.type = Types::InstanceMetadataOptions
    InstanceMetadataState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "pending"}))
    InstanceMetadataState.add_member(:applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "applied", traits: {"smithy.api#enumValue" => "applied"}))
    InstanceMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    InstanceMetricName.add_member(:network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkIn", traits: {"smithy.api#enumValue" => "NetworkIn"}))
    InstanceMetricName.add_member(:network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkOut", traits: {"smithy.api#enumValue" => "NetworkOut"}))
    InstanceMetricName.add_member(:status_check_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StatusCheckFailed", traits: {"smithy.api#enumValue" => "StatusCheckFailed"}))
    InstanceMetricName.add_member(:status_check_failed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StatusCheckFailed_Instance", traits: {"smithy.api#enumValue" => "StatusCheckFailed_Instance"}))
    InstanceMetricName.add_member(:status_check_failed_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StatusCheckFailed_System", traits: {"smithy.api#enumValue" => "StatusCheckFailed_System"}))
    InstanceMetricName.add_member(:burst_capacity_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BurstCapacityTime", traits: {"smithy.api#enumValue" => "BurstCapacityTime"}))
    InstanceMetricName.add_member(:burst_capacity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BurstCapacityPercentage", traits: {"smithy.api#enumValue" => "BurstCapacityPercentage"}))
    InstanceMetricName.add_member(:metadata_no_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MetadataNoToken", traits: {"smithy.api#enumValue" => "MetadataNoToken"}))
    InstanceNetworking.add_member(:monthly_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyTransfer, name: "monthlyTransfer"))
    InstanceNetworking.add_member(:ports, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePortInfoList, name: "ports"))
    InstanceNetworking.type = Types::InstanceNetworking
    InstancePlatform.add_member(:linux_unix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LinuxUnix", traits: {"smithy.api#enumValue" => "LINUX_UNIX"}))
    InstancePlatform.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Windows", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    InstancePlatformList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePlatform, name: "member")
    InstancePortInfo.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "fromPort", traits: {"smithy.api#default" => 0}))
    InstancePortInfo.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "toPort", traits: {"smithy.api#default" => 0}))
    InstancePortInfo.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkProtocol, name: "protocol"))
    InstancePortInfo.add_member(:access_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessFrom"))
    InstancePortInfo.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortAccessType, name: "accessType"))
    InstancePortInfo.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "commonName"))
    InstancePortInfo.add_member(:access_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDirection, name: "accessDirection"))
    InstancePortInfo.add_member(:cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrs"))
    InstancePortInfo.add_member(:ipv6_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv6Cidrs"))
    InstancePortInfo.add_member(:cidr_list_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrListAliases"))
    InstancePortInfo.type = Types::InstancePortInfo
    InstancePortInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePortInfo, name: "member")
    InstancePortState.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "fromPort", traits: {"smithy.api#default" => 0}))
    InstancePortState.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "toPort", traits: {"smithy.api#default" => 0}))
    InstancePortState.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkProtocol, name: "protocol"))
    InstancePortState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PortState, name: "state"))
    InstancePortState.add_member(:cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrs"))
    InstancePortState.add_member(:ipv6_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv6Cidrs"))
    InstancePortState.add_member(:cidr_list_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrListAliases"))
    InstancePortState.type = Types::InstancePortState
    InstancePortStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePortState, name: "member")
    InstanceSnapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    InstanceSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    InstanceSnapshot.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    InstanceSnapshot.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    InstanceSnapshot.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    InstanceSnapshot.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    InstanceSnapshot.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    InstanceSnapshot.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSnapshotState, name: "state"))
    InstanceSnapshot.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "progress"))
    InstanceSnapshot.add_member(:from_attached_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskList, name: "fromAttachedDisks"))
    InstanceSnapshot.add_member(:from_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fromInstanceName"))
    InstanceSnapshot.add_member(:from_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromInstanceArn"))
    InstanceSnapshot.add_member(:from_blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fromBlueprintId"))
    InstanceSnapshot.add_member(:from_bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fromBundleId"))
    InstanceSnapshot.add_member(:is_from_auto_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isFromAutoSnapshot"))
    InstanceSnapshot.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    InstanceSnapshot.type = Types::InstanceSnapshot
    InstanceSnapshotInfo.add_member(:from_bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromBundleId"))
    InstanceSnapshotInfo.add_member(:from_blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromBlueprintId"))
    InstanceSnapshotInfo.add_member(:from_disk_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskInfoList, name: "fromDiskInfo"))
    InstanceSnapshotInfo.type = Types::InstanceSnapshotInfo
    InstanceSnapshotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSnapshot, name: "member")
    InstanceSnapshotState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "pending"}))
    InstanceSnapshotState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Error", traits: {"smithy.api#enumValue" => "error"}))
    InstanceSnapshotState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "available"}))
    InstanceState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "code"))
    InstanceState.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    InstanceState.type = Types::InstanceState
    InvalidInputException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    InvalidInputException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidInputException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    InvalidInputException.type = Types::InvalidInputException
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK", traits: {"smithy.api#enumValue" => "dualstack"}))
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    Ipv6AddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "member")
    IsVpcPeeredRequest.type = Types::IsVpcPeeredRequest
    IsVpcPeeredResult.add_member(:is_peered, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isPeered"))
    IsVpcPeeredResult.type = Types::IsVpcPeeredResult
    KeyPair.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    KeyPair.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    KeyPair.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    KeyPair.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    KeyPair.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    KeyPair.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    KeyPair.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    KeyPair.add_member(:fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "fingerprint"))
    KeyPair.type = Types::KeyPair
    KeyPairList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPair, name: "member")
    LightsailDistribution.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LightsailDistribution.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    LightsailDistribution.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    LightsailDistribution.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    LightsailDistribution.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    LightsailDistribution.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    LightsailDistribution.add_member(:alternative_domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "alternativeDomainNames"))
    LightsailDistribution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    LightsailDistribution.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isEnabled"))
    LightsailDistribution.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName"))
    LightsailDistribution.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bundleId"))
    LightsailDistribution.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName"))
    LightsailDistribution.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin"))
    LightsailDistribution.add_member(:origin_public_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "originPublicDNS"))
    LightsailDistribution.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, name: "defaultCacheBehavior"))
    LightsailDistribution.add_member(:cache_behavior_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSettings, name: "cacheBehaviorSettings"))
    LightsailDistribution.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviorList, name: "cacheBehaviors"))
    LightsailDistribution.add_member(:able_to_update_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ableToUpdateBundle"))
    LightsailDistribution.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    LightsailDistribution.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    LightsailDistribution.add_member(:viewer_minimum_tls_protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "viewerMinimumTlsProtocolVersion"))
    LightsailDistribution.type = Types::LightsailDistribution
    LoadBalancer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LoadBalancer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    LoadBalancer.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    LoadBalancer.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    LoadBalancer.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    LoadBalancer.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    LoadBalancer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    LoadBalancer.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "dnsName"))
    LoadBalancer.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerState, name: "state"))
    LoadBalancer.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerProtocol, name: "protocol"))
    LoadBalancer.add_member(:public_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortList, name: "publicPorts"))
    LoadBalancer.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "healthCheckPath"))
    LoadBalancer.add_member(:instance_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "instancePort"))
    LoadBalancer.add_member(:instance_health_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthSummaryList, name: "instanceHealthSummary"))
    LoadBalancer.add_member(:tls_certificate_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateSummaryList, name: "tlsCertificateSummaries"))
    LoadBalancer.add_member(:configuration_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerConfigurationOptions, name: "configurationOptions"))
    LoadBalancer.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    LoadBalancer.add_member(:https_redirection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "httpsRedirectionEnabled"))
    LoadBalancer.add_member(:tls_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "tlsPolicyName"))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancerAttributeName.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HealthCheckPath", traits: {"smithy.api#enumValue" => "HealthCheckPath"}))
    LoadBalancerAttributeName.add_member(:session_stickiness_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionStickinessEnabled", traits: {"smithy.api#enumValue" => "SessionStickinessEnabled"}))
    LoadBalancerAttributeName.add_member(:session_stickiness_lb_cookie_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionStickiness_LB_CookieDurationSeconds", traits: {"smithy.api#enumValue" => "SessionStickiness_LB_CookieDurationSeconds"}))
    LoadBalancerAttributeName.add_member(:https_redirection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HttpsRedirectionEnabled", traits: {"smithy.api#enumValue" => "HttpsRedirectionEnabled"}))
    LoadBalancerAttributeName.add_member(:tls_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TlsPolicyName", traits: {"smithy.api#enumValue" => "TlsPolicyName"}))
    LoadBalancerConfigurationOptions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributeName, name: "key")
    LoadBalancerConfigurationOptions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    LoadBalancerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancer, name: "member")
    LoadBalancerMetricName.add_member(:client_tls_negotiation_error_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClientTLSNegotiationErrorCount", traits: {"smithy.api#enumValue" => "ClientTLSNegotiationErrorCount"}))
    LoadBalancerMetricName.add_member(:healthy_host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HealthyHostCount", traits: {"smithy.api#enumValue" => "HealthyHostCount"}))
    LoadBalancerMetricName.add_member(:unhealthy_host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnhealthyHostCount", traits: {"smithy.api#enumValue" => "UnhealthyHostCount"}))
    LoadBalancerMetricName.add_member(:http_code_lb_4_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_LB_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_4XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_lb_5_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_LB_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_5XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_2_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_2XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_2XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_3_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_3XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_3XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_4_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_4XX_Count"}))
    LoadBalancerMetricName.add_member(:http_code_instance_5_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_5XX_Count"}))
    LoadBalancerMetricName.add_member(:instance_response_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceResponseTime", traits: {"smithy.api#enumValue" => "InstanceResponseTime"}))
    LoadBalancerMetricName.add_member(:rejected_connection_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RejectedConnectionCount", traits: {"smithy.api#enumValue" => "RejectedConnectionCount"}))
    LoadBalancerMetricName.add_member(:request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCount", traits: {"smithy.api#enumValue" => "RequestCount"}))
    LoadBalancerProtocol.add_member(:http_https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_HTTPS", traits: {"smithy.api#enumValue" => "HTTP_HTTPS"}))
    LoadBalancerProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    LoadBalancerState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "active"}))
    LoadBalancerState.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Provisioning", traits: {"smithy.api#enumValue" => "provisioning"}))
    LoadBalancerState.add_member(:active_impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActiveImpaired", traits: {"smithy.api#enumValue" => "active_impaired"}))
    LoadBalancerState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "failed"}))
    LoadBalancerState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "unknown"}))
    LoadBalancerTlsCertificate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LoadBalancerTlsCertificate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    LoadBalancerTlsCertificate.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    LoadBalancerTlsCertificate.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    LoadBalancerTlsCertificate.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    LoadBalancerTlsCertificate.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    LoadBalancerTlsCertificate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    LoadBalancerTlsCertificate.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName"))
    LoadBalancerTlsCertificate.add_member(:is_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAttached"))
    LoadBalancerTlsCertificate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateStatus, name: "status"))
    LoadBalancerTlsCertificate.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    LoadBalancerTlsCertificate.add_member(:domain_validation_records, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDomainValidationRecordList, name: "domainValidationRecords"))
    LoadBalancerTlsCertificate.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateFailureReason, name: "failureReason"))
    LoadBalancerTlsCertificate.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "issuedAt"))
    LoadBalancerTlsCertificate.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "issuer"))
    LoadBalancerTlsCertificate.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "keyAlgorithm"))
    LoadBalancerTlsCertificate.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "notAfter"))
    LoadBalancerTlsCertificate.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "notBefore"))
    LoadBalancerTlsCertificate.add_member(:renewal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateRenewalSummary, name: "renewalSummary"))
    LoadBalancerTlsCertificate.add_member(:revocation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateRevocationReason, name: "revocationReason"))
    LoadBalancerTlsCertificate.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "revokedAt"))
    LoadBalancerTlsCertificate.add_member(:serial, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serial"))
    LoadBalancerTlsCertificate.add_member(:signature_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "signatureAlgorithm"))
    LoadBalancerTlsCertificate.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "subject"))
    LoadBalancerTlsCertificate.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subjectAlternativeNames"))
    LoadBalancerTlsCertificate.type = Types::LoadBalancerTlsCertificate
    LoadBalancerTlsCertificateDnsRecordCreationState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDnsRecordCreationStateCode, name: "code"))
    LoadBalancerTlsCertificateDnsRecordCreationState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LoadBalancerTlsCertificateDnsRecordCreationState.type = Types::LoadBalancerTlsCertificateDnsRecordCreationState
    LoadBalancerTlsCertificateDnsRecordCreationStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LoadBalancerTlsCertificateDnsRecordCreationStateCode.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    LoadBalancerTlsCertificateDnsRecordCreationStateCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateDomainStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    LoadBalancerTlsCertificateDomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateDomainStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LoadBalancerTlsCertificateDomainValidationOption.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    LoadBalancerTlsCertificateDomainValidationOption.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDomainStatus, name: "validationStatus"))
    LoadBalancerTlsCertificateDomainValidationOption.type = Types::LoadBalancerTlsCertificateDomainValidationOption
    LoadBalancerTlsCertificateDomainValidationOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDomainValidationOption, name: "member")
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "type"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDomainStatus, name: "validationStatus"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    LoadBalancerTlsCertificateDomainValidationRecord.add_member(:dns_record_creation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDnsRecordCreationState, name: "dnsRecordCreationState"))
    LoadBalancerTlsCertificateDomainValidationRecord.type = Types::LoadBalancerTlsCertificateDomainValidationRecord
    LoadBalancerTlsCertificateDomainValidationRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDomainValidationRecord, name: "member")
    LoadBalancerTlsCertificateFailureReason.add_member(:no_available_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoAvailableContacts", traits: {"smithy.api#enumValue" => "NO_AVAILABLE_CONTACTS"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:additional_verification_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AdditionalVerificationRequired", traits: {"smithy.api#enumValue" => "ADDITIONAL_VERIFICATION_REQUIRED"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:domain_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DomainNotAllowed", traits: {"smithy.api#enumValue" => "DOMAIN_NOT_ALLOWED"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:invalid_public_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidPublicDomain", traits: {"smithy.api#enumValue" => "INVALID_PUBLIC_DOMAIN"}))
    LoadBalancerTlsCertificateFailureReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Other", traits: {"smithy.api#enumValue" => "OTHER"}))
    LoadBalancerTlsCertificateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificate, name: "member")
    LoadBalancerTlsCertificateRenewalStatus.add_member(:pending_auto_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingAutoRenewal", traits: {"smithy.api#enumValue" => "PENDING_AUTO_RENEWAL"}))
    LoadBalancerTlsCertificateRenewalStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    LoadBalancerTlsCertificateRenewalStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LoadBalancerTlsCertificateRenewalStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateRenewalSummary.add_member(:renewal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateRenewalStatus, name: "renewalStatus"))
    LoadBalancerTlsCertificateRenewalSummary.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateDomainValidationOptionList, name: "domainValidationOptions"))
    LoadBalancerTlsCertificateRenewalSummary.type = Types::LoadBalancerTlsCertificateRenewalSummary
    LoadBalancerTlsCertificateRevocationReason.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unspecified", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:key_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KeyCompromise", traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:ca_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CaCompromise", traits: {"smithy.api#enumValue" => "CA_COMPROMISE"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:affiliation_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AffiliationChanged", traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:superceded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Superceded", traits: {"smithy.api#enumValue" => "SUPERCEDED"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:cessation_of_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CessationOfOperation", traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:certificate_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CertificateHold", traits: {"smithy.api#enumValue" => "CERTIFICATE_HOLD"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:remove_from_crl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RemoveFromCrl", traits: {"smithy.api#enumValue" => "REMOVE_FROM_CRL"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:privilege_withdrawn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PrivilegeWithdrawn", traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    LoadBalancerTlsCertificateRevocationReason.add_member(:aa_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AACompromise", traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    LoadBalancerTlsCertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    LoadBalancerTlsCertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Issued", traits: {"smithy.api#enumValue" => "ISSUED"}))
    LoadBalancerTlsCertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    LoadBalancerTlsCertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expired", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LoadBalancerTlsCertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationTimedOut", traits: {"smithy.api#enumValue" => "VALIDATION_TIMED_OUT"}))
    LoadBalancerTlsCertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Revoked", traits: {"smithy.api#enumValue" => "REVOKED"}))
    LoadBalancerTlsCertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    LoadBalancerTlsCertificateStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    LoadBalancerTlsCertificateSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LoadBalancerTlsCertificateSummary.add_member(:is_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAttached"))
    LoadBalancerTlsCertificateSummary.type = Types::LoadBalancerTlsCertificateSummary
    LoadBalancerTlsCertificateSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsCertificateSummary, name: "member")
    LoadBalancerTlsPolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LoadBalancerTlsPolicy.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDefault"))
    LoadBalancerTlsPolicy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    LoadBalancerTlsPolicy.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "protocols"))
    LoadBalancerTlsPolicy.add_member(:ciphers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ciphers"))
    LoadBalancerTlsPolicy.type = Types::LoadBalancerTlsPolicy
    LoadBalancerTlsPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTlsPolicy, name: "member")
    LogEvent.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    LogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LogEvent.type = Types::LogEvent
    LogEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogEvent, name: "member")
    MetricDatapoint.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "average"))
    MetricDatapoint.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "maximum"))
    MetricDatapoint.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "minimum"))
    MetricDatapoint.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "sampleCount"))
    MetricDatapoint.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "sum"))
    MetricDatapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp"))
    MetricDatapoint.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "unit"))
    MetricDatapoint.type = Types::MetricDatapoint
    MetricDatapointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDatapoint, name: "member")
    MetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    MetricName.add_member(:network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkIn", traits: {"smithy.api#enumValue" => "NetworkIn"}))
    MetricName.add_member(:network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkOut", traits: {"smithy.api#enumValue" => "NetworkOut"}))
    MetricName.add_member(:status_check_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StatusCheckFailed", traits: {"smithy.api#enumValue" => "StatusCheckFailed"}))
    MetricName.add_member(:status_check_failed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StatusCheckFailed_Instance", traits: {"smithy.api#enumValue" => "StatusCheckFailed_Instance"}))
    MetricName.add_member(:status_check_failed_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StatusCheckFailed_System", traits: {"smithy.api#enumValue" => "StatusCheckFailed_System"}))
    MetricName.add_member(:client_tls_negotiation_error_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClientTLSNegotiationErrorCount", traits: {"smithy.api#enumValue" => "ClientTLSNegotiationErrorCount"}))
    MetricName.add_member(:healthy_host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HealthyHostCount", traits: {"smithy.api#enumValue" => "HealthyHostCount"}))
    MetricName.add_member(:unhealthy_host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnhealthyHostCount", traits: {"smithy.api#enumValue" => "UnhealthyHostCount"}))
    MetricName.add_member(:http_code_lb_4_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_LB_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_4XX_Count"}))
    MetricName.add_member(:http_code_lb_5_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_LB_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_LB_5XX_Count"}))
    MetricName.add_member(:http_code_instance_2_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_2XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_2XX_Count"}))
    MetricName.add_member(:http_code_instance_3_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_3XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_3XX_Count"}))
    MetricName.add_member(:http_code_instance_4_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_4XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_4XX_Count"}))
    MetricName.add_member(:http_code_instance_5_xx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPCode_Instance_5XX_Count", traits: {"smithy.api#enumValue" => "HTTPCode_Instance_5XX_Count"}))
    MetricName.add_member(:instance_response_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceResponseTime", traits: {"smithy.api#enumValue" => "InstanceResponseTime"}))
    MetricName.add_member(:rejected_connection_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RejectedConnectionCount", traits: {"smithy.api#enumValue" => "RejectedConnectionCount"}))
    MetricName.add_member(:request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCount", traits: {"smithy.api#enumValue" => "RequestCount"}))
    MetricName.add_member(:database_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DatabaseConnections", traits: {"smithy.api#enumValue" => "DatabaseConnections"}))
    MetricName.add_member(:disk_queue_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskQueueDepth", traits: {"smithy.api#enumValue" => "DiskQueueDepth"}))
    MetricName.add_member(:free_storage_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FreeStorageSpace", traits: {"smithy.api#enumValue" => "FreeStorageSpace"}))
    MetricName.add_member(:network_receive_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkReceiveThroughput", traits: {"smithy.api#enumValue" => "NetworkReceiveThroughput"}))
    MetricName.add_member(:network_transmit_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkTransmitThroughput", traits: {"smithy.api#enumValue" => "NetworkTransmitThroughput"}))
    MetricName.add_member(:burst_capacity_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BurstCapacityTime", traits: {"smithy.api#enumValue" => "BurstCapacityTime"}))
    MetricName.add_member(:burst_capacity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BurstCapacityPercentage", traits: {"smithy.api#enumValue" => "BurstCapacityPercentage"}))
    MetricStatistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    MetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricStatistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    MetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    MetricStatistic.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SampleCount", traits: {"smithy.api#enumValue" => "SampleCount"}))
    MetricStatisticList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "member")
    MetricUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Seconds", traits: {"smithy.api#enumValue" => "Seconds"}))
    MetricUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Microseconds", traits: {"smithy.api#enumValue" => "Microseconds"}))
    MetricUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Milliseconds", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    MetricUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bytes", traits: {"smithy.api#enumValue" => "Bytes"}))
    MetricUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kilobytes", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    MetricUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Megabytes", traits: {"smithy.api#enumValue" => "Megabytes"}))
    MetricUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gigabytes", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    MetricUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terabytes", traits: {"smithy.api#enumValue" => "Terabytes"}))
    MetricUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bits", traits: {"smithy.api#enumValue" => "Bits"}))
    MetricUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kilobits", traits: {"smithy.api#enumValue" => "Kilobits"}))
    MetricUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Megabits", traits: {"smithy.api#enumValue" => "Megabits"}))
    MetricUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gigabits", traits: {"smithy.api#enumValue" => "Gigabits"}))
    MetricUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terabits", traits: {"smithy.api#enumValue" => "Terabits"}))
    MetricUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Percent", traits: {"smithy.api#enumValue" => "Percent"}))
    MetricUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    MetricUnit.add_member(:bytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BytesSecond", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    MetricUnit.add_member(:kilobytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KilobytesSecond", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    MetricUnit.add_member(:megabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MegabytesSecond", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    MetricUnit.add_member(:gigabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GigabytesSecond", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    MetricUnit.add_member(:terabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TerabytesSecond", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    MetricUnit.add_member(:bits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BitsSecond", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    MetricUnit.add_member(:kilobits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KilobitsSecond", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    MetricUnit.add_member(:megabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MegabitsSecond", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    MetricUnit.add_member(:gigabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GigabitsSecond", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    MetricUnit.add_member(:terabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TerabitsSecond", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    MetricUnit.add_member(:count_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CountSecond", traits: {"smithy.api#enumValue" => "Count/Second"}))
    MetricUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    MonitoredResourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    MonitoredResourceInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    MonitoredResourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    MonitoredResourceInfo.type = Types::MonitoredResourceInfo
    MonthlyTransfer.add_member(:gb_per_month_allocated, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "gbPerMonthAllocated"))
    MonthlyTransfer.type = Types::MonthlyTransfer
    NameServersUpdateState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: NameServersUpdateStateCode, name: "code"))
    NameServersUpdateState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NameServersUpdateState.type = Types::NameServersUpdateState
    NameServersUpdateStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    NameServersUpdateStateCode.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    NameServersUpdateStateCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    NameServersUpdateStateCode.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    NetworkProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "tcp"}))
    NetworkProtocol.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "all"}))
    NetworkProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDP", traits: {"smithy.api#enumValue" => "udp"}))
    NetworkProtocol.add_member(:icmp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICMP", traits: {"smithy.api#enumValue" => "icmp"}))
    NetworkProtocol.add_member(:icmpv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICMPV6", traits: {"smithy.api#enumValue" => "icmpv6"}))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    NotFoundException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NotFoundException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    NotFoundException.type = Types::NotFoundException
    NotificationTriggerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmState, name: "member")
    OpenInstancePublicPortsRequest.add_member(:port_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PortInfo, name: "portInfo", traits: {"smithy.api#required" => {}}))
    OpenInstancePublicPortsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    OpenInstancePublicPortsRequest.type = Types::OpenInstancePublicPortsRequest
    OpenInstancePublicPortsResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    OpenInstancePublicPortsResult.type = Types::OpenInstancePublicPortsResult
    Operation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    Operation.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    Operation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Operation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    Operation.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    Operation.add_member(:is_terminal, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTerminal"))
    Operation.add_member(:operation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operationDetails"))
    Operation.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, name: "operationType"))
    Operation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "status"))
    Operation.add_member(:status_changed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "statusChangedAt"))
    Operation.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorCode"))
    Operation.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorDetails"))
    Operation.type = Types::Operation
    OperationFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    OperationFailureException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    OperationFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OperationFailureException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    OperationFailureException.type = Types::OperationFailureException
    OperationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "member")
    OperationStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotStarted", traits: {"smithy.api#enumValue" => "NotStarted"}))
    OperationStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "Started"}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    OperationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    OperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    OperationType.add_member(:delete_known_host_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteKnownHostKeys", traits: {"smithy.api#enumValue" => "DeleteKnownHostKeys"}))
    OperationType.add_member(:delete_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteInstance", traits: {"smithy.api#enumValue" => "DeleteInstance"}))
    OperationType.add_member(:create_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateInstance", traits: {"smithy.api#enumValue" => "CreateInstance"}))
    OperationType.add_member(:stop_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StopInstance", traits: {"smithy.api#enumValue" => "StopInstance"}))
    OperationType.add_member(:start_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartInstance", traits: {"smithy.api#enumValue" => "StartInstance"}))
    OperationType.add_member(:reboot_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RebootInstance", traits: {"smithy.api#enumValue" => "RebootInstance"}))
    OperationType.add_member(:open_instance_public_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OpenInstancePublicPorts", traits: {"smithy.api#enumValue" => "OpenInstancePublicPorts"}))
    OperationType.add_member(:put_instance_public_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PutInstancePublicPorts", traits: {"smithy.api#enumValue" => "PutInstancePublicPorts"}))
    OperationType.add_member(:close_instance_public_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloseInstancePublicPorts", traits: {"smithy.api#enumValue" => "CloseInstancePublicPorts"}))
    OperationType.add_member(:allocate_static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllocateStaticIp", traits: {"smithy.api#enumValue" => "AllocateStaticIp"}))
    OperationType.add_member(:release_static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReleaseStaticIp", traits: {"smithy.api#enumValue" => "ReleaseStaticIp"}))
    OperationType.add_member(:attach_static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachStaticIp", traits: {"smithy.api#enumValue" => "AttachStaticIp"}))
    OperationType.add_member(:detach_static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DetachStaticIp", traits: {"smithy.api#enumValue" => "DetachStaticIp"}))
    OperationType.add_member(:update_domain_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateDomainEntry", traits: {"smithy.api#enumValue" => "UpdateDomainEntry"}))
    OperationType.add_member(:delete_domain_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteDomainEntry", traits: {"smithy.api#enumValue" => "DeleteDomainEntry"}))
    OperationType.add_member(:create_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateDomain", traits: {"smithy.api#enumValue" => "CreateDomain"}))
    OperationType.add_member(:delete_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteDomain", traits: {"smithy.api#enumValue" => "DeleteDomain"}))
    OperationType.add_member(:create_instance_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateInstanceSnapshot", traits: {"smithy.api#enumValue" => "CreateInstanceSnapshot"}))
    OperationType.add_member(:delete_instance_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteInstanceSnapshot", traits: {"smithy.api#enumValue" => "DeleteInstanceSnapshot"}))
    OperationType.add_member(:create_instances_from_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateInstancesFromSnapshot", traits: {"smithy.api#enumValue" => "CreateInstancesFromSnapshot"}))
    OperationType.add_member(:create_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateLoadBalancer", traits: {"smithy.api#enumValue" => "CreateLoadBalancer"}))
    OperationType.add_member(:delete_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteLoadBalancer", traits: {"smithy.api#enumValue" => "DeleteLoadBalancer"}))
    OperationType.add_member(:attach_instances_to_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachInstancesToLoadBalancer", traits: {"smithy.api#enumValue" => "AttachInstancesToLoadBalancer"}))
    OperationType.add_member(:detach_instances_from_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DetachInstancesFromLoadBalancer", traits: {"smithy.api#enumValue" => "DetachInstancesFromLoadBalancer"}))
    OperationType.add_member(:update_load_balancer_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateLoadBalancerAttribute", traits: {"smithy.api#enumValue" => "UpdateLoadBalancerAttribute"}))
    OperationType.add_member(:create_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateLoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "CreateLoadBalancerTlsCertificate"}))
    OperationType.add_member(:delete_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteLoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "DeleteLoadBalancerTlsCertificate"}))
    OperationType.add_member(:attach_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachLoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "AttachLoadBalancerTlsCertificate"}))
    OperationType.add_member(:create_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateDisk", traits: {"smithy.api#enumValue" => "CreateDisk"}))
    OperationType.add_member(:delete_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteDisk", traits: {"smithy.api#enumValue" => "DeleteDisk"}))
    OperationType.add_member(:attach_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachDisk", traits: {"smithy.api#enumValue" => "AttachDisk"}))
    OperationType.add_member(:detach_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DetachDisk", traits: {"smithy.api#enumValue" => "DetachDisk"}))
    OperationType.add_member(:create_disk_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateDiskSnapshot", traits: {"smithy.api#enumValue" => "CreateDiskSnapshot"}))
    OperationType.add_member(:delete_disk_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteDiskSnapshot", traits: {"smithy.api#enumValue" => "DeleteDiskSnapshot"}))
    OperationType.add_member(:create_disk_from_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateDiskFromSnapshot", traits: {"smithy.api#enumValue" => "CreateDiskFromSnapshot"}))
    OperationType.add_member(:create_relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateRelationalDatabase", traits: {"smithy.api#enumValue" => "CreateRelationalDatabase"}))
    OperationType.add_member(:update_relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateRelationalDatabase", traits: {"smithy.api#enumValue" => "UpdateRelationalDatabase"}))
    OperationType.add_member(:delete_relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteRelationalDatabase", traits: {"smithy.api#enumValue" => "DeleteRelationalDatabase"}))
    OperationType.add_member(:create_relational_database_from_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateRelationalDatabaseFromSnapshot", traits: {"smithy.api#enumValue" => "CreateRelationalDatabaseFromSnapshot"}))
    OperationType.add_member(:create_relational_database_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateRelationalDatabaseSnapshot", traits: {"smithy.api#enumValue" => "CreateRelationalDatabaseSnapshot"}))
    OperationType.add_member(:delete_relational_database_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteRelationalDatabaseSnapshot", traits: {"smithy.api#enumValue" => "DeleteRelationalDatabaseSnapshot"}))
    OperationType.add_member(:update_relational_database_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateRelationalDatabaseParameters", traits: {"smithy.api#enumValue" => "UpdateRelationalDatabaseParameters"}))
    OperationType.add_member(:start_relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartRelationalDatabase", traits: {"smithy.api#enumValue" => "StartRelationalDatabase"}))
    OperationType.add_member(:reboot_relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RebootRelationalDatabase", traits: {"smithy.api#enumValue" => "RebootRelationalDatabase"}))
    OperationType.add_member(:stop_relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StopRelationalDatabase", traits: {"smithy.api#enumValue" => "StopRelationalDatabase"}))
    OperationType.add_member(:enable_add_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EnableAddOn", traits: {"smithy.api#enumValue" => "EnableAddOn"}))
    OperationType.add_member(:disable_add_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisableAddOn", traits: {"smithy.api#enumValue" => "DisableAddOn"}))
    OperationType.add_member(:put_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PutAlarm", traits: {"smithy.api#enumValue" => "PutAlarm"}))
    OperationType.add_member(:get_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetAlarms", traits: {"smithy.api#enumValue" => "GetAlarms"}))
    OperationType.add_member(:delete_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteAlarm", traits: {"smithy.api#enumValue" => "DeleteAlarm"}))
    OperationType.add_member(:test_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TestAlarm", traits: {"smithy.api#enumValue" => "TestAlarm"}))
    OperationType.add_member(:create_contact_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateContactMethod", traits: {"smithy.api#enumValue" => "CreateContactMethod"}))
    OperationType.add_member(:get_contact_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetContactMethods", traits: {"smithy.api#enumValue" => "GetContactMethods"}))
    OperationType.add_member(:send_contact_method_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SendContactMethodVerification", traits: {"smithy.api#enumValue" => "SendContactMethodVerification"}))
    OperationType.add_member(:delete_contact_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteContactMethod", traits: {"smithy.api#enumValue" => "DeleteContactMethod"}))
    OperationType.add_member(:create_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateDistribution", traits: {"smithy.api#enumValue" => "CreateDistribution"}))
    OperationType.add_member(:update_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateDistribution", traits: {"smithy.api#enumValue" => "UpdateDistribution"}))
    OperationType.add_member(:delete_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteDistribution", traits: {"smithy.api#enumValue" => "DeleteDistribution"}))
    OperationType.add_member(:reset_distribution_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResetDistributionCache", traits: {"smithy.api#enumValue" => "ResetDistributionCache"}))
    OperationType.add_member(:attach_certificate_to_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachCertificateToDistribution", traits: {"smithy.api#enumValue" => "AttachCertificateToDistribution"}))
    OperationType.add_member(:detach_certificate_from_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DetachCertificateFromDistribution", traits: {"smithy.api#enumValue" => "DetachCertificateFromDistribution"}))
    OperationType.add_member(:update_distribution_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateDistributionBundle", traits: {"smithy.api#enumValue" => "UpdateDistributionBundle"}))
    OperationType.add_member(:set_ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SetIpAddressType", traits: {"smithy.api#enumValue" => "SetIpAddressType"}))
    OperationType.add_member(:create_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateCertificate", traits: {"smithy.api#enumValue" => "CreateCertificate"}))
    OperationType.add_member(:delete_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteCertificate", traits: {"smithy.api#enumValue" => "DeleteCertificate"}))
    OperationType.add_member(:create_container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateContainerService", traits: {"smithy.api#enumValue" => "CreateContainerService"}))
    OperationType.add_member(:update_container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateContainerService", traits: {"smithy.api#enumValue" => "UpdateContainerService"}))
    OperationType.add_member(:delete_container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteContainerService", traits: {"smithy.api#enumValue" => "DeleteContainerService"}))
    OperationType.add_member(:create_container_service_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateContainerServiceDeployment", traits: {"smithy.api#enumValue" => "CreateContainerServiceDeployment"}))
    OperationType.add_member(:create_container_service_registry_login, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateContainerServiceRegistryLogin", traits: {"smithy.api#enumValue" => "CreateContainerServiceRegistryLogin"}))
    OperationType.add_member(:register_container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegisterContainerImage", traits: {"smithy.api#enumValue" => "RegisterContainerImage"}))
    OperationType.add_member(:delete_container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteContainerImage", traits: {"smithy.api#enumValue" => "DeleteContainerImage"}))
    OperationType.add_member(:create_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateBucket", traits: {"smithy.api#enumValue" => "CreateBucket"}))
    OperationType.add_member(:delete_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteBucket", traits: {"smithy.api#enumValue" => "DeleteBucket"}))
    OperationType.add_member(:create_bucket_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateBucketAccessKey", traits: {"smithy.api#enumValue" => "CreateBucketAccessKey"}))
    OperationType.add_member(:delete_bucket_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteBucketAccessKey", traits: {"smithy.api#enumValue" => "DeleteBucketAccessKey"}))
    OperationType.add_member(:update_bucket_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateBucketBundle", traits: {"smithy.api#enumValue" => "UpdateBucketBundle"}))
    OperationType.add_member(:update_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateBucket", traits: {"smithy.api#enumValue" => "UpdateBucket"}))
    OperationType.add_member(:set_resource_access_for_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SetResourceAccessForBucket", traits: {"smithy.api#enumValue" => "SetResourceAccessForBucket"}))
    OperationType.add_member(:update_instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateInstanceMetadataOptions", traits: {"smithy.api#enumValue" => "UpdateInstanceMetadataOptions"}))
    OperationType.add_member(:start_gui_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartGUISession", traits: {"smithy.api#enumValue" => "StartGUISession"}))
    OperationType.add_member(:stop_gui_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StopGUISession", traits: {"smithy.api#enumValue" => "StopGUISession"}))
    OperationType.add_member(:setup_instance_https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SetupInstanceHttps", traits: {"smithy.api#enumValue" => "SetupInstanceHttps"}))
    Origin.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Origin.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Origin.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "regionName"))
    Origin.add_member(:protocol_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginProtocolPolicyEnum, name: "protocolPolicy"))
    Origin.add_member(:response_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "responseTimeout"))
    Origin.type = Types::Origin
    OriginProtocolPolicyEnum.add_member(:http_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPOnly", traits: {"smithy.api#enumValue" => "http-only"}))
    OriginProtocolPolicyEnum.add_member(:https_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPSOnly", traits: {"smithy.api#enumValue" => "https-only"}))
    PartnerIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    PasswordData.add_member(:ciphertext, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ciphertext"))
    PasswordData.add_member(:key_pair_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "keyPairName"))
    PasswordData.type = Types::PasswordData
    PeerVpcRequest.type = Types::PeerVpcRequest
    PeerVpcResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    PeerVpcResult.type = Types::PeerVpcResult
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "action"))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "currentApplyDate"))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceAction, name: "member")
    PendingModifiedRelationalDatabaseValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "masterUserPassword"))
    PendingModifiedRelationalDatabaseValues.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "engineVersion"))
    PendingModifiedRelationalDatabaseValues.add_member(:backup_retention_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "backupRetentionEnabled"))
    PendingModifiedRelationalDatabaseValues.type = Types::PendingModifiedRelationalDatabaseValues
    PortAccessType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    PortAccessType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Private", traits: {"smithy.api#enumValue" => "Private"}))
    PortInfo.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "fromPort", traits: {"smithy.api#default" => 0}))
    PortInfo.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "toPort", traits: {"smithy.api#default" => 0}))
    PortInfo.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkProtocol, name: "protocol"))
    PortInfo.add_member(:cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrs"))
    PortInfo.add_member(:ipv6_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv6Cidrs"))
    PortInfo.add_member(:cidr_list_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrListAliases"))
    PortInfo.type = Types::PortInfo
    PortInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortInfo, name: "member")
    PortInfoSourceType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    PortInfoSourceType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Instance", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    PortInfoSourceType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "NONE"}))
    PortInfoSourceType.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Closed", traits: {"smithy.api#enumValue" => "CLOSED"}))
    PortList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "member")
    PortMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    PortMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceProtocol, name: "value")
    PortState.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Open", traits: {"smithy.api#enumValue" => "open"}))
    PortState.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Closed", traits: {"smithy.api#enumValue" => "closed"}))
    PricingUnit.add_member(:gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    PricingUnit.add_member(:hrs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hrs", traits: {"smithy.api#enumValue" => "Hrs"}))
    PricingUnit.add_member(:gb_mo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GBMo", traits: {"smithy.api#enumValue" => "GB-Mo"}))
    PricingUnit.add_member(:bundles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bundles", traits: {"smithy.api#enumValue" => "Bundles"}))
    PricingUnit.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Queries", traits: {"smithy.api#enumValue" => "Queries"}))
    PrivateRegistryAccess.add_member(:ecr_image_puller_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceECRImagePullerRole, name: "ecrImagePullerRole"))
    PrivateRegistryAccess.type = Types::PrivateRegistryAccess
    PrivateRegistryAccessRequest.add_member(:ecr_image_puller_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceECRImagePullerRoleRequest, name: "ecrImagePullerRole"))
    PrivateRegistryAccessRequest.type = Types::PrivateRegistryAccessRequest
    PutAlarmRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "alarmName", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "metricName", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:monitored_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "monitoredResourceName", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "comparisonOperator", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "threshold", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "evaluationPeriods", traits: {"smithy.api#required" => {}}))
    PutAlarmRequest.add_member(:datapoints_to_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "datapointsToAlarm"))
    PutAlarmRequest.add_member(:treat_missing_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatMissingData, name: "treatMissingData"))
    PutAlarmRequest.add_member(:contact_protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactProtocolsList, name: "contactProtocols"))
    PutAlarmRequest.add_member(:notification_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTriggerList, name: "notificationTriggers"))
    PutAlarmRequest.add_member(:notification_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "notificationEnabled"))
    PutAlarmRequest.type = Types::PutAlarmRequest
    PutAlarmResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    PutAlarmResult.type = Types::PutAlarmResult
    PutInstancePublicPortsRequest.add_member(:port_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: PortInfoList, name: "portInfos", traits: {"smithy.api#required" => {}}))
    PutInstancePublicPortsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    PutInstancePublicPortsRequest.type = Types::PutInstancePublicPortsRequest
    PutInstancePublicPortsResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    PutInstancePublicPortsResult.type = Types::PutInstancePublicPortsResult
    QueryStringObject.add_member(:option, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "option"))
    QueryStringObject.add_member(:query_strings_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "queryStringsAllowList"))
    QueryStringObject.type = Types::QueryStringObject
    R53HostedZoneDeletionState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: R53HostedZoneDeletionStateCode, name: "code"))
    R53HostedZoneDeletionState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    R53HostedZoneDeletionState.type = Types::R53HostedZoneDeletionState
    R53HostedZoneDeletionStateCode.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    R53HostedZoneDeletionStateCode.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    R53HostedZoneDeletionStateCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    R53HostedZoneDeletionStateCode.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "STARTED"}))
    RebootInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    RebootInstanceRequest.type = Types::RebootInstanceRequest
    RebootInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    RebootInstanceResult.type = Types::RebootInstanceResult
    RebootRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    RebootRelationalDatabaseRequest.type = Types::RebootRelationalDatabaseRequest
    RebootRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    RebootRelationalDatabaseResult.type = Types::RebootRelationalDatabaseResult
    RecordState.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "Started"}))
    RecordState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    RecordState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    Region.add_member(:continent_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "continentCode"))
    Region.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Region.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "displayName"))
    Region.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "name"))
    Region.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "availabilityZones"))
    Region.add_member(:relational_database_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "relationalDatabaseAvailabilityZones"))
    Region.type = Types::Region
    RegionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member")
    RegionName.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    RegionName.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    RegionName.add_member(:us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    RegionName.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    RegionName.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    RegionName.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    RegionName.add_member(:eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_3", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    RegionName.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    RegionName.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    RegionName.add_member(:ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTH_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    RegionName.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    RegionName.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    RegionName.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    RegionName.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    RegionName.add_member(:eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_NORTH_1", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    RegionName.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    RegionSetupInProgressException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    RegionSetupInProgressException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    RegionSetupInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RegionSetupInProgressException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    RegionSetupInProgressException.type = Types::RegionSetupInProgressException
    RegisterContainerImageRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterContainerImageRequest.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerLabel, name: "label", traits: {"smithy.api#required" => {}}))
    RegisterContainerImageRequest.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "digest", traits: {"smithy.api#required" => {}}))
    RegisterContainerImageRequest.type = Types::RegisterContainerImageRequest
    RegisterContainerImageResult.add_member(:container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImage, name: "containerImage"))
    RegisterContainerImageResult.type = Types::RegisterContainerImageResult
    RegisteredDomainDelegationInfo.add_member(:name_servers_update_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NameServersUpdateState, name: "nameServersUpdateState"))
    RegisteredDomainDelegationInfo.add_member(:r53_hosted_zone_deletion_state, ::Smithy::Schema::Shapes::MemberShape.new(target: R53HostedZoneDeletionState, name: "r53HostedZoneDeletionState"))
    RegisteredDomainDelegationInfo.type = Types::RegisteredDomainDelegationInfo
    RelationalDatabase.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    RelationalDatabase.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    RelationalDatabase.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    RelationalDatabase.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    RelationalDatabase.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    RelationalDatabase.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    RelationalDatabase.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    RelationalDatabase.add_member(:relational_database_blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "relationalDatabaseBlueprintId"))
    RelationalDatabase.add_member(:relational_database_bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "relationalDatabaseBundleId"))
    RelationalDatabase.add_member(:master_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "masterDatabaseName"))
    RelationalDatabase.add_member(:hardware, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseHardware, name: "hardware"))
    RelationalDatabase.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "state"))
    RelationalDatabase.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "secondaryAvailabilityZone"))
    RelationalDatabase.add_member(:backup_retention_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "backupRetentionEnabled"))
    RelationalDatabase.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedRelationalDatabaseValues, name: "pendingModifiedValues"))
    RelationalDatabase.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "engine"))
    RelationalDatabase.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "engineVersion"))
    RelationalDatabase.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "latestRestorableTime"))
    RelationalDatabase.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "masterUsername"))
    RelationalDatabase.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parameterApplyStatus"))
    RelationalDatabase.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "preferredBackupWindow"))
    RelationalDatabase.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "preferredMaintenanceWindow"))
    RelationalDatabase.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "publiclyAccessible"))
    RelationalDatabase.add_member(:master_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseEndpoint, name: "masterEndpoint"))
    RelationalDatabase.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActionList, name: "pendingMaintenanceActions"))
    RelationalDatabase.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "caCertificateIdentifier"))
    RelationalDatabase.type = Types::RelationalDatabase
    RelationalDatabaseBlueprint.add_member(:blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "blueprintId"))
    RelationalDatabaseBlueprint.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseEngine, name: "engine"))
    RelationalDatabaseBlueprint.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "engineVersion"))
    RelationalDatabaseBlueprint.add_member(:engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "engineDescription"))
    RelationalDatabaseBlueprint.add_member(:engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "engineVersionDescription"))
    RelationalDatabaseBlueprint.add_member(:is_engine_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isEngineDefault"))
    RelationalDatabaseBlueprint.type = Types::RelationalDatabaseBlueprint
    RelationalDatabaseBlueprintList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseBlueprint, name: "member")
    RelationalDatabaseBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bundleId"))
    RelationalDatabaseBundle.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    RelationalDatabaseBundle.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "price"))
    RelationalDatabaseBundle.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "ramSizeInGb"))
    RelationalDatabaseBundle.add_member(:disk_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "diskSizeInGb"))
    RelationalDatabaseBundle.add_member(:transfer_per_month_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "transferPerMonthInGb"))
    RelationalDatabaseBundle.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpuCount"))
    RelationalDatabaseBundle.add_member(:is_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isEncrypted"))
    RelationalDatabaseBundle.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isActive"))
    RelationalDatabaseBundle.type = Types::RelationalDatabaseBundle
    RelationalDatabaseBundleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseBundle, name: "member")
    RelationalDatabaseEndpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "port"))
    RelationalDatabaseEndpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "address"))
    RelationalDatabaseEndpoint.type = Types::RelationalDatabaseEndpoint
    RelationalDatabaseEngine.add_member(:mysql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYSQL", traits: {"smithy.api#enumValue" => "mysql"}))
    RelationalDatabaseEvent.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resource"))
    RelationalDatabaseEvent.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    RelationalDatabaseEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RelationalDatabaseEvent.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "eventCategories"))
    RelationalDatabaseEvent.type = Types::RelationalDatabaseEvent
    RelationalDatabaseEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseEvent, name: "member")
    RelationalDatabaseHardware.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpuCount"))
    RelationalDatabaseHardware.add_member(:disk_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "diskSizeInGb"))
    RelationalDatabaseHardware.add_member(:ram_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "ramSizeInGb"))
    RelationalDatabaseHardware.type = Types::RelationalDatabaseHardware
    RelationalDatabaseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabase, name: "member")
    RelationalDatabaseMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPUUtilization", traits: {"smithy.api#enumValue" => "CPUUtilization"}))
    RelationalDatabaseMetricName.add_member(:database_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DatabaseConnections", traits: {"smithy.api#enumValue" => "DatabaseConnections"}))
    RelationalDatabaseMetricName.add_member(:disk_queue_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskQueueDepth", traits: {"smithy.api#enumValue" => "DiskQueueDepth"}))
    RelationalDatabaseMetricName.add_member(:free_storage_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FreeStorageSpace", traits: {"smithy.api#enumValue" => "FreeStorageSpace"}))
    RelationalDatabaseMetricName.add_member(:network_receive_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkReceiveThroughput", traits: {"smithy.api#enumValue" => "NetworkReceiveThroughput"}))
    RelationalDatabaseMetricName.add_member(:network_transmit_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkTransmitThroughput", traits: {"smithy.api#enumValue" => "NetworkTransmitThroughput"}))
    RelationalDatabaseParameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "allowedValues"))
    RelationalDatabaseParameter.add_member(:apply_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "applyMethod"))
    RelationalDatabaseParameter.add_member(:apply_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "applyType"))
    RelationalDatabaseParameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dataType"))
    RelationalDatabaseParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    RelationalDatabaseParameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isModifiable"))
    RelationalDatabaseParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parameterName"))
    RelationalDatabaseParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parameterValue"))
    RelationalDatabaseParameter.type = Types::RelationalDatabaseParameter
    RelationalDatabaseParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseParameter, name: "member")
    RelationalDatabasePasswordVersion.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    RelationalDatabasePasswordVersion.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREVIOUS", traits: {"smithy.api#enumValue" => "PREVIOUS"}))
    RelationalDatabasePasswordVersion.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RelationalDatabaseSnapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    RelationalDatabaseSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    RelationalDatabaseSnapshot.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    RelationalDatabaseSnapshot.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    RelationalDatabaseSnapshot.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    RelationalDatabaseSnapshot.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    RelationalDatabaseSnapshot.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    RelationalDatabaseSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "engine"))
    RelationalDatabaseSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "engineVersion"))
    RelationalDatabaseSnapshot.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGb"))
    RelationalDatabaseSnapshot.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "state"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromRelationalDatabaseName"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fromRelationalDatabaseArn"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fromRelationalDatabaseBundleId"))
    RelationalDatabaseSnapshot.add_member(:from_relational_database_blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fromRelationalDatabaseBlueprintId"))
    RelationalDatabaseSnapshot.type = Types::RelationalDatabaseSnapshot
    RelationalDatabaseSnapshotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseSnapshot, name: "member")
    ReleaseStaticIpRequest.add_member(:static_ip_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "staticIpName", traits: {"smithy.api#required" => {}}))
    ReleaseStaticIpRequest.type = Types::ReleaseStaticIpRequest
    ReleaseStaticIpResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    ReleaseStaticIpResult.type = Types::ReleaseStaticIpResult
    RenewalStatus.add_member(:pending_auto_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingAutoRenewal", traits: {"smithy.api#enumValue" => "PendingAutoRenewal"}))
    RenewalStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "PendingValidation"}))
    RenewalStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    RenewalStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    RenewalSummary.add_member(:domain_validation_records, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationRecordList, name: "domainValidationRecords"))
    RenewalSummary.add_member(:renewal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalStatus, name: "renewalStatus"))
    RenewalSummary.add_member(:renewal_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalStatusReason, name: "renewalStatusReason"))
    RenewalSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "updatedAt"))
    RenewalSummary.type = Types::RenewalSummary
    ResetDistributionCacheRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName"))
    ResetDistributionCacheRequest.type = Types::ResetDistributionCacheRequest
    ResetDistributionCacheResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    ResetDistributionCacheResult.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createTime"))
    ResetDistributionCacheResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    ResetDistributionCacheResult.type = Types::ResetDistributionCacheResult
    ResourceBucketAccess.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Allow", traits: {"smithy.api#enumValue" => "allow"}))
    ResourceBucketAccess.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deny", traits: {"smithy.api#enumValue" => "deny"}))
    ResourceBudgetEstimate.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    ResourceBudgetEstimate.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceBudgetEstimate.add_member(:cost_estimates, ::Smithy::Schema::Shapes::MemberShape.new(target: CostEstimates, name: "costEstimates"))
    ResourceBudgetEstimate.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "startTime"))
    ResourceBudgetEstimate.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "endTime"))
    ResourceBudgetEstimate.type = Types::ResourceBudgetEstimate
    ResourceLocation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone"))
    ResourceLocation.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "regionName"))
    ResourceLocation.type = Types::ResourceLocation
    ResourceNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "member")
    ResourceReceivingAccess.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    ResourceReceivingAccess.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceType"))
    ResourceReceivingAccess.type = Types::ResourceReceivingAccess
    ResourceRecord.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ResourceRecord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    ResourceRecord.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ResourceRecord.type = Types::ResourceRecord
    ResourceType.add_member(:container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContainerService", traits: {"smithy.api#enumValue" => "ContainerService"}))
    ResourceType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Instance", traits: {"smithy.api#enumValue" => "Instance"}))
    ResourceType.add_member(:static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StaticIp", traits: {"smithy.api#enumValue" => "StaticIp"}))
    ResourceType.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KeyPair", traits: {"smithy.api#enumValue" => "KeyPair"}))
    ResourceType.add_member(:instance_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceSnapshot", traits: {"smithy.api#enumValue" => "InstanceSnapshot"}))
    ResourceType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Domain", traits: {"smithy.api#enumValue" => "Domain"}))
    ResourceType.add_member(:peered_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PeeredVpc", traits: {"smithy.api#enumValue" => "PeeredVpc"}))
    ResourceType.add_member(:load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoadBalancer", traits: {"smithy.api#enumValue" => "LoadBalancer"}))
    ResourceType.add_member(:load_balancer_tls_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoadBalancerTlsCertificate", traits: {"smithy.api#enumValue" => "LoadBalancerTlsCertificate"}))
    ResourceType.add_member(:disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disk", traits: {"smithy.api#enumValue" => "Disk"}))
    ResourceType.add_member(:disk_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskSnapshot", traits: {"smithy.api#enumValue" => "DiskSnapshot"}))
    ResourceType.add_member(:relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RelationalDatabase", traits: {"smithy.api#enumValue" => "RelationalDatabase"}))
    ResourceType.add_member(:relational_database_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RelationalDatabaseSnapshot", traits: {"smithy.api#enumValue" => "RelationalDatabaseSnapshot"}))
    ResourceType.add_member(:export_snapshot_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExportSnapshotRecord", traits: {"smithy.api#enumValue" => "ExportSnapshotRecord"}))
    ResourceType.add_member(:cloud_formation_stack_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFormationStackRecord", traits: {"smithy.api#enumValue" => "CloudFormationStackRecord"}))
    ResourceType.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Alarm", traits: {"smithy.api#enumValue" => "Alarm"}))
    ResourceType.add_member(:contact_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContactMethod", traits: {"smithy.api#enumValue" => "ContactMethod"}))
    ResourceType.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Distribution", traits: {"smithy.api#enumValue" => "Distribution"}))
    ResourceType.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Certificate", traits: {"smithy.api#enumValue" => "Certificate"}))
    ResourceType.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bucket", traits: {"smithy.api#enumValue" => "Bucket"}))
    ResourcesBudgetEstimate.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceBudgetEstimate, name: "member")
    SendContactMethodVerificationRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactMethodVerificationProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    SendContactMethodVerificationRequest.type = Types::SendContactMethodVerificationRequest
    SendContactMethodVerificationResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    SendContactMethodVerificationResult.type = Types::SendContactMethodVerificationResult
    ServiceException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    ServiceException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    ServiceException.type = Types::ServiceException
    Session.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    Session.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "url"))
    Session.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isPrimary"))
    Session.type = Types::Session
    Sessions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Session, name: "member")
    SetIpAddressTypeRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    SetIpAddressTypeRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    SetIpAddressTypeRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    SetIpAddressTypeRequest.add_member(:accept_bundle_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "acceptBundleUpdate"))
    SetIpAddressTypeRequest.type = Types::SetIpAddressTypeRequest
    SetIpAddressTypeResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    SetIpAddressTypeResult.type = Types::SetIpAddressTypeResult
    SetResourceAccessForBucketRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    SetResourceAccessForBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    SetResourceAccessForBucketRequest.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceBucketAccess, name: "access", traits: {"smithy.api#required" => {}}))
    SetResourceAccessForBucketRequest.type = Types::SetResourceAccessForBucketRequest
    SetResourceAccessForBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    SetResourceAccessForBucketResult.type = Types::SetResourceAccessForBucketResult
    SetupDomainNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SetupDomainName, name: "member")
    SetupExecutionDetails.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "command"))
    SetupExecutionDetails.add_member(:date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "dateTime"))
    SetupExecutionDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    SetupExecutionDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupStatus, name: "status"))
    SetupExecutionDetails.add_member(:standard_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "standardError"))
    SetupExecutionDetails.add_member(:standard_output, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "standardOutput"))
    SetupExecutionDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    SetupExecutionDetails.type = Types::SetupExecutionDetails
    SetupExecutionDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SetupExecutionDetails, name: "member")
    SetupHistory.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "operationId"))
    SetupHistory.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupRequest, name: "request"))
    SetupHistory.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupHistoryResource, name: "resource"))
    SetupHistory.add_member(:execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupExecutionDetailsList, name: "executionDetails"))
    SetupHistory.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupStatus, name: "status"))
    SetupHistory.type = Types::SetupHistory
    SetupHistoryResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    SetupHistoryResource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    SetupHistoryResource.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    SetupHistoryResource.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    SetupHistoryResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    SetupHistoryResource.type = Types::SetupHistoryResource
    SetupInstanceHttpsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "emailAddress", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupDomainNameList, name: "domainNames", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.add_member(:certificate_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateProvider, name: "certificateProvider", traits: {"smithy.api#required" => {}}))
    SetupInstanceHttpsRequest.type = Types::SetupInstanceHttpsRequest
    SetupInstanceHttpsResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    SetupInstanceHttpsResult.type = Types::SetupInstanceHttpsResult
    SetupRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName"))
    SetupRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupDomainNameList, name: "domainNames"))
    SetupRequest.add_member(:certificate_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateProvider, name: "certificateProvider"))
    SetupRequest.type = Types::SetupRequest
    SetupStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "succeeded"}))
    SetupStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "failed"}))
    SetupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "inProgress"}))
    StartGUISessionRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    StartGUISessionRequest.type = Types::StartGUISessionRequest
    StartGUISessionResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    StartGUISessionResult.type = Types::StartGUISessionResult
    StartInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    StartInstanceRequest.type = Types::StartInstanceRequest
    StartInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    StartInstanceResult.type = Types::StartInstanceResult
    StartRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    StartRelationalDatabaseRequest.type = Types::StartRelationalDatabaseRequest
    StartRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    StartRelationalDatabaseResult.type = Types::StartRelationalDatabaseResult
    StaticIp.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    StaticIp.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    StaticIp.add_member(:support_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "supportCode"))
    StaticIp.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "createdAt"))
    StaticIp.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location"))
    StaticIp.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    StaticIp.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "ipAddress"))
    StaticIp.add_member(:attached_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "attachedTo"))
    StaticIp.add_member(:is_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAttached"))
    StaticIp.type = Types::StaticIp
    StaticIpList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StaticIp, name: "member")
    Status.add_member(:start_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartExpired", traits: {"smithy.api#enumValue" => "startExpired"}))
    Status.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotStarted", traits: {"smithy.api#enumValue" => "notStarted"}))
    Status.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Started", traits: {"smithy.api#enumValue" => "started"}))
    Status.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Starting", traits: {"smithy.api#enumValue" => "starting"}))
    Status.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "stopped"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "stopping"}))
    Status.add_member(:setting_up_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SettingUpInstance", traits: {"smithy.api#enumValue" => "settingUpInstance"}))
    Status.add_member(:failed_instance_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedInstanceCreation", traits: {"smithy.api#enumValue" => "failedInstanceCreation"}))
    Status.add_member(:failed_starting_gui_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedStartingGUISession", traits: {"smithy.api#enumValue" => "failedStartingGUISession"}))
    Status.add_member(:failed_stopping_gui_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedStoppingGUISession", traits: {"smithy.api#enumValue" => "failedStoppingGUISession"}))
    StatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    StatusType.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    StopGUISessionRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    StopGUISessionRequest.type = Types::StopGUISessionRequest
    StopGUISessionResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    StopGUISessionResult.type = Types::StopGUISessionResult
    StopInstanceOnIdleRequest.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "threshold"))
    StopInstanceOnIdleRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "duration"))
    StopInstanceOnIdleRequest.type = Types::StopInstanceOnIdleRequest
    StopInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    StopInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "force"))
    StopInstanceRequest.type = Types::StopInstanceRequest
    StopInstanceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    StopInstanceResult.type = Types::StopInstanceResult
    StopRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    StopRelationalDatabaseRequest.add_member(:relational_database_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseSnapshotName"))
    StopRelationalDatabaseRequest.type = Types::StopRelationalDatabaseRequest
    StopRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    StopRelationalDatabaseResult.type = Types::StopRelationalDatabaseResult
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    SubjectAlternativeNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    TagResourceResult.type = Types::TagResourceResult
    TestAlarmRequest.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "alarmName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestAlarmRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmState, name: "state", traits: {"smithy.api#httpQuery" => "state", "smithy.api#required" => {}}))
    TestAlarmRequest.type = Types::TestAlarmRequest
    TestAlarmResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    TestAlarmResult.type = Types::TestAlarmResult
    TimePeriod.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "start"))
    TimePeriod.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoDate, name: "end"))
    TimePeriod.type = Types::TimePeriod
    TreatMissingData.add_member(:breaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Breaching", traits: {"smithy.api#enumValue" => "breaching"}))
    TreatMissingData.add_member(:not_breaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotBreaching", traits: {"smithy.api#enumValue" => "notBreaching"}))
    TreatMissingData.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "ignore"}))
    TreatMissingData.add_member(:missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Missing", traits: {"smithy.api#enumValue" => "missing"}))
    UnauthenticatedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    UnauthenticatedException.add_member(:docs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "docs"))
    UnauthenticatedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnauthenticatedException.add_member(:tip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tip"))
    UnauthenticatedException.type = Types::UnauthenticatedException
    UnpeerVpcRequest.type = Types::UnpeerVpcRequest
    UnpeerVpcResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    UnpeerVpcResult.type = Types::UnpeerVpcResult
    UntagResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateBucketBundleRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    UpdateBucketBundleRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bundleId", traits: {"smithy.api#required" => {}}))
    UpdateBucketBundleRequest.type = Types::UpdateBucketBundleRequest
    UpdateBucketBundleResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UpdateBucketBundleResult.type = Types::UpdateBucketBundleResult
    UpdateBucketRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    UpdateBucketRequest.add_member(:access_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRules, name: "accessRules"))
    UpdateBucketRequest.add_member(:versioning, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "versioning"))
    UpdateBucketRequest.add_member(:readonly_access_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdList, name: "readonlyAccessAccounts"))
    UpdateBucketRequest.add_member(:access_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketAccessLogConfig, name: "accessLogConfig"))
    UpdateBucketRequest.type = Types::UpdateBucketRequest
    UpdateBucketResult.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "bucket"))
    UpdateBucketResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UpdateBucketResult.type = Types::UpdateBucketResult
    UpdateContainerServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceName, name: "serviceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContainerServiceRequest.add_member(:power, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePowerName, name: "power"))
    UpdateContainerServiceRequest.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServiceScale, name: "scale"))
    UpdateContainerServiceRequest.add_member(:is_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDisabled"))
    UpdateContainerServiceRequest.add_member(:public_domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerServicePublicDomains, name: "publicDomainNames"))
    UpdateContainerServiceRequest.add_member(:private_registry_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateRegistryAccessRequest, name: "privateRegistryAccess"))
    UpdateContainerServiceRequest.type = Types::UpdateContainerServiceRequest
    UpdateContainerServiceResult.add_member(:container_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerService, name: "containerService"))
    UpdateContainerServiceResult.type = Types::UpdateContainerServiceResult
    UpdateDistributionBundleRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName"))
    UpdateDistributionBundleRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bundleId"))
    UpdateDistributionBundleRequest.type = Types::UpdateDistributionBundleRequest
    UpdateDistributionBundleResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    UpdateDistributionBundleResult.type = Types::UpdateDistributionBundleResult
    UpdateDistributionRequest.add_member(:distribution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "distributionName", traits: {"smithy.api#required" => {}}))
    UpdateDistributionRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: InputOrigin, name: "origin"))
    UpdateDistributionRequest.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, name: "defaultCacheBehavior"))
    UpdateDistributionRequest.add_member(:cache_behavior_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSettings, name: "cacheBehaviorSettings"))
    UpdateDistributionRequest.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviorList, name: "cacheBehaviors"))
    UpdateDistributionRequest.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isEnabled"))
    UpdateDistributionRequest.add_member(:viewer_minimum_tls_protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewerMinimumTlsProtocolVersionEnum, name: "viewerMinimumTlsProtocolVersion"))
    UpdateDistributionRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "certificateName"))
    UpdateDistributionRequest.add_member(:use_default_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useDefaultCertificate"))
    UpdateDistributionRequest.type = Types::UpdateDistributionRequest
    UpdateDistributionResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    UpdateDistributionResult.type = Types::UpdateDistributionResult
    UpdateDomainEntryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainEntryRequest.add_member(:domain_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntry, name: "domainEntry", traits: {"smithy.api#required" => {}}))
    UpdateDomainEntryRequest.type = Types::UpdateDomainEntryRequest
    UpdateDomainEntryResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UpdateDomainEntryResult.type = Types::UpdateDomainEntryResult
    UpdateInstanceMetadataOptionsRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTokens, name: "httpTokens"))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpoint, name: "httpEndpoint"))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "httpPutResponseHopLimit"))
    UpdateInstanceMetadataOptionsRequest.add_member(:http_protocol_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpProtocolIpv6, name: "httpProtocolIpv6"))
    UpdateInstanceMetadataOptionsRequest.type = Types::UpdateInstanceMetadataOptionsRequest
    UpdateInstanceMetadataOptionsResult.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation"))
    UpdateInstanceMetadataOptionsResult.type = Types::UpdateInstanceMetadataOptionsResult
    UpdateLoadBalancerAttributeRequest.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "loadBalancerName", traits: {"smithy.api#required" => {}}))
    UpdateLoadBalancerAttributeRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    UpdateLoadBalancerAttributeRequest.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMax256, name: "attributeValue", traits: {"smithy.api#required" => {}}))
    UpdateLoadBalancerAttributeRequest.type = Types::UpdateLoadBalancerAttributeRequest
    UpdateLoadBalancerAttributeResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UpdateLoadBalancerAttributeResult.type = Types::UpdateLoadBalancerAttributeResult
    UpdateRelationalDatabaseParametersRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateRelationalDatabaseParametersRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseParameterList, name: "parameters", traits: {"smithy.api#required" => {}}))
    UpdateRelationalDatabaseParametersRequest.type = Types::UpdateRelationalDatabaseParametersRequest
    UpdateRelationalDatabaseParametersResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UpdateRelationalDatabaseParametersResult.type = Types::UpdateRelationalDatabaseParametersResult
    UpdateRelationalDatabaseRequest.add_member(:relational_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "relationalDatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateRelationalDatabaseRequest.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "masterUserPassword"))
    UpdateRelationalDatabaseRequest.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "rotateMasterUserPassword"))
    UpdateRelationalDatabaseRequest.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "preferredBackupWindow"))
    UpdateRelationalDatabaseRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "preferredMaintenanceWindow"))
    UpdateRelationalDatabaseRequest.add_member(:enable_backup_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableBackupRetention"))
    UpdateRelationalDatabaseRequest.add_member(:disable_backup_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableBackupRetention"))
    UpdateRelationalDatabaseRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "publiclyAccessible"))
    UpdateRelationalDatabaseRequest.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "applyImmediately"))
    UpdateRelationalDatabaseRequest.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "caCertificateIdentifier"))
    UpdateRelationalDatabaseRequest.add_member(:relational_database_blueprint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "relationalDatabaseBlueprintId"))
    UpdateRelationalDatabaseRequest.type = Types::UpdateRelationalDatabaseRequest
    UpdateRelationalDatabaseResult.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "operations"))
    UpdateRelationalDatabaseResult.type = Types::UpdateRelationalDatabaseResult
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv11_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv11_2016", traits: {"smithy.api#enumValue" => "TLSv1.1_2016"}))
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv12_2018, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv12_2018", traits: {"smithy.api#enumValue" => "TLSv1.2_2018"}))
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv12_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv12_2019", traits: {"smithy.api#enumValue" => "TLSv1.2_2019"}))
    ViewerMinimumTlsProtocolVersionEnum.add_member(:tl_sv12_2021, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv12_2021", traits: {"smithy.api#enumValue" => "TLSv1.2_2021"}))
    SetupHistoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SetupHistory, name: "member")

    Lightsail20161128 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lightsail#Lightsail_20161128"
      service.name = "Lightsail20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Lightsail", "arnNamespace" => "lightsail", "cloudFormationName" => "Lightsail", "cloudTrailEventSource" => "lightsail.amazonaws.com", "endpointPrefix" => "lightsail"}, "aws.auth#sigv4" => {"name" => "lightsail"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Lightsail"}
      service.add_operation(:allocate_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AllocateStaticIp"
        operation.name = "AllocateStaticIp"
        operation.input = AllocateStaticIpRequest
        operation.output = AllocateStaticIpResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AllocateStaticIp", "code" => 200}}
      end)
      service.add_operation(:attach_certificate_to_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachCertificateToDistribution"
        operation.name = "AttachCertificateToDistribution"
        operation.input = AttachCertificateToDistributionRequest
        operation.output = AttachCertificateToDistributionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachCertificateToDistribution", "code" => 200}}
      end)
      service.add_operation(:attach_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachDisk"
        operation.name = "AttachDisk"
        operation.input = AttachDiskRequest
        operation.output = AttachDiskResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachDisk", "code" => 200}}
      end)
      service.add_operation(:attach_instances_to_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachInstancesToLoadBalancer"
        operation.name = "AttachInstancesToLoadBalancer"
        operation.input = AttachInstancesToLoadBalancerRequest
        operation.output = AttachInstancesToLoadBalancerResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachInstancesToLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:attach_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachLoadBalancerTlsCertificate"
        operation.name = "AttachLoadBalancerTlsCertificate"
        operation.input = AttachLoadBalancerTlsCertificateRequest
        operation.output = AttachLoadBalancerTlsCertificateResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachLoadBalancerTlsCertificate", "code" => 200}}
      end)
      service.add_operation(:attach_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#AttachStaticIp"
        operation.name = "AttachStaticIp"
        operation.input = AttachStaticIpRequest
        operation.output = AttachStaticIpResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/AttachStaticIp", "code" => 200}}
      end)
      service.add_operation(:close_instance_public_ports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CloseInstancePublicPorts"
        operation.name = "CloseInstancePublicPorts"
        operation.input = CloseInstancePublicPortsRequest
        operation.output = CloseInstancePublicPortsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CloseInstancePublicPorts", "code" => 200}}
      end)
      service.add_operation(:copy_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CopySnapshot"
        operation.name = "CopySnapshot"
        operation.input = CopySnapshotRequest
        operation.output = CopySnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CopySnapshot", "code" => 200}}
      end)
      service.add_operation(:create_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateBucket"
        operation.name = "CreateBucket"
        operation.input = CreateBucketRequest
        operation.output = CreateBucketResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateBucket", "code" => 200}}
      end)
      service.add_operation(:create_bucket_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateBucketAccessKey"
        operation.name = "CreateBucketAccessKey"
        operation.input = CreateBucketAccessKeyRequest
        operation.output = CreateBucketAccessKeyResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateBucketAccessKey", "code" => 200}}
      end)
      service.add_operation(:create_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateCertificate"
        operation.name = "CreateCertificate"
        operation.input = CreateCertificateRequest
        operation.output = CreateCertificateResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateCertificate", "code" => 200}}
      end)
      service.add_operation(:create_cloud_formation_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateCloudFormationStack"
        operation.name = "CreateCloudFormationStack"
        operation.input = CreateCloudFormationStackRequest
        operation.output = CreateCloudFormationStackResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateCloudFormationStack", "code" => 200}}
      end)
      service.add_operation(:create_contact_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContactMethod"
        operation.name = "CreateContactMethod"
        operation.input = CreateContactMethodRequest
        operation.output = CreateContactMethodResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateContactMethod", "code" => 200}}
      end)
      service.add_operation(:create_container_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContainerService"
        operation.name = "CreateContainerService"
        operation.input = CreateContainerServiceRequest
        operation.output = CreateContainerServiceResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-services", "code" => 201}}
      end)
      service.add_operation(:create_container_service_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContainerServiceDeployment"
        operation.name = "CreateContainerServiceDeployment"
        operation.input = CreateContainerServiceDeploymentRequest
        operation.output = CreateContainerServiceDeploymentResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/deployments", "code" => 201}}
      end)
      service.add_operation(:create_container_service_registry_login, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateContainerServiceRegistryLogin"
        operation.name = "CreateContainerServiceRegistryLogin"
        operation.input = CreateContainerServiceRegistryLoginRequest
        operation.output = CreateContainerServiceRegistryLoginResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-registry-login", "code" => 200}}
      end)
      service.add_operation(:create_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDisk"
        operation.name = "CreateDisk"
        operation.input = CreateDiskRequest
        operation.output = CreateDiskResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDisk", "code" => 200}}
      end)
      service.add_operation(:create_disk_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDiskFromSnapshot"
        operation.name = "CreateDiskFromSnapshot"
        operation.input = CreateDiskFromSnapshotRequest
        operation.output = CreateDiskFromSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDiskFromSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_disk_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDiskSnapshot"
        operation.name = "CreateDiskSnapshot"
        operation.input = CreateDiskSnapshotRequest
        operation.output = CreateDiskSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDiskSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDistribution"
        operation.name = "CreateDistribution"
        operation.input = CreateDistributionRequest
        operation.output = CreateDistributionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDistribution", "code" => 200}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = CreateDomainRequest
        operation.output = CreateDomainResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDomain", "code" => 200}}
      end)
      service.add_operation(:create_domain_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateDomainEntry"
        operation.name = "CreateDomainEntry"
        operation.input = CreateDomainEntryRequest
        operation.output = CreateDomainEntryResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateDomainEntry", "code" => 200}}
      end)
      service.add_operation(:create_gui_session_access_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateGUISessionAccessDetails"
        operation.name = "CreateGUISessionAccessDetails"
        operation.input = CreateGUISessionAccessDetailsRequest
        operation.output = CreateGUISessionAccessDetailsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/create-gui-session-access-details", "code" => 200}}
      end)
      service.add_operation(:create_instance_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateInstanceSnapshot"
        operation.name = "CreateInstanceSnapshot"
        operation.input = CreateInstanceSnapshotRequest
        operation.output = CreateInstanceSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateInstanceSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateInstances"
        operation.name = "CreateInstances"
        operation.input = CreateInstancesRequest
        operation.output = CreateInstancesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateInstances", "code" => 200}}
      end)
      service.add_operation(:create_instances_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateInstancesFromSnapshot"
        operation.name = "CreateInstancesFromSnapshot"
        operation.input = CreateInstancesFromSnapshotRequest
        operation.output = CreateInstancesFromSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateInstancesFromSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateKeyPair"
        operation.name = "CreateKeyPair"
        operation.input = CreateKeyPairRequest
        operation.output = CreateKeyPairResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateKeyPair", "code" => 200}}
      end)
      service.add_operation(:create_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateLoadBalancer"
        operation.name = "CreateLoadBalancer"
        operation.input = CreateLoadBalancerRequest
        operation.output = CreateLoadBalancerResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:create_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateLoadBalancerTlsCertificate"
        operation.name = "CreateLoadBalancerTlsCertificate"
        operation.input = CreateLoadBalancerTlsCertificateRequest
        operation.output = CreateLoadBalancerTlsCertificateResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateLoadBalancerTlsCertificate", "code" => 200}}
      end)
      service.add_operation(:create_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateRelationalDatabase"
        operation.name = "CreateRelationalDatabase"
        operation.input = CreateRelationalDatabaseRequest
        operation.output = CreateRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:create_relational_database_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateRelationalDatabaseFromSnapshot"
        operation.name = "CreateRelationalDatabaseFromSnapshot"
        operation.input = CreateRelationalDatabaseFromSnapshotRequest
        operation.output = CreateRelationalDatabaseFromSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateRelationalDatabaseFromSnapshot", "code" => 200}}
      end)
      service.add_operation(:create_relational_database_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#CreateRelationalDatabaseSnapshot"
        operation.name = "CreateRelationalDatabaseSnapshot"
        operation.input = CreateRelationalDatabaseSnapshotRequest
        operation.output = CreateRelationalDatabaseSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/CreateRelationalDatabaseSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteAlarm"
        operation.name = "DeleteAlarm"
        operation.input = DeleteAlarmRequest
        operation.output = DeleteAlarmResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ls/api/2016-11-28/DeleteAlarm/{alarmName}", "code" => 200}}
      end)
      service.add_operation(:delete_auto_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteAutoSnapshot"
        operation.name = "DeleteAutoSnapshot"
        operation.input = DeleteAutoSnapshotRequest
        operation.output = DeleteAutoSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteAutoSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteBucket"
        operation.name = "DeleteBucket"
        operation.input = DeleteBucketRequest
        operation.output = DeleteBucketResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteBucket", "code" => 200}}
      end)
      service.add_operation(:delete_bucket_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteBucketAccessKey"
        operation.name = "DeleteBucketAccessKey"
        operation.input = DeleteBucketAccessKeyRequest
        operation.output = DeleteBucketAccessKeyResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteBucketAccessKey", "code" => 200}}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = DeleteCertificateRequest
        operation.output = DeleteCertificateResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteCertificate", "code" => 200}}
      end)
      service.add_operation(:delete_contact_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteContactMethod"
        operation.name = "DeleteContactMethod"
        operation.input = DeleteContactMethodRequest
        operation.output = DeleteContactMethodResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteContactMethod", "code" => 200}}
      end)
      service.add_operation(:delete_container_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteContainerImage"
        operation.name = "DeleteContainerImage"
        operation.input = DeleteContainerImageRequest
        operation.output = DeleteContainerImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/images/{image}", "code" => 204}}
      end)
      service.add_operation(:delete_container_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteContainerService"
        operation.name = "DeleteContainerService"
        operation.input = DeleteContainerServiceRequest
        operation.output = DeleteContainerServiceResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}", "code" => 204}}
      end)
      service.add_operation(:delete_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDisk"
        operation.name = "DeleteDisk"
        operation.input = DeleteDiskRequest
        operation.output = DeleteDiskResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDisk", "code" => 200}}
      end)
      service.add_operation(:delete_disk_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDiskSnapshot"
        operation.name = "DeleteDiskSnapshot"
        operation.input = DeleteDiskSnapshotRequest
        operation.output = DeleteDiskSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDiskSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDistribution"
        operation.name = "DeleteDistribution"
        operation.input = DeleteDistributionRequest
        operation.output = DeleteDistributionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDistribution", "code" => 200}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainRequest
        operation.output = DeleteDomainResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDomain", "code" => 200}}
      end)
      service.add_operation(:delete_domain_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteDomainEntry"
        operation.name = "DeleteDomainEntry"
        operation.input = DeleteDomainEntryRequest
        operation.output = DeleteDomainEntryResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteDomainEntry", "code" => 200}}
      end)
      service.add_operation(:delete_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = DeleteInstanceRequest
        operation.output = DeleteInstanceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteInstance", "code" => 200}}
      end)
      service.add_operation(:delete_instance_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteInstanceSnapshot"
        operation.name = "DeleteInstanceSnapshot"
        operation.input = DeleteInstanceSnapshotRequest
        operation.output = DeleteInstanceSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteInstanceSnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteKeyPair"
        operation.name = "DeleteKeyPair"
        operation.input = DeleteKeyPairRequest
        operation.output = DeleteKeyPairResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteKeyPair", "code" => 200}}
      end)
      service.add_operation(:delete_known_host_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteKnownHostKeys"
        operation.name = "DeleteKnownHostKeys"
        operation.input = DeleteKnownHostKeysRequest
        operation.output = DeleteKnownHostKeysResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteKnownHostKeys", "code" => 200}}
      end)
      service.add_operation(:delete_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteLoadBalancer"
        operation.name = "DeleteLoadBalancer"
        operation.input = DeleteLoadBalancerRequest
        operation.output = DeleteLoadBalancerResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:delete_load_balancer_tls_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteLoadBalancerTlsCertificate"
        operation.name = "DeleteLoadBalancerTlsCertificate"
        operation.input = DeleteLoadBalancerTlsCertificateRequest
        operation.output = DeleteLoadBalancerTlsCertificateResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteLoadBalancerTlsCertificate", "code" => 200}}
      end)
      service.add_operation(:delete_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteRelationalDatabase"
        operation.name = "DeleteRelationalDatabase"
        operation.input = DeleteRelationalDatabaseRequest
        operation.output = DeleteRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:delete_relational_database_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DeleteRelationalDatabaseSnapshot"
        operation.name = "DeleteRelationalDatabaseSnapshot"
        operation.input = DeleteRelationalDatabaseSnapshotRequest
        operation.output = DeleteRelationalDatabaseSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DeleteRelationalDatabaseSnapshot", "code" => 200}}
      end)
      service.add_operation(:detach_certificate_from_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachCertificateFromDistribution"
        operation.name = "DetachCertificateFromDistribution"
        operation.input = DetachCertificateFromDistributionRequest
        operation.output = DetachCertificateFromDistributionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachCertificateFromDistribution", "code" => 200}}
      end)
      service.add_operation(:detach_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachDisk"
        operation.name = "DetachDisk"
        operation.input = DetachDiskRequest
        operation.output = DetachDiskResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachDisk", "code" => 200}}
      end)
      service.add_operation(:detach_instances_from_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachInstancesFromLoadBalancer"
        operation.name = "DetachInstancesFromLoadBalancer"
        operation.input = DetachInstancesFromLoadBalancerRequest
        operation.output = DetachInstancesFromLoadBalancerResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachInstancesFromLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:detach_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DetachStaticIp"
        operation.name = "DetachStaticIp"
        operation.input = DetachStaticIpRequest
        operation.output = DetachStaticIpResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DetachStaticIp", "code" => 200}}
      end)
      service.add_operation(:disable_add_on, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DisableAddOn"
        operation.name = "DisableAddOn"
        operation.input = DisableAddOnRequest
        operation.output = DisableAddOnResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DisableAddOn", "code" => 200}}
      end)
      service.add_operation(:download_default_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#DownloadDefaultKeyPair"
        operation.name = "DownloadDefaultKeyPair"
        operation.input = DownloadDefaultKeyPairRequest
        operation.output = DownloadDefaultKeyPairResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/DownloadDefaultKeyPair", "code" => 200}}
      end)
      service.add_operation(:enable_add_on, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#EnableAddOn"
        operation.name = "EnableAddOn"
        operation.input = EnableAddOnRequest
        operation.output = EnableAddOnResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/EnableAddOn", "code" => 200}}
      end)
      service.add_operation(:export_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ExportSnapshot"
        operation.name = "ExportSnapshot"
        operation.input = ExportSnapshotRequest
        operation.output = ExportSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ExportSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_active_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetActiveNames"
        operation.name = "GetActiveNames"
        operation.input = GetActiveNamesRequest
        operation.output = GetActiveNamesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetActiveNames", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetActiveNamesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetAlarms"
        operation.name = "GetAlarms"
        operation.input = GetAlarmsRequest
        operation.output = GetAlarmsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/GetAlarms", "code" => 200}}
      end)
      service.add_operation(:get_auto_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetAutoSnapshots"
        operation.name = "GetAutoSnapshots"
        operation.input = GetAutoSnapshotsRequest
        operation.output = GetAutoSnapshotsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetAutoSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_blueprints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBlueprints"
        operation.name = "GetBlueprints"
        operation.input = GetBlueprintsRequest
        operation.output = GetBlueprintsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBlueprints", "code" => 200}}
      end)
      service.add_operation(:get_bucket_access_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBucketAccessKeys"
        operation.name = "GetBucketAccessKeys"
        operation.input = GetBucketAccessKeysRequest
        operation.output = GetBucketAccessKeysResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBucketAccessKeys", "code" => 200}}
      end)
      service.add_operation(:get_bucket_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBucketBundles"
        operation.name = "GetBucketBundles"
        operation.input = GetBucketBundlesRequest
        operation.output = GetBucketBundlesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBucketBundles", "code" => 200}}
      end)
      service.add_operation(:get_bucket_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBucketMetricData"
        operation.name = "GetBucketMetricData"
        operation.input = GetBucketMetricDataRequest
        operation.output = GetBucketMetricDataResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBucketMetricData", "code" => 200}}
      end)
      service.add_operation(:get_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBuckets"
        operation.name = "GetBuckets"
        operation.input = GetBucketsRequest
        operation.output = GetBucketsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBuckets", "code" => 200}}
      end)
      service.add_operation(:get_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetBundles"
        operation.name = "GetBundles"
        operation.input = GetBundlesRequest
        operation.output = GetBundlesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetBundles", "code" => 200}}
      end)
      service.add_operation(:get_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetCertificates"
        operation.name = "GetCertificates"
        operation.input = GetCertificatesRequest
        operation.output = GetCertificatesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetCertificates", "code" => 200}}
      end)
      service.add_operation(:get_cloud_formation_stack_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetCloudFormationStackRecords"
        operation.name = "GetCloudFormationStackRecords"
        operation.input = GetCloudFormationStackRecordsRequest
        operation.output = GetCloudFormationStackRecordsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetCloudFormationStackRecords", "code" => 200}}
      end)
      service.add_operation(:get_contact_methods, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContactMethods"
        operation.name = "GetContactMethods"
        operation.input = GetContactMethodsRequest
        operation.output = GetContactMethodsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/GetContactMethods", "code" => 200}}
      end)
      service.add_operation(:get_container_api_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerAPIMetadata"
        operation.name = "GetContainerAPIMetadata"
        operation.input = GetContainerAPIMetadataRequest
        operation.output = GetContainerAPIMetadataResult
        operation.errors << AccessDeniedException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-api-metadata", "code" => 200}}
      end)
      service.add_operation(:get_container_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerImages"
        operation.name = "GetContainerImages"
        operation.input = GetContainerImagesRequest
        operation.output = GetContainerImagesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/images", "code" => 200}}
      end)
      service.add_operation(:get_container_log, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerLog"
        operation.name = "GetContainerLog"
        operation.input = GetContainerLogRequest
        operation.output = GetContainerLogResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/containers/{containerName}/log", "code" => 200}}
      end)
      service.add_operation(:get_container_service_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServiceDeployments"
        operation.name = "GetContainerServiceDeployments"
        operation.input = GetContainerServiceDeploymentsRequest
        operation.output = GetContainerServiceDeploymentsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/deployments", "code" => 200}}
      end)
      service.add_operation(:get_container_service_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServiceMetricData"
        operation.name = "GetContainerServiceMetricData"
        operation.input = GetContainerServiceMetricDataRequest
        operation.output = GetContainerServiceMetricDataResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/metrics", "code" => 200}}
      end)
      service.add_operation(:get_container_service_powers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServicePowers"
        operation.name = "GetContainerServicePowers"
        operation.input = GetContainerServicePowersRequest
        operation.output = GetContainerServicePowersResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-service-powers", "code" => 200}}
      end)
      service.add_operation(:get_container_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetContainerServices"
        operation.name = "GetContainerServices"
        operation.input = GetContainerServicesRequest
        operation.output = ContainerServicesListResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/container-services", "code" => 200}}
      end)
      service.add_operation(:get_cost_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetCostEstimate"
        operation.name = "GetCostEstimate"
        operation.input = GetCostEstimateRequest
        operation.output = GetCostEstimateResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/budgettracker/getCostEstimate", "code" => 200}}
      end)
      service.add_operation(:get_disk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDisk"
        operation.name = "GetDisk"
        operation.input = GetDiskRequest
        operation.output = GetDiskResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDisk", "code" => 200}}
      end)
      service.add_operation(:get_disk_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDiskSnapshot"
        operation.name = "GetDiskSnapshot"
        operation.input = GetDiskSnapshotRequest
        operation.output = GetDiskSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDiskSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_disk_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDiskSnapshots"
        operation.name = "GetDiskSnapshots"
        operation.input = GetDiskSnapshotsRequest
        operation.output = GetDiskSnapshotsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDiskSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_disks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDisks"
        operation.name = "GetDisks"
        operation.input = GetDisksRequest
        operation.output = GetDisksResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDisks", "code" => 200}}
      end)
      service.add_operation(:get_distribution_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributionBundles"
        operation.name = "GetDistributionBundles"
        operation.input = GetDistributionBundlesRequest
        operation.output = GetDistributionBundlesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributionBundles", "code" => 200}}
      end)
      service.add_operation(:get_distribution_latest_cache_reset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributionLatestCacheReset"
        operation.name = "GetDistributionLatestCacheReset"
        operation.input = GetDistributionLatestCacheResetRequest
        operation.output = GetDistributionLatestCacheResetResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributionLatestCacheReset", "code" => 200}}
      end)
      service.add_operation(:get_distribution_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributionMetricData"
        operation.name = "GetDistributionMetricData"
        operation.input = GetDistributionMetricDataRequest
        operation.output = GetDistributionMetricDataResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributionMetricData", "code" => 200}}
      end)
      service.add_operation(:get_distributions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDistributions"
        operation.name = "GetDistributions"
        operation.input = GetDistributionsRequest
        operation.output = GetDistributionsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDistributions", "code" => 200}}
      end)
      service.add_operation(:get_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDomain"
        operation.name = "GetDomain"
        operation.input = GetDomainRequest
        operation.output = GetDomainResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDomain", "code" => 200}}
      end)
      service.add_operation(:get_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetDomains"
        operation.name = "GetDomains"
        operation.input = GetDomainsRequest
        operation.output = GetDomainsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetDomains", "code" => 200}}
      end)
      service.add_operation(:get_export_snapshot_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetExportSnapshotRecords"
        operation.name = "GetExportSnapshotRecords"
        operation.input = GetExportSnapshotRecordsRequest
        operation.output = GetExportSnapshotRecordsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetExportSnapshotRecords", "code" => 200}}
      end)
      service.add_operation(:get_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstance"
        operation.name = "GetInstance"
        operation.input = GetInstanceRequest
        operation.output = GetInstanceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstance", "code" => 200}}
      end)
      service.add_operation(:get_instance_access_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceAccessDetails"
        operation.name = "GetInstanceAccessDetails"
        operation.input = GetInstanceAccessDetailsRequest
        operation.output = GetInstanceAccessDetailsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceAccessDetails", "code" => 200}}
      end)
      service.add_operation(:get_instance_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceMetricData"
        operation.name = "GetInstanceMetricData"
        operation.input = GetInstanceMetricDataRequest
        operation.output = GetInstanceMetricDataResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceMetricData", "code" => 200}}
      end)
      service.add_operation(:get_instance_port_states, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstancePortStates"
        operation.name = "GetInstancePortStates"
        operation.input = GetInstancePortStatesRequest
        operation.output = GetInstancePortStatesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstancePortStates", "code" => 200}}
      end)
      service.add_operation(:get_instance_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceSnapshot"
        operation.name = "GetInstanceSnapshot"
        operation.input = GetInstanceSnapshotRequest
        operation.output = GetInstanceSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_instance_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceSnapshots"
        operation.name = "GetInstanceSnapshots"
        operation.input = GetInstanceSnapshotsRequest
        operation.output = GetInstanceSnapshotsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_instance_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstanceState"
        operation.name = "GetInstanceState"
        operation.input = GetInstanceStateRequest
        operation.output = GetInstanceStateResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstanceState", "code" => 200}}
      end)
      service.add_operation(:get_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetInstances"
        operation.name = "GetInstances"
        operation.input = GetInstancesRequest
        operation.output = GetInstancesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetInstances", "code" => 200}}
      end)
      service.add_operation(:get_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetKeyPair"
        operation.name = "GetKeyPair"
        operation.input = GetKeyPairRequest
        operation.output = GetKeyPairResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetKeyPair", "code" => 200}}
      end)
      service.add_operation(:get_key_pairs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetKeyPairs"
        operation.name = "GetKeyPairs"
        operation.input = GetKeyPairsRequest
        operation.output = GetKeyPairsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetKeyPairs", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancer"
        operation.name = "GetLoadBalancer"
        operation.input = GetLoadBalancerRequest
        operation.output = GetLoadBalancerResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancer", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancerMetricData"
        operation.name = "GetLoadBalancerMetricData"
        operation.input = GetLoadBalancerMetricDataRequest
        operation.output = GetLoadBalancerMetricDataResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancerMetricData", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer_tls_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancerTlsCertificates"
        operation.name = "GetLoadBalancerTlsCertificates"
        operation.input = GetLoadBalancerTlsCertificatesRequest
        operation.output = GetLoadBalancerTlsCertificatesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancerTlsCertificates", "code" => 200}}
      end)
      service.add_operation(:get_load_balancer_tls_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancerTlsPolicies"
        operation.name = "GetLoadBalancerTlsPolicies"
        operation.input = GetLoadBalancerTlsPoliciesRequest
        operation.output = GetLoadBalancerTlsPoliciesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancerTlsPolicies", "code" => 200}}
      end)
      service.add_operation(:get_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetLoadBalancers"
        operation.name = "GetLoadBalancers"
        operation.input = GetLoadBalancersRequest
        operation.output = GetLoadBalancersResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetLoadBalancers", "code" => 200}}
      end)
      service.add_operation(:get_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetOperation"
        operation.name = "GetOperation"
        operation.input = GetOperationRequest
        operation.output = GetOperationResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetOperation", "code" => 200}}
      end)
      service.add_operation(:get_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetOperations"
        operation.name = "GetOperations"
        operation.input = GetOperationsRequest
        operation.output = GetOperationsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetOperations", "code" => 200}}
      end)
      service.add_operation(:get_operations_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetOperationsForResource"
        operation.name = "GetOperationsForResource"
        operation.input = GetOperationsForResourceRequest
        operation.output = GetOperationsForResourceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetOperationsForResource", "code" => 200}}
      end)
      service.add_operation(:get_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRegions"
        operation.name = "GetRegions"
        operation.input = GetRegionsRequest
        operation.output = GetRegionsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRegions", "code" => 200}}
      end)
      service.add_operation(:get_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabase"
        operation.name = "GetRelationalDatabase"
        operation.input = GetRelationalDatabaseRequest
        operation.output = GetRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_blueprints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseBlueprints"
        operation.name = "GetRelationalDatabaseBlueprints"
        operation.input = GetRelationalDatabaseBlueprintsRequest
        operation.output = GetRelationalDatabaseBlueprintsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseBlueprints", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseBundles"
        operation.name = "GetRelationalDatabaseBundles"
        operation.input = GetRelationalDatabaseBundlesRequest
        operation.output = GetRelationalDatabaseBundlesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseBundles", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseEvents"
        operation.name = "GetRelationalDatabaseEvents"
        operation.input = GetRelationalDatabaseEventsRequest
        operation.output = GetRelationalDatabaseEventsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseEvents", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_log_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseLogEvents"
        operation.name = "GetRelationalDatabaseLogEvents"
        operation.input = GetRelationalDatabaseLogEventsRequest
        operation.output = GetRelationalDatabaseLogEventsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseLogEvents", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_log_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseLogStreams"
        operation.name = "GetRelationalDatabaseLogStreams"
        operation.input = GetRelationalDatabaseLogStreamsRequest
        operation.output = GetRelationalDatabaseLogStreamsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseLogStreams", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_master_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseMasterUserPassword"
        operation.name = "GetRelationalDatabaseMasterUserPassword"
        operation.input = GetRelationalDatabaseMasterUserPasswordRequest
        operation.output = GetRelationalDatabaseMasterUserPasswordResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseMasterUserPassword", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseMetricData"
        operation.name = "GetRelationalDatabaseMetricData"
        operation.input = GetRelationalDatabaseMetricDataRequest
        operation.output = GetRelationalDatabaseMetricDataResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseMetricData", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseParameters"
        operation.name = "GetRelationalDatabaseParameters"
        operation.input = GetRelationalDatabaseParametersRequest
        operation.output = GetRelationalDatabaseParametersResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseParameters", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseSnapshot"
        operation.name = "GetRelationalDatabaseSnapshot"
        operation.input = GetRelationalDatabaseSnapshotRequest
        operation.output = GetRelationalDatabaseSnapshotResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseSnapshot", "code" => 200}}
      end)
      service.add_operation(:get_relational_database_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabaseSnapshots"
        operation.name = "GetRelationalDatabaseSnapshots"
        operation.input = GetRelationalDatabaseSnapshotsRequest
        operation.output = GetRelationalDatabaseSnapshotsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabaseSnapshots", "code" => 200}}
      end)
      service.add_operation(:get_relational_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetRelationalDatabases"
        operation.name = "GetRelationalDatabases"
        operation.input = GetRelationalDatabasesRequest
        operation.output = GetRelationalDatabasesResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetRelationalDatabases", "code" => 200}}
      end)
      service.add_operation(:get_setup_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetSetupHistory"
        operation.name = "GetSetupHistory"
        operation.input = GetSetupHistoryRequest
        operation.output = GetSetupHistoryResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/get-setup-history", "code" => 200}}
      end)
      service.add_operation(:get_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetStaticIp"
        operation.name = "GetStaticIp"
        operation.input = GetStaticIpRequest
        operation.output = GetStaticIpResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetStaticIp", "code" => 200}}
      end)
      service.add_operation(:get_static_ips, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#GetStaticIps"
        operation.name = "GetStaticIps"
        operation.input = GetStaticIpsRequest
        operation.output = GetStaticIpsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/GetStaticIps", "code" => 200}}
      end)
      service.add_operation(:import_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ImportKeyPair"
        operation.name = "ImportKeyPair"
        operation.input = ImportKeyPairRequest
        operation.output = ImportKeyPairResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ImportKeyPair", "code" => 200}}
      end)
      service.add_operation(:is_vpc_peered, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#IsVpcPeered"
        operation.name = "IsVpcPeered"
        operation.input = IsVpcPeeredRequest
        operation.output = IsVpcPeeredResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/IsVpcPeered", "code" => 200}}
      end)
      service.add_operation(:open_instance_public_ports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#OpenInstancePublicPorts"
        operation.name = "OpenInstancePublicPorts"
        operation.input = OpenInstancePublicPortsRequest
        operation.output = OpenInstancePublicPortsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/OpenInstancePublicPorts", "code" => 200}}
      end)
      service.add_operation(:peer_vpc, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#PeerVpc"
        operation.name = "PeerVpc"
        operation.input = PeerVpcRequest
        operation.output = PeerVpcResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/PeerVpc", "code" => 200}}
      end)
      service.add_operation(:put_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#PutAlarm"
        operation.name = "PutAlarm"
        operation.input = PutAlarmRequest
        operation.output = PutAlarmResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/PutAlarm", "code" => 200}}
      end)
      service.add_operation(:put_instance_public_ports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#PutInstancePublicPorts"
        operation.name = "PutInstancePublicPorts"
        operation.input = PutInstancePublicPortsRequest
        operation.output = PutInstancePublicPortsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/PutInstancePublicPorts", "code" => 200}}
      end)
      service.add_operation(:reboot_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#RebootInstance"
        operation.name = "RebootInstance"
        operation.input = RebootInstanceRequest
        operation.output = RebootInstanceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/RebootInstance", "code" => 200}}
      end)
      service.add_operation(:reboot_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#RebootRelationalDatabase"
        operation.name = "RebootRelationalDatabase"
        operation.input = RebootRelationalDatabaseRequest
        operation.output = RebootRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/RebootRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:register_container_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#RegisterContainerImage"
        operation.name = "RegisterContainerImage"
        operation.input = RegisterContainerImageRequest
        operation.output = RegisterContainerImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}/images", "code" => 200}}
      end)
      service.add_operation(:release_static_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ReleaseStaticIp"
        operation.name = "ReleaseStaticIp"
        operation.input = ReleaseStaticIpRequest
        operation.output = ReleaseStaticIpResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ReleaseStaticIp", "code" => 200}}
      end)
      service.add_operation(:reset_distribution_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#ResetDistributionCache"
        operation.name = "ResetDistributionCache"
        operation.input = ResetDistributionCacheRequest
        operation.output = ResetDistributionCacheResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/ResetDistributionCache", "code" => 200}}
      end)
      service.add_operation(:send_contact_method_verification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SendContactMethodVerification"
        operation.name = "SendContactMethodVerification"
        operation.input = SendContactMethodVerificationRequest
        operation.output = SendContactMethodVerificationResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/SendContactMethodVerification", "code" => 200}}
      end)
      service.add_operation(:set_ip_address_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SetIpAddressType"
        operation.name = "SetIpAddressType"
        operation.input = SetIpAddressTypeRequest
        operation.output = SetIpAddressTypeResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/SetIpAddressType", "code" => 200}}
      end)
      service.add_operation(:set_resource_access_for_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SetResourceAccessForBucket"
        operation.name = "SetResourceAccessForBucket"
        operation.input = SetResourceAccessForBucketRequest
        operation.output = SetResourceAccessForBucketResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/SetResourceAccessForBucket", "code" => 200}}
      end)
      service.add_operation(:setup_instance_https, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#SetupInstanceHttps"
        operation.name = "SetupInstanceHttps"
        operation.input = SetupInstanceHttpsRequest
        operation.output = SetupInstanceHttpsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/setup-instance-https", "code" => 200}}
      end)
      service.add_operation(:start_gui_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StartGUISession"
        operation.name = "StartGUISession"
        operation.input = StartGUISessionRequest
        operation.output = StartGUISessionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/start-gui-session", "code" => 200}}
      end)
      service.add_operation(:start_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StartInstance"
        operation.name = "StartInstance"
        operation.input = StartInstanceRequest
        operation.output = StartInstanceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StartInstance", "code" => 200}}
      end)
      service.add_operation(:start_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StartRelationalDatabase"
        operation.name = "StartRelationalDatabase"
        operation.input = StartRelationalDatabaseRequest
        operation.output = StartRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StartRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:stop_gui_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StopGUISession"
        operation.name = "StopGUISession"
        operation.input = StopGUISessionRequest
        operation.output = StopGUISessionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/stop-gui-session", "code" => 200}}
      end)
      service.add_operation(:stop_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StopInstance"
        operation.name = "StopInstance"
        operation.input = StopInstanceRequest
        operation.output = StopInstanceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StopInstance", "code" => 200}}
      end)
      service.add_operation(:stop_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#StopRelationalDatabase"
        operation.name = "StopRelationalDatabase"
        operation.input = StopRelationalDatabaseRequest
        operation.output = StopRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/StopRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/TagResource", "code" => 200}}
      end)
      service.add_operation(:test_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#TestAlarm"
        operation.name = "TestAlarm"
        operation.input = TestAlarmRequest
        operation.output = TestAlarmResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ls/api/2016-11-28/TestAlarm/{alarmName}", "code" => 200}}
      end)
      service.add_operation(:unpeer_vpc, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UnpeerVpc"
        operation.name = "UnpeerVpc"
        operation.input = UnpeerVpcRequest
        operation.output = UnpeerVpcResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UnpeerVpc", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UntagResource", "code" => 200}}
      end)
      service.add_operation(:update_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateBucket"
        operation.name = "UpdateBucket"
        operation.input = UpdateBucketRequest
        operation.output = UpdateBucketResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateBucket", "code" => 200}}
      end)
      service.add_operation(:update_bucket_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateBucketBundle"
        operation.name = "UpdateBucketBundle"
        operation.input = UpdateBucketBundleRequest
        operation.output = UpdateBucketBundleResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateBucketBundle", "code" => 200}}
      end)
      service.add_operation(:update_container_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateContainerService"
        operation.name = "UpdateContainerService"
        operation.input = UpdateContainerServiceRequest
        operation.output = UpdateContainerServiceResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ls/api/2016-11-28/container-services/{serviceName}", "code" => 200}}
      end)
      service.add_operation(:update_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateDistribution"
        operation.name = "UpdateDistribution"
        operation.input = UpdateDistributionRequest
        operation.output = UpdateDistributionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateDistribution", "code" => 200}}
      end)
      service.add_operation(:update_distribution_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateDistributionBundle"
        operation.name = "UpdateDistributionBundle"
        operation.input = UpdateDistributionBundleRequest
        operation.output = UpdateDistributionBundleResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateDistributionBundle", "code" => 200}}
      end)
      service.add_operation(:update_domain_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateDomainEntry"
        operation.name = "UpdateDomainEntry"
        operation.input = UpdateDomainEntryRequest
        operation.output = UpdateDomainEntryResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateDomainEntry", "code" => 200}}
      end)
      service.add_operation(:update_instance_metadata_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateInstanceMetadataOptions"
        operation.name = "UpdateInstanceMetadataOptions"
        operation.input = UpdateInstanceMetadataOptionsRequest
        operation.output = UpdateInstanceMetadataOptionsResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateInstanceMetadataOptions", "code" => 200}}
      end)
      service.add_operation(:update_load_balancer_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateLoadBalancerAttribute"
        operation.name = "UpdateLoadBalancerAttribute"
        operation.input = UpdateLoadBalancerAttributeRequest
        operation.output = UpdateLoadBalancerAttributeResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateLoadBalancerAttribute", "code" => 200}}
      end)
      service.add_operation(:update_relational_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateRelationalDatabase"
        operation.name = "UpdateRelationalDatabase"
        operation.input = UpdateRelationalDatabaseRequest
        operation.output = UpdateRelationalDatabaseResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ls/api/2016-11-28/UpdateRelationalDatabase", "code" => 200}}
      end)
      service.add_operation(:update_relational_database_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lightsail#UpdateRelationalDatabaseParameters"
        operation.name = "UpdateRelationalDatabaseParameters"
        operation.input = UpdateRelationalDatabaseParametersRequest
        operation.output = UpdateRelationalDatabaseParametersResult
        operation.errors << AccessDeniedException
        operation.errors << AccountSetupInProgressException
        operation.errors << InvalidInputException
        operation.errors << NotFoundException
        operation.errors << OperationFailureException
        operation.errors << RegionSetupInProgressException
        operation.errors << ServiceException
        operation.errors << UnauthenticatedException
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
