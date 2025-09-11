# frozen_string_literal: true

# This is generated code!

module Aws::Batch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ArrayJobDependency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ArrayJobDependency', name: 'ArrayJobDependency')
    ArrayJobStatusSummary = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#ArrayJobStatusSummary', name: 'ArrayJobStatusSummary')
    ArrayProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ArrayProperties', name: 'ArrayProperties')
    ArrayPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ArrayPropertiesDetail', name: 'ArrayPropertiesDetail')
    ArrayPropertiesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ArrayPropertiesSummary', name: 'ArrayPropertiesSummary')
    AssignPublicIp = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#AssignPublicIp', name: 'AssignPublicIp')
    AttemptContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#AttemptContainerDetail', name: 'AttemptContainerDetail')
    AttemptDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#AttemptDetail', name: 'AttemptDetail')
    AttemptDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#AttemptDetails', name: 'AttemptDetails')
    AttemptEcsTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#AttemptEcsTaskDetails', name: 'AttemptEcsTaskDetails')
    AttemptTaskContainerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#AttemptTaskContainerDetails', name: 'AttemptTaskContainerDetails')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.batch#Boolean', name: 'Boolean')
    CEState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#CEState', name: 'CEState')
    CEStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#CEStatus', name: 'CEStatus')
    CEType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#CEType', name: 'CEType')
    CRAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#CRAllocationStrategy', name: 'CRAllocationStrategy')
    CRType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#CRType', name: 'CRType')
    CRUpdateAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#CRUpdateAllocationStrategy', name: 'CRUpdateAllocationStrategy')
    CancelJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CancelJobRequest', name: 'CancelJobRequest')
    CancelJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CancelJobResponse', name: 'CancelJobResponse')
    CapacityLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CapacityLimit', name: 'CapacityLimit')
    CapacityLimits = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#CapacityLimits', name: 'CapacityLimits')
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ClientException', name: 'ClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ComputeEnvironmentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ComputeEnvironmentDetail', name: 'ComputeEnvironmentDetail')
    ComputeEnvironmentDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ComputeEnvironmentDetailList', name: 'ComputeEnvironmentDetailList')
    ComputeEnvironmentOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ComputeEnvironmentOrder', name: 'ComputeEnvironmentOrder')
    ComputeEnvironmentOrders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ComputeEnvironmentOrders', name: 'ComputeEnvironmentOrders')
    ComputeResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ComputeResource', name: 'ComputeResource')
    ComputeResourceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ComputeResourceUpdate', name: 'ComputeResourceUpdate')
    ConsumableResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ConsumableResourceList', name: 'ConsumableResourceList')
    ConsumableResourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ConsumableResourceProperties', name: 'ConsumableResourceProperties')
    ConsumableResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ConsumableResourceRequirement', name: 'ConsumableResourceRequirement')
    ConsumableResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ConsumableResourceSummary', name: 'ConsumableResourceSummary')
    ConsumableResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ConsumableResourceSummaryList', name: 'ConsumableResourceSummaryList')
    ContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ContainerDetail', name: 'ContainerDetail')
    ContainerOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ContainerOverrides', name: 'ContainerOverrides')
    ContainerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ContainerProperties', name: 'ContainerProperties')
    ContainerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ContainerSummary', name: 'ContainerSummary')
    CreateComputeEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateComputeEnvironmentRequest', name: 'CreateComputeEnvironmentRequest')
    CreateComputeEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateComputeEnvironmentResponse', name: 'CreateComputeEnvironmentResponse')
    CreateConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateConsumableResourceRequest', name: 'CreateConsumableResourceRequest')
    CreateConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateConsumableResourceResponse', name: 'CreateConsumableResourceResponse')
    CreateJobQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateJobQueueRequest', name: 'CreateJobQueueRequest')
    CreateJobQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateJobQueueResponse', name: 'CreateJobQueueResponse')
    CreateSchedulingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateSchedulingPolicyRequest', name: 'CreateSchedulingPolicyRequest')
    CreateSchedulingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateSchedulingPolicyResponse', name: 'CreateSchedulingPolicyResponse')
    CreateServiceEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateServiceEnvironmentRequest', name: 'CreateServiceEnvironmentRequest')
    CreateServiceEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#CreateServiceEnvironmentResponse', name: 'CreateServiceEnvironmentResponse')
    DeleteComputeEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteComputeEnvironmentRequest', name: 'DeleteComputeEnvironmentRequest')
    DeleteComputeEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteComputeEnvironmentResponse', name: 'DeleteComputeEnvironmentResponse')
    DeleteConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteConsumableResourceRequest', name: 'DeleteConsumableResourceRequest')
    DeleteConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteConsumableResourceResponse', name: 'DeleteConsumableResourceResponse')
    DeleteJobQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteJobQueueRequest', name: 'DeleteJobQueueRequest')
    DeleteJobQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteJobQueueResponse', name: 'DeleteJobQueueResponse')
    DeleteSchedulingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteSchedulingPolicyRequest', name: 'DeleteSchedulingPolicyRequest')
    DeleteSchedulingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteSchedulingPolicyResponse', name: 'DeleteSchedulingPolicyResponse')
    DeleteServiceEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteServiceEnvironmentRequest', name: 'DeleteServiceEnvironmentRequest')
    DeleteServiceEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeleteServiceEnvironmentResponse', name: 'DeleteServiceEnvironmentResponse')
    DeregisterJobDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeregisterJobDefinitionRequest', name: 'DeregisterJobDefinitionRequest')
    DeregisterJobDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DeregisterJobDefinitionResponse', name: 'DeregisterJobDefinitionResponse')
    DescribeComputeEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeComputeEnvironmentsRequest', name: 'DescribeComputeEnvironmentsRequest')
    DescribeComputeEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeComputeEnvironmentsResponse', name: 'DescribeComputeEnvironmentsResponse')
    DescribeConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeConsumableResourceRequest', name: 'DescribeConsumableResourceRequest')
    DescribeConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeConsumableResourceResponse', name: 'DescribeConsumableResourceResponse')
    DescribeJobDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeJobDefinitionsRequest', name: 'DescribeJobDefinitionsRequest')
    DescribeJobDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeJobDefinitionsResponse', name: 'DescribeJobDefinitionsResponse')
    DescribeJobQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeJobQueuesRequest', name: 'DescribeJobQueuesRequest')
    DescribeJobQueuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeJobQueuesResponse', name: 'DescribeJobQueuesResponse')
    DescribeJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeJobsRequest', name: 'DescribeJobsRequest')
    DescribeJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeJobsResponse', name: 'DescribeJobsResponse')
    DescribeSchedulingPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeSchedulingPoliciesRequest', name: 'DescribeSchedulingPoliciesRequest')
    DescribeSchedulingPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeSchedulingPoliciesResponse', name: 'DescribeSchedulingPoliciesResponse')
    DescribeServiceEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeServiceEnvironmentsRequest', name: 'DescribeServiceEnvironmentsRequest')
    DescribeServiceEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeServiceEnvironmentsResponse', name: 'DescribeServiceEnvironmentsResponse')
    DescribeServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeServiceJobRequest', name: 'DescribeServiceJobRequest')
    DescribeServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#DescribeServiceJobResponse', name: 'DescribeServiceJobResponse')
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Device', name: 'Device')
    DeviceCgroupPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#DeviceCgroupPermission', name: 'DeviceCgroupPermission')
    DeviceCgroupPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#DeviceCgroupPermissions', name: 'DeviceCgroupPermissions')
    DevicesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#DevicesList', name: 'DevicesList')
    EFSAuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EFSAuthorizationConfig', name: 'EFSAuthorizationConfig')
    EFSAuthorizationConfigIAM = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#EFSAuthorizationConfigIAM', name: 'EFSAuthorizationConfigIAM')
    EFSTransitEncryption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#EFSTransitEncryption', name: 'EFSTransitEncryption')
    EFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EFSVolumeConfiguration', name: 'EFSVolumeConfiguration')
    Ec2Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Ec2Configuration', name: 'Ec2Configuration')
    Ec2ConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#Ec2ConfigurationList', name: 'Ec2ConfigurationList')
    EcsProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EcsProperties', name: 'EcsProperties')
    EcsPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EcsPropertiesDetail', name: 'EcsPropertiesDetail')
    EcsPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EcsPropertiesOverride', name: 'EcsPropertiesOverride')
    EcsTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EcsTaskDetails', name: 'EcsTaskDetails')
    EcsTaskProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EcsTaskProperties', name: 'EcsTaskProperties')
    EksAnnotationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#EksAnnotationsMap', name: 'EksAnnotationsMap')
    EksAttemptContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksAttemptContainerDetail', name: 'EksAttemptContainerDetail')
    EksAttemptContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksAttemptContainerDetails', name: 'EksAttemptContainerDetails')
    EksAttemptDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksAttemptDetail', name: 'EksAttemptDetail')
    EksAttemptDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksAttemptDetails', name: 'EksAttemptDetails')
    EksConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksConfiguration', name: 'EksConfiguration')
    EksContainer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainer', name: 'EksContainer')
    EksContainerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainerDetail', name: 'EksContainerDetail')
    EksContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksContainerDetails', name: 'EksContainerDetails')
    EksContainerEnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainerEnvironmentVariable', name: 'EksContainerEnvironmentVariable')
    EksContainerEnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksContainerEnvironmentVariables', name: 'EksContainerEnvironmentVariables')
    EksContainerOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainerOverride', name: 'EksContainerOverride')
    EksContainerOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksContainerOverrideList', name: 'EksContainerOverrideList')
    EksContainerResourceRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainerResourceRequirements', name: 'EksContainerResourceRequirements')
    EksContainerSecurityContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainerSecurityContext', name: 'EksContainerSecurityContext')
    EksContainerVolumeMount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksContainerVolumeMount', name: 'EksContainerVolumeMount')
    EksContainerVolumeMounts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksContainerVolumeMounts', name: 'EksContainerVolumeMounts')
    EksContainers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksContainers', name: 'EksContainers')
    EksEmptyDir = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksEmptyDir', name: 'EksEmptyDir')
    EksHostPath = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksHostPath', name: 'EksHostPath')
    EksLabelsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#EksLabelsMap', name: 'EksLabelsMap')
    EksLimits = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#EksLimits', name: 'EksLimits')
    EksMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksMetadata', name: 'EksMetadata')
    EksPersistentVolumeClaim = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksPersistentVolumeClaim', name: 'EksPersistentVolumeClaim')
    EksPodProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksPodProperties', name: 'EksPodProperties')
    EksPodPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksPodPropertiesDetail', name: 'EksPodPropertiesDetail')
    EksPodPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksPodPropertiesOverride', name: 'EksPodPropertiesOverride')
    EksProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksProperties', name: 'EksProperties')
    EksPropertiesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksPropertiesDetail', name: 'EksPropertiesDetail')
    EksPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksPropertiesOverride', name: 'EksPropertiesOverride')
    EksRequests = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#EksRequests', name: 'EksRequests')
    EksSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksSecret', name: 'EksSecret')
    EksVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EksVolume', name: 'EksVolume')
    EksVolumes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EksVolumes', name: 'EksVolumes')
    EnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EnvironmentVariables', name: 'EnvironmentVariables')
    EphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EphemeralStorage', name: 'EphemeralStorage')
    EvaluateOnExit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#EvaluateOnExit', name: 'EvaluateOnExit')
    EvaluateOnExitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#EvaluateOnExitList', name: 'EvaluateOnExitList')
    FairsharePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#FairsharePolicy', name: 'FairsharePolicy')
    FargatePlatformConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#FargatePlatformConfiguration', name: 'FargatePlatformConfiguration')
    FirelensConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#FirelensConfiguration', name: 'FirelensConfiguration')
    FirelensConfigurationOptionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#FirelensConfigurationOptionsMap', name: 'FirelensConfigurationOptionsMap')
    FirelensConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#FirelensConfigurationType', name: 'FirelensConfigurationType')
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.batch#Float', name: 'Float')
    FrontOfQueueDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#FrontOfQueueDetail', name: 'FrontOfQueueDetail')
    FrontOfQueueJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#FrontOfQueueJobSummary', name: 'FrontOfQueueJobSummary')
    FrontOfQueueJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#FrontOfQueueJobSummaryList', name: 'FrontOfQueueJobSummaryList')
    GetJobQueueSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#GetJobQueueSnapshotRequest', name: 'GetJobQueueSnapshotRequest')
    GetJobQueueSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#GetJobQueueSnapshotResponse', name: 'GetJobQueueSnapshotResponse')
    Host = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Host', name: 'Host')
    ImageIdOverride = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#ImageIdOverride', name: 'ImageIdOverride', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ImagePullSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ImagePullSecret', name: 'ImagePullSecret')
    ImagePullSecrets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ImagePullSecrets', name: 'ImagePullSecrets')
    ImageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#ImageType', name: 'ImageType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.batch#Integer', name: 'Integer')
    JQState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JQState', name: 'JQState')
    JQStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JQStatus', name: 'JQStatus')
    JobDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobDefinition', name: 'JobDefinition')
    JobDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#JobDefinitionList', name: 'JobDefinitionList')
    JobDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JobDefinitionType', name: 'JobDefinitionType')
    JobDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobDependency', name: 'JobDependency')
    JobDependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#JobDependencyList', name: 'JobDependencyList')
    JobDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobDetail', name: 'JobDetail')
    JobDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#JobDetailList', name: 'JobDetailList')
    JobExecutionTimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.batch#JobExecutionTimeoutMinutes', name: 'JobExecutionTimeoutMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 360}})
    JobQueueDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobQueueDetail', name: 'JobQueueDetail')
    JobQueueDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#JobQueueDetailList', name: 'JobQueueDetailList')
    JobQueueType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JobQueueType', name: 'JobQueueType')
    JobStateTimeLimitAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobStateTimeLimitAction', name: 'JobStateTimeLimitAction')
    JobStateTimeLimitActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#JobStateTimeLimitActions', name: 'JobStateTimeLimitActions')
    JobStateTimeLimitActionsAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JobStateTimeLimitActionsAction', name: 'JobStateTimeLimitActionsAction')
    JobStateTimeLimitActionsState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JobStateTimeLimitActionsState', name: 'JobStateTimeLimitActionsState')
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#JobStatus', name: 'JobStatus')
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobSummary', name: 'JobSummary')
    JobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#JobSummaryList', name: 'JobSummaryList')
    JobTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#JobTimeout', name: 'JobTimeout')
    KeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#KeyValuePair', name: 'KeyValuePair')
    KeyValuesPair = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#KeyValuesPair', name: 'KeyValuesPair')
    KubernetesVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#KubernetesVersion', name: 'KubernetesVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    LatestServiceJobAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#LatestServiceJobAttempt', name: 'LatestServiceJobAttempt')
    LaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#LaunchTemplateSpecification', name: 'LaunchTemplateSpecification')
    LaunchTemplateSpecificationOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#LaunchTemplateSpecificationOverride', name: 'LaunchTemplateSpecificationOverride')
    LaunchTemplateSpecificationOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#LaunchTemplateSpecificationOverrideList', name: 'LaunchTemplateSpecificationOverrideList')
    LinuxParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#LinuxParameters', name: 'LinuxParameters')
    ListAttemptEcsTaskDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListAttemptEcsTaskDetails', name: 'ListAttemptEcsTaskDetails')
    ListAttemptTaskContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListAttemptTaskContainerDetails', name: 'ListAttemptTaskContainerDetails')
    ListConsumableResourcesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListConsumableResourcesFilterList', name: 'ListConsumableResourcesFilterList')
    ListConsumableResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListConsumableResourcesRequest', name: 'ListConsumableResourcesRequest')
    ListConsumableResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListConsumableResourcesResponse', name: 'ListConsumableResourcesResponse')
    ListEcsTaskDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListEcsTaskDetails', name: 'ListEcsTaskDetails')
    ListEcsTaskProperties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListEcsTaskProperties', name: 'ListEcsTaskProperties')
    ListJobsByConsumableResourceFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListJobsByConsumableResourceFilterList', name: 'ListJobsByConsumableResourceFilterList')
    ListJobsByConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListJobsByConsumableResourceRequest', name: 'ListJobsByConsumableResourceRequest')
    ListJobsByConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListJobsByConsumableResourceResponse', name: 'ListJobsByConsumableResourceResponse')
    ListJobsByConsumableResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListJobsByConsumableResourceSummary', name: 'ListJobsByConsumableResourceSummary')
    ListJobsByConsumableResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListJobsByConsumableResourceSummaryList', name: 'ListJobsByConsumableResourceSummaryList')
    ListJobsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListJobsFilterList', name: 'ListJobsFilterList')
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListJobsResponse', name: 'ListJobsResponse')
    ListSchedulingPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListSchedulingPoliciesRequest', name: 'ListSchedulingPoliciesRequest')
    ListSchedulingPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListSchedulingPoliciesResponse', name: 'ListSchedulingPoliciesResponse')
    ListServiceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListServiceJobsRequest', name: 'ListServiceJobsRequest')
    ListServiceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListServiceJobsResponse', name: 'ListServiceJobsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTaskContainerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListTaskContainerDetails', name: 'ListTaskContainerDetails')
    ListTaskContainerOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListTaskContainerOverrides', name: 'ListTaskContainerOverrides')
    ListTaskContainerProperties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListTaskContainerProperties', name: 'ListTaskContainerProperties')
    ListTaskPropertiesOverride = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ListTaskPropertiesOverride', name: 'ListTaskPropertiesOverride')
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#LogConfiguration', name: 'LogConfiguration')
    LogConfigurationOptionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#LogConfigurationOptionsMap', name: 'LogConfigurationOptionsMap')
    LogDriver = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#LogDriver', name: 'LogDriver')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.batch#Long', name: 'Long')
    MountPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#MountPoint', name: 'MountPoint')
    MountPoints = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#MountPoints', name: 'MountPoints')
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NetworkConfiguration', name: 'NetworkConfiguration')
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#NetworkInterfaceList', name: 'NetworkInterfaceList')
    NodeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NodeDetails', name: 'NodeDetails')
    NodeOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NodeOverrides', name: 'NodeOverrides')
    NodeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NodeProperties', name: 'NodeProperties')
    NodePropertiesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NodePropertiesSummary', name: 'NodePropertiesSummary')
    NodePropertyOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NodePropertyOverride', name: 'NodePropertyOverride')
    NodePropertyOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#NodePropertyOverrides', name: 'NodePropertyOverrides')
    NodeRangeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#NodeRangeProperties', name: 'NodeRangeProperties')
    NodeRangeProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#NodeRangeProperty', name: 'NodeRangeProperty')
    OrchestrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#OrchestrationType', name: 'OrchestrationType')
    ParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#ParametersMap', name: 'ParametersMap')
    PlatformCapability = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#PlatformCapability', name: 'PlatformCapability')
    PlatformCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#PlatformCapabilityList', name: 'PlatformCapabilityList')
    Quantity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#Quantity', name: 'Quantity', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RegisterJobDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#RegisterJobDefinitionRequest', name: 'RegisterJobDefinitionRequest')
    RegisterJobDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#RegisterJobDefinitionResponse', name: 'RegisterJobDefinitionResponse')
    RepositoryCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#RepositoryCredentials', name: 'RepositoryCredentials')
    ResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ResourceRequirement', name: 'ResourceRequirement')
    ResourceRequirements = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ResourceRequirements', name: 'ResourceRequirements')
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ResourceType', name: 'ResourceType')
    RetryAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#RetryAction', name: 'RetryAction')
    RetryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#RetryStrategy', name: 'RetryStrategy')
    RuntimePlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#RuntimePlatform', name: 'RuntimePlatform')
    SchedulingPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#SchedulingPolicyDetail', name: 'SchedulingPolicyDetail')
    SchedulingPolicyDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#SchedulingPolicyDetailList', name: 'SchedulingPolicyDetailList')
    SchedulingPolicyListingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#SchedulingPolicyListingDetail', name: 'SchedulingPolicyListingDetail')
    SchedulingPolicyListingDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#SchedulingPolicyListingDetailList', name: 'SchedulingPolicyListingDetailList')
    Secret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Secret', name: 'Secret')
    SecretList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#SecretList', name: 'SecretList')
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServerException', name: 'ServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceEnvironmentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentDetail', name: 'ServiceEnvironmentDetail')
    ServiceEnvironmentDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentDetailList', name: 'ServiceEnvironmentDetailList')
    ServiceEnvironmentOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentOrder', name: 'ServiceEnvironmentOrder')
    ServiceEnvironmentOrders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentOrders', name: 'ServiceEnvironmentOrders')
    ServiceEnvironmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentState', name: 'ServiceEnvironmentState')
    ServiceEnvironmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentStatus', name: 'ServiceEnvironmentStatus')
    ServiceEnvironmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceEnvironmentType', name: 'ServiceEnvironmentType')
    ServiceJobAttemptDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceJobAttemptDetail', name: 'ServiceJobAttemptDetail')
    ServiceJobAttemptDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ServiceJobAttemptDetails', name: 'ServiceJobAttemptDetails')
    ServiceJobEvaluateOnExit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceJobEvaluateOnExit', name: 'ServiceJobEvaluateOnExit')
    ServiceJobEvaluateOnExitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ServiceJobEvaluateOnExitList', name: 'ServiceJobEvaluateOnExitList')
    ServiceJobRetryAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceJobRetryAction', name: 'ServiceJobRetryAction')
    ServiceJobRetryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceJobRetryStrategy', name: 'ServiceJobRetryStrategy')
    ServiceJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceJobStatus', name: 'ServiceJobStatus')
    ServiceJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceJobSummary', name: 'ServiceJobSummary')
    ServiceJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ServiceJobSummaryList', name: 'ServiceJobSummaryList')
    ServiceJobTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceJobTimeout', name: 'ServiceJobTimeout')
    ServiceJobType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceJobType', name: 'ServiceJobType')
    ServiceResourceId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ServiceResourceId', name: 'ServiceResourceId')
    ServiceResourceIdName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#ServiceResourceIdName', name: 'ServiceResourceIdName')
    ShareAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#ShareAttributes', name: 'ShareAttributes')
    ShareAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#ShareAttributesList', name: 'ShareAttributesList')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#StringList', name: 'StringList')
    SubmitJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#SubmitJobRequest', name: 'SubmitJobRequest')
    SubmitJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#SubmitJobResponse', name: 'SubmitJobResponse')
    SubmitServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#SubmitServiceJobRequest', name: 'SubmitServiceJobRequest')
    SubmitServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#SubmitServiceJobResponse', name: 'SubmitServiceJobResponse')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#TagKeysList', name: 'TagKeysList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.batch#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagrisTagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#TagrisTagsMap', name: 'TagrisTagsMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.batch#TagsMap', name: 'TagsMap')
    TaskContainerDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TaskContainerDependency', name: 'TaskContainerDependency')
    TaskContainerDependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#TaskContainerDependencyList', name: 'TaskContainerDependencyList')
    TaskContainerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TaskContainerDetails', name: 'TaskContainerDetails')
    TaskContainerOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TaskContainerOverrides', name: 'TaskContainerOverrides')
    TaskContainerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TaskContainerProperties', name: 'TaskContainerProperties')
    TaskPropertiesOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TaskPropertiesOverride', name: 'TaskPropertiesOverride')
    TerminateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TerminateJobRequest', name: 'TerminateJobRequest')
    TerminateJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TerminateJobResponse', name: 'TerminateJobResponse')
    TerminateServiceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TerminateServiceJobRequest', name: 'TerminateServiceJobRequest')
    TerminateServiceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#TerminateServiceJobResponse', name: 'TerminateServiceJobResponse')
    Tmpfs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Tmpfs', name: 'Tmpfs')
    TmpfsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#TmpfsList', name: 'TmpfsList')
    Ulimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Ulimit', name: 'Ulimit')
    Ulimits = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#Ulimits', name: 'Ulimits')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateComputeEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateComputeEnvironmentRequest', name: 'UpdateComputeEnvironmentRequest')
    UpdateComputeEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateComputeEnvironmentResponse', name: 'UpdateComputeEnvironmentResponse')
    UpdateConsumableResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateConsumableResourceRequest', name: 'UpdateConsumableResourceRequest')
    UpdateConsumableResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateConsumableResourceResponse', name: 'UpdateConsumableResourceResponse')
    UpdateJobQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateJobQueueRequest', name: 'UpdateJobQueueRequest')
    UpdateJobQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateJobQueueResponse', name: 'UpdateJobQueueResponse')
    UpdatePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdatePolicy', name: 'UpdatePolicy')
    UpdateSchedulingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateSchedulingPolicyRequest', name: 'UpdateSchedulingPolicyRequest')
    UpdateSchedulingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateSchedulingPolicyResponse', name: 'UpdateSchedulingPolicyResponse')
    UpdateServiceEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateServiceEnvironmentRequest', name: 'UpdateServiceEnvironmentRequest')
    UpdateServiceEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#UpdateServiceEnvironmentResponse', name: 'UpdateServiceEnvironmentResponse')
    UserdataType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.batch#UserdataType', name: 'UserdataType')
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.batch#Volume', name: 'Volume')
    Volumes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.batch#Volumes', name: 'Volumes')

    ArrayJobDependency.add_member(:n_to_n, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'N_TO_N', traits: {"smithy.api#enumValue" => "N_TO_N"}))
    ArrayJobDependency.add_member(:sequential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEQUENTIAL', traits: {"smithy.api#enumValue" => "SEQUENTIAL"}))
    ArrayJobStatusSummary.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ArrayJobStatusSummary.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    ArrayProperties.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'size'))
    ArrayProperties.type = Types::ArrayProperties
    ArrayPropertiesDetail.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayJobStatusSummary, location_name: 'statusSummary'))
    ArrayPropertiesDetail.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'size'))
    ArrayPropertiesDetail.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'index'))
    ArrayPropertiesDetail.type = Types::ArrayPropertiesDetail
    ArrayPropertiesSummary.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'size'))
    ArrayPropertiesSummary.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'index'))
    ArrayPropertiesSummary.type = Types::ArrayPropertiesSummary
    AssignPublicIp.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssignPublicIp.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AttemptContainerDetail.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerInstanceArn'))
    AttemptContainerDetail.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'taskArn'))
    AttemptContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    AttemptContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    AttemptContainerDetail.add_member(:log_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logStreamName'))
    AttemptContainerDetail.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces'))
    AttemptContainerDetail.type = Types::AttemptContainerDetail
    AttemptDetail.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptContainerDetail, location_name: 'container'))
    AttemptDetail.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt'))
    AttemptDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    AttemptDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    AttemptDetail.add_member(:task_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttemptEcsTaskDetails, location_name: 'taskProperties'))
    AttemptDetail.type = Types::AttemptDetail
    AttemptDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptDetail)
    AttemptEcsTaskDetails.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerInstanceArn'))
    AttemptEcsTaskDetails.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'taskArn'))
    AttemptEcsTaskDetails.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttemptTaskContainerDetails, location_name: 'containers'))
    AttemptEcsTaskDetails.type = Types::AttemptEcsTaskDetails
    AttemptTaskContainerDetails.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    AttemptTaskContainerDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    AttemptTaskContainerDetails.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    AttemptTaskContainerDetails.add_member(:log_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logStreamName'))
    AttemptTaskContainerDetails.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces'))
    AttemptTaskContainerDetails.type = Types::AttemptTaskContainerDetails
    CEState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CEState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CEStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CEStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    CEStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CEStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CEStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALID', traits: {"smithy.api#enumValue" => "VALID"}))
    CEStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    CEType.add_member(:managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED', traits: {"smithy.api#enumValue" => "MANAGED"}))
    CEType.add_member(:unmanaged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNMANAGED', traits: {"smithy.api#enumValue" => "UNMANAGED"}))
    CRAllocationStrategy.add_member(:best_fit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEST_FIT', traits: {"smithy.api#enumValue" => "BEST_FIT"}))
    CRAllocationStrategy.add_member(:best_fit_progressive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEST_FIT_PROGRESSIVE', traits: {"smithy.api#enumValue" => "BEST_FIT_PROGRESSIVE"}))
    CRAllocationStrategy.add_member(:spot_capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "SPOT_CAPACITY_OPTIMIZED"}))
    CRAllocationStrategy.add_member(:spot_price_capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT_PRICE_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "SPOT_PRICE_CAPACITY_OPTIMIZED"}))
    CRType.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    CRType.add_member(:spot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT', traits: {"smithy.api#enumValue" => "SPOT"}))
    CRType.add_member(:fargate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FARGATE', traits: {"smithy.api#enumValue" => "FARGATE"}))
    CRType.add_member(:fargate_spot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FARGATE_SPOT', traits: {"smithy.api#enumValue" => "FARGATE_SPOT"}))
    CRUpdateAllocationStrategy.add_member(:best_fit_progressive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEST_FIT_PROGRESSIVE', traits: {"smithy.api#enumValue" => "BEST_FIT_PROGRESSIVE"}))
    CRUpdateAllocationStrategy.add_member(:spot_capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "SPOT_CAPACITY_OPTIMIZED"}))
    CRUpdateAllocationStrategy.add_member(:spot_price_capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT_PRICE_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "SPOT_PRICE_CAPACITY_OPTIMIZED"}))
    CancelJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelJobRequest.type = Types::CancelJobRequest
    CancelJobResponse.type = Types::CancelJobResponse
    CapacityLimit.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxCapacity'))
    CapacityLimit.add_member(:capacity_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'capacityUnit'))
    CapacityLimit.type = Types::CapacityLimit
    CapacityLimits.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityLimit)
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ClientException.type = Types::ClientException
    ComputeEnvironmentDetail.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentDetail.add_member(:compute_environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentDetail.add_member(:unmanagedv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unmanagedvCpus'))
    ComputeEnvironmentDetail.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ecsClusterArn'))
    ComputeEnvironmentDetail.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    ComputeEnvironmentDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CEType, location_name: 'type'))
    ComputeEnvironmentDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CEState, location_name: 'state'))
    ComputeEnvironmentDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CEStatus, location_name: 'status'))
    ComputeEnvironmentDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    ComputeEnvironmentDetail.add_member(:compute_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResource, location_name: 'computeResources'))
    ComputeEnvironmentDetail.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRole'))
    ComputeEnvironmentDetail.add_member(:update_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePolicy, location_name: 'updatePolicy'))
    ComputeEnvironmentDetail.add_member(:eks_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksConfiguration, location_name: 'eksConfiguration'))
    ComputeEnvironmentDetail.add_member(:container_orchestration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationType, location_name: 'containerOrchestrationType'))
    ComputeEnvironmentDetail.add_member(:uuid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uuid'))
    ComputeEnvironmentDetail.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'context'))
    ComputeEnvironmentDetail.type = Types::ComputeEnvironmentDetail
    ComputeEnvironmentDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeEnvironmentDetail)
    ComputeEnvironmentOrder.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'order', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentOrder.add_member(:compute_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeEnvironmentOrder.type = Types::ComputeEnvironmentOrder
    ComputeEnvironmentOrders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeEnvironmentOrder)
    ComputeResource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CRType, location_name: 'type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeResource.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CRAllocationStrategy, location_name: 'allocationStrategy'))
    ComputeResource.add_member(:minv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'minvCpus'))
    ComputeResource.add_member(:maxv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxvCpus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeResource.add_member(:desiredv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'desiredvCpus'))
    ComputeResource.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'instanceTypes'))
    ComputeResource.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'imageId', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use ec2Configuration[].imageIdOverride instead."}}))
    ComputeResource.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeResource.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'securityGroupIds'))
    ComputeResource.add_member(:ec2_key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ec2KeyPair'))
    ComputeResource.add_member(:instance_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'instanceRole'))
    ComputeResource.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags'))
    ComputeResource.add_member(:placement_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'placementGroup'))
    ComputeResource.add_member(:bid_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'bidPercentage'))
    ComputeResource.add_member(:spot_iam_fleet_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'spotIamFleetRole'))
    ComputeResource.add_member(:launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: 'launchTemplate'))
    ComputeResource.add_member(:ec2_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ConfigurationList, location_name: 'ec2Configuration'))
    ComputeResource.type = Types::ComputeResource
    ComputeResourceUpdate.add_member(:minv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'minvCpus'))
    ComputeResourceUpdate.add_member(:maxv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxvCpus'))
    ComputeResourceUpdate.add_member(:desiredv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'desiredvCpus'))
    ComputeResourceUpdate.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnets'))
    ComputeResourceUpdate.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'securityGroupIds'))
    ComputeResourceUpdate.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CRUpdateAllocationStrategy, location_name: 'allocationStrategy'))
    ComputeResourceUpdate.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'instanceTypes'))
    ComputeResourceUpdate.add_member(:ec2_key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ec2KeyPair'))
    ComputeResourceUpdate.add_member(:instance_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'instanceRole'))
    ComputeResourceUpdate.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags'))
    ComputeResourceUpdate.add_member(:placement_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'placementGroup'))
    ComputeResourceUpdate.add_member(:bid_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'bidPercentage'))
    ComputeResourceUpdate.add_member(:launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: 'launchTemplate'))
    ComputeResourceUpdate.add_member(:ec2_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ConfigurationList, location_name: 'ec2Configuration'))
    ComputeResourceUpdate.add_member(:update_to_latest_image_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'updateToLatestImageVersion'))
    ComputeResourceUpdate.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CRType, location_name: 'type'))
    ComputeResourceUpdate.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'imageId'))
    ComputeResourceUpdate.type = Types::ComputeResourceUpdate
    ConsumableResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceRequirement)
    ConsumableResourceProperties.add_member(:consumable_resource_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceList, location_name: 'consumableResourceList'))
    ConsumableResourceProperties.type = Types::ConsumableResourceProperties
    ConsumableResourceRequirement.add_member(:consumable_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResource'))
    ConsumableResourceRequirement.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'quantity'))
    ConsumableResourceRequirement.type = Types::ConsumableResourceRequirement
    ConsumableResourceSummary.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConsumableResourceSummary.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConsumableResourceSummary.add_member(:total_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalQuantity'))
    ConsumableResourceSummary.add_member(:in_use_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'inUseQuantity'))
    ConsumableResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ConsumableResourceSummary.type = Types::ConsumableResourceSummary
    ConsumableResourceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceSummary)
    ContainerDetail.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image'))
    ContainerDetail.add_member(:vcpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'vcpus'))
    ContainerDetail.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'memory'))
    ContainerDetail.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    ContainerDetail.add_member(:job_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobRoleArn'))
    ContainerDetail.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'executionRoleArn'))
    ContainerDetail.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volumes, location_name: 'volumes'))
    ContainerDetail.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environment'))
    ContainerDetail.add_member(:mount_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountPoints, location_name: 'mountPoints'))
    ContainerDetail.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readonlyRootFilesystem'))
    ContainerDetail.add_member(:ulimits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ulimits, location_name: 'ulimits'))
    ContainerDetail.add_member(:privileged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'privileged'))
    ContainerDetail.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'user'))
    ContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    ContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    ContainerDetail.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerInstanceArn'))
    ContainerDetail.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'taskArn'))
    ContainerDetail.add_member(:log_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logStreamName'))
    ContainerDetail.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'instanceType'))
    ContainerDetail.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces'))
    ContainerDetail.add_member(:resource_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: 'resourceRequirements'))
    ContainerDetail.add_member(:linux_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxParameters, location_name: 'linuxParameters'))
    ContainerDetail.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration'))
    ContainerDetail.add_member(:secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'secrets'))
    ContainerDetail.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration'))
    ContainerDetail.add_member(:fargate_platform_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargatePlatformConfiguration, location_name: 'fargatePlatformConfiguration'))
    ContainerDetail.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: 'ephemeralStorage'))
    ContainerDetail.add_member(:runtime_platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: 'runtimePlatform'))
    ContainerDetail.add_member(:repository_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: 'repositoryCredentials'))
    ContainerDetail.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableExecuteCommand'))
    ContainerDetail.type = Types::ContainerDetail
    ContainerOverrides.add_member(:vcpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'vcpus', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerOverrides.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'memory', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerOverrides.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    ContainerOverrides.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'instanceType'))
    ContainerOverrides.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environment'))
    ContainerOverrides.add_member(:resource_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: 'resourceRequirements'))
    ContainerOverrides.type = Types::ContainerOverrides
    ContainerProperties.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image'))
    ContainerProperties.add_member(:vcpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'vcpus', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerProperties.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'memory', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use resourceRequirements instead."}}))
    ContainerProperties.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    ContainerProperties.add_member(:job_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobRoleArn'))
    ContainerProperties.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'executionRoleArn'))
    ContainerProperties.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volumes, location_name: 'volumes'))
    ContainerProperties.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environment'))
    ContainerProperties.add_member(:mount_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountPoints, location_name: 'mountPoints'))
    ContainerProperties.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readonlyRootFilesystem'))
    ContainerProperties.add_member(:privileged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'privileged'))
    ContainerProperties.add_member(:ulimits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ulimits, location_name: 'ulimits'))
    ContainerProperties.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'user'))
    ContainerProperties.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'instanceType'))
    ContainerProperties.add_member(:resource_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: 'resourceRequirements'))
    ContainerProperties.add_member(:linux_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxParameters, location_name: 'linuxParameters'))
    ContainerProperties.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration'))
    ContainerProperties.add_member(:secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'secrets'))
    ContainerProperties.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration'))
    ContainerProperties.add_member(:fargate_platform_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargatePlatformConfiguration, location_name: 'fargatePlatformConfiguration'))
    ContainerProperties.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableExecuteCommand'))
    ContainerProperties.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: 'ephemeralStorage'))
    ContainerProperties.add_member(:runtime_platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: 'runtimePlatform'))
    ContainerProperties.add_member(:repository_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: 'repositoryCredentials'))
    ContainerProperties.type = Types::ContainerProperties
    ContainerSummary.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    ContainerSummary.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    ContainerSummary.type = Types::ContainerSummary
    CreateComputeEnvironmentRequest.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateComputeEnvironmentRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CEType, location_name: 'type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateComputeEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CEState, location_name: 'state'))
    CreateComputeEnvironmentRequest.add_member(:unmanagedv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unmanagedvCpus'))
    CreateComputeEnvironmentRequest.add_member(:compute_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResource, location_name: 'computeResources'))
    CreateComputeEnvironmentRequest.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRole'))
    CreateComputeEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    CreateComputeEnvironmentRequest.add_member(:eks_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksConfiguration, location_name: 'eksConfiguration'))
    CreateComputeEnvironmentRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'context'))
    CreateComputeEnvironmentRequest.type = Types::CreateComputeEnvironmentRequest
    CreateComputeEnvironmentResponse.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentName'))
    CreateComputeEnvironmentResponse.add_member(:compute_environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentArn'))
    CreateComputeEnvironmentResponse.type = Types::CreateComputeEnvironmentResponse
    CreateConsumableResourceRequest.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateConsumableResourceRequest.add_member(:total_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalQuantity'))
    CreateConsumableResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    CreateConsumableResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    CreateConsumableResourceRequest.type = Types::CreateConsumableResourceRequest
    CreateConsumableResourceResponse.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateConsumableResourceResponse.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateConsumableResourceResponse.type = Types::CreateConsumableResourceResponse
    CreateJobQueueRequest.add_member(:job_queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JQState, location_name: 'state'))
    CreateJobQueueRequest.add_member(:scheduling_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schedulingPolicyArn'))
    CreateJobQueueRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'priority', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueRequest.add_member(:compute_environment_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, location_name: 'computeEnvironmentOrder'))
    CreateJobQueueRequest.add_member(:service_environment_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentOrders, location_name: 'serviceEnvironmentOrder'))
    CreateJobQueueRequest.add_member(:job_queue_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobQueueType, location_name: 'jobQueueType'))
    CreateJobQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    CreateJobQueueRequest.add_member(:job_state_time_limit_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateTimeLimitActions, location_name: 'jobStateTimeLimitActions'))
    CreateJobQueueRequest.type = Types::CreateJobQueueRequest
    CreateJobQueueResponse.add_member(:job_queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueResponse.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateJobQueueResponse.type = Types::CreateJobQueueResponse
    CreateSchedulingPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchedulingPolicyRequest.add_member(:fairshare_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FairsharePolicy, location_name: 'fairsharePolicy'))
    CreateSchedulingPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    CreateSchedulingPolicyRequest.type = Types::CreateSchedulingPolicyRequest
    CreateSchedulingPolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchedulingPolicyResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchedulingPolicyResponse.type = Types::CreateSchedulingPolicyResponse
    CreateServiceEnvironmentRequest.add_member(:service_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentRequest.add_member(:service_environment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentType, location_name: 'serviceEnvironmentType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentState, location_name: 'state'))
    CreateServiceEnvironmentRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityLimits, location_name: 'capacityLimits', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    CreateServiceEnvironmentRequest.type = Types::CreateServiceEnvironmentRequest
    CreateServiceEnvironmentResponse.add_member(:service_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentResponse.add_member(:service_environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServiceEnvironmentResponse.type = Types::CreateServiceEnvironmentResponse
    DeleteComputeEnvironmentRequest.add_member(:compute_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteComputeEnvironmentRequest.type = Types::DeleteComputeEnvironmentRequest
    DeleteComputeEnvironmentResponse.type = Types::DeleteComputeEnvironmentResponse
    DeleteConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteConsumableResourceRequest.type = Types::DeleteConsumableResourceRequest
    DeleteConsumableResourceResponse.type = Types::DeleteConsumableResourceResponse
    DeleteJobQueueRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteJobQueueRequest.type = Types::DeleteJobQueueRequest
    DeleteJobQueueResponse.type = Types::DeleteJobQueueResponse
    DeleteSchedulingPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSchedulingPolicyRequest.type = Types::DeleteSchedulingPolicyRequest
    DeleteSchedulingPolicyResponse.type = Types::DeleteSchedulingPolicyResponse
    DeleteServiceEnvironmentRequest.add_member(:service_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteServiceEnvironmentRequest.type = Types::DeleteServiceEnvironmentRequest
    DeleteServiceEnvironmentResponse.type = Types::DeleteServiceEnvironmentResponse
    DeregisterJobDefinitionRequest.add_member(:job_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterJobDefinitionRequest.type = Types::DeregisterJobDefinitionRequest
    DeregisterJobDefinitionResponse.type = Types::DeregisterJobDefinitionResponse
    DescribeComputeEnvironmentsRequest.add_member(:compute_environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'computeEnvironments'))
    DescribeComputeEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    DescribeComputeEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeComputeEnvironmentsRequest.type = Types::DescribeComputeEnvironmentsRequest
    DescribeComputeEnvironmentsResponse.add_member(:compute_environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeEnvironmentDetailList, location_name: 'computeEnvironments'))
    DescribeComputeEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeComputeEnvironmentsResponse.type = Types::DescribeComputeEnvironmentsResponse
    DescribeConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeConsumableResourceRequest.type = Types::DescribeConsumableResourceRequest
    DescribeConsumableResourceResponse.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeConsumableResourceResponse.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeConsumableResourceResponse.add_member(:total_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalQuantity'))
    DescribeConsumableResourceResponse.add_member(:in_use_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'inUseQuantity'))
    DescribeConsumableResourceResponse.add_member(:available_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'availableQuantity'))
    DescribeConsumableResourceResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    DescribeConsumableResourceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'createdAt'))
    DescribeConsumableResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    DescribeConsumableResourceResponse.type = Types::DescribeConsumableResourceResponse
    DescribeJobDefinitionsRequest.add_member(:job_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'jobDefinitions'))
    DescribeJobDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    DescribeJobDefinitionsRequest.add_member(:job_definition_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionName'))
    DescribeJobDefinitionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    DescribeJobDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeJobDefinitionsRequest.type = Types::DescribeJobDefinitionsRequest
    DescribeJobDefinitionsResponse.add_member(:job_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDefinitionList, location_name: 'jobDefinitions'))
    DescribeJobDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeJobDefinitionsResponse.type = Types::DescribeJobDefinitionsResponse
    DescribeJobQueuesRequest.add_member(:job_queues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'jobQueues'))
    DescribeJobQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    DescribeJobQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeJobQueuesRequest.type = Types::DescribeJobQueuesRequest
    DescribeJobQueuesResponse.add_member(:job_queues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobQueueDetailList, location_name: 'jobQueues'))
    DescribeJobQueuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeJobQueuesResponse.type = Types::DescribeJobQueuesResponse
    DescribeJobsRequest.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'jobs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeJobsRequest.type = Types::DescribeJobsRequest
    DescribeJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetailList, location_name: 'jobs'))
    DescribeJobsResponse.type = Types::DescribeJobsResponse
    DescribeSchedulingPoliciesRequest.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'arns', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeSchedulingPoliciesRequest.type = Types::DescribeSchedulingPoliciesRequest
    DescribeSchedulingPoliciesResponse.add_member(:scheduling_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulingPolicyDetailList, location_name: 'schedulingPolicies'))
    DescribeSchedulingPoliciesResponse.type = Types::DescribeSchedulingPoliciesResponse
    DescribeServiceEnvironmentsRequest.add_member(:service_environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'serviceEnvironments'))
    DescribeServiceEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    DescribeServiceEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeServiceEnvironmentsRequest.type = Types::DescribeServiceEnvironmentsRequest
    DescribeServiceEnvironmentsResponse.add_member(:service_environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentDetailList, location_name: 'serviceEnvironments'))
    DescribeServiceEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeServiceEnvironmentsResponse.type = Types::DescribeServiceEnvironmentsResponse
    DescribeServiceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobRequest.type = Types::DescribeServiceJobRequest
    DescribeServiceJobResponse.add_member(:attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobAttemptDetails, location_name: 'attempts'))
    DescribeServiceJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'createdAt'))
    DescribeServiceJobResponse.add_member(:is_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isTerminated'))
    DescribeServiceJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    DescribeServiceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:latest_attempt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LatestServiceJobAttempt, location_name: 'latestAttempt'))
    DescribeServiceJobResponse.add_member(:retry_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobRetryStrategy, location_name: 'retryStrategy'))
    DescribeServiceJobResponse.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'schedulingPriority'))
    DescribeServiceJobResponse.add_member(:service_request_payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRequestPayload'))
    DescribeServiceJobResponse.add_member(:service_job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobType, location_name: 'serviceJobType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier'))
    DescribeServiceJobResponse.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeServiceJobResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    DescribeServiceJobResponse.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    DescribeServiceJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    DescribeServiceJobResponse.add_member(:timeout_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobTimeout, location_name: 'timeoutConfig'))
    DescribeServiceJobResponse.type = Types::DescribeServiceJobResponse
    Device.add_member(:host_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostPath', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Device.add_member(:container_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerPath'))
    Device.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCgroupPermissions, location_name: 'permissions'))
    Device.type = Types::Device
    DeviceCgroupPermission.add_member(:read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "READ"}))
    DeviceCgroupPermission.add_member(:write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE', traits: {"smithy.api#enumValue" => "WRITE"}))
    DeviceCgroupPermission.add_member(:mknod, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MKNOD', traits: {"smithy.api#enumValue" => "MKNOD"}))
    DeviceCgroupPermissions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCgroupPermission)
    DevicesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device)
    EFSAuthorizationConfig.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessPointId'))
    EFSAuthorizationConfig.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EFSAuthorizationConfigIAM, location_name: 'iam'))
    EFSAuthorizationConfig.type = Types::EFSAuthorizationConfig
    EFSAuthorizationConfigIAM.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSAuthorizationConfigIAM.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSTransitEncryption.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSTransitEncryption.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSVolumeConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fileSystemId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EFSVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootDirectory'))
    EFSVolumeConfiguration.add_member(:transit_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EFSTransitEncryption, location_name: 'transitEncryption'))
    EFSVolumeConfiguration.add_member(:transit_encryption_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'transitEncryptionPort'))
    EFSVolumeConfiguration.add_member(:authorization_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EFSAuthorizationConfig, location_name: 'authorizationConfig'))
    EFSVolumeConfiguration.type = Types::EFSVolumeConfiguration
    Ec2Configuration.add_member(:image_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageType, location_name: 'imageType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ec2Configuration.add_member(:image_id_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdOverride, location_name: 'imageIdOverride'))
    Ec2Configuration.add_member(:image_kubernetes_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesVersion, location_name: 'imageKubernetesVersion'))
    Ec2Configuration.type = Types::Ec2Configuration
    Ec2ConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Configuration)
    EcsProperties.add_member(:task_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEcsTaskProperties, location_name: 'taskProperties', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EcsProperties.type = Types::EcsProperties
    EcsPropertiesDetail.add_member(:task_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEcsTaskDetails, location_name: 'taskProperties'))
    EcsPropertiesDetail.type = Types::EcsPropertiesDetail
    EcsPropertiesOverride.add_member(:task_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaskPropertiesOverride, location_name: 'taskProperties'))
    EcsPropertiesOverride.type = Types::EcsPropertiesOverride
    EcsTaskDetails.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaskContainerDetails, location_name: 'containers'))
    EcsTaskDetails.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerInstanceArn'))
    EcsTaskDetails.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'taskArn'))
    EcsTaskDetails.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: 'ephemeralStorage'))
    EcsTaskDetails.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'executionRoleArn'))
    EcsTaskDetails.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'platformVersion'))
    EcsTaskDetails.add_member(:ipc_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipcMode'))
    EcsTaskDetails.add_member(:task_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'taskRoleArn'))
    EcsTaskDetails.add_member(:pid_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pidMode'))
    EcsTaskDetails.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration'))
    EcsTaskDetails.add_member(:runtime_platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: 'runtimePlatform'))
    EcsTaskDetails.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volumes, location_name: 'volumes'))
    EcsTaskDetails.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableExecuteCommand'))
    EcsTaskDetails.type = Types::EcsTaskDetails
    EcsTaskProperties.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaskContainerProperties, location_name: 'containers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EcsTaskProperties.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: 'ephemeralStorage'))
    EcsTaskProperties.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'executionRoleArn'))
    EcsTaskProperties.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'platformVersion'))
    EcsTaskProperties.add_member(:ipc_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipcMode'))
    EcsTaskProperties.add_member(:task_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'taskRoleArn'))
    EcsTaskProperties.add_member(:pid_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pidMode'))
    EcsTaskProperties.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration'))
    EcsTaskProperties.add_member(:runtime_platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: 'runtimePlatform'))
    EcsTaskProperties.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volumes, location_name: 'volumes'))
    EcsTaskProperties.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableExecuteCommand'))
    EcsTaskProperties.type = Types::EcsTaskProperties
    EksAnnotationsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EksAnnotationsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EksAttemptContainerDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EksAttemptContainerDetail.add_member(:container_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerID'))
    EksAttemptContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    EksAttemptContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    EksAttemptContainerDetail.type = Types::EksAttemptContainerDetail
    EksAttemptContainerDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAttemptContainerDetail)
    EksAttemptDetail.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAttemptContainerDetails, location_name: 'containers'))
    EksAttemptDetail.add_member(:init_containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAttemptContainerDetails, location_name: 'initContainers'))
    EksAttemptDetail.add_member(:eks_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eksClusterArn'))
    EksAttemptDetail.add_member(:pod_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'podName'))
    EksAttemptDetail.add_member(:pod_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'podNamespace'))
    EksAttemptDetail.add_member(:node_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeName'))
    EksAttemptDetail.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt'))
    EksAttemptDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    EksAttemptDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    EksAttemptDetail.type = Types::EksAttemptDetail
    EksAttemptDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAttemptDetail)
    EksConfiguration.add_member(:eks_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eksClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksConfiguration.add_member(:kubernetes_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kubernetesNamespace', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksConfiguration.type = Types::EksConfiguration
    EksContainer.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EksContainer.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksContainer.add_member(:image_pull_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'imagePullPolicy'))
    EksContainer.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    EksContainer.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'args'))
    EksContainer.add_member(:env, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariables, location_name: 'env'))
    EksContainer.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerResourceRequirements, location_name: 'resources'))
    EksContainer.add_member(:volume_mounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerVolumeMounts, location_name: 'volumeMounts'))
    EksContainer.add_member(:security_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerSecurityContext, location_name: 'securityContext'))
    EksContainer.type = Types::EksContainer
    EksContainerDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EksContainerDetail.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image'))
    EksContainerDetail.add_member(:image_pull_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'imagePullPolicy'))
    EksContainerDetail.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    EksContainerDetail.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'args'))
    EksContainerDetail.add_member(:env, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariables, location_name: 'env'))
    EksContainerDetail.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerResourceRequirements, location_name: 'resources'))
    EksContainerDetail.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    EksContainerDetail.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    EksContainerDetail.add_member(:volume_mounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerVolumeMounts, location_name: 'volumeMounts'))
    EksContainerDetail.add_member(:security_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerSecurityContext, location_name: 'securityContext'))
    EksContainerDetail.type = Types::EksContainerDetail
    EksContainerDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerDetail)
    EksContainerEnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksContainerEnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    EksContainerEnvironmentVariable.type = Types::EksContainerEnvironmentVariable
    EksContainerEnvironmentVariables.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariable)
    EksContainerOverride.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EksContainerOverride.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image'))
    EksContainerOverride.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    EksContainerOverride.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'args'))
    EksContainerOverride.add_member(:env, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariables, location_name: 'env'))
    EksContainerOverride.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerResourceRequirements, location_name: 'resources'))
    EksContainerOverride.type = Types::EksContainerOverride
    EksContainerOverrideList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerOverride)
    EksContainerResourceRequirements.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksLimits, location_name: 'limits'))
    EksContainerResourceRequirements.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksRequests, location_name: 'requests'))
    EksContainerResourceRequirements.type = Types::EksContainerResourceRequirements
    EksContainerSecurityContext.add_member(:run_as_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'runAsUser'))
    EksContainerSecurityContext.add_member(:run_as_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'runAsGroup'))
    EksContainerSecurityContext.add_member(:privileged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'privileged'))
    EksContainerSecurityContext.add_member(:allow_privilege_escalation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowPrivilegeEscalation'))
    EksContainerSecurityContext.add_member(:read_only_root_filesystem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readOnlyRootFilesystem'))
    EksContainerSecurityContext.add_member(:run_as_non_root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'runAsNonRoot'))
    EksContainerSecurityContext.type = Types::EksContainerSecurityContext
    EksContainerVolumeMount.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    EksContainerVolumeMount.add_member(:mount_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mountPath'))
    EksContainerVolumeMount.add_member(:sub_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subPath'))
    EksContainerVolumeMount.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readOnly'))
    EksContainerVolumeMount.type = Types::EksContainerVolumeMount
    EksContainerVolumeMounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerVolumeMount)
    EksContainers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainer)
    EksEmptyDir.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'medium'))
    EksEmptyDir.add_member(:size_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Quantity, location_name: 'sizeLimit'))
    EksEmptyDir.type = Types::EksEmptyDir
    EksHostPath.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path'))
    EksHostPath.type = Types::EksHostPath
    EksLabelsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EksLabelsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EksLimits.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EksLimits.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Quantity)
    EksMetadata.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksLabelsMap, location_name: 'labels'))
    EksMetadata.add_member(:annotations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnnotationsMap, location_name: 'annotations'))
    EksMetadata.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namespace'))
    EksMetadata.type = Types::EksMetadata
    EksPersistentVolumeClaim.add_member(:claim_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'claimName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksPersistentVolumeClaim.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readOnly'))
    EksPersistentVolumeClaim.type = Types::EksPersistentVolumeClaim
    EksPodProperties.add_member(:service_account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccountName'))
    EksPodProperties.add_member(:host_network, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hostNetwork'))
    EksPodProperties.add_member(:dns_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dnsPolicy'))
    EksPodProperties.add_member(:image_pull_secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePullSecrets, location_name: 'imagePullSecrets'))
    EksPodProperties.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainers, location_name: 'containers'))
    EksPodProperties.add_member(:init_containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainers, location_name: 'initContainers'))
    EksPodProperties.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksVolumes, location_name: 'volumes'))
    EksPodProperties.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksMetadata, location_name: 'metadata'))
    EksPodProperties.add_member(:share_process_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'shareProcessNamespace'))
    EksPodProperties.type = Types::EksPodProperties
    EksPodPropertiesDetail.add_member(:service_account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccountName'))
    EksPodPropertiesDetail.add_member(:host_network, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hostNetwork'))
    EksPodPropertiesDetail.add_member(:dns_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dnsPolicy'))
    EksPodPropertiesDetail.add_member(:image_pull_secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePullSecrets, location_name: 'imagePullSecrets'))
    EksPodPropertiesDetail.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerDetails, location_name: 'containers'))
    EksPodPropertiesDetail.add_member(:init_containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerDetails, location_name: 'initContainers'))
    EksPodPropertiesDetail.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksVolumes, location_name: 'volumes'))
    EksPodPropertiesDetail.add_member(:pod_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'podName'))
    EksPodPropertiesDetail.add_member(:node_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeName'))
    EksPodPropertiesDetail.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksMetadata, location_name: 'metadata'))
    EksPodPropertiesDetail.add_member(:share_process_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'shareProcessNamespace'))
    EksPodPropertiesDetail.type = Types::EksPodPropertiesDetail
    EksPodPropertiesOverride.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerOverrideList, location_name: 'containers'))
    EksPodPropertiesOverride.add_member(:init_containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksContainerOverrideList, location_name: 'initContainers'))
    EksPodPropertiesOverride.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksMetadata, location_name: 'metadata'))
    EksPodPropertiesOverride.type = Types::EksPodPropertiesOverride
    EksProperties.add_member(:pod_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPodProperties, location_name: 'podProperties'))
    EksProperties.type = Types::EksProperties
    EksPropertiesDetail.add_member(:pod_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPodPropertiesDetail, location_name: 'podProperties'))
    EksPropertiesDetail.type = Types::EksPropertiesDetail
    EksPropertiesOverride.add_member(:pod_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPodPropertiesOverride, location_name: 'podProperties'))
    EksPropertiesOverride.type = Types::EksPropertiesOverride
    EksRequests.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EksRequests.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Quantity)
    EksSecret.add_member(:secret_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'secretName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksSecret.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'optional'))
    EksSecret.type = Types::EksSecret
    EksVolume.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EksVolume.add_member(:host_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksHostPath, location_name: 'hostPath'))
    EksVolume.add_member(:empty_dir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksEmptyDir, location_name: 'emptyDir'))
    EksVolume.add_member(:secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksSecret, location_name: 'secret'))
    EksVolume.add_member(:persistent_volume_claim, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPersistentVolumeClaim, location_name: 'persistentVolumeClaim'))
    EksVolume.type = Types::EksVolume
    EksVolumes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksVolume)
    EnvironmentVariables.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePair)
    EphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sizeInGiB', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EphemeralStorage.type = Types::EphemeralStorage
    EvaluateOnExit.add_member(:on_status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'onStatusReason'))
    EvaluateOnExit.add_member(:on_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'onReason'))
    EvaluateOnExit.add_member(:on_exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'onExitCode'))
    EvaluateOnExit.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAction, location_name: 'action', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EvaluateOnExit.type = Types::EvaluateOnExit
    EvaluateOnExitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateOnExit)
    FairsharePolicy.add_member(:share_decay_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'shareDecaySeconds'))
    FairsharePolicy.add_member(:compute_reservation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'computeReservation'))
    FairsharePolicy.add_member(:share_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareAttributesList, location_name: 'shareDistribution'))
    FairsharePolicy.type = Types::FairsharePolicy
    FargatePlatformConfiguration.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'platformVersion'))
    FargatePlatformConfiguration.type = Types::FargatePlatformConfiguration
    FirelensConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirelensConfigurationType, location_name: 'type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FirelensConfiguration.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirelensConfigurationOptionsMap, location_name: 'options'))
    FirelensConfiguration.type = Types::FirelensConfiguration
    FirelensConfigurationOptionsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FirelensConfigurationOptionsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FirelensConfigurationType.add_member(:fluentd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLUENTD', traits: {"smithy.api#enumValue" => "fluentd"}))
    FirelensConfigurationType.add_member(:fluentbit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLUENTBIT', traits: {"smithy.api#enumValue" => "fluentbit"}))
    FrontOfQueueDetail.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrontOfQueueJobSummaryList, location_name: 'jobs'))
    FrontOfQueueDetail.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lastUpdatedAt'))
    FrontOfQueueDetail.type = Types::FrontOfQueueDetail
    FrontOfQueueJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    FrontOfQueueJobSummary.add_member(:earliest_time_at_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'earliestTimeAtPosition'))
    FrontOfQueueJobSummary.type = Types::FrontOfQueueJobSummary
    FrontOfQueueJobSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrontOfQueueJobSummary)
    GetJobQueueSnapshotRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetJobQueueSnapshotRequest.type = Types::GetJobQueueSnapshotRequest
    GetJobQueueSnapshotResponse.add_member(:front_of_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrontOfQueueDetail, location_name: 'frontOfQueue'))
    GetJobQueueSnapshotResponse.type = Types::GetJobQueueSnapshotResponse
    Host.add_member(:source_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourcePath'))
    Host.type = Types::Host
    ImagePullSecret.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImagePullSecret.type = Types::ImagePullSecret
    ImagePullSecrets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePullSecret)
    JQState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    JQState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    JQStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    JQStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    JQStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    JQStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    JQStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALID', traits: {"smithy.api#enumValue" => "VALID"}))
    JQStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    JobDefinition.add_member(:job_definition_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:job_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'revision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    JobDefinition.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDefinition.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'schedulingPriority'))
    JobDefinition.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'parameters'))
    JobDefinition.add_member(:retry_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStrategy, location_name: 'retryStrategy'))
    JobDefinition.add_member(:container_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProperties, location_name: 'containerProperties'))
    JobDefinition.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeout, location_name: 'timeout'))
    JobDefinition.add_member(:node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeProperties, location_name: 'nodeProperties'))
    JobDefinition.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    JobDefinition.add_member(:propagate_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'propagateTags'))
    JobDefinition.add_member(:platform_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCapabilityList, location_name: 'platformCapabilities'))
    JobDefinition.add_member(:ecs_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsProperties, location_name: 'ecsProperties'))
    JobDefinition.add_member(:eks_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksProperties, location_name: 'eksProperties'))
    JobDefinition.add_member(:container_orchestration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationType, location_name: 'containerOrchestrationType'))
    JobDefinition.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourceProperties'))
    JobDefinition.type = Types::JobDefinition
    JobDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDefinition)
    JobDefinitionType.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Container', traits: {"smithy.api#enumValue" => "container"}))
    JobDefinitionType.add_member(:multinode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Multinode', traits: {"smithy.api#enumValue" => "multinode"}))
    JobDependency.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId'))
    JobDependency.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayJobDependency, location_name: 'type'))
    JobDependency.type = Types::JobDependency
    JobDependencyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDependency)
    JobDetail.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    JobDetail.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier'))
    JobDetail.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'schedulingPriority'))
    JobDetail.add_member(:attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptDetails, location_name: 'attempts'))
    JobDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    JobDetail.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'createdAt'))
    JobDetail.add_member(:retry_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStrategy, location_name: 'retryStrategy'))
    JobDetail.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    JobDetail.add_member(:depends_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDependencyList, location_name: 'dependsOn'))
    JobDetail.add_member(:job_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobDetail.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'parameters'))
    JobDetail.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerDetail, location_name: 'container'))
    JobDetail.add_member(:node_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeDetails, location_name: 'nodeDetails'))
    JobDetail.add_member(:node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeProperties, location_name: 'nodeProperties'))
    JobDetail.add_member(:array_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayPropertiesDetail, location_name: 'arrayProperties'))
    JobDetail.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeout, location_name: 'timeout'))
    JobDetail.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    JobDetail.add_member(:propagate_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'propagateTags'))
    JobDetail.add_member(:platform_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCapabilityList, location_name: 'platformCapabilities'))
    JobDetail.add_member(:eks_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPropertiesDetail, location_name: 'eksProperties'))
    JobDetail.add_member(:eks_attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAttemptDetails, location_name: 'eksAttempts'))
    JobDetail.add_member(:ecs_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsPropertiesDetail, location_name: 'ecsProperties'))
    JobDetail.add_member(:is_cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isCancelled'))
    JobDetail.add_member(:is_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isTerminated'))
    JobDetail.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourceProperties'))
    JobDetail.type = Types::JobDetail
    JobDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetail)
    JobQueueDetail.add_member(:job_queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JQState, location_name: 'state', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:scheduling_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schedulingPolicyArn'))
    JobQueueDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JQStatus, location_name: 'status'))
    JobQueueDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    JobQueueDetail.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'priority', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:compute_environment_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, location_name: 'computeEnvironmentOrder', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobQueueDetail.add_member(:service_environment_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentOrders, location_name: 'serviceEnvironmentOrder'))
    JobQueueDetail.add_member(:job_queue_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobQueueType, location_name: 'jobQueueType'))
    JobQueueDetail.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    JobQueueDetail.add_member(:job_state_time_limit_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateTimeLimitActions, location_name: 'jobStateTimeLimitActions'))
    JobQueueDetail.type = Types::JobQueueDetail
    JobQueueDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobQueueDetail)
    JobQueueType.add_member(:eks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS', traits: {"smithy.api#enumValue" => "EKS"}))
    JobQueueType.add_member(:ecs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS', traits: {"smithy.api#enumValue" => "ECS"}))
    JobQueueType.add_member(:ecs_fargate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS_FARGATE', traits: {"smithy.api#enumValue" => "ECS_FARGATE"}))
    JobQueueType.add_member(:sagemaker_training, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER_TRAINING', traits: {"smithy.api#enumValue" => "SAGEMAKER_TRAINING"}))
    JobStateTimeLimitAction.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateTimeLimitActionsState, location_name: 'state', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.add_member(:max_time_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxTimeSeconds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateTimeLimitActionsAction, location_name: 'action', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobStateTimeLimitAction.type = Types::JobStateTimeLimitAction
    JobStateTimeLimitActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateTimeLimitAction)
    JobStateTimeLimitActionsAction.add_member(:cancel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL', traits: {"smithy.api#enumValue" => "CANCEL"}))
    JobStateTimeLimitActionsAction.add_member(:terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE', traits: {"smithy.api#enumValue" => "TERMINATE"}))
    JobStateTimeLimitActionsState.add_member(:runnable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNABLE', traits: {"smithy.api#enumValue" => "RUNNABLE"}))
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    JobStatus.add_member(:runnable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNABLE', traits: {"smithy.api#enumValue" => "RUNNABLE"}))
    JobStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    JobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'createdAt'))
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status'))
    JobSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    JobSummary.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt'))
    JobSummary.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    JobSummary.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerSummary, location_name: 'container'))
    JobSummary.add_member(:array_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayPropertiesSummary, location_name: 'arrayProperties'))
    JobSummary.add_member(:node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodePropertiesSummary, location_name: 'nodeProperties'))
    JobSummary.add_member(:job_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinition'))
    JobSummary.type = Types::JobSummary
    JobSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    JobTimeout.add_member(:attempt_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'attemptDurationSeconds'))
    JobTimeout.type = Types::JobTimeout
    KeyValuePair.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    KeyValuePair.type = Types::KeyValuePair
    KeyValuesPair.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    KeyValuesPair.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'values'))
    KeyValuesPair.type = Types::KeyValuesPair
    LatestServiceJobAttempt.add_member(:service_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceResourceId, location_name: 'serviceResourceId'))
    LatestServiceJobAttempt.type = Types::LatestServiceJobAttempt
    LaunchTemplateSpecification.add_member(:launch_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'launchTemplateId'))
    LaunchTemplateSpecification.add_member(:launch_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'launchTemplateName'))
    LaunchTemplateSpecification.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    LaunchTemplateSpecification.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecificationOverrideList, location_name: 'overrides'))
    LaunchTemplateSpecification.add_member(:userdata_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserdataType, location_name: 'userdataType'))
    LaunchTemplateSpecification.type = Types::LaunchTemplateSpecification
    LaunchTemplateSpecificationOverride.add_member(:launch_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'launchTemplateId'))
    LaunchTemplateSpecificationOverride.add_member(:launch_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'launchTemplateName'))
    LaunchTemplateSpecificationOverride.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    LaunchTemplateSpecificationOverride.add_member(:target_instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'targetInstanceTypes'))
    LaunchTemplateSpecificationOverride.add_member(:userdata_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserdataType, location_name: 'userdataType'))
    LaunchTemplateSpecificationOverride.type = Types::LaunchTemplateSpecificationOverride
    LaunchTemplateSpecificationOverrideList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecificationOverride)
    LinuxParameters.add_member(:devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicesList, location_name: 'devices'))
    LinuxParameters.add_member(:init_process_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'initProcessEnabled'))
    LinuxParameters.add_member(:shared_memory_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sharedMemorySize'))
    LinuxParameters.add_member(:tmpfs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TmpfsList, location_name: 'tmpfs'))
    LinuxParameters.add_member(:max_swap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxSwap'))
    LinuxParameters.add_member(:swappiness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'swappiness'))
    LinuxParameters.type = Types::LinuxParameters
    ListAttemptEcsTaskDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptEcsTaskDetails)
    ListAttemptTaskContainerDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptTaskContainerDetails)
    ListConsumableResourcesFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuesPair)
    ListConsumableResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConsumableResourcesFilterList, location_name: 'filters'))
    ListConsumableResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListConsumableResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListConsumableResourcesRequest.type = Types::ListConsumableResourcesRequest
    ListConsumableResourcesResponse.add_member(:consumable_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceSummaryList, location_name: 'consumableResources', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListConsumableResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListConsumableResourcesResponse.type = Types::ListConsumableResourcesResponse
    ListEcsTaskDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsTaskDetails)
    ListEcsTaskProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsTaskProperties)
    ListJobsByConsumableResourceFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuesPair)
    ListJobsByConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceFilterList, location_name: 'filters'))
    ListJobsByConsumableResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListJobsByConsumableResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListJobsByConsumableResourceRequest.type = Types::ListJobsByConsumableResourceRequest
    ListJobsByConsumableResourceResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceSummaryList, location_name: 'jobs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListJobsByConsumableResourceResponse.type = Types::ListJobsByConsumableResourceResponse
    ListJobsByConsumableResourceSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:job_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionArn'))
    ListJobsByConsumableResourceSummary.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier'))
    ListJobsByConsumableResourceSummary.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'quantity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    ListJobsByConsumableResourceSummary.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt'))
    ListJobsByConsumableResourceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'createdAt', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourceProperties', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsByConsumableResourceSummary.type = Types::ListJobsByConsumableResourceSummary
    ListJobsByConsumableResourceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceSummary)
    ListJobsFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuesPair)
    ListJobsRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue'))
    ListJobsRequest.add_member(:array_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arrayJobId'))
    ListJobsRequest.add_member(:multi_node_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'multiNodeJobId'))
    ListJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus'))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterList, location_name: 'filters'))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResponse.add_member(:job_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummaryList, location_name: 'jobSummaryList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListJobsResponse.type = Types::ListJobsResponse
    ListSchedulingPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListSchedulingPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListSchedulingPoliciesRequest.type = Types::ListSchedulingPoliciesRequest
    ListSchedulingPoliciesResponse.add_member(:scheduling_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulingPolicyListingDetailList, location_name: 'schedulingPolicies'))
    ListSchedulingPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListSchedulingPoliciesResponse.type = Types::ListSchedulingPoliciesResponse
    ListServiceJobsRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue'))
    ListServiceJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobStatus, location_name: 'jobStatus'))
    ListServiceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListServiceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListServiceJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterList, location_name: 'filters'))
    ListServiceJobsRequest.type = Types::ListServiceJobsRequest
    ListServiceJobsResponse.add_member(:job_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobSummaryList, location_name: 'jobSummaryList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListServiceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListServiceJobsResponse.type = Types::ListServiceJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskContainerDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskContainerDetails)
    ListTaskContainerOverrides.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskContainerOverrides)
    ListTaskContainerProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskContainerProperties)
    ListTaskPropertiesOverride.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskPropertiesOverride)
    LogConfiguration.add_member(:log_driver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDriver, location_name: 'logDriver', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LogConfiguration.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurationOptionsMap, location_name: 'options'))
    LogConfiguration.add_member(:secret_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'secretOptions'))
    LogConfiguration.type = Types::LogConfiguration
    LogConfigurationOptionsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LogConfigurationOptionsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LogDriver.add_member(:json_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON_FILE', traits: {"smithy.api#enumValue" => "json-file"}))
    LogDriver.add_member(:syslog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSLOG', traits: {"smithy.api#enumValue" => "syslog"}))
    LogDriver.add_member(:journald, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JOURNALD', traits: {"smithy.api#enumValue" => "journald"}))
    LogDriver.add_member(:gelf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GELF', traits: {"smithy.api#enumValue" => "gelf"}))
    LogDriver.add_member(:fluentd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLUENTD', traits: {"smithy.api#enumValue" => "fluentd"}))
    LogDriver.add_member(:awslogs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSLOGS', traits: {"smithy.api#enumValue" => "awslogs"}))
    LogDriver.add_member(:splunk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPLUNK', traits: {"smithy.api#enumValue" => "splunk"}))
    LogDriver.add_member(:awsfirelens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSFIRELENS', traits: {"smithy.api#enumValue" => "awsfirelens"}))
    MountPoint.add_member(:container_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerPath'))
    MountPoint.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readOnly'))
    MountPoint.add_member(:source_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceVolume'))
    MountPoint.type = Types::MountPoint
    MountPoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountPoint)
    NetworkConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: 'assignPublicIp'))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NetworkInterface.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'attachmentId'))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipv6Address'))
    NetworkInterface.add_member(:private_ipv4_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'privateIpv4Address'))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    NodeDetails.add_member(:node_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'nodeIndex'))
    NodeDetails.add_member(:is_main_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isMainNode'))
    NodeDetails.type = Types::NodeDetails
    NodeOverrides.add_member(:num_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numNodes'))
    NodeOverrides.add_member(:node_property_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodePropertyOverrides, location_name: 'nodePropertyOverrides'))
    NodeOverrides.type = Types::NodeOverrides
    NodeProperties.add_member(:num_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeProperties.add_member(:main_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'mainNode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeProperties.add_member(:node_range_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRangeProperties, location_name: 'nodeRangeProperties', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeProperties.type = Types::NodeProperties
    NodePropertiesSummary.add_member(:is_main_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isMainNode'))
    NodePropertiesSummary.add_member(:num_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numNodes'))
    NodePropertiesSummary.add_member(:node_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'nodeIndex'))
    NodePropertiesSummary.type = Types::NodePropertiesSummary
    NodePropertyOverride.add_member(:target_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodePropertyOverride.add_member(:container_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: 'containerOverrides'))
    NodePropertyOverride.add_member(:ecs_properties_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsPropertiesOverride, location_name: 'ecsPropertiesOverride'))
    NodePropertyOverride.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'instanceTypes'))
    NodePropertyOverride.add_member(:eks_properties_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPropertiesOverride, location_name: 'eksPropertiesOverride'))
    NodePropertyOverride.add_member(:consumable_resource_properties_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourcePropertiesOverride'))
    NodePropertyOverride.type = Types::NodePropertyOverride
    NodePropertyOverrides.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodePropertyOverride)
    NodeRangeProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRangeProperty)
    NodeRangeProperty.add_member(:target_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NodeRangeProperty.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProperties, location_name: 'container'))
    NodeRangeProperty.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'instanceTypes'))
    NodeRangeProperty.add_member(:ecs_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsProperties, location_name: 'ecsProperties'))
    NodeRangeProperty.add_member(:eks_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksProperties, location_name: 'eksProperties'))
    NodeRangeProperty.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourceProperties'))
    NodeRangeProperty.type = Types::NodeRangeProperty
    OrchestrationType.add_member(:ecs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS', traits: {"smithy.api#enumValue" => "ECS"}))
    OrchestrationType.add_member(:eks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS', traits: {"smithy.api#enumValue" => "EKS"}))
    ParametersMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParametersMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PlatformCapability.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    PlatformCapability.add_member(:fargate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FARGATE', traits: {"smithy.api#enumValue" => "FARGATE"}))
    PlatformCapabilityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCapability)
    RegisterJobDefinitionRequest.add_member(:job_definition_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDefinitionType, location_name: 'type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'parameters'))
    RegisterJobDefinitionRequest.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'schedulingPriority'))
    RegisterJobDefinitionRequest.add_member(:container_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProperties, location_name: 'containerProperties'))
    RegisterJobDefinitionRequest.add_member(:node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeProperties, location_name: 'nodeProperties'))
    RegisterJobDefinitionRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStrategy, location_name: 'retryStrategy'))
    RegisterJobDefinitionRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'propagateTags'))
    RegisterJobDefinitionRequest.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeout, location_name: 'timeout'))
    RegisterJobDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    RegisterJobDefinitionRequest.add_member(:platform_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCapabilityList, location_name: 'platformCapabilities'))
    RegisterJobDefinitionRequest.add_member(:eks_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksProperties, location_name: 'eksProperties'))
    RegisterJobDefinitionRequest.add_member(:ecs_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsProperties, location_name: 'ecsProperties'))
    RegisterJobDefinitionRequest.add_member(:consumable_resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourceProperties'))
    RegisterJobDefinitionRequest.type = Types::RegisterJobDefinitionRequest
    RegisterJobDefinitionResponse.add_member(:job_definition_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionResponse.add_member(:job_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinitionArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionResponse.add_member(:revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'revision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterJobDefinitionResponse.type = Types::RegisterJobDefinitionResponse
    RepositoryCredentials.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'credentialsParameter', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RepositoryCredentials.type = Types::RepositoryCredentials
    ResourceRequirement.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceRequirement.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceRequirement.type = Types::ResourceRequirement
    ResourceRequirements.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirement)
    ResourceType.add_member(:gpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GPU', traits: {"smithy.api#enumValue" => "GPU"}))
    ResourceType.add_member(:vcpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VCPU', traits: {"smithy.api#enumValue" => "VCPU"}))
    ResourceType.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY', traits: {"smithy.api#enumValue" => "MEMORY"}))
    RetryAction.add_member(:retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRY', traits: {"smithy.api#enumValue" => "RETRY"}))
    RetryAction.add_member(:exit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXIT', traits: {"smithy.api#enumValue" => "EXIT"}))
    RetryStrategy.add_member(:attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'attempts'))
    RetryStrategy.add_member(:evaluate_on_exit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateOnExitList, location_name: 'evaluateOnExit'))
    RetryStrategy.type = Types::RetryStrategy
    RuntimePlatform.add_member(:operating_system_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operatingSystemFamily'))
    RuntimePlatform.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cpuArchitecture'))
    RuntimePlatform.type = Types::RuntimePlatform
    SchedulingPolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SchedulingPolicyDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SchedulingPolicyDetail.add_member(:fairshare_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FairsharePolicy, location_name: 'fairsharePolicy'))
    SchedulingPolicyDetail.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    SchedulingPolicyDetail.type = Types::SchedulingPolicyDetail
    SchedulingPolicyDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulingPolicyDetail)
    SchedulingPolicyListingDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SchedulingPolicyListingDetail.type = Types::SchedulingPolicyListingDetail
    SchedulingPolicyListingDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulingPolicyListingDetail)
    Secret.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Secret.add_member(:value_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'valueFrom', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Secret.type = Types::Secret
    SecretList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret)
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServerException.type = Types::ServerException
    ServiceEnvironmentDetail.add_member(:service_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:service_environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:service_environment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentType, location_name: 'serviceEnvironmentType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentState, location_name: 'state'))
    ServiceEnvironmentDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentStatus, location_name: 'status'))
    ServiceEnvironmentDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityLimits, location_name: 'capacityLimits', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentDetail.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    ServiceEnvironmentDetail.type = Types::ServiceEnvironmentDetail
    ServiceEnvironmentDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentDetail)
    ServiceEnvironmentOrder.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'order', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentOrder.add_member(:service_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceEnvironmentOrder.type = Types::ServiceEnvironmentOrder
    ServiceEnvironmentOrders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentOrder)
    ServiceEnvironmentState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ServiceEnvironmentState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ServiceEnvironmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ServiceEnvironmentStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ServiceEnvironmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ServiceEnvironmentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ServiceEnvironmentStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALID', traits: {"smithy.api#enumValue" => "VALID"}))
    ServiceEnvironmentStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    ServiceEnvironmentType.add_member(:sagemaker_training, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER_TRAINING', traits: {"smithy.api#enumValue" => "SAGEMAKER_TRAINING"}))
    ServiceJobAttemptDetail.add_member(:service_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceResourceId, location_name: 'serviceResourceId'))
    ServiceJobAttemptDetail.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt'))
    ServiceJobAttemptDetail.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    ServiceJobAttemptDetail.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    ServiceJobAttemptDetail.type = Types::ServiceJobAttemptDetail
    ServiceJobAttemptDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobAttemptDetail)
    ServiceJobEvaluateOnExit.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobRetryAction, location_name: 'action'))
    ServiceJobEvaluateOnExit.add_member(:on_status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'onStatusReason'))
    ServiceJobEvaluateOnExit.type = Types::ServiceJobEvaluateOnExit
    ServiceJobEvaluateOnExitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobEvaluateOnExit)
    ServiceJobRetryAction.add_member(:retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRY', traits: {"smithy.api#enumValue" => "RETRY"}))
    ServiceJobRetryAction.add_member(:exit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXIT', traits: {"smithy.api#enumValue" => "EXIT"}))
    ServiceJobRetryStrategy.add_member(:attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'attempts', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobRetryStrategy.add_member(:evaluate_on_exit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobEvaluateOnExitList, location_name: 'evaluateOnExit'))
    ServiceJobRetryStrategy.type = Types::ServiceJobRetryStrategy
    ServiceJobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    ServiceJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ServiceJobStatus.add_member(:runnable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNABLE', traits: {"smithy.api#enumValue" => "RUNNABLE"}))
    ServiceJobStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    ServiceJobStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ServiceJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ServiceJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ServiceJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ServiceJobSummary.add_member(:latest_attempt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LatestServiceJobAttempt, location_name: 'latestAttempt'))
    ServiceJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'createdAt'))
    ServiceJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    ServiceJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobSummary.add_member(:service_job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobType, location_name: 'serviceJobType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceJobSummary.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier'))
    ServiceJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobStatus, location_name: 'status'))
    ServiceJobSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    ServiceJobSummary.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startedAt'))
    ServiceJobSummary.add_member(:stopped_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'stoppedAt'))
    ServiceJobSummary.type = Types::ServiceJobSummary
    ServiceJobSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobSummary)
    ServiceJobTimeout.add_member(:attempt_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'attemptDurationSeconds'))
    ServiceJobTimeout.type = Types::ServiceJobTimeout
    ServiceJobType.add_member(:sagemaker_training, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER_TRAINING', traits: {"smithy.api#enumValue" => "SAGEMAKER_TRAINING"}))
    ServiceResourceId.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceResourceIdName, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceResourceId.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceResourceId.type = Types::ServiceResourceId
    ServiceResourceIdName.add_member(:sagemaker_training_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER_TRAINING_JOB_ARN', traits: {"smithy.api#enumValue" => "TrainingJobArn"}))
    ShareAttributes.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ShareAttributes.add_member(:weight_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'weightFactor'))
    ShareAttributes.type = Types::ShareAttributes
    ShareAttributesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareAttributes)
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubmitJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobRequest.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier'))
    SubmitJobRequest.add_member(:scheduling_priority_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'schedulingPriorityOverride'))
    SubmitJobRequest.add_member(:array_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArrayProperties, location_name: 'arrayProperties'))
    SubmitJobRequest.add_member(:depends_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDependencyList, location_name: 'dependsOn'))
    SubmitJobRequest.add_member(:job_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobDefinition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobRequest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'parameters'))
    SubmitJobRequest.add_member(:container_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: 'containerOverrides'))
    SubmitJobRequest.add_member(:node_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOverrides, location_name: 'nodeOverrides'))
    SubmitJobRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStrategy, location_name: 'retryStrategy'))
    SubmitJobRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'propagateTags'))
    SubmitJobRequest.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeout, location_name: 'timeout'))
    SubmitJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    SubmitJobRequest.add_member(:eks_properties_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksPropertiesOverride, location_name: 'eksPropertiesOverride'))
    SubmitJobRequest.add_member(:ecs_properties_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsPropertiesOverride, location_name: 'ecsPropertiesOverride'))
    SubmitJobRequest.add_member(:consumable_resource_properties_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: 'consumableResourcePropertiesOverride'))
    SubmitJobRequest.type = Types::SubmitJobRequest
    SubmitJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    SubmitJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitJobResponse.type = Types::SubmitJobResponse
    SubmitServiceJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobRetryStrategy, location_name: 'retryStrategy'))
    SubmitServiceJobRequest.add_member(:scheduling_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'schedulingPriority'))
    SubmitServiceJobRequest.add_member(:service_request_payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRequestPayload', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:service_job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobType, location_name: 'serviceJobType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobRequest.add_member(:share_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'shareIdentifier'))
    SubmitServiceJobRequest.add_member(:timeout_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceJobTimeout, location_name: 'timeoutConfig'))
    SubmitServiceJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags'))
    SubmitServiceJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    SubmitServiceJobRequest.type = Types::SubmitServiceJobRequest
    SubmitServiceJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn'))
    SubmitServiceJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SubmitServiceJobResponse.type = Types::SubmitServiceJobResponse
    TagKeysList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: 'tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagrisTagsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagrisTagsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TaskContainerDependency.add_member(:container_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerName'))
    TaskContainerDependency.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'condition'))
    TaskContainerDependency.type = Types::TaskContainerDependency
    TaskContainerDependencyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskContainerDependency)
    TaskContainerDetails.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    TaskContainerDetails.add_member(:depends_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskContainerDependencyList, location_name: 'dependsOn'))
    TaskContainerDetails.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environment'))
    TaskContainerDetails.add_member(:essential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'essential'))
    TaskContainerDetails.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirelensConfiguration, location_name: 'firelensConfiguration'))
    TaskContainerDetails.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image'))
    TaskContainerDetails.add_member(:linux_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxParameters, location_name: 'linuxParameters'))
    TaskContainerDetails.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration'))
    TaskContainerDetails.add_member(:mount_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountPoints, location_name: 'mountPoints'))
    TaskContainerDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    TaskContainerDetails.add_member(:privileged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'privileged'))
    TaskContainerDetails.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readonlyRootFilesystem'))
    TaskContainerDetails.add_member(:repository_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: 'repositoryCredentials'))
    TaskContainerDetails.add_member(:resource_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: 'resourceRequirements'))
    TaskContainerDetails.add_member(:secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'secrets'))
    TaskContainerDetails.add_member(:ulimits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ulimits, location_name: 'ulimits'))
    TaskContainerDetails.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'user'))
    TaskContainerDetails.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'exitCode'))
    TaskContainerDetails.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    TaskContainerDetails.add_member(:log_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logStreamName'))
    TaskContainerDetails.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces'))
    TaskContainerDetails.type = Types::TaskContainerDetails
    TaskContainerOverrides.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    TaskContainerOverrides.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environment'))
    TaskContainerOverrides.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    TaskContainerOverrides.add_member(:resource_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: 'resourceRequirements'))
    TaskContainerOverrides.type = Types::TaskContainerOverrides
    TaskContainerProperties.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'command'))
    TaskContainerProperties.add_member(:depends_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskContainerDependencyList, location_name: 'dependsOn'))
    TaskContainerProperties.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environment'))
    TaskContainerProperties.add_member(:essential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'essential'))
    TaskContainerProperties.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirelensConfiguration, location_name: 'firelensConfiguration'))
    TaskContainerProperties.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TaskContainerProperties.add_member(:linux_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxParameters, location_name: 'linuxParameters'))
    TaskContainerProperties.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration'))
    TaskContainerProperties.add_member(:mount_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountPoints, location_name: 'mountPoints'))
    TaskContainerProperties.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    TaskContainerProperties.add_member(:privileged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'privileged'))
    TaskContainerProperties.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'readonlyRootFilesystem'))
    TaskContainerProperties.add_member(:repository_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: 'repositoryCredentials'))
    TaskContainerProperties.add_member(:resource_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: 'resourceRequirements'))
    TaskContainerProperties.add_member(:secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'secrets'))
    TaskContainerProperties.add_member(:ulimits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ulimits, location_name: 'ulimits'))
    TaskContainerProperties.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'user'))
    TaskContainerProperties.type = Types::TaskContainerProperties
    TaskPropertiesOverride.add_member(:containers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaskContainerOverrides, location_name: 'containers'))
    TaskPropertiesOverride.type = Types::TaskPropertiesOverride
    TerminateJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobRequest.type = Types::TerminateJobRequest
    TerminateJobResponse.type = Types::TerminateJobResponse
    TerminateServiceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateServiceJobRequest.type = Types::TerminateServiceJobRequest
    TerminateServiceJobResponse.type = Types::TerminateServiceJobResponse
    Tmpfs.add_member(:container_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'containerPath', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tmpfs.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'size', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tmpfs.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'mountOptions'))
    Tmpfs.type = Types::Tmpfs
    TmpfsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tmpfs)
    Ulimit.add_member(:hard_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'hardLimit', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ulimit.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ulimit.add_member(:soft_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'softLimit', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Ulimit.type = Types::Ulimit
    Ulimits.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ulimit)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysList, location_name: 'tagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateComputeEnvironmentRequest.add_member(:compute_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateComputeEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CEState, location_name: 'state'))
    UpdateComputeEnvironmentRequest.add_member(:unmanagedv_cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unmanagedvCpus'))
    UpdateComputeEnvironmentRequest.add_member(:compute_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResourceUpdate, location_name: 'computeResources'))
    UpdateComputeEnvironmentRequest.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRole'))
    UpdateComputeEnvironmentRequest.add_member(:update_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePolicy, location_name: 'updatePolicy'))
    UpdateComputeEnvironmentRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'context'))
    UpdateComputeEnvironmentRequest.type = Types::UpdateComputeEnvironmentRequest
    UpdateComputeEnvironmentResponse.add_member(:compute_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentName'))
    UpdateComputeEnvironmentResponse.add_member(:compute_environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'computeEnvironmentArn'))
    UpdateComputeEnvironmentResponse.type = Types::UpdateComputeEnvironmentResponse
    UpdateConsumableResourceRequest.add_member(:consumable_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateConsumableResourceRequest.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operation'))
    UpdateConsumableResourceRequest.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'quantity'))
    UpdateConsumableResourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateConsumableResourceRequest.type = Types::UpdateConsumableResourceRequest
    UpdateConsumableResourceResponse.add_member(:consumable_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateConsumableResourceResponse.add_member(:consumable_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'consumableResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateConsumableResourceResponse.add_member(:total_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalQuantity'))
    UpdateConsumableResourceResponse.type = Types::UpdateConsumableResourceResponse
    UpdateJobQueueRequest.add_member(:job_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueue', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateJobQueueRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JQState, location_name: 'state'))
    UpdateJobQueueRequest.add_member(:scheduling_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schedulingPolicyArn'))
    UpdateJobQueueRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'priority'))
    UpdateJobQueueRequest.add_member(:compute_environment_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, location_name: 'computeEnvironmentOrder'))
    UpdateJobQueueRequest.add_member(:service_environment_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentOrders, location_name: 'serviceEnvironmentOrder'))
    UpdateJobQueueRequest.add_member(:job_state_time_limit_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateTimeLimitActions, location_name: 'jobStateTimeLimitActions'))
    UpdateJobQueueRequest.type = Types::UpdateJobQueueRequest
    UpdateJobQueueResponse.add_member(:job_queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueName'))
    UpdateJobQueueResponse.add_member(:job_queue_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobQueueArn'))
    UpdateJobQueueResponse.type = Types::UpdateJobQueueResponse
    UpdatePolicy.add_member(:terminate_jobs_on_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'terminateJobsOnUpdate'))
    UpdatePolicy.add_member(:job_execution_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionTimeoutMinutes, location_name: 'jobExecutionTimeoutMinutes'))
    UpdatePolicy.type = Types::UpdatePolicy
    UpdateSchedulingPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateSchedulingPolicyRequest.add_member(:fairshare_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FairsharePolicy, location_name: 'fairsharePolicy'))
    UpdateSchedulingPolicyRequest.type = Types::UpdateSchedulingPolicyRequest
    UpdateSchedulingPolicyResponse.type = Types::UpdateSchedulingPolicyResponse
    UpdateServiceEnvironmentRequest.add_member(:service_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceEnvironmentRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEnvironmentState, location_name: 'state'))
    UpdateServiceEnvironmentRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityLimits, location_name: 'capacityLimits'))
    UpdateServiceEnvironmentRequest.type = Types::UpdateServiceEnvironmentRequest
    UpdateServiceEnvironmentResponse.add_member(:service_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceEnvironmentResponse.add_member(:service_environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceEnvironmentArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateServiceEnvironmentResponse.type = Types::UpdateServiceEnvironmentResponse
    UserdataType.add_member(:eks_bootstrap_sh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_BOOTSTRAP_SH', traits: {"smithy.api#enumValue" => "EKS_BOOTSTRAP_SH"}))
    UserdataType.add_member(:eks_nodeadm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_NODEADM', traits: {"smithy.api#enumValue" => "EKS_NODEADM"}))
    Volume.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'host'))
    Volume.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    Volume.add_member(:efs_volume_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EFSVolumeConfiguration, location_name: 'efsVolumeConfiguration'))
    Volume.type = Types::Volume
    Volumes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volume)

    AWSBatchV20160810 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.batch#AWSBatchV20160810"
      service.name = "AWSBatchV20160810"
      service.version = "2016-08-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Batch", "arnNamespace" => "batch", "cloudFormationName" => "Batch", "cloudTrailEventSource" => "batch.amazonaws.com", "endpointPrefix" => "batch"}, "aws.auth#sigv4" => {"name" => "batch"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Batch", "smithy.api#xmlNamespace" => {"uri" => "http://batch.amazonaws.com/doc/2016-08-10/"}}
      service.add_operation(:cancel_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CancelJob"
        operation.name = "CancelJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/canceljob", "code" => 200}}
      end)
      service.add_operation(:create_compute_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateComputeEnvironment"
        operation.name = "CreateComputeEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputeEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputeEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createcomputeenvironment", "code" => 200}}
      end)
      service.add_operation(:create_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateConsumableResource"
        operation.name = "CreateConsumableResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConsumableResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConsumableResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createconsumableresource", "code" => 200}}
      end)
      service.add_operation(:create_job_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateJobQueue"
        operation.name = "CreateJobQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createjobqueue", "code" => 200}}
      end)
      service.add_operation(:create_scheduling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateSchedulingPolicy"
        operation.name = "CreateSchedulingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchedulingPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchedulingPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createschedulingpolicy", "code" => 200}}
      end)
      service.add_operation(:create_service_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#CreateServiceEnvironment"
        operation.name = "CreateServiceEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/createserviceenvironment", "code" => 200}}
      end)
      service.add_operation(:delete_compute_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteComputeEnvironment"
        operation.name = "DeleteComputeEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputeEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputeEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deletecomputeenvironment", "code" => 200}}
      end)
      service.add_operation(:delete_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteConsumableResource"
        operation.name = "DeleteConsumableResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConsumableResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConsumableResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deleteconsumableresource", "code" => 200}}
      end)
      service.add_operation(:delete_job_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteJobQueue"
        operation.name = "DeleteJobQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deletejobqueue", "code" => 200}}
      end)
      service.add_operation(:delete_scheduling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteSchedulingPolicy"
        operation.name = "DeleteSchedulingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchedulingPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchedulingPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deleteschedulingpolicy", "code" => 200}}
      end)
      service.add_operation(:delete_service_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeleteServiceEnvironment"
        operation.name = "DeleteServiceEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deleteserviceenvironment", "code" => 200}}
      end)
      service.add_operation(:deregister_job_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DeregisterJobDefinition"
        operation.name = "DeregisterJobDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterJobDefinitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterJobDefinitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/deregisterjobdefinition", "code" => 200}}
      end)
      service.add_operation(:describe_compute_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeComputeEnvironments"
        operation.name = "DescribeComputeEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComputeEnvironmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComputeEnvironmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describecomputeenvironments", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeComputeEnvironmentsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeComputeEnvironments.new
      end)
      service.add_operation(:describe_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeConsumableResource"
        operation.name = "DescribeConsumableResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConsumableResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConsumableResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeconsumableresource", "code" => 200}}
      end)
      service.add_operation(:describe_job_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeJobDefinitions"
        operation.name = "DescribeJobDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobDefinitionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobDefinitionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describejobdefinitions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeJobDefinitions.new
      end)
      service.add_operation(:describe_job_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeJobQueues"
        operation.name = "DescribeJobQueues"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobQueuesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobQueuesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describejobqueues", "code" => 200}}
        operation[:paginator] = Paginators::DescribeJobQueues.new
      end)
      service.add_operation(:describe_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeJobs"
        operation.name = "DescribeJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describejobs", "code" => 200}}
      end)
      service.add_operation(:describe_scheduling_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeSchedulingPolicies"
        operation.name = "DescribeSchedulingPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSchedulingPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSchedulingPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeschedulingpolicies", "code" => 200}}
      end)
      service.add_operation(:describe_service_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeServiceEnvironments"
        operation.name = "DescribeServiceEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceEnvironmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceEnvironmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeserviceenvironments", "code" => 200}}
        operation[:paginator] = Paginators::DescribeServiceEnvironments.new
      end)
      service.add_operation(:describe_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#DescribeServiceJob"
        operation.name = "DescribeServiceJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/describeservicejob", "code" => 200}}
      end)
      service.add_operation(:get_job_queue_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#GetJobQueueSnapshot"
        operation.name = "GetJobQueueSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobQueueSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobQueueSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/getjobqueuesnapshot", "code" => 200}}
      end)
      service.add_operation(:list_consumable_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListConsumableResources"
        operation.name = "ListConsumableResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConsumableResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConsumableResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listconsumableresources", "code" => 200}}
        operation[:paginator] = Paginators::ListConsumableResources.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListJobs"
        operation.name = "ListJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_jobs_by_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListJobsByConsumableResource"
        operation.name = "ListJobsByConsumableResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listjobsbyconsumableresource", "code" => 200}}
        operation[:paginator] = Paginators::ListJobsByConsumableResource.new
      end)
      service.add_operation(:list_scheduling_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListSchedulingPolicies"
        operation.name = "ListSchedulingPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchedulingPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchedulingPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listschedulingpolicies", "code" => 200}}
        operation[:paginator] = Paginators::ListSchedulingPolicies.new
      end)
      service.add_operation(:list_service_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListServiceJobs"
        operation.name = "ListServiceJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/listservicejobs", "code" => 200}}
        operation[:paginator] = Paginators::ListServiceJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_job_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#RegisterJobDefinition"
        operation.name = "RegisterJobDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterJobDefinitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterJobDefinitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/registerjobdefinition", "code" => 200}}
      end)
      service.add_operation(:submit_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#SubmitJob"
        operation.name = "SubmitJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/submitjob", "code" => 200}}
      end)
      service.add_operation(:submit_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#SubmitServiceJob"
        operation.name = "SubmitServiceJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitServiceJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitServiceJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/submitservicejob", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:terminate_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TerminateJob"
        operation.name = "TerminateJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/terminatejob", "code" => 200}}
      end)
      service.add_operation(:terminate_service_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#TerminateServiceJob"
        operation.name = "TerminateServiceJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateServiceJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateServiceJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/terminateservicejob", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_compute_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateComputeEnvironment"
        operation.name = "UpdateComputeEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updatecomputeenvironment", "code" => 200}}
      end)
      service.add_operation(:update_consumable_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateConsumableResource"
        operation.name = "UpdateConsumableResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConsumableResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConsumableResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateconsumableresource", "code" => 200}}
      end)
      service.add_operation(:update_job_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateJobQueue"
        operation.name = "UpdateJobQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updatejobqueue", "code" => 200}}
      end)
      service.add_operation(:update_scheduling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateSchedulingPolicy"
        operation.name = "UpdateSchedulingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSchedulingPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSchedulingPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateschedulingpolicy", "code" => 200}}
      end)
      service.add_operation(:update_service_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.batch#UpdateServiceEnvironment"
        operation.name = "UpdateServiceEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/updateserviceenvironment", "code" => 200}}
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
