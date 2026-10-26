# frozen_string_literal: true

# This is generated code!

module Aws::Batch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ArrayJobDependency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ArrayJobDependency", name: "ArrayJobDependency")
    ArrayJobStatusSummary = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#ArrayJobStatusSummary", name: "ArrayJobStatusSummary")
    ArrayProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ArrayProperties", name: "ArrayProperties")
    ArrayPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ArrayPropertiesDetail", name: "ArrayPropertiesDetail")
    ArrayPropertiesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ArrayPropertiesSummary", name: "ArrayPropertiesSummary")
    AssignPublicIp = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#AssignPublicIp", name: "AssignPublicIp")
    AttemptContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#AttemptContainerDetail", name: "AttemptContainerDetail")
    AttemptDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#AttemptDetail", name: "AttemptDetail")
    AttemptDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#AttemptDetails", name: "AttemptDetails")
    AttemptEcsTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#AttemptEcsTaskDetails", name: "AttemptEcsTaskDetails")
    AttemptTaskContainerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#AttemptTaskContainerDetails", name: "AttemptTaskContainerDetails")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.batch#Boolean", name: "Boolean")
    CEState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#CEState", name: "CEState")
    CEStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#CEStatus", name: "CEStatus")
    CEType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#CEType", name: "CEType")
    CRAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#CRAllocationStrategy", name: "CRAllocationStrategy")
    CRType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#CRType", name: "CRType")
    CRUpdateAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#CRUpdateAllocationStrategy", name: "CRUpdateAllocationStrategy")
    CancelJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CancelJobRequest", name: "CancelJobRequest")
    CancelJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CancelJobResponse", name: "CancelJobResponse")
    CancelJobsErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CancelJobsErrorDetail", name: "CancelJobsErrorDetail")
    CancelJobsErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#CancelJobsErrorDetailList", name: "CancelJobsErrorDetailList")
    CancelJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CancelJobsRequest", name: "CancelJobsRequest")
    CancelJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CancelJobsResponse", name: "CancelJobsResponse")
    CapacityLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CapacityLimit", name: "CapacityLimit")
    CapacityLimits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#CapacityLimits", name: "CapacityLimits")
    CapacityReservationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CapacityReservationRequest", name: "CapacityReservationRequest")
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ClientException", name: "ClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ComputeEnvironmentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ComputeEnvironmentDetail", name: "ComputeEnvironmentDetail")
    ComputeEnvironmentDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ComputeEnvironmentDetailList", name: "ComputeEnvironmentDetailList")
    ComputeEnvironmentOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ComputeEnvironmentOrder", name: "ComputeEnvironmentOrder")
    ComputeEnvironmentOrders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ComputeEnvironmentOrders", name: "ComputeEnvironmentOrders")
    ComputeResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ComputeResource", name: "ComputeResource")
    ComputeResourceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ComputeResourceUpdate", name: "ComputeResourceUpdate")
    ComputeScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ComputeScalingPolicy", name: "ComputeScalingPolicy")
    ConsumableResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ConsumableResourceList", name: "ConsumableResourceList")
    ConsumableResourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ConsumableResourceProperties", name: "ConsumableResourceProperties")
    ConsumableResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ConsumableResourceRequirement", name: "ConsumableResourceRequirement")
    ConsumableResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ConsumableResourceSummary", name: "ConsumableResourceSummary")
    ConsumableResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ConsumableResourceSummaryList", name: "ConsumableResourceSummaryList")
    ContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ContainerDetail", name: "ContainerDetail")
    ContainerInsights = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ContainerInsights", name: "ContainerInsights")
    ContainerOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ContainerOverrides", name: "ContainerOverrides")
    ContainerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ContainerProperties", name: "ContainerProperties")
    ContainerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ContainerSummary", name: "ContainerSummary")
    CreateComputeEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateComputeEnvironmentRequest", name: "CreateComputeEnvironmentRequest")
    CreateComputeEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateComputeEnvironmentResponse", name: "CreateComputeEnvironmentResponse")
    CreateConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateConsumableResourceRequest", name: "CreateConsumableResourceRequest")
    CreateConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateConsumableResourceResponse", name: "CreateConsumableResourceResponse")
    CreateJobQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateJobQueueRequest", name: "CreateJobQueueRequest")
    CreateJobQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateJobQueueResponse", name: "CreateJobQueueResponse")
    CreateQuotaShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateQuotaShareRequest", name: "CreateQuotaShareRequest")
    CreateQuotaShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateQuotaShareResponse", name: "CreateQuotaShareResponse")
    CreateSchedulingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateSchedulingPolicyRequest", name: "CreateSchedulingPolicyRequest")
    CreateSchedulingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateSchedulingPolicyResponse", name: "CreateSchedulingPolicyResponse")
    CreateServiceEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateServiceEnvironmentRequest", name: "CreateServiceEnvironmentRequest")
    CreateServiceEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#CreateServiceEnvironmentResponse", name: "CreateServiceEnvironmentResponse")
    DeleteComputeEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteComputeEnvironmentRequest", name: "DeleteComputeEnvironmentRequest")
    DeleteComputeEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteComputeEnvironmentResponse", name: "DeleteComputeEnvironmentResponse")
    DeleteConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteConsumableResourceRequest", name: "DeleteConsumableResourceRequest")
    DeleteConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteConsumableResourceResponse", name: "DeleteConsumableResourceResponse")
    DeleteJobQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteJobQueueRequest", name: "DeleteJobQueueRequest")
    DeleteJobQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteJobQueueResponse", name: "DeleteJobQueueResponse")
    DeleteQuotaShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteQuotaShareRequest", name: "DeleteQuotaShareRequest")
    DeleteQuotaShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteQuotaShareResponse", name: "DeleteQuotaShareResponse")
    DeleteSchedulingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteSchedulingPolicyRequest", name: "DeleteSchedulingPolicyRequest")
    DeleteSchedulingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteSchedulingPolicyResponse", name: "DeleteSchedulingPolicyResponse")
    DeleteServiceEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteServiceEnvironmentRequest", name: "DeleteServiceEnvironmentRequest")
    DeleteServiceEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeleteServiceEnvironmentResponse", name: "DeleteServiceEnvironmentResponse")
    DeregisterJobDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeregisterJobDefinitionRequest", name: "DeregisterJobDefinitionRequest")
    DeregisterJobDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DeregisterJobDefinitionResponse", name: "DeregisterJobDefinitionResponse")
    DescribeComputeEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeComputeEnvironmentsRequest", name: "DescribeComputeEnvironmentsRequest")
    DescribeComputeEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeComputeEnvironmentsResponse", name: "DescribeComputeEnvironmentsResponse")
    DescribeConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeConsumableResourceRequest", name: "DescribeConsumableResourceRequest")
    DescribeConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeConsumableResourceResponse", name: "DescribeConsumableResourceResponse")
    DescribeJobDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeJobDefinitionsRequest", name: "DescribeJobDefinitionsRequest")
    DescribeJobDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeJobDefinitionsResponse", name: "DescribeJobDefinitionsResponse")
    DescribeJobQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeJobQueuesRequest", name: "DescribeJobQueuesRequest")
    DescribeJobQueuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeJobQueuesResponse", name: "DescribeJobQueuesResponse")
    DescribeJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeJobsRequest", name: "DescribeJobsRequest")
    DescribeJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeJobsResponse", name: "DescribeJobsResponse")
    DescribeQuotaShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeQuotaShareRequest", name: "DescribeQuotaShareRequest")
    DescribeQuotaShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeQuotaShareResponse", name: "DescribeQuotaShareResponse")
    DescribeSchedulingPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeSchedulingPoliciesRequest", name: "DescribeSchedulingPoliciesRequest")
    DescribeSchedulingPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeSchedulingPoliciesResponse", name: "DescribeSchedulingPoliciesResponse")
    DescribeServiceEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeServiceEnvironmentsRequest", name: "DescribeServiceEnvironmentsRequest")
    DescribeServiceEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeServiceEnvironmentsResponse", name: "DescribeServiceEnvironmentsResponse")
    DescribeServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeServiceJobRequest", name: "DescribeServiceJobRequest")
    DescribeServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#DescribeServiceJobResponse", name: "DescribeServiceJobResponse")
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Device", name: "Device")
    DeviceCgroupPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#DeviceCgroupPermission", name: "DeviceCgroupPermission")
    DeviceCgroupPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#DeviceCgroupPermissions", name: "DeviceCgroupPermissions")
    DevicesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#DevicesList", name: "DevicesList")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.batch#Double", name: "Double")
    EFSAuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EFSAuthorizationConfig", name: "EFSAuthorizationConfig")
    EFSAuthorizationConfigIAM = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#EFSAuthorizationConfigIAM", name: "EFSAuthorizationConfigIAM")
    EFSTransitEncryption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#EFSTransitEncryption", name: "EFSTransitEncryption")
    EFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EFSVolumeConfiguration", name: "EFSVolumeConfiguration")
    Ec2Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Ec2Configuration", name: "Ec2Configuration")
    Ec2ConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#Ec2ConfigurationList", name: "Ec2ConfigurationList")
    EcsProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EcsProperties", name: "EcsProperties")
    EcsPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EcsPropertiesDetail", name: "EcsPropertiesDetail")
    EcsPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EcsPropertiesOverride", name: "EcsPropertiesOverride")
    EcsSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EcsSettings", name: "EcsSettings")
    EcsTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EcsTaskDetails", name: "EcsTaskDetails")
    EcsTaskProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EcsTaskProperties", name: "EcsTaskProperties")
    EksAccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksAccessEntry", name: "EksAccessEntry")
    EksAccessEntryDesiredState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#EksAccessEntryDesiredState", name: "EksAccessEntryDesiredState")
    EksAccessEntryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#EksAccessEntryStatus", name: "EksAccessEntryStatus")
    EksAnnotationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#EksAnnotationsMap", name: "EksAnnotationsMap")
    EksAttemptContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksAttemptContainerDetail", name: "EksAttemptContainerDetail")
    EksAttemptContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksAttemptContainerDetails", name: "EksAttemptContainerDetails")
    EksAttemptDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksAttemptDetail", name: "EksAttemptDetail")
    EksAttemptDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksAttemptDetails", name: "EksAttemptDetails")
    EksConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksConfiguration", name: "EksConfiguration")
    EksConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksConfigurationUpdate", name: "EksConfigurationUpdate")
    EksContainer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainer", name: "EksContainer")
    EksContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainerDetail", name: "EksContainerDetail")
    EksContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksContainerDetails", name: "EksContainerDetails")
    EksContainerEnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainerEnvironmentVariable", name: "EksContainerEnvironmentVariable")
    EksContainerEnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksContainerEnvironmentVariables", name: "EksContainerEnvironmentVariables")
    EksContainerOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainerOverride", name: "EksContainerOverride")
    EksContainerOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksContainerOverrideList", name: "EksContainerOverrideList")
    EksContainerResourceRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainerResourceRequirements", name: "EksContainerResourceRequirements")
    EksContainerSecurityContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainerSecurityContext", name: "EksContainerSecurityContext")
    EksContainerVolumeMount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksContainerVolumeMount", name: "EksContainerVolumeMount")
    EksContainerVolumeMounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksContainerVolumeMounts", name: "EksContainerVolumeMounts")
    EksContainers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksContainers", name: "EksContainers")
    EksEmptyDir = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksEmptyDir", name: "EksEmptyDir")
    EksHostPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksHostPath", name: "EksHostPath")
    EksLabelsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#EksLabelsMap", name: "EksLabelsMap")
    EksLimits = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#EksLimits", name: "EksLimits")
    EksMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksMetadata", name: "EksMetadata")
    EksPersistentVolumeClaim = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksPersistentVolumeClaim", name: "EksPersistentVolumeClaim")
    EksPodProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksPodProperties", name: "EksPodProperties")
    EksPodPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksPodPropertiesDetail", name: "EksPodPropertiesDetail")
    EksPodPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksPodPropertiesOverride", name: "EksPodPropertiesOverride")
    EksProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksProperties", name: "EksProperties")
    EksPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksPropertiesDetail", name: "EksPropertiesDetail")
    EksPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksPropertiesOverride", name: "EksPropertiesOverride")
    EksRequests = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#EksRequests", name: "EksRequests")
    EksSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksSecret", name: "EksSecret")
    EksVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EksVolume", name: "EksVolume")
    EksVolumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EksVolumes", name: "EksVolumes")
    EnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EnvironmentVariables", name: "EnvironmentVariables")
    EphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EphemeralStorage", name: "EphemeralStorage")
    EvaluateOnExit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#EvaluateOnExit", name: "EvaluateOnExit")
    EvaluateOnExitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#EvaluateOnExitList", name: "EvaluateOnExitList")
    FairshareCapacityUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FairshareCapacityUsage", name: "FairshareCapacityUsage")
    FairshareCapacityUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#FairshareCapacityUsageList", name: "FairshareCapacityUsageList")
    FairshareCapacityUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FairshareCapacityUtilization", name: "FairshareCapacityUtilization")
    FairshareCapacityUtilizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#FairshareCapacityUtilizationList", name: "FairshareCapacityUtilizationList")
    FairsharePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FairsharePolicy", name: "FairsharePolicy")
    FairshareUtilizationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FairshareUtilizationDetail", name: "FairshareUtilizationDetail")
    FargatePlatformConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FargatePlatformConfiguration", name: "FargatePlatformConfiguration")
    FirelensConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FirelensConfiguration", name: "FirelensConfiguration")
    FirelensConfigurationOptionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#FirelensConfigurationOptionsMap", name: "FirelensConfigurationOptionsMap")
    FirelensConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#FirelensConfigurationType", name: "FirelensConfigurationType")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.batch#Float", name: "Float")
    FrontOfQueueDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FrontOfQueueDetail", name: "FrontOfQueueDetail")
    FrontOfQueueJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FrontOfQueueJobSummary", name: "FrontOfQueueJobSummary")
    FrontOfQueueJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#FrontOfQueueJobSummaryList", name: "FrontOfQueueJobSummaryList")
    FrontOfQuotaShareJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FrontOfQuotaShareJobSummary", name: "FrontOfQuotaShareJobSummary")
    FrontOfQuotaShareJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#FrontOfQuotaShareJobSummaryList", name: "FrontOfQuotaShareJobSummaryList")
    FrontOfQuotaSharesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#FrontOfQuotaSharesDetail", name: "FrontOfQuotaSharesDetail")
    FrontOfQuotaSharesJobSummaryMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#FrontOfQuotaSharesJobSummaryMap", name: "FrontOfQuotaSharesJobSummaryMap")
    GetJobQueueSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#GetJobQueueSnapshotRequest", name: "GetJobQueueSnapshotRequest")
    GetJobQueueSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#GetJobQueueSnapshotResponse", name: "GetJobQueueSnapshotResponse")
    Host = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Host", name: "Host")
    ImageIdOverride = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#ImageIdOverride", name: "ImageIdOverride", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ImagePullSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ImagePullSecret", name: "ImagePullSecret")
    ImagePullSecrets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ImagePullSecrets", name: "ImagePullSecrets")
    ImageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#ImageType", name: "ImageType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    InfrastructureOptimization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#InfrastructureOptimization", name: "InfrastructureOptimization")
    InstanceLaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#InstanceLaunchTemplate", name: "InstanceLaunchTemplate")
    InstanceLaunchTemplateUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#InstanceLaunchTemplateUpdate", name: "InstanceLaunchTemplateUpdate")
    InstanceRequirementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#InstanceRequirementsRequest", name: "InstanceRequirementsRequest")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.batch#Integer", name: "Integer")
    JQState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JQState", name: "JQState")
    JQStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JQStatus", name: "JQStatus")
    JobCapacityUsageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobCapacityUsageSummary", name: "JobCapacityUsageSummary")
    JobCapacityUsageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobCapacityUsageSummaryList", name: "JobCapacityUsageSummaryList")
    JobDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobDefinition", name: "JobDefinition")
    JobDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobDefinitionList", name: "JobDefinitionList")
    JobDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JobDefinitionType", name: "JobDefinitionType")
    JobDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobDependency", name: "JobDependency")
    JobDependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobDependencyList", name: "JobDependencyList")
    JobDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobDetail", name: "JobDetail")
    JobDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobDetailList", name: "JobDetailList")
    JobExecutionTimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.batch#JobExecutionTimeoutMinutes", name: "JobExecutionTimeoutMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 7200}})
    JobQueueDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobQueueDetail", name: "JobQueueDetail")
    JobQueueDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobQueueDetailList", name: "JobQueueDetailList")
    JobQueueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JobQueueType", name: "JobQueueType")
    JobStateTimeLimitAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobStateTimeLimitAction", name: "JobStateTimeLimitAction")
    JobStateTimeLimitActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobStateTimeLimitActions", name: "JobStateTimeLimitActions")
    JobStateTimeLimitActionsAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JobStateTimeLimitActionsAction", name: "JobStateTimeLimitActionsAction")
    JobStateTimeLimitActionsState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JobStateTimeLimitActionsState", name: "JobStateTimeLimitActionsState")
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#JobStatus", name: "JobStatus")
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobSummary", name: "JobSummary")
    JobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#JobSummaryList", name: "JobSummaryList")
    JobTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#JobTimeout", name: "JobTimeout")
    KeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#KeyValuePair", name: "KeyValuePair")
    KeyValuesPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#KeyValuesPair", name: "KeyValuesPair")
    KubernetesVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#KubernetesVersion", name: "KubernetesVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    LatestServiceJobAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#LatestServiceJobAttempt", name: "LatestServiceJobAttempt")
    LaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#LaunchTemplateSpecification", name: "LaunchTemplateSpecification")
    LaunchTemplateSpecificationOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#LaunchTemplateSpecificationOverride", name: "LaunchTemplateSpecificationOverride")
    LaunchTemplateSpecificationOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#LaunchTemplateSpecificationOverrideList", name: "LaunchTemplateSpecificationOverrideList")
    LinuxParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#LinuxParameters", name: "LinuxParameters")
    ListAttemptEcsTaskDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListAttemptEcsTaskDetails", name: "ListAttemptEcsTaskDetails")
    ListAttemptTaskContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListAttemptTaskContainerDetails", name: "ListAttemptTaskContainerDetails")
    ListConsumableResourcesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListConsumableResourcesFilterList", name: "ListConsumableResourcesFilterList")
    ListConsumableResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListConsumableResourcesRequest", name: "ListConsumableResourcesRequest")
    ListConsumableResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListConsumableResourcesResponse", name: "ListConsumableResourcesResponse")
    ListEcsTaskDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListEcsTaskDetails", name: "ListEcsTaskDetails")
    ListEcsTaskProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListEcsTaskProperties", name: "ListEcsTaskProperties")
    ListJobsByConsumableResourceFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListJobsByConsumableResourceFilterList", name: "ListJobsByConsumableResourceFilterList")
    ListJobsByConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListJobsByConsumableResourceRequest", name: "ListJobsByConsumableResourceRequest")
    ListJobsByConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListJobsByConsumableResourceResponse", name: "ListJobsByConsumableResourceResponse")
    ListJobsByConsumableResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListJobsByConsumableResourceSummary", name: "ListJobsByConsumableResourceSummary")
    ListJobsByConsumableResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListJobsByConsumableResourceSummaryList", name: "ListJobsByConsumableResourceSummaryList")
    ListJobsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListJobsFilterList", name: "ListJobsFilterList")
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListJobsRequest", name: "ListJobsRequest")
    ListJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListJobsResponse", name: "ListJobsResponse")
    ListQuotaSharesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListQuotaSharesRequest", name: "ListQuotaSharesRequest")
    ListQuotaSharesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListQuotaSharesResponse", name: "ListQuotaSharesResponse")
    ListSchedulingPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListSchedulingPoliciesRequest", name: "ListSchedulingPoliciesRequest")
    ListSchedulingPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListSchedulingPoliciesResponse", name: "ListSchedulingPoliciesResponse")
    ListServiceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListServiceJobsRequest", name: "ListServiceJobsRequest")
    ListServiceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListServiceJobsResponse", name: "ListServiceJobsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTaskContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListTaskContainerDetails", name: "ListTaskContainerDetails")
    ListTaskContainerOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListTaskContainerOverrides", name: "ListTaskContainerOverrides")
    ListTaskContainerProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListTaskContainerProperties", name: "ListTaskContainerProperties")
    ListTaskPropertiesOverride = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ListTaskPropertiesOverride", name: "ListTaskPropertiesOverride")
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#LogConfiguration", name: "LogConfiguration")
    LogConfigurationOptionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#LogConfigurationOptionsMap", name: "LogConfigurationOptionsMap")
    LogDriver = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#LogDriver", name: "LogDriver")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.batch#Long", name: "Long")
    ManagedInstancesLocalStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ManagedInstancesLocalStorageConfiguration", name: "ManagedInstancesLocalStorageConfiguration")
    ManagedInstancesNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ManagedInstancesNetworkConfiguration", name: "ManagedInstancesNetworkConfiguration")
    ManagedInstancesProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ManagedInstancesProvider", name: "ManagedInstancesProvider")
    ManagedInstancesStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ManagedInstancesStorageConfiguration", name: "ManagedInstancesStorageConfiguration")
    MountPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#MountPoint", name: "MountPoint")
    MountPoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#MountPoints", name: "MountPoints")
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NetworkConfiguration", name: "NetworkConfiguration")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#NetworkInterfaceList", name: "NetworkInterfaceList")
    NodeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NodeDetails", name: "NodeDetails")
    NodeOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NodeOverrides", name: "NodeOverrides")
    NodeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NodeProperties", name: "NodeProperties")
    NodePropertiesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NodePropertiesSummary", name: "NodePropertiesSummary")
    NodePropertyOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NodePropertyOverride", name: "NodePropertyOverride")
    NodePropertyOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#NodePropertyOverrides", name: "NodePropertyOverrides")
    NodeRangeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#NodeRangeProperties", name: "NodeRangeProperties")
    NodeRangeProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#NodeRangeProperty", name: "NodeRangeProperty")
    OrchestrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#OrchestrationType", name: "OrchestrationType")
    ParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#ParametersMap", name: "ParametersMap")
    PlatformCapability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#PlatformCapability", name: "PlatformCapability")
    PlatformCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#PlatformCapabilityList", name: "PlatformCapabilityList")
    Quantity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#Quantity", name: "Quantity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    QueueSnapshotCapacityUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QueueSnapshotCapacityUsage", name: "QueueSnapshotCapacityUsage")
    QueueSnapshotCapacityUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#QueueSnapshotCapacityUsageList", name: "QueueSnapshotCapacityUsageList")
    QueueSnapshotUtilizationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QueueSnapshotUtilizationDetail", name: "QueueSnapshotUtilizationDetail")
    QuotaShareCapacityLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaShareCapacityLimit", name: "QuotaShareCapacityLimit")
    QuotaShareCapacityLimits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#QuotaShareCapacityLimits", name: "QuotaShareCapacityLimits")
    QuotaShareCapacityUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaShareCapacityUsage", name: "QuotaShareCapacityUsage")
    QuotaShareCapacityUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#QuotaShareCapacityUsageList", name: "QuotaShareCapacityUsageList")
    QuotaShareCapacityUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaShareCapacityUtilization", name: "QuotaShareCapacityUtilization")
    QuotaShareCapacityUtilizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#QuotaShareCapacityUtilizationList", name: "QuotaShareCapacityUtilizationList")
    QuotaShareDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaShareDetail", name: "QuotaShareDetail")
    QuotaShareIdleResourceAssignmentStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#QuotaShareIdleResourceAssignmentStrategy", name: "QuotaShareIdleResourceAssignmentStrategy")
    QuotaShareInSharePreemptionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#QuotaShareInSharePreemptionState", name: "QuotaShareInSharePreemptionState")
    QuotaShareList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#QuotaShareList", name: "QuotaShareList")
    QuotaSharePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaSharePolicy", name: "QuotaSharePolicy")
    QuotaSharePreemptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaSharePreemptionConfiguration", name: "QuotaSharePreemptionConfiguration")
    QuotaShareResourceSharingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaShareResourceSharingConfiguration", name: "QuotaShareResourceSharingConfiguration")
    QuotaShareResourceSharingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#QuotaShareResourceSharingStrategy", name: "QuotaShareResourceSharingStrategy")
    QuotaShareState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#QuotaShareState", name: "QuotaShareState")
    QuotaShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#QuotaShareStatus", name: "QuotaShareStatus")
    QuotaShareUtilizationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#QuotaShareUtilizationDetail", name: "QuotaShareUtilizationDetail")
    RegisterJobDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#RegisterJobDefinitionRequest", name: "RegisterJobDefinitionRequest")
    RegisterJobDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#RegisterJobDefinitionResponse", name: "RegisterJobDefinitionResponse")
    RepositoryCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#RepositoryCredentials", name: "RepositoryCredentials")
    ResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ResourceRequirement", name: "ResourceRequirement")
    ResourceRequirements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ResourceRequirements", name: "ResourceRequirements")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ResourceType", name: "ResourceType")
    RetryAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#RetryAction", name: "RetryAction")
    RetryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#RetryStrategy", name: "RetryStrategy")
    RuntimePlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#RuntimePlatform", name: "RuntimePlatform")
    S3FilesVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#S3FilesVolumeConfiguration", name: "S3FilesVolumeConfiguration")
    SchedulingPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#SchedulingPolicyDetail", name: "SchedulingPolicyDetail")
    SchedulingPolicyDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#SchedulingPolicyDetailList", name: "SchedulingPolicyDetailList")
    SchedulingPolicyListingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#SchedulingPolicyListingDetail", name: "SchedulingPolicyListingDetail")
    SchedulingPolicyListingDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#SchedulingPolicyListingDetailList", name: "SchedulingPolicyListingDetailList")
    Secret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Secret", name: "Secret")
    SecretList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#SecretList", name: "SecretList")
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServerException", name: "ServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceEnvironmentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceEnvironmentDetail", name: "ServiceEnvironmentDetail")
    ServiceEnvironmentDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceEnvironmentDetailList", name: "ServiceEnvironmentDetailList")
    ServiceEnvironmentOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceEnvironmentOrder", name: "ServiceEnvironmentOrder")
    ServiceEnvironmentOrders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceEnvironmentOrders", name: "ServiceEnvironmentOrders")
    ServiceEnvironmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceEnvironmentState", name: "ServiceEnvironmentState")
    ServiceEnvironmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceEnvironmentStatus", name: "ServiceEnvironmentStatus")
    ServiceEnvironmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceEnvironmentType", name: "ServiceEnvironmentType")
    ServiceJobAttemptDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobAttemptDetail", name: "ServiceJobAttemptDetail")
    ServiceJobAttemptDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceJobAttemptDetails", name: "ServiceJobAttemptDetails")
    ServiceJobCapacityUsageDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobCapacityUsageDetail", name: "ServiceJobCapacityUsageDetail")
    ServiceJobCapacityUsageDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceJobCapacityUsageDetailList", name: "ServiceJobCapacityUsageDetailList")
    ServiceJobCapacityUsageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobCapacityUsageSummary", name: "ServiceJobCapacityUsageSummary")
    ServiceJobCapacityUsageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceJobCapacityUsageSummaryList", name: "ServiceJobCapacityUsageSummaryList")
    ServiceJobEvaluateOnExit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobEvaluateOnExit", name: "ServiceJobEvaluateOnExit")
    ServiceJobEvaluateOnExitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceJobEvaluateOnExitList", name: "ServiceJobEvaluateOnExitList")
    ServiceJobPreemptedAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobPreemptedAttempt", name: "ServiceJobPreemptedAttempt")
    ServiceJobPreemptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobPreemptionConfiguration", name: "ServiceJobPreemptionConfiguration")
    ServiceJobPreemptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobPreemptionSummary", name: "ServiceJobPreemptionSummary")
    ServiceJobRecentPreemptedAttemptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceJobRecentPreemptedAttemptList", name: "ServiceJobRecentPreemptedAttemptList")
    ServiceJobRetryAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceJobRetryAction", name: "ServiceJobRetryAction")
    ServiceJobRetryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobRetryStrategy", name: "ServiceJobRetryStrategy")
    ServiceJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceJobStatus", name: "ServiceJobStatus")
    ServiceJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobSummary", name: "ServiceJobSummary")
    ServiceJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ServiceJobSummaryList", name: "ServiceJobSummaryList")
    ServiceJobTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceJobTimeout", name: "ServiceJobTimeout")
    ServiceJobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceJobType", name: "ServiceJobType")
    ServiceResourceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ServiceResourceId", name: "ServiceResourceId")
    ServiceResourceIdName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#ServiceResourceIdName", name: "ServiceResourceIdName")
    ShareAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#ShareAttributes", name: "ShareAttributes")
    ShareAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#ShareAttributesList", name: "ShareAttributesList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#StringList", name: "StringList")
    SubmitJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#SubmitJobRequest", name: "SubmitJobRequest")
    SubmitJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#SubmitJobResponse", name: "SubmitJobResponse")
    SubmitServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#SubmitServiceJobRequest", name: "SubmitServiceJobRequest")
    SubmitServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#SubmitServiceJobResponse", name: "SubmitServiceJobResponse")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#TagKeysList", name: "TagKeysList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.batch#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagrisTagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#TagrisTagsMap", name: "TagrisTagsMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.batch#TagsMap", name: "TagsMap")
    TaskContainerDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TaskContainerDependency", name: "TaskContainerDependency")
    TaskContainerDependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#TaskContainerDependencyList", name: "TaskContainerDependencyList")
    TaskContainerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TaskContainerDetails", name: "TaskContainerDetails")
    TaskContainerOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TaskContainerOverrides", name: "TaskContainerOverrides")
    TaskContainerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TaskContainerProperties", name: "TaskContainerProperties")
    TaskPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TaskPropertiesOverride", name: "TaskPropertiesOverride")
    TerminateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateJobRequest", name: "TerminateJobRequest")
    TerminateJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateJobResponse", name: "TerminateJobResponse")
    TerminateJobsErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateJobsErrorDetail", name: "TerminateJobsErrorDetail")
    TerminateJobsErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#TerminateJobsErrorDetailList", name: "TerminateJobsErrorDetailList")
    TerminateJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateJobsRequest", name: "TerminateJobsRequest")
    TerminateJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateJobsResponse", name: "TerminateJobsResponse")
    TerminateServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateServiceJobRequest", name: "TerminateServiceJobRequest")
    TerminateServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateServiceJobResponse", name: "TerminateServiceJobResponse")
    TerminateServiceJobsErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateServiceJobsErrorDetail", name: "TerminateServiceJobsErrorDetail")
    TerminateServiceJobsErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#TerminateServiceJobsErrorDetailList", name: "TerminateServiceJobsErrorDetailList")
    TerminateServiceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateServiceJobsRequest", name: "TerminateServiceJobsRequest")
    TerminateServiceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#TerminateServiceJobsResponse", name: "TerminateServiceJobsResponse")
    Tmpfs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Tmpfs", name: "Tmpfs")
    TmpfsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#TmpfsList", name: "TmpfsList")
    Ulimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Ulimit", name: "Ulimit")
    Ulimits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#Ulimits", name: "Ulimits")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateComputeEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateComputeEnvironmentRequest", name: "UpdateComputeEnvironmentRequest")
    UpdateComputeEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateComputeEnvironmentResponse", name: "UpdateComputeEnvironmentResponse")
    UpdateConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateConsumableResourceRequest", name: "UpdateConsumableResourceRequest")
    UpdateConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateConsumableResourceResponse", name: "UpdateConsumableResourceResponse")
    UpdateJobQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateJobQueueRequest", name: "UpdateJobQueueRequest")
    UpdateJobQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateJobQueueResponse", name: "UpdateJobQueueResponse")
    UpdateManagedInstancesProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateManagedInstancesProviderConfiguration", name: "UpdateManagedInstancesProviderConfiguration")
    UpdatePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdatePolicy", name: "UpdatePolicy")
    UpdateQuotaShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateQuotaShareRequest", name: "UpdateQuotaShareRequest")
    UpdateQuotaShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateQuotaShareResponse", name: "UpdateQuotaShareResponse")
    UpdateSchedulingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateSchedulingPolicyRequest", name: "UpdateSchedulingPolicyRequest")
    UpdateSchedulingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateSchedulingPolicyResponse", name: "UpdateSchedulingPolicyResponse")
    UpdateServiceEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateServiceEnvironmentRequest", name: "UpdateServiceEnvironmentRequest")
    UpdateServiceEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateServiceEnvironmentResponse", name: "UpdateServiceEnvironmentResponse")
    UpdateServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateServiceJobRequest", name: "UpdateServiceJobRequest")
    UpdateServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#UpdateServiceJobResponse", name: "UpdateServiceJobResponse")
    UserdataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.batch#UserdataType", name: "UserdataType")
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.batch#Volume", name: "Volume")
    Volumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.batch#Volumes", name: "Volumes")

    ArrayJobDependency.add_member(:n_to_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "N_TO_N", traits: {"smithy.api#enumValue" => "N_TO_N"}))
    ArrayJobDependency.add_member(:sequential, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEQUENTIAL", traits: {"smithy.api#enumValue" => "SEQUENTIAL"}))
    ArrayJobStatusSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ArrayJobStatusSummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value"))
    ArrayProperties.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "size"))
    ArrayProperties.type = Types::ArrayProperties
    ArrayPropertiesDetail.add_member(:status_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayJobStatusSummary, name: "statusSummary"))
    ArrayPropertiesDetail.add_member(:status_summary_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "statusSummaryLastUpdatedAt"))
    ArrayPropertiesDetail.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "size"))
    ArrayPropertiesDetail.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "index"))
    ArrayPropertiesDetail.type = Types::ArrayPropertiesDetail
    ArrayPropertiesSummary.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "size"))
    ArrayPropertiesSummary.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "index"))
    ArrayPropertiesSummary.add_member(:status_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayJobStatusSummary, name: "statusSummary"))
    ArrayPropertiesSummary.add_member(:status_summary_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "statusSummaryLastUpdatedAt"))
    ArrayPropertiesSummary.type = Types::ArrayPropertiesSummary
    AssignPublicIp.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssignPublicIp.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AttemptContainerDetail.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    AttemptContainerDetail.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    AttemptContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    AttemptContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    AttemptContainerDetail.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStreamName"))
    AttemptContainerDetail.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceList, name: "networkInterfaces"))
    AttemptContainerDetail.type = Types::AttemptContainerDetail
    AttemptDetail.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptContainerDetail, name: "container"))
    AttemptDetail.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    AttemptDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    AttemptDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    AttemptDetail.add_member(:task_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttemptEcsTaskDetails, name: "taskProperties"))
    AttemptDetail.type = Types::AttemptDetail
    AttemptDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptDetail, name: "member"))
    AttemptEcsTaskDetails.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    AttemptEcsTaskDetails.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    AttemptEcsTaskDetails.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttemptTaskContainerDetails, name: "containers"))
    AttemptEcsTaskDetails.type = Types::AttemptEcsTaskDetails
    AttemptTaskContainerDetails.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    AttemptTaskContainerDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    AttemptTaskContainerDetails.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    AttemptTaskContainerDetails.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStreamName"))
    AttemptTaskContainerDetails.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceList, name: "networkInterfaces"))
    AttemptTaskContainerDetails.type = Types::AttemptTaskContainerDetails
    CEState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CEState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CEStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    CEStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    CEStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    CEStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    CEStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    CEStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    CEType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    CEType.add_member(:unmanaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNMANAGED", traits: {"smithy.api#enumValue" => "UNMANAGED"}))
    CRAllocationStrategy.add_member(:best_fit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_FIT", traits: {"smithy.api#enumValue" => "BEST_FIT"}))
    CRAllocationStrategy.add_member(:best_fit_progressive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_FIT_PROGRESSIVE", traits: {"smithy.api#enumValue" => "BEST_FIT_PROGRESSIVE"}))
    CRAllocationStrategy.add_member(:best_fit_progressive_ordered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_FIT_PROGRESSIVE_ORDERED", traits: {"smithy.api#enumValue" => "BEST_FIT_PROGRESSIVE_ORDERED"}))
    CRAllocationStrategy.add_member(:spot_capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "SPOT_CAPACITY_OPTIMIZED"}))
    CRAllocationStrategy.add_member(:spot_price_capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_PRICE_CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "SPOT_PRICE_CAPACITY_OPTIMIZED"}))
    CRAllocationStrategy.add_member(:spot_capacity_optimized_prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_CAPACITY_OPTIMIZED_PRIORITIZED", traits: {"smithy.api#enumValue" => "SPOT_CAPACITY_OPTIMIZED_PRIORITIZED"}))
    CRType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    CRType.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "SPOT"}))
    CRType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    CRType.add_member(:fargate_spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_SPOT", traits: {"smithy.api#enumValue" => "FARGATE_SPOT"}))
    CRType.add_member(:ecs_managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "ECS_MANAGED_INSTANCES"}))
    CRUpdateAllocationStrategy.add_member(:best_fit_progressive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_FIT_PROGRESSIVE", traits: {"smithy.api#enumValue" => "BEST_FIT_PROGRESSIVE"}))
    CRUpdateAllocationStrategy.add_member(:best_fit_progressive_ordered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_FIT_PROGRESSIVE_ORDERED", traits: {"smithy.api#enumValue" => "BEST_FIT_PROGRESSIVE_ORDERED"}))
    CRUpdateAllocationStrategy.add_member(:spot_capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "SPOT_CAPACITY_OPTIMIZED"}))
    CRUpdateAllocationStrategy.add_member(:spot_price_capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_PRICE_CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "SPOT_PRICE_CAPACITY_OPTIMIZED"}))
    CRUpdateAllocationStrategy.add_member(:spot_capacity_optimized_prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_CAPACITY_OPTIMIZED_PRIORITIZED", traits: {"smithy.api#enumValue" => "SPOT_CAPACITY_OPTIMIZED_PRIORITIZED"}))
    CancelJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobRequest.type = Types::CancelJobRequest
    CancelJobResponse.type = Types::CancelJobResponse
    CancelJobsErrorDetail.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "job", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsErrorDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsErrorDetail.type = Types::CancelJobsErrorDetail
    CancelJobsErrorDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelJobsErrorDetail, name: "member"))
    CancelJobsRequest.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "jobs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsRequest.type = Types::CancelJobsRequest
    CancelJobsResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "successful", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelJobsErrorDetailList, name: "errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobsResponse.type = Types::CancelJobsResponse
    CapacityLimit.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxCapacity"))
    CapacityLimit.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    CapacityLimit.type = Types::CapacityLimit
    CapacityLimits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityLimit, name: "member"))
    CapacityReservationRequest.add_member(:reservation_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reservationGroupArn"))
    CapacityReservationRequest.add_member(:reservation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reservationPreference"))
    CapacityReservationRequest.type = Types::CapacityReservationRequest
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClientException.type = Types::ClientException
    ComputeEnvironmentDetail.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentDetail.add_member(:compute_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentDetail.add_member(:unmanagedv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "unmanagedvCpus"))
    ComputeEnvironmentDetail.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ecsClusterArn"))
    ComputeEnvironmentDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    ComputeEnvironmentDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CEType, name: "type"))
    ComputeEnvironmentDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CEState, name: "state"))
    ComputeEnvironmentDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CEStatus, name: "status"))
    ComputeEnvironmentDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ComputeEnvironmentDetail.add_member(:compute_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeResource, name: "computeResources"))
    ComputeEnvironmentDetail.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRole"))
    ComputeEnvironmentDetail.add_member(:update_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePolicy, name: "updatePolicy"))
    ComputeEnvironmentDetail.add_member(:eks_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EksConfiguration, name: "eksConfiguration"))
    ComputeEnvironmentDetail.add_member(:container_orchestration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationType, name: "containerOrchestrationType"))
    ComputeEnvironmentDetail.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uuid"))
    ComputeEnvironmentDetail.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "context"))
    ComputeEnvironmentDetail.add_member(:ecs_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsSettings, name: "ecsSettings"))
    ComputeEnvironmentDetail.type = Types::ComputeEnvironmentDetail
    ComputeEnvironmentDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeEnvironmentDetail, name: "member"))
    ComputeEnvironmentOrder.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "order", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentOrder.add_member(:compute_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentOrder.type = Types::ComputeEnvironmentOrder
    ComputeEnvironmentOrders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeEnvironmentOrder, name: "member"))
    ComputeResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CRType, name: "type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeResource.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CRAllocationStrategy, name: "allocationStrategy"))
    ComputeResource.add_member(:minv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minvCpus"))
    ComputeResource.add_member(:maxv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxvCpus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeResource.add_member(:desiredv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "desiredvCpus"))
    ComputeResource.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceTypes"))
    ComputeResource.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imageId", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use ec2Configuration[].imageIdOverride instead."}}))
    ComputeResource.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    ComputeResource.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroupIds"))
    ComputeResource.add_member(:ec2_key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2KeyPair"))
    ComputeResource.add_member(:instance_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceRole"))
    ComputeResource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ComputeResource.add_member(:placement_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "placementGroup"))
    ComputeResource.add_member(:bid_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "bidPercentage"))
    ComputeResource.add_member(:spot_iam_fleet_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "spotIamFleetRole"))
    ComputeResource.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "launchTemplate"))
    ComputeResource.add_member(:ec2_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ConfigurationList, name: "ec2Configuration"))
    ComputeResource.add_member(:scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeScalingPolicy, name: "scalingPolicy"))
    ComputeResource.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesProvider, name: "managedInstancesProvider"))
    ComputeResource.add_member(:capacity_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "capacityTags"))
    ComputeResource.type = Types::ComputeResource
    ComputeResourceUpdate.add_member(:minv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minvCpus"))
    ComputeResourceUpdate.add_member(:maxv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxvCpus"))
    ComputeResourceUpdate.add_member(:desiredv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "desiredvCpus"))
    ComputeResourceUpdate.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    ComputeResourceUpdate.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroupIds"))
    ComputeResourceUpdate.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CRUpdateAllocationStrategy, name: "allocationStrategy"))
    ComputeResourceUpdate.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceTypes"))
    ComputeResourceUpdate.add_member(:ec2_key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2KeyPair"))
    ComputeResourceUpdate.add_member(:instance_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceRole"))
    ComputeResourceUpdate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ComputeResourceUpdate.add_member(:placement_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "placementGroup"))
    ComputeResourceUpdate.add_member(:bid_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "bidPercentage"))
    ComputeResourceUpdate.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "launchTemplate"))
    ComputeResourceUpdate.add_member(:ec2_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ConfigurationList, name: "ec2Configuration"))
    ComputeResourceUpdate.add_member(:update_to_latest_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "updateToLatestImageVersion"))
    ComputeResourceUpdate.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CRType, name: "type"))
    ComputeResourceUpdate.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imageId"))
    ComputeResourceUpdate.add_member(:scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeScalingPolicy, name: "scalingPolicy"))
    ComputeResourceUpdate.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateManagedInstancesProviderConfiguration, name: "managedInstancesProvider"))
    ComputeResourceUpdate.add_member(:capacity_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "capacityTags"))
    ComputeResourceUpdate.type = Types::ComputeResourceUpdate
    ComputeScalingPolicy.add_member(:min_scale_down_delay_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minScaleDownDelayMinutes"))
    ComputeScalingPolicy.type = Types::ComputeScalingPolicy
    ConsumableResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceRequirement, name: "member"))
    ConsumableResourceProperties.add_member(:consumable_resource_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceList, name: "consumableResourceList"))
    ConsumableResourceProperties.type = Types::ConsumableResourceProperties
    ConsumableResourceRequirement.add_member(:consumable_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResource"))
    ConsumableResourceRequirement.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "quantity"))
    ConsumableResourceRequirement.type = Types::ConsumableResourceRequirement
    ConsumableResourceSummary.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConsumableResourceSummary.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConsumableResourceSummary.add_member(:total_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "totalQuantity"))
    ConsumableResourceSummary.add_member(:in_use_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "inUseQuantity"))
    ConsumableResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType"))
    ConsumableResourceSummary.type = Types::ConsumableResourceSummary
    ConsumableResourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceSummary, name: "member"))
    ContainerDetail.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    ContainerDetail.add_member(:vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "vcpus"))
    ContainerDetail.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "memory"))
    ContainerDetail.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    ContainerDetail.add_member(:job_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobRoleArn"))
    ContainerDetail.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    ContainerDetail.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "volumes"))
    ContainerDetail.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    ContainerDetail.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoints, name: "mountPoints"))
    ContainerDetail.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readonlyRootFilesystem"))
    ContainerDetail.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimits, name: "ulimits"))
    ContainerDetail.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "privileged"))
    ContainerDetail.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user"))
    ContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    ContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    ContainerDetail.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    ContainerDetail.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    ContainerDetail.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStreamName"))
    ContainerDetail.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceType"))
    ContainerDetail.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceList, name: "networkInterfaces"))
    ContainerDetail.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    ContainerDetail.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxParameters, name: "linuxParameters"))
    ContainerDetail.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    ContainerDetail.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    ContainerDetail.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    ContainerDetail.add_member(:fargate_platform_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FargatePlatformConfiguration, name: "fargatePlatformConfiguration"))
    ContainerDetail.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    ContainerDetail.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, name: "runtimePlatform"))
    ContainerDetail.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, name: "repositoryCredentials"))
    ContainerDetail.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand"))
    ContainerDetail.type = Types::ContainerDetail
    ContainerInsights.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContainerInsights.add_member(:enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    ContainerInsights.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContainerOverrides.add_member(:vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "vcpus", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerOverrides.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "memory", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerOverrides.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    ContainerOverrides.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceType"))
    ContainerOverrides.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    ContainerOverrides.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    ContainerOverrides.type = Types::ContainerOverrides
    ContainerProperties.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    ContainerProperties.add_member(:vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "vcpus", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerProperties.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "memory", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerProperties.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    ContainerProperties.add_member(:job_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobRoleArn"))
    ContainerProperties.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    ContainerProperties.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "volumes"))
    ContainerProperties.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    ContainerProperties.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoints, name: "mountPoints"))
    ContainerProperties.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readonlyRootFilesystem"))
    ContainerProperties.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "privileged"))
    ContainerProperties.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimits, name: "ulimits"))
    ContainerProperties.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user"))
    ContainerProperties.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceType"))
    ContainerProperties.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    ContainerProperties.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxParameters, name: "linuxParameters"))
    ContainerProperties.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    ContainerProperties.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    ContainerProperties.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    ContainerProperties.add_member(:fargate_platform_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FargatePlatformConfiguration, name: "fargatePlatformConfiguration"))
    ContainerProperties.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand"))
    ContainerProperties.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    ContainerProperties.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, name: "runtimePlatform"))
    ContainerProperties.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, name: "repositoryCredentials"))
    ContainerProperties.type = Types::ContainerProperties
    ContainerSummary.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    ContainerSummary.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    ContainerSummary.type = Types::ContainerSummary
    CreateComputeEnvironmentRequest.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateComputeEnvironmentRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CEType, name: "type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateComputeEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CEState, name: "state"))
    CreateComputeEnvironmentRequest.add_member(:unmanagedv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "unmanagedvCpus"))
    CreateComputeEnvironmentRequest.add_member(:compute_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeResource, name: "computeResources"))
    CreateComputeEnvironmentRequest.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRole"))
    CreateComputeEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    CreateComputeEnvironmentRequest.add_member(:eks_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EksConfiguration, name: "eksConfiguration"))
    CreateComputeEnvironmentRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "context"))
    CreateComputeEnvironmentRequest.add_member(:ecs_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsSettings, name: "ecsSettings"))
    CreateComputeEnvironmentRequest.type = Types::CreateComputeEnvironmentRequest
    CreateComputeEnvironmentResponse.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentName"))
    CreateComputeEnvironmentResponse.add_member(:compute_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentArn"))
    CreateComputeEnvironmentResponse.type = Types::CreateComputeEnvironmentResponse
    CreateConsumableResourceRequest.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateConsumableResourceRequest.add_member(:total_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "totalQuantity"))
    CreateConsumableResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType"))
    CreateConsumableResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    CreateConsumableResourceRequest.type = Types::CreateConsumableResourceRequest
    CreateConsumableResourceResponse.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateConsumableResourceResponse.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateConsumableResourceResponse.type = Types::CreateConsumableResourceResponse
    CreateJobQueueRequest.add_member(:job_queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JQState, name: "state"))
    CreateJobQueueRequest.add_member(:scheduling_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schedulingPolicyArn"))
    CreateJobQueueRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "priority", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueRequest.add_member(:compute_environment_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeEnvironmentOrders, name: "computeEnvironmentOrder"))
    CreateJobQueueRequest.add_member(:service_environment_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentOrders, name: "serviceEnvironmentOrder"))
    CreateJobQueueRequest.add_member(:job_queue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobQueueType, name: "jobQueueType"))
    CreateJobQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    CreateJobQueueRequest.add_member(:job_state_time_limit_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateTimeLimitActions, name: "jobStateTimeLimitActions"))
    CreateJobQueueRequest.type = Types::CreateJobQueueRequest
    CreateJobQueueResponse.add_member(:job_queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueResponse.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueResponse.type = Types::CreateJobQueueResponse
    CreateQuotaShareRequest.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateQuotaShareRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateQuotaShareRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityLimits, name: "capacityLimits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateQuotaShareRequest.add_member(:resource_sharing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareResourceSharingConfiguration, name: "resourceSharingConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateQuotaShareRequest.add_member(:preemption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePreemptionConfiguration, name: "preemptionConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateQuotaShareRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareState, name: "state"))
    CreateQuotaShareRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    CreateQuotaShareRequest.type = Types::CreateQuotaShareRequest
    CreateQuotaShareResponse.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    CreateQuotaShareResponse.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn"))
    CreateQuotaShareResponse.type = Types::CreateQuotaShareResponse
    CreateSchedulingPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchedulingPolicyRequest.add_member(:quota_share_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePolicy, name: "quotaSharePolicy"))
    CreateSchedulingPolicyRequest.add_member(:fairshare_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FairsharePolicy, name: "fairsharePolicy"))
    CreateSchedulingPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    CreateSchedulingPolicyRequest.type = Types::CreateSchedulingPolicyRequest
    CreateSchedulingPolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchedulingPolicyResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchedulingPolicyResponse.type = Types::CreateSchedulingPolicyResponse
    CreateServiceEnvironmentRequest.add_member(:service_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentRequest.add_member(:service_environment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentType, name: "serviceEnvironmentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentState, name: "state"))
    CreateServiceEnvironmentRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityLimits, name: "capacityLimits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    CreateServiceEnvironmentRequest.type = Types::CreateServiceEnvironmentRequest
    CreateServiceEnvironmentResponse.add_member(:service_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentResponse.add_member(:service_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentResponse.type = Types::CreateServiceEnvironmentResponse
    DeleteComputeEnvironmentRequest.add_member(:compute_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteComputeEnvironmentRequest.type = Types::DeleteComputeEnvironmentRequest
    DeleteComputeEnvironmentResponse.type = Types::DeleteComputeEnvironmentResponse
    DeleteConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteConsumableResourceRequest.type = Types::DeleteConsumableResourceRequest
    DeleteConsumableResourceResponse.type = Types::DeleteConsumableResourceResponse
    DeleteJobQueueRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteJobQueueRequest.type = Types::DeleteJobQueueRequest
    DeleteJobQueueResponse.type = Types::DeleteJobQueueResponse
    DeleteQuotaShareRequest.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteQuotaShareRequest.type = Types::DeleteQuotaShareRequest
    DeleteQuotaShareResponse.type = Types::DeleteQuotaShareResponse
    DeleteSchedulingPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSchedulingPolicyRequest.type = Types::DeleteSchedulingPolicyRequest
    DeleteSchedulingPolicyResponse.type = Types::DeleteSchedulingPolicyResponse
    DeleteServiceEnvironmentRequest.add_member(:service_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteServiceEnvironmentRequest.type = Types::DeleteServiceEnvironmentRequest
    DeleteServiceEnvironmentResponse.type = Types::DeleteServiceEnvironmentResponse
    DeregisterJobDefinitionRequest.add_member(:job_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterJobDefinitionRequest.type = Types::DeregisterJobDefinitionRequest
    DeregisterJobDefinitionResponse.type = Types::DeregisterJobDefinitionResponse
    DescribeComputeEnvironmentsRequest.add_member(:compute_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "computeEnvironments"))
    DescribeComputeEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    DescribeComputeEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeComputeEnvironmentsRequest.type = Types::DescribeComputeEnvironmentsRequest
    DescribeComputeEnvironmentsResponse.add_member(:compute_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeEnvironmentDetailList, name: "computeEnvironments"))
    DescribeComputeEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeComputeEnvironmentsResponse.type = Types::DescribeComputeEnvironmentsResponse
    DescribeConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeConsumableResourceRequest.type = Types::DescribeConsumableResourceRequest
    DescribeConsumableResourceResponse.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeConsumableResourceResponse.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeConsumableResourceResponse.add_member(:total_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "totalQuantity"))
    DescribeConsumableResourceResponse.add_member(:in_use_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "inUseQuantity"))
    DescribeConsumableResourceResponse.add_member(:available_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "availableQuantity"))
    DescribeConsumableResourceResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType"))
    DescribeConsumableResourceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "createdAt"))
    DescribeConsumableResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    DescribeConsumableResourceResponse.type = Types::DescribeConsumableResourceResponse
    DescribeJobDefinitionsRequest.add_member(:job_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "jobDefinitions"))
    DescribeJobDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    DescribeJobDefinitionsRequest.add_member(:job_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionName"))
    DescribeJobDefinitionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    DescribeJobDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeJobDefinitionsRequest.type = Types::DescribeJobDefinitionsRequest
    DescribeJobDefinitionsResponse.add_member(:job_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDefinitionList, name: "jobDefinitions"))
    DescribeJobDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeJobDefinitionsResponse.type = Types::DescribeJobDefinitionsResponse
    DescribeJobQueuesRequest.add_member(:job_queues, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "jobQueues"))
    DescribeJobQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    DescribeJobQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeJobQueuesRequest.type = Types::DescribeJobQueuesRequest
    DescribeJobQueuesResponse.add_member(:job_queues, ::Smithy::Schema::Shapes::MemberShape.new(target: JobQueueDetailList, name: "jobQueues"))
    DescribeJobQueuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeJobQueuesResponse.type = Types::DescribeJobQueuesResponse
    DescribeJobsRequest.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "jobs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeJobsRequest.type = Types::DescribeJobsRequest
    DescribeJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetailList, name: "jobs"))
    DescribeJobsResponse.type = Types::DescribeJobsResponse
    DescribeQuotaShareRequest.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeQuotaShareRequest.type = Types::DescribeQuotaShareRequest
    DescribeQuotaShareResponse.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    DescribeQuotaShareResponse.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn"))
    DescribeQuotaShareResponse.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueArn"))
    DescribeQuotaShareResponse.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityLimits, name: "capacityLimits"))
    DescribeQuotaShareResponse.add_member(:resource_sharing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareResourceSharingConfiguration, name: "resourceSharingConfiguration"))
    DescribeQuotaShareResponse.add_member(:preemption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePreemptionConfiguration, name: "preemptionConfiguration"))
    DescribeQuotaShareResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareState, name: "state"))
    DescribeQuotaShareResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareStatus, name: "status"))
    DescribeQuotaShareResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    DescribeQuotaShareResponse.type = Types::DescribeQuotaShareResponse
    DescribeSchedulingPoliciesRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "arns", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeSchedulingPoliciesRequest.type = Types::DescribeSchedulingPoliciesRequest
    DescribeSchedulingPoliciesResponse.add_member(:scheduling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingPolicyDetailList, name: "schedulingPolicies"))
    DescribeSchedulingPoliciesResponse.type = Types::DescribeSchedulingPoliciesResponse
    DescribeServiceEnvironmentsRequest.add_member(:service_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "serviceEnvironments"))
    DescribeServiceEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    DescribeServiceEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeServiceEnvironmentsRequest.type = Types::DescribeServiceEnvironmentsRequest
    DescribeServiceEnvironmentsResponse.add_member(:service_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentDetailList, name: "serviceEnvironments"))
    DescribeServiceEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeServiceEnvironmentsResponse.type = Types::DescribeServiceEnvironmentsResponse
    DescribeServiceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobRequest.type = Types::DescribeServiceJobRequest
    DescribeServiceJobResponse.add_member(:attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobAttemptDetails, name: "attempts"))
    DescribeServiceJobResponse.add_member(:capacity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobCapacityUsageDetailList, name: "capacityUsage"))
    DescribeServiceJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "createdAt"))
    DescribeServiceJobResponse.add_member(:is_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTerminated"))
    DescribeServiceJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    DescribeServiceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:latest_attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestServiceJobAttempt, name: "latestAttempt"))
    DescribeServiceJobResponse.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobRetryStrategy, name: "retryStrategy"))
    DescribeServiceJobResponse.add_member(:scheduled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "scheduledAt"))
    DescribeServiceJobResponse.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriority"))
    DescribeServiceJobResponse.add_member(:service_request_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRequestPayload"))
    DescribeServiceJobResponse.add_member(:service_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobType, name: "serviceJobType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    DescribeServiceJobResponse.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    DescribeServiceJobResponse.add_member(:preemption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobPreemptionConfiguration, name: "preemptionConfiguration"))
    DescribeServiceJobResponse.add_member(:preemption_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobPreemptionSummary, name: "preemptionSummary"))
    DescribeServiceJobResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobStatus, name: "status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    DescribeServiceJobResponse.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    DescribeServiceJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    DescribeServiceJobResponse.add_member(:timeout_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobTimeout, name: "timeoutConfig"))
    DescribeServiceJobResponse.type = Types::DescribeServiceJobResponse
    Device.add_member(:host_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Device.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPath"))
    Device.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCgroupPermissions, name: "permissions"))
    Device.type = Types::Device
    DeviceCgroupPermission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    DeviceCgroupPermission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    DeviceCgroupPermission.add_member(:mknod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MKNOD", traits: {"smithy.api#enumValue" => "MKNOD"}))
    DeviceCgroupPermissions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCgroupPermission, name: "member"))
    DevicesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "member"))
    EFSAuthorizationConfig.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessPointId"))
    EFSAuthorizationConfig.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSAuthorizationConfigIAM, name: "iam"))
    EFSAuthorizationConfig.type = Types::EFSAuthorizationConfig
    EFSAuthorizationConfigIAM.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSAuthorizationConfigIAM.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSTransitEncryption.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSTransitEncryption.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSVolumeConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EFSVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootDirectory"))
    EFSVolumeConfiguration.add_member(:transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSTransitEncryption, name: "transitEncryption"))
    EFSVolumeConfiguration.add_member(:transit_encryption_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "transitEncryptionPort"))
    EFSVolumeConfiguration.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSAuthorizationConfig, name: "authorizationConfig"))
    EFSVolumeConfiguration.type = Types::EFSVolumeConfiguration
    Ec2Configuration.add_member(:image_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, name: "imageType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ec2Configuration.add_member(:image_id_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdOverride, name: "imageIdOverride"))
    Ec2Configuration.add_member(:batch_image_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "batchImageStatus"))
    Ec2Configuration.add_member(:image_kubernetes_version, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesVersion, name: "imageKubernetesVersion"))
    Ec2Configuration.type = Types::Ec2Configuration
    Ec2ConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Configuration, name: "member"))
    EcsProperties.add_member(:task_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEcsTaskProperties, name: "taskProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EcsProperties.type = Types::EcsProperties
    EcsPropertiesDetail.add_member(:task_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEcsTaskDetails, name: "taskProperties"))
    EcsPropertiesDetail.type = Types::EcsPropertiesDetail
    EcsPropertiesOverride.add_member(:task_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTaskPropertiesOverride, name: "taskProperties"))
    EcsPropertiesOverride.type = Types::EcsPropertiesOverride
    EcsSettings.add_member(:container_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInsights, name: "containerInsights"))
    EcsSettings.type = Types::EcsSettings
    EcsTaskDetails.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTaskContainerDetails, name: "containers"))
    EcsTaskDetails.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    EcsTaskDetails.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    EcsTaskDetails.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    EcsTaskDetails.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    EcsTaskDetails.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    EcsTaskDetails.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipcMode"))
    EcsTaskDetails.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    EcsTaskDetails.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pidMode"))
    EcsTaskDetails.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    EcsTaskDetails.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, name: "runtimePlatform"))
    EcsTaskDetails.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "volumes"))
    EcsTaskDetails.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand"))
    EcsTaskDetails.add_member(:network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "networkMode"))
    EcsTaskDetails.type = Types::EcsTaskDetails
    EcsTaskProperties.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTaskContainerProperties, name: "containers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EcsTaskProperties.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    EcsTaskProperties.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    EcsTaskProperties.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    EcsTaskProperties.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipcMode"))
    EcsTaskProperties.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    EcsTaskProperties.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pidMode"))
    EcsTaskProperties.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    EcsTaskProperties.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, name: "runtimePlatform"))
    EcsTaskProperties.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "volumes"))
    EcsTaskProperties.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand"))
    EcsTaskProperties.add_member(:network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "networkMode"))
    EcsTaskProperties.type = Types::EcsTaskProperties
    EksAccessEntry.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAccessEntryDesiredState, name: "desiredState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksAccessEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAccessEntryStatus, name: "status"))
    EksAccessEntry.type = Types::EksAccessEntry
    EksAccessEntryDesiredState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EksAccessEntryDesiredState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EksAccessEntryDesiredState.add_member(:inherit_from_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INHERIT_FROM_CLUSTER", traits: {"smithy.api#enumValue" => "INHERIT_FROM_CLUSTER"}))
    EksAccessEntryStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EksAccessEntryStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    EksAnnotationsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EksAnnotationsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    EksAttemptContainerDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EksAttemptContainerDetail.add_member(:container_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerID"))
    EksAttemptContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    EksAttemptContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    EksAttemptContainerDetail.type = Types::EksAttemptContainerDetail
    EksAttemptContainerDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAttemptContainerDetail, name: "member"))
    EksAttemptDetail.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAttemptContainerDetails, name: "containers"))
    EksAttemptDetail.add_member(:init_containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAttemptContainerDetails, name: "initContainers"))
    EksAttemptDetail.add_member(:eks_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "eksClusterArn"))
    EksAttemptDetail.add_member(:pod_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "podName"))
    EksAttemptDetail.add_member(:pod_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "podNamespace"))
    EksAttemptDetail.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeName"))
    EksAttemptDetail.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    EksAttemptDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    EksAttemptDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    EksAttemptDetail.type = Types::EksAttemptDetail
    EksAttemptDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAttemptDetail, name: "member"))
    EksConfiguration.add_member(:eks_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "eksClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksConfiguration.add_member(:kubernetes_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kubernetesNamespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksConfiguration.add_member(:access_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAccessEntry, name: "accessEntry"))
    EksConfiguration.type = Types::EksConfiguration
    EksConfigurationUpdate.add_member(:access_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAccessEntry, name: "accessEntry"))
    EksConfigurationUpdate.type = Types::EksConfigurationUpdate
    EksContainer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EksContainer.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksContainer.add_member(:image_pull_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imagePullPolicy"))
    EksContainer.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    EksContainer.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "args"))
    EksContainer.add_member(:env, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerEnvironmentVariables, name: "env"))
    EksContainer.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerResourceRequirements, name: "resources"))
    EksContainer.add_member(:volume_mounts, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerVolumeMounts, name: "volumeMounts"))
    EksContainer.add_member(:security_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerSecurityContext, name: "securityContext"))
    EksContainer.type = Types::EksContainer
    EksContainerDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EksContainerDetail.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    EksContainerDetail.add_member(:image_pull_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imagePullPolicy"))
    EksContainerDetail.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    EksContainerDetail.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "args"))
    EksContainerDetail.add_member(:env, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerEnvironmentVariables, name: "env"))
    EksContainerDetail.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerResourceRequirements, name: "resources"))
    EksContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    EksContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    EksContainerDetail.add_member(:volume_mounts, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerVolumeMounts, name: "volumeMounts"))
    EksContainerDetail.add_member(:security_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerSecurityContext, name: "securityContext"))
    EksContainerDetail.type = Types::EksContainerDetail
    EksContainerDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerDetail, name: "member"))
    EksContainerEnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksContainerEnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    EksContainerEnvironmentVariable.type = Types::EksContainerEnvironmentVariable
    EksContainerEnvironmentVariables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerEnvironmentVariable, name: "member"))
    EksContainerOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EksContainerOverride.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    EksContainerOverride.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    EksContainerOverride.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "args"))
    EksContainerOverride.add_member(:env, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerEnvironmentVariables, name: "env"))
    EksContainerOverride.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerResourceRequirements, name: "resources"))
    EksContainerOverride.type = Types::EksContainerOverride
    EksContainerOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerOverride, name: "member"))
    EksContainerResourceRequirements.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLimits, name: "limits"))
    EksContainerResourceRequirements.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: EksRequests, name: "requests"))
    EksContainerResourceRequirements.type = Types::EksContainerResourceRequirements
    EksContainerSecurityContext.add_member(:run_as_user, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "runAsUser"))
    EksContainerSecurityContext.add_member(:run_as_group, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "runAsGroup"))
    EksContainerSecurityContext.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "privileged"))
    EksContainerSecurityContext.add_member(:allow_privilege_escalation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowPrivilegeEscalation"))
    EksContainerSecurityContext.add_member(:read_only_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readOnlyRootFilesystem"))
    EksContainerSecurityContext.add_member(:run_as_non_root, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "runAsNonRoot"))
    EksContainerSecurityContext.type = Types::EksContainerSecurityContext
    EksContainerVolumeMount.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EksContainerVolumeMount.add_member(:mount_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mountPath"))
    EksContainerVolumeMount.add_member(:sub_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subPath"))
    EksContainerVolumeMount.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readOnly"))
    EksContainerVolumeMount.type = Types::EksContainerVolumeMount
    EksContainerVolumeMounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerVolumeMount, name: "member"))
    EksContainers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainer, name: "member"))
    EksEmptyDir.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "medium"))
    EksEmptyDir.add_member(:size_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Quantity, name: "sizeLimit"))
    EksEmptyDir.type = Types::EksEmptyDir
    EksHostPath.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    EksHostPath.type = Types::EksHostPath
    EksLabelsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EksLabelsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    EksLimits.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EksLimits.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Quantity, name: "value"))
    EksMetadata.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelsMap, name: "labels"))
    EksMetadata.add_member(:annotations, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnnotationsMap, name: "annotations"))
    EksMetadata.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    EksMetadata.type = Types::EksMetadata
    EksPersistentVolumeClaim.add_member(:claim_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "claimName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksPersistentVolumeClaim.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readOnly"))
    EksPersistentVolumeClaim.type = Types::EksPersistentVolumeClaim
    EksPodProperties.add_member(:service_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccountName"))
    EksPodProperties.add_member(:host_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hostNetwork"))
    EksPodProperties.add_member(:dns_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dnsPolicy"))
    EksPodProperties.add_member(:image_pull_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePullSecrets, name: "imagePullSecrets"))
    EksPodProperties.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainers, name: "containers"))
    EksPodProperties.add_member(:init_containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainers, name: "initContainers"))
    EksPodProperties.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: EksVolumes, name: "volumes"))
    EksPodProperties.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EksMetadata, name: "metadata"))
    EksPodProperties.add_member(:share_process_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "shareProcessNamespace"))
    EksPodProperties.type = Types::EksPodProperties
    EksPodPropertiesDetail.add_member(:service_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccountName"))
    EksPodPropertiesDetail.add_member(:host_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hostNetwork"))
    EksPodPropertiesDetail.add_member(:dns_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dnsPolicy"))
    EksPodPropertiesDetail.add_member(:image_pull_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePullSecrets, name: "imagePullSecrets"))
    EksPodPropertiesDetail.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerDetails, name: "containers"))
    EksPodPropertiesDetail.add_member(:init_containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerDetails, name: "initContainers"))
    EksPodPropertiesDetail.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: EksVolumes, name: "volumes"))
    EksPodPropertiesDetail.add_member(:pod_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "podName"))
    EksPodPropertiesDetail.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeName"))
    EksPodPropertiesDetail.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EksMetadata, name: "metadata"))
    EksPodPropertiesDetail.add_member(:share_process_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "shareProcessNamespace"))
    EksPodPropertiesDetail.type = Types::EksPodPropertiesDetail
    EksPodPropertiesOverride.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerOverrideList, name: "containers"))
    EksPodPropertiesOverride.add_member(:init_containers, ::Smithy::Schema::Shapes::MemberShape.new(target: EksContainerOverrideList, name: "initContainers"))
    EksPodPropertiesOverride.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EksMetadata, name: "metadata"))
    EksPodPropertiesOverride.type = Types::EksPodPropertiesOverride
    EksProperties.add_member(:pod_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPodProperties, name: "podProperties"))
    EksProperties.type = Types::EksProperties
    EksPropertiesDetail.add_member(:pod_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPodPropertiesDetail, name: "podProperties"))
    EksPropertiesDetail.type = Types::EksPropertiesDetail
    EksPropertiesOverride.add_member(:pod_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPodPropertiesOverride, name: "podProperties"))
    EksPropertiesOverride.type = Types::EksPropertiesOverride
    EksRequests.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EksRequests.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Quantity, name: "value"))
    EksSecret.add_member(:secret_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "secretName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksSecret.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "optional"))
    EksSecret.type = Types::EksSecret
    EksVolume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksVolume.add_member(:host_path, ::Smithy::Schema::Shapes::MemberShape.new(target: EksHostPath, name: "hostPath"))
    EksVolume.add_member(:empty_dir, ::Smithy::Schema::Shapes::MemberShape.new(target: EksEmptyDir, name: "emptyDir"))
    EksVolume.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSecret, name: "secret"))
    EksVolume.add_member(:persistent_volume_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPersistentVolumeClaim, name: "persistentVolumeClaim"))
    EksVolume.type = Types::EksVolume
    EksVolumes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksVolume, name: "member"))
    EnvironmentVariables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair, name: "member"))
    EphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGiB", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EphemeralStorage.type = Types::EphemeralStorage
    EvaluateOnExit.add_member(:on_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "onStatusReason"))
    EvaluateOnExit.add_member(:on_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "onReason"))
    EvaluateOnExit.add_member(:on_exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "onExitCode"))
    EvaluateOnExit.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAction, name: "action", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EvaluateOnExit.type = Types::EvaluateOnExit
    EvaluateOnExitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluateOnExit, name: "member"))
    FairshareCapacityUsage.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    FairshareCapacityUsage.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "quantity"))
    FairshareCapacityUsage.type = Types::FairshareCapacityUsage
    FairshareCapacityUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FairshareCapacityUsage, name: "member"))
    FairshareCapacityUtilization.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    FairshareCapacityUtilization.add_member(:capacity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: FairshareCapacityUsageList, name: "capacityUsage"))
    FairshareCapacityUtilization.type = Types::FairshareCapacityUtilization
    FairshareCapacityUtilizationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FairshareCapacityUtilization, name: "member"))
    FairsharePolicy.add_member(:share_decay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "shareDecaySeconds"))
    FairsharePolicy.add_member(:compute_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "computeReservation"))
    FairsharePolicy.add_member(:share_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareAttributesList, name: "shareDistribution"))
    FairsharePolicy.type = Types::FairsharePolicy
    FairshareUtilizationDetail.add_member(:active_share_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "activeShareCount"))
    FairshareUtilizationDetail.add_member(:top_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: FairshareCapacityUtilizationList, name: "topCapacityUtilization"))
    FairshareUtilizationDetail.type = Types::FairshareUtilizationDetail
    FargatePlatformConfiguration.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    FargatePlatformConfiguration.type = Types::FargatePlatformConfiguration
    FirelensConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfigurationType, name: "type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FirelensConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfigurationOptionsMap, name: "options"))
    FirelensConfiguration.type = Types::FirelensConfiguration
    FirelensConfigurationOptionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    FirelensConfigurationOptionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    FirelensConfigurationType.add_member(:fluentd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLUENTD", traits: {"smithy.api#enumValue" => "fluentd"}))
    FirelensConfigurationType.add_member(:fluentbit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLUENTBIT", traits: {"smithy.api#enumValue" => "fluentbit"}))
    FrontOfQueueDetail.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQueueJobSummaryList, name: "jobs"))
    FrontOfQueueDetail.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "lastUpdatedAt"))
    FrontOfQueueDetail.type = Types::FrontOfQueueDetail
    FrontOfQueueJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    FrontOfQueueJobSummary.add_member(:earliest_time_at_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "earliestTimeAtPosition"))
    FrontOfQueueJobSummary.type = Types::FrontOfQueueJobSummary
    FrontOfQueueJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQueueJobSummary, name: "member"))
    FrontOfQuotaShareJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    FrontOfQuotaShareJobSummary.add_member(:earliest_time_at_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "earliestTimeAtPosition"))
    FrontOfQuotaShareJobSummary.type = Types::FrontOfQuotaShareJobSummary
    FrontOfQuotaShareJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQuotaShareJobSummary, name: "member"))
    FrontOfQuotaSharesDetail.add_member(:quota_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQuotaSharesJobSummaryMap, name: "quotaShares"))
    FrontOfQuotaSharesDetail.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "lastUpdatedAt"))
    FrontOfQuotaSharesDetail.type = Types::FrontOfQuotaSharesDetail
    FrontOfQuotaSharesJobSummaryMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    FrontOfQuotaSharesJobSummaryMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQuotaShareJobSummaryList, name: "value"))
    GetJobQueueSnapshotRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetJobQueueSnapshotRequest.type = Types::GetJobQueueSnapshotRequest
    GetJobQueueSnapshotResponse.add_member(:front_of_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQueueDetail, name: "frontOfQueue"))
    GetJobQueueSnapshotResponse.add_member(:front_of_quota_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: FrontOfQuotaSharesDetail, name: "frontOfQuotaShares"))
    GetJobQueueSnapshotResponse.add_member(:queue_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSnapshotUtilizationDetail, name: "queueUtilization"))
    GetJobQueueSnapshotResponse.type = Types::GetJobQueueSnapshotResponse
    Host.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourcePath"))
    Host.type = Types::Host
    ImagePullSecret.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImagePullSecret.type = Types::ImagePullSecret
    ImagePullSecrets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePullSecret, name: "member"))
    InfrastructureOptimization.add_member(:scale_in_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "scaleInAfter"))
    InfrastructureOptimization.type = Types::InfrastructureOptimization
    InstanceLaunchTemplate.add_member(:ec2_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2InstanceProfileArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceLaunchTemplate.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesNetworkConfiguration, name: "networkConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceLaunchTemplate.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirementsRequest, name: "instanceRequirements"))
    InstanceLaunchTemplate.add_member(:capacity_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityOptionType"))
    InstanceLaunchTemplate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesStorageConfiguration, name: "storageConfiguration"))
    InstanceLaunchTemplate.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "monitoring"))
    InstanceLaunchTemplate.add_member(:fips_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "fipsEnabled"))
    InstanceLaunchTemplate.add_member(:capacity_reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationRequest, name: "capacityReservations"))
    InstanceLaunchTemplate.add_member(:instance_metadata_tags_propagation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "instanceMetadataTagsPropagation"))
    InstanceLaunchTemplate.add_member(:local_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesLocalStorageConfiguration, name: "localStorageConfiguration"))
    InstanceLaunchTemplate.type = Types::InstanceLaunchTemplate
    InstanceLaunchTemplateUpdate.add_member(:ec2_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2InstanceProfileArn"))
    InstanceLaunchTemplateUpdate.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesNetworkConfiguration, name: "networkConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirementsRequest, name: "instanceRequirements"))
    InstanceLaunchTemplateUpdate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesStorageConfiguration, name: "storageConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "monitoring"))
    InstanceLaunchTemplateUpdate.add_member(:capacity_reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationRequest, name: "capacityReservations"))
    InstanceLaunchTemplateUpdate.add_member(:instance_metadata_tags_propagation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "instanceMetadataTagsPropagation"))
    InstanceLaunchTemplateUpdate.add_member(:local_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesLocalStorageConfiguration, name: "localStorageConfiguration"))
    InstanceLaunchTemplateUpdate.type = Types::InstanceLaunchTemplateUpdate
    InstanceRequirementsRequest.add_member(:allowed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "allowedInstanceTypes"))
    InstanceRequirementsRequest.type = Types::InstanceRequirementsRequest
    JQState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    JQState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    JQStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    JQStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    JQStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    JQStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    JQStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    JQStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    JobCapacityUsageSummary.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    JobCapacityUsageSummary.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "quantity"))
    JobCapacityUsageSummary.type = Types::JobCapacityUsageSummary
    JobCapacityUsageSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobCapacityUsageSummary, name: "member"))
    JobDefinition.add_member(:job_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:job_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "revision", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    JobDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriority"))
    JobDefinition.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "parameters"))
    JobDefinition.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStrategy, name: "retryStrategy"))
    JobDefinition.add_member(:container_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProperties, name: "containerProperties"))
    JobDefinition.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimeout, name: "timeout"))
    JobDefinition.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeProperties, name: "nodeProperties"))
    JobDefinition.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    JobDefinition.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "propagateTags"))
    JobDefinition.add_member(:platform_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformCapabilityList, name: "platformCapabilities"))
    JobDefinition.add_member(:ecs_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsProperties, name: "ecsProperties"))
    JobDefinition.add_member(:eks_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksProperties, name: "eksProperties"))
    JobDefinition.add_member(:container_orchestration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationType, name: "containerOrchestrationType"))
    JobDefinition.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourceProperties"))
    JobDefinition.type = Types::JobDefinition
    JobDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDefinition, name: "member"))
    JobDefinitionType.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Container", traits: {"smithy.api#enumValue" => "container"}))
    JobDefinitionType.add_member(:multinode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Multinode", traits: {"smithy.api#enumValue" => "multinode"}))
    JobDependency.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId"))
    JobDependency.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayJobDependency, name: "type"))
    JobDependency.type = Types::JobDependency
    JobDependencyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDependency, name: "member"))
    JobDetail.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    JobDetail.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    JobDetail.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriority"))
    JobDetail.add_member(:attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptDetails, name: "attempts"))
    JobDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    JobDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "createdAt"))
    JobDetail.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStrategy, name: "retryStrategy"))
    JobDetail.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    JobDetail.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDependencyList, name: "dependsOn"))
    JobDetail.add_member(:job_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "parameters"))
    JobDetail.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDetail, name: "container"))
    JobDetail.add_member(:node_details, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeDetails, name: "nodeDetails"))
    JobDetail.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeProperties, name: "nodeProperties"))
    JobDetail.add_member(:array_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayPropertiesDetail, name: "arrayProperties"))
    JobDetail.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimeout, name: "timeout"))
    JobDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    JobDetail.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "propagateTags"))
    JobDetail.add_member(:platform_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformCapabilityList, name: "platformCapabilities"))
    JobDetail.add_member(:eks_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPropertiesDetail, name: "eksProperties"))
    JobDetail.add_member(:eks_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAttemptDetails, name: "eksAttempts"))
    JobDetail.add_member(:ecs_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsPropertiesDetail, name: "ecsProperties"))
    JobDetail.add_member(:is_cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isCancelled"))
    JobDetail.add_member(:is_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTerminated"))
    JobDetail.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourceProperties"))
    JobDetail.type = Types::JobDetail
    JobDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetail, name: "member"))
    JobQueueDetail.add_member(:job_queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JQState, name: "state", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:scheduling_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schedulingPolicyArn"))
    JobQueueDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JQStatus, name: "status"))
    JobQueueDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    JobQueueDetail.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "priority", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:compute_environment_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeEnvironmentOrders, name: "computeEnvironmentOrder", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:service_environment_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentOrders, name: "serviceEnvironmentOrder"))
    JobQueueDetail.add_member(:job_queue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobQueueType, name: "jobQueueType"))
    JobQueueDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    JobQueueDetail.add_member(:job_state_time_limit_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateTimeLimitActions, name: "jobStateTimeLimitActions"))
    JobQueueDetail.type = Types::JobQueueDetail
    JobQueueDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobQueueDetail, name: "member"))
    JobQueueType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    JobQueueType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    JobQueueType.add_member(:ecs_fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_FARGATE", traits: {"smithy.api#enumValue" => "ECS_FARGATE"}))
    JobQueueType.add_member(:sagemaker_training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_TRAINING", traits: {"smithy.api#enumValue" => "SAGEMAKER_TRAINING"}))
    JobQueueType.add_member(:ecs_managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "ECS_MANAGED_INSTANCES"}))
    JobStateTimeLimitAction.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateTimeLimitActionsState, name: "state", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.add_member(:max_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxTimeSeconds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateTimeLimitActionsAction, name: "action", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.type = Types::JobStateTimeLimitAction
    JobStateTimeLimitActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateTimeLimitAction, name: "member"))
    JobStateTimeLimitActionsAction.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL", traits: {"smithy.api#enumValue" => "CANCEL"}))
    JobStateTimeLimitActionsAction.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE", traits: {"smithy.api#enumValue" => "TERMINATE"}))
    JobStateTimeLimitActionsState.add_member(:runnable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNABLE", traits: {"smithy.api#enumValue" => "RUNNABLE"}))
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    JobStatus.add_member(:runnable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNABLE", traits: {"smithy.api#enumValue" => "RUNNABLE"}))
    JobStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    JobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobSummary.add_member(:capacity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: JobCapacityUsageSummaryList, name: "capacityUsage"))
    JobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "createdAt"))
    JobSummary.add_member(:scheduled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "scheduledAt"))
    JobSummary.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    JobSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    JobSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    JobSummary.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    JobSummary.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerSummary, name: "container"))
    JobSummary.add_member(:array_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayPropertiesSummary, name: "arrayProperties"))
    JobSummary.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePropertiesSummary, name: "nodeProperties"))
    JobSummary.add_member(:job_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinition"))
    JobSummary.add_member(:is_cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isCancelled"))
    JobSummary.add_member(:is_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTerminated"))
    JobSummary.type = Types::JobSummary
    JobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, name: "member"))
    JobTimeout.add_member(:attempt_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "attemptDurationSeconds"))
    JobTimeout.type = Types::JobTimeout
    KeyValuePair.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    KeyValuePair.type = Types::KeyValuePair
    KeyValuesPair.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    KeyValuesPair.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "values"))
    KeyValuesPair.type = Types::KeyValuesPair
    LatestServiceJobAttempt.add_member(:service_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceId, name: "serviceResourceId"))
    LatestServiceJobAttempt.type = Types::LatestServiceJobAttempt
    LaunchTemplateSpecification.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "launchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "launchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    LaunchTemplateSpecification.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecificationOverrideList, name: "overrides"))
    LaunchTemplateSpecification.add_member(:userdata_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserdataType, name: "userdataType"))
    LaunchTemplateSpecification.type = Types::LaunchTemplateSpecification
    LaunchTemplateSpecificationOverride.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "launchTemplateId"))
    LaunchTemplateSpecificationOverride.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "launchTemplateName"))
    LaunchTemplateSpecificationOverride.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    LaunchTemplateSpecificationOverride.add_member(:target_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "targetInstanceTypes"))
    LaunchTemplateSpecificationOverride.add_member(:userdata_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserdataType, name: "userdataType"))
    LaunchTemplateSpecificationOverride.type = Types::LaunchTemplateSpecificationOverride
    LaunchTemplateSpecificationOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecificationOverride, name: "member"))
    LinuxParameters.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DevicesList, name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, ::Smithy::Schema::Shapes::MemberShape.new(target: TmpfsList, name: "tmpfs"))
    LinuxParameters.add_member(:max_swap, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxSwap"))
    LinuxParameters.add_member(:swappiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "swappiness"))
    LinuxParameters.type = Types::LinuxParameters
    ListAttemptEcsTaskDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptEcsTaskDetails, name: "member"))
    ListAttemptTaskContainerDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptTaskContainerDetails, name: "member"))
    ListConsumableResourcesFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuesPair, name: "member"))
    ListConsumableResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListConsumableResourcesFilterList, name: "filters"))
    ListConsumableResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    ListConsumableResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListConsumableResourcesRequest.type = Types::ListConsumableResourcesRequest
    ListConsumableResourcesResponse.add_member(:consumable_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceSummaryList, name: "consumableResources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListConsumableResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListConsumableResourcesResponse.type = Types::ListConsumableResourcesResponse
    ListEcsTaskDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsTaskDetails, name: "member"))
    ListEcsTaskProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsTaskProperties, name: "member"))
    ListJobsByConsumableResourceFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuesPair, name: "member"))
    ListJobsByConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListJobsByConsumableResourceFilterList, name: "filters"))
    ListJobsByConsumableResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    ListJobsByConsumableResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobsByConsumableResourceRequest.type = Types::ListJobsByConsumableResourceRequest
    ListJobsByConsumableResourceResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ListJobsByConsumableResourceSummaryList, name: "jobs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobsByConsumableResourceResponse.type = Types::ListJobsByConsumableResourceResponse
    ListJobsByConsumableResourceSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:job_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionArn"))
    ListJobsByConsumableResourceSummary.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    ListJobsByConsumableResourceSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "quantity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ListJobsByConsumableResourceSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    ListJobsByConsumableResourceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "createdAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourceProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.type = Types::ListJobsByConsumableResourceSummary
    ListJobsByConsumableResourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListJobsByConsumableResourceSummary, name: "member"))
    ListJobsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuesPair, name: "member"))
    ListJobsRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue"))
    ListJobsRequest.add_member(:array_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arrayJobId"))
    ListJobsRequest.add_member(:multi_node_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "multiNodeJobId"))
    ListJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus"))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListJobsFilterList, name: "filters"))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResponse.add_member(:job_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummaryList, name: "jobSummaryList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobsResponse.type = Types::ListJobsResponse
    ListQuotaSharesRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListQuotaSharesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    ListQuotaSharesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQuotaSharesRequest.type = Types::ListQuotaSharesRequest
    ListQuotaSharesResponse.add_member(:quota_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareList, name: "quotaShares"))
    ListQuotaSharesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQuotaSharesResponse.type = Types::ListQuotaSharesResponse
    ListSchedulingPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    ListSchedulingPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSchedulingPoliciesRequest.type = Types::ListSchedulingPoliciesRequest
    ListSchedulingPoliciesResponse.add_member(:scheduling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingPolicyListingDetailList, name: "schedulingPolicies"))
    ListSchedulingPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSchedulingPoliciesResponse.type = Types::ListSchedulingPoliciesResponse
    ListServiceJobsRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue"))
    ListServiceJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobStatus, name: "jobStatus"))
    ListServiceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults"))
    ListServiceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListServiceJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListJobsFilterList, name: "filters"))
    ListServiceJobsRequest.type = Types::ListServiceJobsRequest
    ListServiceJobsResponse.add_member(:job_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobSummaryList, name: "jobSummaryList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListServiceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListServiceJobsResponse.type = Types::ListServiceJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskContainerDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskContainerDetails, name: "member"))
    ListTaskContainerOverrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskContainerOverrides, name: "member"))
    ListTaskContainerProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskContainerProperties, name: "member"))
    ListTaskPropertiesOverride.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPropertiesOverride, name: "member"))
    LogConfiguration.add_member(:log_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDriver, name: "logDriver", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LogConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationOptionsMap, name: "options"))
    LogConfiguration.add_member(:secret_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secretOptions"))
    LogConfiguration.type = Types::LogConfiguration
    LogConfigurationOptionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    LogConfigurationOptionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    LogDriver.add_member(:json_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_FILE", traits: {"smithy.api#enumValue" => "json-file"}))
    LogDriver.add_member(:syslog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSLOG", traits: {"smithy.api#enumValue" => "syslog"}))
    LogDriver.add_member(:journald, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOURNALD", traits: {"smithy.api#enumValue" => "journald"}))
    LogDriver.add_member(:gelf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GELF", traits: {"smithy.api#enumValue" => "gelf"}))
    LogDriver.add_member(:fluentd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLUENTD", traits: {"smithy.api#enumValue" => "fluentd"}))
    LogDriver.add_member(:awslogs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSLOGS", traits: {"smithy.api#enumValue" => "awslogs"}))
    LogDriver.add_member(:splunk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPLUNK", traits: {"smithy.api#enumValue" => "splunk"}))
    LogDriver.add_member(:awsfirelens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSFIRELENS", traits: {"smithy.api#enumValue" => "awsfirelens"}))
    ManagedInstancesLocalStorageConfiguration.add_member(:use_local_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useLocalStorage"))
    ManagedInstancesLocalStorageConfiguration.type = Types::ManagedInstancesLocalStorageConfiguration
    ManagedInstancesNetworkConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedInstancesNetworkConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroups", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedInstancesNetworkConfiguration.type = Types::ManagedInstancesNetworkConfiguration
    ManagedInstancesProvider.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "propagateTags"))
    ManagedInstancesProvider.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedInstancesProvider.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplate, name: "instanceLaunchTemplate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ManagedInstancesProvider.add_member(:infrastructure_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureOptimization, name: "infrastructureOptimization"))
    ManagedInstancesProvider.type = Types::ManagedInstancesProvider
    ManagedInstancesStorageConfiguration.add_member(:storage_size_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "storageSizeGiB"))
    ManagedInstancesStorageConfiguration.type = Types::ManagedInstancesStorageConfiguration
    MountPoint.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPath"))
    MountPoint.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readOnly"))
    MountPoint.add_member(:source_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVolume"))
    MountPoint.type = Types::MountPoint
    MountPoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoint, name: "member"))
    NetworkConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignPublicIp, name: "assignPublicIp"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NetworkInterface.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attachmentId"))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipv6Address"))
    NetworkInterface.add_member(:private_ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "privateIpv4Address"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member"))
    NodeDetails.add_member(:node_index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "nodeIndex"))
    NodeDetails.add_member(:is_main_node, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isMainNode"))
    NodeDetails.type = Types::NodeDetails
    NodeOverrides.add_member(:num_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numNodes"))
    NodeOverrides.add_member(:node_property_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePropertyOverrides, name: "nodePropertyOverrides"))
    NodeOverrides.type = Types::NodeOverrides
    NodeProperties.add_member(:num_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeProperties.add_member(:main_node, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "mainNode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeProperties.add_member(:node_range_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRangeProperties, name: "nodeRangeProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeProperties.type = Types::NodeProperties
    NodePropertiesSummary.add_member(:is_main_node, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isMainNode"))
    NodePropertiesSummary.add_member(:num_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numNodes"))
    NodePropertiesSummary.add_member(:node_index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "nodeIndex"))
    NodePropertiesSummary.type = Types::NodePropertiesSummary
    NodePropertyOverride.add_member(:target_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodePropertyOverride.add_member(:container_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOverrides, name: "containerOverrides"))
    NodePropertyOverride.add_member(:ecs_properties_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsPropertiesOverride, name: "ecsPropertiesOverride"))
    NodePropertyOverride.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceTypes"))
    NodePropertyOverride.add_member(:eks_properties_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPropertiesOverride, name: "eksPropertiesOverride"))
    NodePropertyOverride.add_member(:consumable_resource_properties_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourcePropertiesOverride"))
    NodePropertyOverride.type = Types::NodePropertyOverride
    NodePropertyOverrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePropertyOverride, name: "member"))
    NodeRangeProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRangeProperty, name: "member"))
    NodeRangeProperty.add_member(:target_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeRangeProperty.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProperties, name: "container"))
    NodeRangeProperty.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceTypes"))
    NodeRangeProperty.add_member(:ecs_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsProperties, name: "ecsProperties"))
    NodeRangeProperty.add_member(:eks_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksProperties, name: "eksProperties"))
    NodeRangeProperty.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourceProperties"))
    NodeRangeProperty.type = Types::NodeRangeProperty
    OrchestrationType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    OrchestrationType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    ParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    PlatformCapability.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    PlatformCapability.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    PlatformCapability.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    PlatformCapabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformCapability, name: "member"))
    QueueSnapshotCapacityUsage.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    QueueSnapshotCapacityUsage.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "quantity"))
    QueueSnapshotCapacityUsage.type = Types::QueueSnapshotCapacityUsage
    QueueSnapshotCapacityUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSnapshotCapacityUsage, name: "member"))
    QueueSnapshotUtilizationDetail.add_member(:total_capacity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSnapshotCapacityUsageList, name: "totalCapacityUsage"))
    QueueSnapshotUtilizationDetail.add_member(:fairshare_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: FairshareUtilizationDetail, name: "fairshareUtilization"))
    QueueSnapshotUtilizationDetail.add_member(:quota_share_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareUtilizationDetail, name: "quotaShareUtilization"))
    QueueSnapshotUtilizationDetail.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "lastUpdatedAt"))
    QueueSnapshotUtilizationDetail.type = Types::QueueSnapshotUtilizationDetail
    QuotaShareCapacityLimit.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    QuotaShareCapacityLimit.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    QuotaShareCapacityLimit.type = Types::QuotaShareCapacityLimit
    QuotaShareCapacityLimits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityLimit, name: "member"))
    QuotaShareCapacityUsage.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    QuotaShareCapacityUsage.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "quantity"))
    QuotaShareCapacityUsage.type = Types::QuotaShareCapacityUsage
    QuotaShareCapacityUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityUsage, name: "member"))
    QuotaShareCapacityUtilization.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    QuotaShareCapacityUtilization.add_member(:capacity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityUsageList, name: "capacityUsage"))
    QuotaShareCapacityUtilization.type = Types::QuotaShareCapacityUtilization
    QuotaShareCapacityUtilizationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityUtilization, name: "member"))
    QuotaShareDetail.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    QuotaShareDetail.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn"))
    QuotaShareDetail.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueArn"))
    QuotaShareDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityLimits, name: "capacityLimits"))
    QuotaShareDetail.add_member(:resource_sharing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareResourceSharingConfiguration, name: "resourceSharingConfiguration"))
    QuotaShareDetail.add_member(:preemption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePreemptionConfiguration, name: "preemptionConfiguration"))
    QuotaShareDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareState, name: "state"))
    QuotaShareDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareStatus, name: "status"))
    QuotaShareDetail.type = Types::QuotaShareDetail
    QuotaShareIdleResourceAssignmentStrategy.add_member(:fifo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIFO", traits: {"smithy.api#enumValue" => "FIFO"}))
    QuotaShareInSharePreemptionState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    QuotaShareInSharePreemptionState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    QuotaShareList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareDetail, name: "member"))
    QuotaSharePolicy.add_member(:idle_resource_assignment_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareIdleResourceAssignmentStrategy, name: "idleResourceAssignmentStrategy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    QuotaSharePolicy.type = Types::QuotaSharePolicy
    QuotaSharePreemptionConfiguration.add_member(:in_share_preemption, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareInSharePreemptionState, name: "inSharePreemption", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    QuotaSharePreemptionConfiguration.type = Types::QuotaSharePreemptionConfiguration
    QuotaShareResourceSharingConfiguration.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareResourceSharingStrategy, name: "strategy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    QuotaShareResourceSharingConfiguration.add_member(:borrow_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "borrowLimit"))
    QuotaShareResourceSharingConfiguration.type = Types::QuotaShareResourceSharingConfiguration
    QuotaShareResourceSharingStrategy.add_member(:reserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVE", traits: {"smithy.api#enumValue" => "RESERVE"}))
    QuotaShareResourceSharingStrategy.add_member(:lend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEND", traits: {"smithy.api#enumValue" => "LEND"}))
    QuotaShareResourceSharingStrategy.add_member(:lend_and_borrow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEND_AND_BORROW", traits: {"smithy.api#enumValue" => "LEND_AND_BORROW"}))
    QuotaShareState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    QuotaShareState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    QuotaShareStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    QuotaShareStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    QuotaShareStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    QuotaShareStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    QuotaShareStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    QuotaShareUtilizationDetail.add_member(:top_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityUtilizationList, name: "topCapacityUtilization"))
    QuotaShareUtilizationDetail.type = Types::QuotaShareUtilizationDetail
    RegisterJobDefinitionRequest.add_member(:job_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDefinitionType, name: "type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "parameters"))
    RegisterJobDefinitionRequest.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriority"))
    RegisterJobDefinitionRequest.add_member(:container_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProperties, name: "containerProperties"))
    RegisterJobDefinitionRequest.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeProperties, name: "nodeProperties"))
    RegisterJobDefinitionRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStrategy, name: "retryStrategy"))
    RegisterJobDefinitionRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "propagateTags"))
    RegisterJobDefinitionRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimeout, name: "timeout"))
    RegisterJobDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    RegisterJobDefinitionRequest.add_member(:platform_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformCapabilityList, name: "platformCapabilities"))
    RegisterJobDefinitionRequest.add_member(:eks_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EksProperties, name: "eksProperties"))
    RegisterJobDefinitionRequest.add_member(:ecs_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsProperties, name: "ecsProperties"))
    RegisterJobDefinitionRequest.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourceProperties"))
    RegisterJobDefinitionRequest.type = Types::RegisterJobDefinitionRequest
    RegisterJobDefinitionResponse.add_member(:job_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionResponse.add_member(:job_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinitionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "revision", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionResponse.type = Types::RegisterJobDefinitionResponse
    RepositoryCredentials.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentialsParameter", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RepositoryCredentials.type = Types::RepositoryCredentials
    ResourceRequirement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceRequirement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceRequirement.type = Types::ResourceRequirement
    ResourceRequirements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirement, name: "member"))
    ResourceType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU", traits: {"smithy.api#enumValue" => "GPU"}))
    ResourceType.add_member(:vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VCPU", traits: {"smithy.api#enumValue" => "VCPU"}))
    ResourceType.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY", traits: {"smithy.api#enumValue" => "MEMORY"}))
    RetryAction.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY"}))
    RetryAction.add_member(:exit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXIT", traits: {"smithy.api#enumValue" => "EXIT"}))
    RetryStrategy.add_member(:attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "attempts"))
    RetryStrategy.add_member(:evaluate_on_exit, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluateOnExitList, name: "evaluateOnExit"))
    RetryStrategy.type = Types::RetryStrategy
    RuntimePlatform.add_member(:operating_system_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operatingSystemFamily"))
    RuntimePlatform.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpuArchitecture"))
    RuntimePlatform.type = Types::RuntimePlatform
    S3FilesVolumeConfiguration.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileSystemArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    S3FilesVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootDirectory"))
    S3FilesVolumeConfiguration.add_member(:transit_encryption_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "transitEncryptionPort"))
    S3FilesVolumeConfiguration.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessPointArn"))
    S3FilesVolumeConfiguration.type = Types::S3FilesVolumeConfiguration
    SchedulingPolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SchedulingPolicyDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SchedulingPolicyDetail.add_member(:quota_share_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePolicy, name: "quotaSharePolicy"))
    SchedulingPolicyDetail.add_member(:fairshare_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FairsharePolicy, name: "fairsharePolicy"))
    SchedulingPolicyDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    SchedulingPolicyDetail.type = Types::SchedulingPolicyDetail
    SchedulingPolicyDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingPolicyDetail, name: "member"))
    SchedulingPolicyListingDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SchedulingPolicyListingDetail.type = Types::SchedulingPolicyListingDetail
    SchedulingPolicyListingDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingPolicyListingDetail, name: "member"))
    Secret.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Secret.add_member(:value_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "valueFrom", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Secret.type = Types::Secret
    SecretList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Secret, name: "member"))
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServerException.type = Types::ServerException
    ServiceEnvironmentDetail.add_member(:service_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:service_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:service_environment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentType, name: "serviceEnvironmentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentState, name: "state"))
    ServiceEnvironmentDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentStatus, name: "status"))
    ServiceEnvironmentDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityLimits, name: "capacityLimits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    ServiceEnvironmentDetail.type = Types::ServiceEnvironmentDetail
    ServiceEnvironmentDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentDetail, name: "member"))
    ServiceEnvironmentOrder.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "order", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentOrder.add_member(:service_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentOrder.type = Types::ServiceEnvironmentOrder
    ServiceEnvironmentOrders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentOrder, name: "member"))
    ServiceEnvironmentState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ServiceEnvironmentState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ServiceEnvironmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ServiceEnvironmentStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ServiceEnvironmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ServiceEnvironmentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ServiceEnvironmentStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    ServiceEnvironmentStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    ServiceEnvironmentType.add_member(:sagemaker_training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_TRAINING", traits: {"smithy.api#enumValue" => "SAGEMAKER_TRAINING"}))
    ServiceJobAttemptDetail.add_member(:service_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceId, name: "serviceResourceId"))
    ServiceJobAttemptDetail.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    ServiceJobAttemptDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    ServiceJobAttemptDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ServiceJobAttemptDetail.type = Types::ServiceJobAttemptDetail
    ServiceJobAttemptDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobAttemptDetail, name: "member"))
    ServiceJobCapacityUsageDetail.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    ServiceJobCapacityUsageDetail.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "quantity"))
    ServiceJobCapacityUsageDetail.type = Types::ServiceJobCapacityUsageDetail
    ServiceJobCapacityUsageDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobCapacityUsageDetail, name: "member"))
    ServiceJobCapacityUsageSummary.add_member(:capacity_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityUnit"))
    ServiceJobCapacityUsageSummary.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "quantity"))
    ServiceJobCapacityUsageSummary.type = Types::ServiceJobCapacityUsageSummary
    ServiceJobCapacityUsageSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobCapacityUsageSummary, name: "member"))
    ServiceJobEvaluateOnExit.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobRetryAction, name: "action"))
    ServiceJobEvaluateOnExit.add_member(:on_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "onStatusReason"))
    ServiceJobEvaluateOnExit.type = Types::ServiceJobEvaluateOnExit
    ServiceJobEvaluateOnExitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobEvaluateOnExit, name: "member"))
    ServiceJobPreemptedAttempt.add_member(:service_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceId, name: "serviceResourceId"))
    ServiceJobPreemptedAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    ServiceJobPreemptedAttempt.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    ServiceJobPreemptedAttempt.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ServiceJobPreemptedAttempt.type = Types::ServiceJobPreemptedAttempt
    ServiceJobPreemptionConfiguration.add_member(:preemption_retries_before_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "preemptionRetriesBeforeTermination"))
    ServiceJobPreemptionConfiguration.type = Types::ServiceJobPreemptionConfiguration
    ServiceJobPreemptionSummary.add_member(:preempted_attempt_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "preemptedAttemptCount"))
    ServiceJobPreemptionSummary.add_member(:recent_preempted_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobRecentPreemptedAttemptList, name: "recentPreemptedAttempts"))
    ServiceJobPreemptionSummary.type = Types::ServiceJobPreemptionSummary
    ServiceJobRecentPreemptedAttemptList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobPreemptedAttempt, name: "member"))
    ServiceJobRetryAction.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY"}))
    ServiceJobRetryAction.add_member(:exit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXIT", traits: {"smithy.api#enumValue" => "EXIT"}))
    ServiceJobRetryStrategy.add_member(:attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "attempts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobRetryStrategy.add_member(:evaluate_on_exit, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobEvaluateOnExitList, name: "evaluateOnExit"))
    ServiceJobRetryStrategy.type = Types::ServiceJobRetryStrategy
    ServiceJobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    ServiceJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ServiceJobStatus.add_member(:runnable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNABLE", traits: {"smithy.api#enumValue" => "RUNNABLE"}))
    ServiceJobStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    ServiceJobStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ServiceJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ServiceJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ServiceJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ServiceJobSummary.add_member(:latest_attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestServiceJobAttempt, name: "latestAttempt"))
    ServiceJobSummary.add_member(:capacity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobCapacityUsageSummaryList, name: "capacityUsage"))
    ServiceJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "createdAt"))
    ServiceJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    ServiceJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobSummary.add_member(:scheduled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "scheduledAt"))
    ServiceJobSummary.add_member(:service_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobType, name: "serviceJobType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobSummary.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    ServiceJobSummary.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    ServiceJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobStatus, name: "status"))
    ServiceJobSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ServiceJobSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "startedAt"))
    ServiceJobSummary.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "stoppedAt"))
    ServiceJobSummary.add_member(:is_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTerminated"))
    ServiceJobSummary.type = Types::ServiceJobSummary
    ServiceJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobSummary, name: "member"))
    ServiceJobTimeout.add_member(:attempt_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "attemptDurationSeconds"))
    ServiceJobTimeout.type = Types::ServiceJobTimeout
    ServiceJobType.add_member(:sagemaker_training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_TRAINING", traits: {"smithy.api#enumValue" => "SAGEMAKER_TRAINING"}))
    ServiceResourceId.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceIdName, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceResourceId.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceResourceId.type = Types::ServiceResourceId
    ServiceResourceIdName.add_member(:sagemaker_training_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_TRAINING_JOB_ARN", traits: {"smithy.api#enumValue" => "TrainingJobArn"}))
    ShareAttributes.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ShareAttributes.add_member(:weight_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "weightFactor"))
    ShareAttributes.type = Types::ShareAttributes
    ShareAttributesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareAttributes, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubmitJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobRequest.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    SubmitJobRequest.add_member(:scheduling_priority_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriorityOverride"))
    SubmitJobRequest.add_member(:array_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrayProperties, name: "arrayProperties"))
    SubmitJobRequest.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDependencyList, name: "dependsOn"))
    SubmitJobRequest.add_member(:job_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobDefinition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "parameters"))
    SubmitJobRequest.add_member(:container_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOverrides, name: "containerOverrides"))
    SubmitJobRequest.add_member(:node_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOverrides, name: "nodeOverrides"))
    SubmitJobRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStrategy, name: "retryStrategy"))
    SubmitJobRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "propagateTags"))
    SubmitJobRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimeout, name: "timeout"))
    SubmitJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    SubmitJobRequest.add_member(:eks_properties_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EksPropertiesOverride, name: "eksPropertiesOverride"))
    SubmitJobRequest.add_member(:ecs_properties_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsPropertiesOverride, name: "ecsPropertiesOverride"))
    SubmitJobRequest.add_member(:consumable_resource_properties_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableResourceProperties, name: "consumableResourcePropertiesOverride"))
    SubmitJobRequest.type = Types::SubmitJobRequest
    SubmitJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    SubmitJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobResponse.type = Types::SubmitJobResponse
    SubmitServiceJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobRetryStrategy, name: "retryStrategy"))
    SubmitServiceJobRequest.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriority"))
    SubmitServiceJobRequest.add_member(:service_request_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRequestPayload", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:service_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobType, name: "serviceJobType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:share_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "shareIdentifier"))
    SubmitServiceJobRequest.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    SubmitServiceJobRequest.add_member(:preemption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobPreemptionConfiguration, name: "preemptionConfiguration"))
    SubmitServiceJobRequest.add_member(:timeout_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceJobTimeout, name: "timeoutConfig"))
    SubmitServiceJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags"))
    SubmitServiceJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SubmitServiceJobRequest.type = Types::SubmitServiceJobRequest
    SubmitServiceJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    SubmitServiceJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobResponse.type = Types::SubmitServiceJobResponse
    TagKeysList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisTagsMap, name: "tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagrisTagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagrisTagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    TaskContainerDependency.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    TaskContainerDependency.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "condition"))
    TaskContainerDependency.type = Types::TaskContainerDependency
    TaskContainerDependencyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskContainerDependency, name: "member"))
    TaskContainerDetails.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    TaskContainerDetails.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskContainerDependencyList, name: "dependsOn"))
    TaskContainerDetails.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    TaskContainerDetails.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "essential"))
    TaskContainerDetails.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfiguration, name: "firelensConfiguration"))
    TaskContainerDetails.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    TaskContainerDetails.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxParameters, name: "linuxParameters"))
    TaskContainerDetails.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    TaskContainerDetails.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoints, name: "mountPoints"))
    TaskContainerDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    TaskContainerDetails.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "privileged"))
    TaskContainerDetails.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readonlyRootFilesystem"))
    TaskContainerDetails.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, name: "repositoryCredentials"))
    TaskContainerDetails.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    TaskContainerDetails.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    TaskContainerDetails.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimits, name: "ulimits"))
    TaskContainerDetails.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user"))
    TaskContainerDetails.add_member(:start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "startTimeout"))
    TaskContainerDetails.add_member(:stop_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "stopTimeout"))
    TaskContainerDetails.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "exitCode"))
    TaskContainerDetails.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    TaskContainerDetails.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStreamName"))
    TaskContainerDetails.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceList, name: "networkInterfaces"))
    TaskContainerDetails.type = Types::TaskContainerDetails
    TaskContainerOverrides.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    TaskContainerOverrides.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    TaskContainerOverrides.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    TaskContainerOverrides.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    TaskContainerOverrides.type = Types::TaskContainerOverrides
    TaskContainerProperties.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    TaskContainerProperties.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskContainerDependencyList, name: "dependsOn"))
    TaskContainerProperties.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    TaskContainerProperties.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "essential"))
    TaskContainerProperties.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfiguration, name: "firelensConfiguration"))
    TaskContainerProperties.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TaskContainerProperties.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxParameters, name: "linuxParameters"))
    TaskContainerProperties.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    TaskContainerProperties.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoints, name: "mountPoints"))
    TaskContainerProperties.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    TaskContainerProperties.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "privileged"))
    TaskContainerProperties.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "readonlyRootFilesystem"))
    TaskContainerProperties.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, name: "repositoryCredentials"))
    TaskContainerProperties.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    TaskContainerProperties.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    TaskContainerProperties.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimits, name: "ulimits"))
    TaskContainerProperties.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user"))
    TaskContainerProperties.add_member(:start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "startTimeout"))
    TaskContainerProperties.add_member(:stop_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "stopTimeout"))
    TaskContainerProperties.type = Types::TaskContainerProperties
    TaskPropertiesOverride.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTaskContainerOverrides, name: "containers"))
    TaskPropertiesOverride.type = Types::TaskPropertiesOverride
    TerminateJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobRequest.type = Types::TerminateJobRequest
    TerminateJobResponse.type = Types::TerminateJobResponse
    TerminateJobsErrorDetail.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "job", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsErrorDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsErrorDetail.type = Types::TerminateJobsErrorDetail
    TerminateJobsErrorDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateJobsErrorDetail, name: "member"))
    TerminateJobsRequest.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "jobs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsRequest.type = Types::TerminateJobsRequest
    TerminateJobsResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "successful", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateJobsErrorDetailList, name: "errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobsResponse.type = Types::TerminateJobsResponse
    TerminateServiceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobRequest.type = Types::TerminateServiceJobRequest
    TerminateServiceJobResponse.type = Types::TerminateServiceJobResponse
    TerminateServiceJobsErrorDetail.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "job", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsErrorDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsErrorDetail.type = Types::TerminateServiceJobsErrorDetail
    TerminateServiceJobsErrorDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateServiceJobsErrorDetail, name: "member"))
    TerminateServiceJobsRequest.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "jobs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsRequest.type = Types::TerminateServiceJobsRequest
    TerminateServiceJobsResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "successful", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateServiceJobsErrorDetailList, name: "errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobsResponse.type = Types::TerminateServiceJobsResponse
    Tmpfs.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tmpfs.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "size", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tmpfs.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "mountOptions"))
    Tmpfs.type = Types::Tmpfs
    TmpfsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tmpfs, name: "member"))
    Ulimit.add_member(:hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "hardLimit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ulimit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ulimit.add_member(:soft_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "softLimit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ulimit.type = Types::Ulimit
    Ulimits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimit, name: "member"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeysList, name: "tagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateComputeEnvironmentRequest.add_member(:compute_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateComputeEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CEState, name: "state"))
    UpdateComputeEnvironmentRequest.add_member(:unmanagedv_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "unmanagedvCpus"))
    UpdateComputeEnvironmentRequest.add_member(:compute_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeResourceUpdate, name: "computeResources"))
    UpdateComputeEnvironmentRequest.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRole"))
    UpdateComputeEnvironmentRequest.add_member(:update_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePolicy, name: "updatePolicy"))
    UpdateComputeEnvironmentRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "context"))
    UpdateComputeEnvironmentRequest.add_member(:ecs_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsSettings, name: "ecsSettings"))
    UpdateComputeEnvironmentRequest.add_member(:eks_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EksConfigurationUpdate, name: "eksConfiguration"))
    UpdateComputeEnvironmentRequest.type = Types::UpdateComputeEnvironmentRequest
    UpdateComputeEnvironmentResponse.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentName"))
    UpdateComputeEnvironmentResponse.add_member(:compute_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "computeEnvironmentArn"))
    UpdateComputeEnvironmentResponse.type = Types::UpdateComputeEnvironmentResponse
    UpdateConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateConsumableResourceRequest.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operation"))
    UpdateConsumableResourceRequest.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "quantity"))
    UpdateConsumableResourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateConsumableResourceRequest.type = Types::UpdateConsumableResourceRequest
    UpdateConsumableResourceResponse.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateConsumableResourceResponse.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "consumableResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateConsumableResourceResponse.add_member(:total_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "totalQuantity"))
    UpdateConsumableResourceResponse.type = Types::UpdateConsumableResourceResponse
    UpdateJobQueueRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateJobQueueRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JQState, name: "state"))
    UpdateJobQueueRequest.add_member(:scheduling_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schedulingPolicyArn"))
    UpdateJobQueueRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "priority"))
    UpdateJobQueueRequest.add_member(:compute_environment_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeEnvironmentOrders, name: "computeEnvironmentOrder"))
    UpdateJobQueueRequest.add_member(:service_environment_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentOrders, name: "serviceEnvironmentOrder"))
    UpdateJobQueueRequest.add_member(:job_state_time_limit_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateTimeLimitActions, name: "jobStateTimeLimitActions"))
    UpdateJobQueueRequest.type = Types::UpdateJobQueueRequest
    UpdateJobQueueResponse.add_member(:job_queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueName"))
    UpdateJobQueueResponse.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobQueueArn"))
    UpdateJobQueueResponse.type = Types::UpdateJobQueueResponse
    UpdateManagedInstancesProviderConfiguration.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "propagateTags"))
    UpdateManagedInstancesProviderConfiguration.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn"))
    UpdateManagedInstancesProviderConfiguration.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplateUpdate, name: "instanceLaunchTemplate"))
    UpdateManagedInstancesProviderConfiguration.add_member(:infrastructure_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureOptimization, name: "infrastructureOptimization"))
    UpdateManagedInstancesProviderConfiguration.type = Types::UpdateManagedInstancesProviderConfiguration
    UpdatePolicy.add_member(:terminate_jobs_on_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "terminateJobsOnUpdate"))
    UpdatePolicy.add_member(:job_execution_timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: JobExecutionTimeoutMinutes, name: "jobExecutionTimeoutMinutes"))
    UpdatePolicy.type = Types::UpdatePolicy
    UpdateQuotaShareRequest.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateQuotaShareRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareCapacityLimits, name: "capacityLimits"))
    UpdateQuotaShareRequest.add_member(:resource_sharing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareResourceSharingConfiguration, name: "resourceSharingConfiguration"))
    UpdateQuotaShareRequest.add_member(:preemption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePreemptionConfiguration, name: "preemptionConfiguration"))
    UpdateQuotaShareRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaShareState, name: "state"))
    UpdateQuotaShareRequest.type = Types::UpdateQuotaShareRequest
    UpdateQuotaShareResponse.add_member(:quota_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareName"))
    UpdateQuotaShareResponse.add_member(:quota_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaShareArn"))
    UpdateQuotaShareResponse.type = Types::UpdateQuotaShareResponse
    UpdateSchedulingPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateSchedulingPolicyRequest.add_member(:quota_share_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSharePolicy, name: "quotaSharePolicy"))
    UpdateSchedulingPolicyRequest.add_member(:fairshare_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FairsharePolicy, name: "fairsharePolicy"))
    UpdateSchedulingPolicyRequest.type = Types::UpdateSchedulingPolicyRequest
    UpdateSchedulingPolicyResponse.type = Types::UpdateSchedulingPolicyResponse
    UpdateServiceEnvironmentRequest.add_member(:service_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEnvironmentState, name: "state"))
    UpdateServiceEnvironmentRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityLimits, name: "capacityLimits"))
    UpdateServiceEnvironmentRequest.type = Types::UpdateServiceEnvironmentRequest
    UpdateServiceEnvironmentResponse.add_member(:service_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceEnvironmentResponse.add_member(:service_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceEnvironmentArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceEnvironmentResponse.type = Types::UpdateServiceEnvironmentResponse
    UpdateServiceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceJobRequest.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "schedulingPriority", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceJobRequest.type = Types::UpdateServiceJobRequest
    UpdateServiceJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobArn"))
    UpdateServiceJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobName"))
    UpdateServiceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId"))
    UpdateServiceJobResponse.type = Types::UpdateServiceJobResponse
    UserdataType.add_member(:eks_bootstrap_sh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_BOOTSTRAP_SH", traits: {"smithy.api#enumValue" => "EKS_BOOTSTRAP_SH"}))
    UserdataType.add_member(:eks_nodeadm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_NODEADM", traits: {"smithy.api#enumValue" => "EKS_NODEADM"}))
    Volume.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "host"))
    Volume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Volume.add_member(:efs_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSVolumeConfiguration, name: "efsVolumeConfiguration"))
    Volume.add_member(:s3files_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3FilesVolumeConfiguration, name: "s3filesVolumeConfiguration"))
    Volume.type = Types::Volume
    Volumes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "member"))

    AWSBatchV20160810 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.batch#AWSBatchV20160810"
      service.name = "AWSBatchV20160810"
      service.version = "2016-08-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Batch", "arnNamespace" => "batch", "cloudFormationName" => "Batch", "cloudTrailEventSource" => "batch.amazonaws.com", "endpointPrefix" => "batch"}, "aws.auth#sigv4" => {"name" => "batch"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Batch", "smithy.api#xmlNamespace" => {"uri" => "http://batch.amazonaws.com/doc/2016-08-10/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://batch-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://fips.batch.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://batch.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://batch-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://batch.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://batch.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEMAAAABQX14QoF9eELAAAABAAAAAwAAAAJAAAABgAAAAoF9eEJAAAABwX14QYAAAALAAAACAX14QcF9eEIAAAABQAAAA0F9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CancelJob"
        operation.name = "CancelJob"
        operation.input = CancelJobRequest
        operation.output = CancelJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/canceljob", "code" => 200}}
      end)
      service.add_operation(:cancel_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CancelJobs"
        operation.name = "CancelJobs"
        operation.input = CancelJobsRequest
        operation.output = CancelJobsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/canceljobs", "code" => 200}}
      end)
      service.add_operation(:create_compute_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateComputeEnvironment"
        operation.name = "CreateComputeEnvironment"
        operation.input = CreateComputeEnvironmentRequest
        operation.output = CreateComputeEnvironmentResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createcomputeenvironment", "code" => 200}}
      end)
      service.add_operation(:create_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateConsumableResource"
        operation.name = "CreateConsumableResource"
        operation.input = CreateConsumableResourceRequest
        operation.output = CreateConsumableResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createconsumableresource", "code" => 200}}
      end)
      service.add_operation(:create_job_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateJobQueue"
        operation.name = "CreateJobQueue"
        operation.input = CreateJobQueueRequest
        operation.output = CreateJobQueueResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createjobqueue", "code" => 200}}
      end)
      service.add_operation(:create_quota_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateQuotaShare"
        operation.name = "CreateQuotaShare"
        operation.input = CreateQuotaShareRequest
        operation.output = CreateQuotaShareResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createquotashare", "code" => 200}}
      end)
      service.add_operation(:create_scheduling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateSchedulingPolicy"
        operation.name = "CreateSchedulingPolicy"
        operation.input = CreateSchedulingPolicyRequest
        operation.output = CreateSchedulingPolicyResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createschedulingpolicy", "code" => 200}}
      end)
      service.add_operation(:create_service_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateServiceEnvironment"
        operation.name = "CreateServiceEnvironment"
        operation.input = CreateServiceEnvironmentRequest
        operation.output = CreateServiceEnvironmentResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createserviceenvironment", "code" => 200}}
      end)
      service.add_operation(:delete_compute_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteComputeEnvironment"
        operation.name = "DeleteComputeEnvironment"
        operation.input = DeleteComputeEnvironmentRequest
        operation.output = DeleteComputeEnvironmentResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deletecomputeenvironment", "code" => 200}}
      end)
      service.add_operation(:delete_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteConsumableResource"
        operation.name = "DeleteConsumableResource"
        operation.input = DeleteConsumableResourceRequest
        operation.output = DeleteConsumableResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deleteconsumableresource", "code" => 200}}
      end)
      service.add_operation(:delete_job_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteJobQueue"
        operation.name = "DeleteJobQueue"
        operation.input = DeleteJobQueueRequest
        operation.output = DeleteJobQueueResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deletejobqueue", "code" => 200}}
      end)
      service.add_operation(:delete_quota_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteQuotaShare"
        operation.name = "DeleteQuotaShare"
        operation.input = DeleteQuotaShareRequest
        operation.output = DeleteQuotaShareResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deletequotashare", "code" => 200}}
      end)
      service.add_operation(:delete_scheduling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteSchedulingPolicy"
        operation.name = "DeleteSchedulingPolicy"
        operation.input = DeleteSchedulingPolicyRequest
        operation.output = DeleteSchedulingPolicyResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deleteschedulingpolicy", "code" => 200}}
      end)
      service.add_operation(:delete_service_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteServiceEnvironment"
        operation.name = "DeleteServiceEnvironment"
        operation.input = DeleteServiceEnvironmentRequest
        operation.output = DeleteServiceEnvironmentResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deleteserviceenvironment", "code" => 200}}
      end)
      service.add_operation(:deregister_job_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeregisterJobDefinition"
        operation.name = "DeregisterJobDefinition"
        operation.input = DeregisterJobDefinitionRequest
        operation.output = DeregisterJobDefinitionResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deregisterjobdefinition", "code" => 200}}
      end)
      service.add_operation(:describe_compute_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeComputeEnvironments"
        operation.name = "DescribeComputeEnvironments"
        operation.input = DescribeComputeEnvironmentsRequest
        operation.output = DescribeComputeEnvironmentsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describecomputeenvironments", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeComputeEnvironmentsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeComputeEnvironments.new
      end)
      service.add_operation(:describe_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeConsumableResource"
        operation.name = "DescribeConsumableResource"
        operation.input = DescribeConsumableResourceRequest
        operation.output = DescribeConsumableResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeconsumableresource", "code" => 200}}
      end)
      service.add_operation(:describe_job_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeJobDefinitions"
        operation.name = "DescribeJobDefinitions"
        operation.input = DescribeJobDefinitionsRequest
        operation.output = DescribeJobDefinitionsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describejobdefinitions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeJobDefinitions.new
      end)
      service.add_operation(:describe_job_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeJobQueues"
        operation.name = "DescribeJobQueues"
        operation.input = DescribeJobQueuesRequest
        operation.output = DescribeJobQueuesResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describejobqueues", "code" => 200}}
        operation[:paginator] = Paginators::DescribeJobQueues.new
      end)
      service.add_operation(:describe_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeJobs"
        operation.name = "DescribeJobs"
        operation.input = DescribeJobsRequest
        operation.output = DescribeJobsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describejobs", "code" => 200}}
      end)
      service.add_operation(:describe_quota_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeQuotaShare"
        operation.name = "DescribeQuotaShare"
        operation.input = DescribeQuotaShareRequest
        operation.output = DescribeQuotaShareResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describequotashare", "code" => 200}}
      end)
      service.add_operation(:describe_scheduling_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeSchedulingPolicies"
        operation.name = "DescribeSchedulingPolicies"
        operation.input = DescribeSchedulingPoliciesRequest
        operation.output = DescribeSchedulingPoliciesResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeschedulingpolicies", "code" => 200}}
      end)
      service.add_operation(:describe_service_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeServiceEnvironments"
        operation.name = "DescribeServiceEnvironments"
        operation.input = DescribeServiceEnvironmentsRequest
        operation.output = DescribeServiceEnvironmentsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeserviceenvironments", "code" => 200}}
        operation[:paginator] = Paginators::DescribeServiceEnvironments.new
      end)
      service.add_operation(:describe_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeServiceJob"
        operation.name = "DescribeServiceJob"
        operation.input = DescribeServiceJobRequest
        operation.output = DescribeServiceJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeservicejob", "code" => 200}}
      end)
      service.add_operation(:get_job_queue_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#GetJobQueueSnapshot"
        operation.name = "GetJobQueueSnapshot"
        operation.input = GetJobQueueSnapshotRequest
        operation.output = GetJobQueueSnapshotResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/getjobqueuesnapshot", "code" => 200}}
      end)
      service.add_operation(:list_consumable_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListConsumableResources"
        operation.name = "ListConsumableResources"
        operation.input = ListConsumableResourcesRequest
        operation.output = ListConsumableResourcesResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listconsumableresources", "code" => 200}}
        operation[:paginator] = Paginators::ListConsumableResources.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsRequest
        operation.output = ListJobsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_jobs_by_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListJobsByConsumableResource"
        operation.name = "ListJobsByConsumableResource"
        operation.input = ListJobsByConsumableResourceRequest
        operation.output = ListJobsByConsumableResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listjobsbyconsumableresource", "code" => 200}}
        operation[:paginator] = Paginators::ListJobsByConsumableResource.new
      end)
      service.add_operation(:list_quota_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListQuotaShares"
        operation.name = "ListQuotaShares"
        operation.input = ListQuotaSharesRequest
        operation.output = ListQuotaSharesResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listquotashares", "code" => 200}}
        operation[:paginator] = Paginators::ListQuotaShares.new
      end)
      service.add_operation(:list_scheduling_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListSchedulingPolicies"
        operation.name = "ListSchedulingPolicies"
        operation.input = ListSchedulingPoliciesRequest
        operation.output = ListSchedulingPoliciesResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listschedulingpolicies", "code" => 200}}
        operation[:paginator] = Paginators::ListSchedulingPolicies.new
      end)
      service.add_operation(:list_service_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListServiceJobs"
        operation.name = "ListServiceJobs"
        operation.input = ListServiceJobsRequest
        operation.output = ListServiceJobsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listservicejobs", "code" => 200}}
        operation[:paginator] = Paginators::ListServiceJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_job_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#RegisterJobDefinition"
        operation.name = "RegisterJobDefinition"
        operation.input = RegisterJobDefinitionRequest
        operation.output = RegisterJobDefinitionResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/registerjobdefinition", "code" => 200}}
      end)
      service.add_operation(:submit_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#SubmitJob"
        operation.name = "SubmitJob"
        operation.input = SubmitJobRequest
        operation.output = SubmitJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/submitjob", "code" => 200}}
      end)
      service.add_operation(:submit_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#SubmitServiceJob"
        operation.name = "SubmitServiceJob"
        operation.input = SubmitServiceJobRequest
        operation.output = SubmitServiceJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/submitservicejob", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:terminate_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TerminateJob"
        operation.name = "TerminateJob"
        operation.input = TerminateJobRequest
        operation.output = TerminateJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/terminatejob", "code" => 200}}
      end)
      service.add_operation(:terminate_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TerminateJobs"
        operation.name = "TerminateJobs"
        operation.input = TerminateJobsRequest
        operation.output = TerminateJobsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/terminatejobs", "code" => 200}}
      end)
      service.add_operation(:terminate_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TerminateServiceJob"
        operation.name = "TerminateServiceJob"
        operation.input = TerminateServiceJobRequest
        operation.output = TerminateServiceJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/terminateservicejob", "code" => 200}}
      end)
      service.add_operation(:terminate_service_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TerminateServiceJobs"
        operation.name = "TerminateServiceJobs"
        operation.input = TerminateServiceJobsRequest
        operation.output = TerminateServiceJobsResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/terminateservicejobs", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_compute_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateComputeEnvironment"
        operation.name = "UpdateComputeEnvironment"
        operation.input = UpdateComputeEnvironmentRequest
        operation.output = UpdateComputeEnvironmentResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updatecomputeenvironment", "code" => 200}}
      end)
      service.add_operation(:update_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateConsumableResource"
        operation.name = "UpdateConsumableResource"
        operation.input = UpdateConsumableResourceRequest
        operation.output = UpdateConsumableResourceResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateconsumableresource", "code" => 200}}
      end)
      service.add_operation(:update_job_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateJobQueue"
        operation.name = "UpdateJobQueue"
        operation.input = UpdateJobQueueRequest
        operation.output = UpdateJobQueueResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updatejobqueue", "code" => 200}}
      end)
      service.add_operation(:update_quota_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateQuotaShare"
        operation.name = "UpdateQuotaShare"
        operation.input = UpdateQuotaShareRequest
        operation.output = UpdateQuotaShareResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updatequotashare", "code" => 200}}
      end)
      service.add_operation(:update_scheduling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateSchedulingPolicy"
        operation.name = "UpdateSchedulingPolicy"
        operation.input = UpdateSchedulingPolicyRequest
        operation.output = UpdateSchedulingPolicyResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateschedulingpolicy", "code" => 200}}
      end)
      service.add_operation(:update_service_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateServiceEnvironment"
        operation.name = "UpdateServiceEnvironment"
        operation.input = UpdateServiceEnvironmentRequest
        operation.output = UpdateServiceEnvironmentResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateserviceenvironment", "code" => 200}}
      end)
      service.add_operation(:update_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateServiceJob"
        operation.name = "UpdateServiceJob"
        operation.input = UpdateServiceJobRequest
        operation.output = UpdateServiceJobResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateservicejob", "code" => 200}}
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
