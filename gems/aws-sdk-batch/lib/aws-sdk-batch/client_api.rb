# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Batch
  # @api private
  module ClientApi

    include Seahorse::Model

    ArrayJobDependency = Shapes::StringShape.new(name: 'ArrayJobDependency')
    ArrayJobStatusSummary = Shapes::MapShape.new(name: 'ArrayJobStatusSummary')
    ArrayProperties = Shapes::StructureShape.new(name: 'ArrayProperties')
    ArrayPropertiesDetail = Shapes::StructureShape.new(name: 'ArrayPropertiesDetail')
    ArrayPropertiesSummary = Shapes::StructureShape.new(name: 'ArrayPropertiesSummary')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    AttemptContainerDetail = Shapes::StructureShape.new(name: 'AttemptContainerDetail')
    AttemptDetail = Shapes::StructureShape.new(name: 'AttemptDetail')
    AttemptDetails = Shapes::ListShape.new(name: 'AttemptDetails')
    AttemptEcsTaskDetails = Shapes::StructureShape.new(name: 'AttemptEcsTaskDetails')
    AttemptTaskContainerDetails = Shapes::StructureShape.new(name: 'AttemptTaskContainerDetails')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CEState = Shapes::StringShape.new(name: 'CEState')
    CEStatus = Shapes::StringShape.new(name: 'CEStatus')
    CEType = Shapes::StringShape.new(name: 'CEType')
    CRAllocationStrategy = Shapes::StringShape.new(name: 'CRAllocationStrategy')
    CRType = Shapes::StringShape.new(name: 'CRType')
    CRUpdateAllocationStrategy = Shapes::StringShape.new(name: 'CRUpdateAllocationStrategy')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResponse = Shapes::StructureShape.new(name: 'CancelJobResponse')
    CapacityLimit = Shapes::StructureShape.new(name: 'CapacityLimit')
    CapacityLimits = Shapes::ListShape.new(name: 'CapacityLimits')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ComputeEnvironmentDetail = Shapes::StructureShape.new(name: 'ComputeEnvironmentDetail')
    ComputeEnvironmentDetailList = Shapes::ListShape.new(name: 'ComputeEnvironmentDetailList')
    ComputeEnvironmentOrder = Shapes::StructureShape.new(name: 'ComputeEnvironmentOrder')
    ComputeEnvironmentOrders = Shapes::ListShape.new(name: 'ComputeEnvironmentOrders')
    ComputeResource = Shapes::StructureShape.new(name: 'ComputeResource')
    ComputeResourceUpdate = Shapes::StructureShape.new(name: 'ComputeResourceUpdate')
    ConsumableResourceList = Shapes::ListShape.new(name: 'ConsumableResourceList')
    ConsumableResourceProperties = Shapes::StructureShape.new(name: 'ConsumableResourceProperties')
    ConsumableResourceRequirement = Shapes::StructureShape.new(name: 'ConsumableResourceRequirement')
    ConsumableResourceSummary = Shapes::StructureShape.new(name: 'ConsumableResourceSummary')
    ConsumableResourceSummaryList = Shapes::ListShape.new(name: 'ConsumableResourceSummaryList')
    ContainerDetail = Shapes::StructureShape.new(name: 'ContainerDetail')
    ContainerOverrides = Shapes::StructureShape.new(name: 'ContainerOverrides')
    ContainerProperties = Shapes::StructureShape.new(name: 'ContainerProperties')
    ContainerSummary = Shapes::StructureShape.new(name: 'ContainerSummary')
    CreateComputeEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateComputeEnvironmentRequest')
    CreateComputeEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateComputeEnvironmentResponse')
    CreateConsumableResourceRequest = Shapes::StructureShape.new(name: 'CreateConsumableResourceRequest')
    CreateConsumableResourceResponse = Shapes::StructureShape.new(name: 'CreateConsumableResourceResponse')
    CreateJobQueueRequest = Shapes::StructureShape.new(name: 'CreateJobQueueRequest')
    CreateJobQueueResponse = Shapes::StructureShape.new(name: 'CreateJobQueueResponse')
    CreateSchedulingPolicyRequest = Shapes::StructureShape.new(name: 'CreateSchedulingPolicyRequest')
    CreateSchedulingPolicyResponse = Shapes::StructureShape.new(name: 'CreateSchedulingPolicyResponse')
    CreateServiceEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateServiceEnvironmentRequest')
    CreateServiceEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateServiceEnvironmentResponse')
    DeleteComputeEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteComputeEnvironmentRequest')
    DeleteComputeEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteComputeEnvironmentResponse')
    DeleteConsumableResourceRequest = Shapes::StructureShape.new(name: 'DeleteConsumableResourceRequest')
    DeleteConsumableResourceResponse = Shapes::StructureShape.new(name: 'DeleteConsumableResourceResponse')
    DeleteJobQueueRequest = Shapes::StructureShape.new(name: 'DeleteJobQueueRequest')
    DeleteJobQueueResponse = Shapes::StructureShape.new(name: 'DeleteJobQueueResponse')
    DeleteSchedulingPolicyRequest = Shapes::StructureShape.new(name: 'DeleteSchedulingPolicyRequest')
    DeleteSchedulingPolicyResponse = Shapes::StructureShape.new(name: 'DeleteSchedulingPolicyResponse')
    DeleteServiceEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteServiceEnvironmentRequest')
    DeleteServiceEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteServiceEnvironmentResponse')
    DeregisterJobDefinitionRequest = Shapes::StructureShape.new(name: 'DeregisterJobDefinitionRequest')
    DeregisterJobDefinitionResponse = Shapes::StructureShape.new(name: 'DeregisterJobDefinitionResponse')
    DescribeComputeEnvironmentsRequest = Shapes::StructureShape.new(name: 'DescribeComputeEnvironmentsRequest')
    DescribeComputeEnvironmentsResponse = Shapes::StructureShape.new(name: 'DescribeComputeEnvironmentsResponse')
    DescribeConsumableResourceRequest = Shapes::StructureShape.new(name: 'DescribeConsumableResourceRequest')
    DescribeConsumableResourceResponse = Shapes::StructureShape.new(name: 'DescribeConsumableResourceResponse')
    DescribeJobDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeJobDefinitionsRequest')
    DescribeJobDefinitionsResponse = Shapes::StructureShape.new(name: 'DescribeJobDefinitionsResponse')
    DescribeJobQueuesRequest = Shapes::StructureShape.new(name: 'DescribeJobQueuesRequest')
    DescribeJobQueuesResponse = Shapes::StructureShape.new(name: 'DescribeJobQueuesResponse')
    DescribeJobsRequest = Shapes::StructureShape.new(name: 'DescribeJobsRequest')
    DescribeJobsResponse = Shapes::StructureShape.new(name: 'DescribeJobsResponse')
    DescribeSchedulingPoliciesRequest = Shapes::StructureShape.new(name: 'DescribeSchedulingPoliciesRequest')
    DescribeSchedulingPoliciesResponse = Shapes::StructureShape.new(name: 'DescribeSchedulingPoliciesResponse')
    DescribeServiceEnvironmentsRequest = Shapes::StructureShape.new(name: 'DescribeServiceEnvironmentsRequest')
    DescribeServiceEnvironmentsResponse = Shapes::StructureShape.new(name: 'DescribeServiceEnvironmentsResponse')
    DescribeServiceJobRequest = Shapes::StructureShape.new(name: 'DescribeServiceJobRequest')
    DescribeServiceJobResponse = Shapes::StructureShape.new(name: 'DescribeServiceJobResponse')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceCgroupPermission = Shapes::StringShape.new(name: 'DeviceCgroupPermission')
    DeviceCgroupPermissions = Shapes::ListShape.new(name: 'DeviceCgroupPermissions')
    DevicesList = Shapes::ListShape.new(name: 'DevicesList')
    EFSAuthorizationConfig = Shapes::StructureShape.new(name: 'EFSAuthorizationConfig')
    EFSAuthorizationConfigIAM = Shapes::StringShape.new(name: 'EFSAuthorizationConfigIAM')
    EFSTransitEncryption = Shapes::StringShape.new(name: 'EFSTransitEncryption')
    EFSVolumeConfiguration = Shapes::StructureShape.new(name: 'EFSVolumeConfiguration')
    Ec2Configuration = Shapes::StructureShape.new(name: 'Ec2Configuration')
    Ec2ConfigurationList = Shapes::ListShape.new(name: 'Ec2ConfigurationList')
    EcsProperties = Shapes::StructureShape.new(name: 'EcsProperties')
    EcsPropertiesDetail = Shapes::StructureShape.new(name: 'EcsPropertiesDetail')
    EcsPropertiesOverride = Shapes::StructureShape.new(name: 'EcsPropertiesOverride')
    EcsTaskDetails = Shapes::StructureShape.new(name: 'EcsTaskDetails')
    EcsTaskProperties = Shapes::StructureShape.new(name: 'EcsTaskProperties')
    EksAnnotationsMap = Shapes::MapShape.new(name: 'EksAnnotationsMap')
    EksAttemptContainerDetail = Shapes::StructureShape.new(name: 'EksAttemptContainerDetail')
    EksAttemptContainerDetails = Shapes::ListShape.new(name: 'EksAttemptContainerDetails')
    EksAttemptDetail = Shapes::StructureShape.new(name: 'EksAttemptDetail')
    EksAttemptDetails = Shapes::ListShape.new(name: 'EksAttemptDetails')
    EksConfiguration = Shapes::StructureShape.new(name: 'EksConfiguration')
    EksContainer = Shapes::StructureShape.new(name: 'EksContainer')
    EksContainerDetail = Shapes::StructureShape.new(name: 'EksContainerDetail')
    EksContainerDetails = Shapes::ListShape.new(name: 'EksContainerDetails')
    EksContainerEnvironmentVariable = Shapes::StructureShape.new(name: 'EksContainerEnvironmentVariable')
    EksContainerEnvironmentVariables = Shapes::ListShape.new(name: 'EksContainerEnvironmentVariables')
    EksContainerOverride = Shapes::StructureShape.new(name: 'EksContainerOverride')
    EksContainerOverrideList = Shapes::ListShape.new(name: 'EksContainerOverrideList')
    EksContainerResourceRequirements = Shapes::StructureShape.new(name: 'EksContainerResourceRequirements')
    EksContainerSecurityContext = Shapes::StructureShape.new(name: 'EksContainerSecurityContext')
    EksContainerVolumeMount = Shapes::StructureShape.new(name: 'EksContainerVolumeMount')
    EksContainerVolumeMounts = Shapes::ListShape.new(name: 'EksContainerVolumeMounts')
    EksContainers = Shapes::ListShape.new(name: 'EksContainers')
    EksEmptyDir = Shapes::StructureShape.new(name: 'EksEmptyDir')
    EksHostPath = Shapes::StructureShape.new(name: 'EksHostPath')
    EksLabelsMap = Shapes::MapShape.new(name: 'EksLabelsMap')
    EksLimits = Shapes::MapShape.new(name: 'EksLimits')
    EksMetadata = Shapes::StructureShape.new(name: 'EksMetadata')
    EksPersistentVolumeClaim = Shapes::StructureShape.new(name: 'EksPersistentVolumeClaim')
    EksPodProperties = Shapes::StructureShape.new(name: 'EksPodProperties')
    EksPodPropertiesDetail = Shapes::StructureShape.new(name: 'EksPodPropertiesDetail')
    EksPodPropertiesOverride = Shapes::StructureShape.new(name: 'EksPodPropertiesOverride')
    EksProperties = Shapes::StructureShape.new(name: 'EksProperties')
    EksPropertiesDetail = Shapes::StructureShape.new(name: 'EksPropertiesDetail')
    EksPropertiesOverride = Shapes::StructureShape.new(name: 'EksPropertiesOverride')
    EksRequests = Shapes::MapShape.new(name: 'EksRequests')
    EksSecret = Shapes::StructureShape.new(name: 'EksSecret')
    EksVolume = Shapes::StructureShape.new(name: 'EksVolume')
    EksVolumes = Shapes::ListShape.new(name: 'EksVolumes')
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
    EphemeralStorage = Shapes::StructureShape.new(name: 'EphemeralStorage')
    EvaluateOnExit = Shapes::StructureShape.new(name: 'EvaluateOnExit')
    EvaluateOnExitList = Shapes::ListShape.new(name: 'EvaluateOnExitList')
    FairsharePolicy = Shapes::StructureShape.new(name: 'FairsharePolicy')
    FargatePlatformConfiguration = Shapes::StructureShape.new(name: 'FargatePlatformConfiguration')
    FirelensConfiguration = Shapes::StructureShape.new(name: 'FirelensConfiguration')
    FirelensConfigurationOptionsMap = Shapes::MapShape.new(name: 'FirelensConfigurationOptionsMap')
    FirelensConfigurationType = Shapes::StringShape.new(name: 'FirelensConfigurationType')
    Float = Shapes::FloatShape.new(name: 'Float')
    FrontOfQueueDetail = Shapes::StructureShape.new(name: 'FrontOfQueueDetail')
    FrontOfQueueJobSummary = Shapes::StructureShape.new(name: 'FrontOfQueueJobSummary')
    FrontOfQueueJobSummaryList = Shapes::ListShape.new(name: 'FrontOfQueueJobSummaryList')
    GetJobQueueSnapshotRequest = Shapes::StructureShape.new(name: 'GetJobQueueSnapshotRequest')
    GetJobQueueSnapshotResponse = Shapes::StructureShape.new(name: 'GetJobQueueSnapshotResponse')
    Host = Shapes::StructureShape.new(name: 'Host')
    ImageIdOverride = Shapes::StringShape.new(name: 'ImageIdOverride')
    ImagePullSecret = Shapes::StructureShape.new(name: 'ImagePullSecret')
    ImagePullSecrets = Shapes::ListShape.new(name: 'ImagePullSecrets')
    ImageType = Shapes::StringShape.new(name: 'ImageType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    JQState = Shapes::StringShape.new(name: 'JQState')
    JQStatus = Shapes::StringShape.new(name: 'JQStatus')
    JobDefinition = Shapes::StructureShape.new(name: 'JobDefinition')
    JobDefinitionList = Shapes::ListShape.new(name: 'JobDefinitionList')
    JobDefinitionType = Shapes::StringShape.new(name: 'JobDefinitionType')
    JobDependency = Shapes::StructureShape.new(name: 'JobDependency')
    JobDependencyList = Shapes::ListShape.new(name: 'JobDependencyList')
    JobDetail = Shapes::StructureShape.new(name: 'JobDetail')
    JobDetailList = Shapes::ListShape.new(name: 'JobDetailList')
    JobExecutionTimeoutMinutes = Shapes::IntegerShape.new(name: 'JobExecutionTimeoutMinutes')
    JobQueueDetail = Shapes::StructureShape.new(name: 'JobQueueDetail')
    JobQueueDetailList = Shapes::ListShape.new(name: 'JobQueueDetailList')
    JobQueueType = Shapes::StringShape.new(name: 'JobQueueType')
    JobStateTimeLimitAction = Shapes::StructureShape.new(name: 'JobStateTimeLimitAction')
    JobStateTimeLimitActions = Shapes::ListShape.new(name: 'JobStateTimeLimitActions')
    JobStateTimeLimitActionsAction = Shapes::StringShape.new(name: 'JobStateTimeLimitActionsAction')
    JobStateTimeLimitActionsState = Shapes::StringShape.new(name: 'JobStateTimeLimitActionsState')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobSummaryList = Shapes::ListShape.new(name: 'JobSummaryList')
    JobTimeout = Shapes::StructureShape.new(name: 'JobTimeout')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    KeyValuesPair = Shapes::StructureShape.new(name: 'KeyValuesPair')
    KubernetesVersion = Shapes::StringShape.new(name: 'KubernetesVersion')
    LatestServiceJobAttempt = Shapes::StructureShape.new(name: 'LatestServiceJobAttempt')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    LaunchTemplateSpecificationOverride = Shapes::StructureShape.new(name: 'LaunchTemplateSpecificationOverride')
    LaunchTemplateSpecificationOverrideList = Shapes::ListShape.new(name: 'LaunchTemplateSpecificationOverrideList')
    LinuxParameters = Shapes::StructureShape.new(name: 'LinuxParameters')
    ListAttemptEcsTaskDetails = Shapes::ListShape.new(name: 'ListAttemptEcsTaskDetails')
    ListAttemptTaskContainerDetails = Shapes::ListShape.new(name: 'ListAttemptTaskContainerDetails')
    ListConsumableResourcesFilterList = Shapes::ListShape.new(name: 'ListConsumableResourcesFilterList')
    ListConsumableResourcesRequest = Shapes::StructureShape.new(name: 'ListConsumableResourcesRequest')
    ListConsumableResourcesResponse = Shapes::StructureShape.new(name: 'ListConsumableResourcesResponse')
    ListEcsTaskDetails = Shapes::ListShape.new(name: 'ListEcsTaskDetails')
    ListEcsTaskProperties = Shapes::ListShape.new(name: 'ListEcsTaskProperties')
    ListJobsByConsumableResourceFilterList = Shapes::ListShape.new(name: 'ListJobsByConsumableResourceFilterList')
    ListJobsByConsumableResourceRequest = Shapes::StructureShape.new(name: 'ListJobsByConsumableResourceRequest')
    ListJobsByConsumableResourceResponse = Shapes::StructureShape.new(name: 'ListJobsByConsumableResourceResponse')
    ListJobsByConsumableResourceSummary = Shapes::StructureShape.new(name: 'ListJobsByConsumableResourceSummary')
    ListJobsByConsumableResourceSummaryList = Shapes::ListShape.new(name: 'ListJobsByConsumableResourceSummaryList')
    ListJobsFilterList = Shapes::ListShape.new(name: 'ListJobsFilterList')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListSchedulingPoliciesRequest = Shapes::StructureShape.new(name: 'ListSchedulingPoliciesRequest')
    ListSchedulingPoliciesResponse = Shapes::StructureShape.new(name: 'ListSchedulingPoliciesResponse')
    ListServiceJobsRequest = Shapes::StructureShape.new(name: 'ListServiceJobsRequest')
    ListServiceJobsResponse = Shapes::StructureShape.new(name: 'ListServiceJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTaskContainerDetails = Shapes::ListShape.new(name: 'ListTaskContainerDetails')
    ListTaskContainerOverrides = Shapes::ListShape.new(name: 'ListTaskContainerOverrides')
    ListTaskContainerProperties = Shapes::ListShape.new(name: 'ListTaskContainerProperties')
    ListTaskPropertiesOverride = Shapes::ListShape.new(name: 'ListTaskPropertiesOverride')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogConfigurationOptionsMap = Shapes::MapShape.new(name: 'LogConfigurationOptionsMap')
    LogDriver = Shapes::StringShape.new(name: 'LogDriver')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MountPoint = Shapes::StructureShape.new(name: 'MountPoint')
    MountPoints = Shapes::ListShape.new(name: 'MountPoints')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceList = Shapes::ListShape.new(name: 'NetworkInterfaceList')
    NodeDetails = Shapes::StructureShape.new(name: 'NodeDetails')
    NodeOverrides = Shapes::StructureShape.new(name: 'NodeOverrides')
    NodeProperties = Shapes::StructureShape.new(name: 'NodeProperties')
    NodePropertiesSummary = Shapes::StructureShape.new(name: 'NodePropertiesSummary')
    NodePropertyOverride = Shapes::StructureShape.new(name: 'NodePropertyOverride')
    NodePropertyOverrides = Shapes::ListShape.new(name: 'NodePropertyOverrides')
    NodeRangeProperties = Shapes::ListShape.new(name: 'NodeRangeProperties')
    NodeRangeProperty = Shapes::StructureShape.new(name: 'NodeRangeProperty')
    OrchestrationType = Shapes::StringShape.new(name: 'OrchestrationType')
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    PlatformCapability = Shapes::StringShape.new(name: 'PlatformCapability')
    PlatformCapabilityList = Shapes::ListShape.new(name: 'PlatformCapabilityList')
    Quantity = Shapes::StringShape.new(name: 'Quantity')
    RegisterJobDefinitionRequest = Shapes::StructureShape.new(name: 'RegisterJobDefinitionRequest')
    RegisterJobDefinitionResponse = Shapes::StructureShape.new(name: 'RegisterJobDefinitionResponse')
    RepositoryCredentials = Shapes::StructureShape.new(name: 'RepositoryCredentials')
    ResourceRequirement = Shapes::StructureShape.new(name: 'ResourceRequirement')
    ResourceRequirements = Shapes::ListShape.new(name: 'ResourceRequirements')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAction = Shapes::StringShape.new(name: 'RetryAction')
    RetryStrategy = Shapes::StructureShape.new(name: 'RetryStrategy')
    RuntimePlatform = Shapes::StructureShape.new(name: 'RuntimePlatform')
    SchedulingPolicyDetail = Shapes::StructureShape.new(name: 'SchedulingPolicyDetail')
    SchedulingPolicyDetailList = Shapes::ListShape.new(name: 'SchedulingPolicyDetailList')
    SchedulingPolicyListingDetail = Shapes::StructureShape.new(name: 'SchedulingPolicyListingDetail')
    SchedulingPolicyListingDetailList = Shapes::ListShape.new(name: 'SchedulingPolicyListingDetailList')
    Secret = Shapes::StructureShape.new(name: 'Secret')
    SecretList = Shapes::ListShape.new(name: 'SecretList')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    ServiceEnvironmentDetail = Shapes::StructureShape.new(name: 'ServiceEnvironmentDetail')
    ServiceEnvironmentDetailList = Shapes::ListShape.new(name: 'ServiceEnvironmentDetailList')
    ServiceEnvironmentOrder = Shapes::StructureShape.new(name: 'ServiceEnvironmentOrder')
    ServiceEnvironmentOrders = Shapes::ListShape.new(name: 'ServiceEnvironmentOrders')
    ServiceEnvironmentState = Shapes::StringShape.new(name: 'ServiceEnvironmentState')
    ServiceEnvironmentStatus = Shapes::StringShape.new(name: 'ServiceEnvironmentStatus')
    ServiceEnvironmentType = Shapes::StringShape.new(name: 'ServiceEnvironmentType')
    ServiceJobAttemptDetail = Shapes::StructureShape.new(name: 'ServiceJobAttemptDetail')
    ServiceJobAttemptDetails = Shapes::ListShape.new(name: 'ServiceJobAttemptDetails')
    ServiceJobEvaluateOnExit = Shapes::StructureShape.new(name: 'ServiceJobEvaluateOnExit')
    ServiceJobEvaluateOnExitList = Shapes::ListShape.new(name: 'ServiceJobEvaluateOnExitList')
    ServiceJobRetryAction = Shapes::StringShape.new(name: 'ServiceJobRetryAction')
    ServiceJobRetryStrategy = Shapes::StructureShape.new(name: 'ServiceJobRetryStrategy')
    ServiceJobStatus = Shapes::StringShape.new(name: 'ServiceJobStatus')
    ServiceJobSummary = Shapes::StructureShape.new(name: 'ServiceJobSummary')
    ServiceJobSummaryList = Shapes::ListShape.new(name: 'ServiceJobSummaryList')
    ServiceJobTimeout = Shapes::StructureShape.new(name: 'ServiceJobTimeout')
    ServiceJobType = Shapes::StringShape.new(name: 'ServiceJobType')
    ServiceResourceId = Shapes::StructureShape.new(name: 'ServiceResourceId')
    ServiceResourceIdName = Shapes::StringShape.new(name: 'ServiceResourceIdName')
    ShareAttributes = Shapes::StructureShape.new(name: 'ShareAttributes')
    ShareAttributesList = Shapes::ListShape.new(name: 'ShareAttributesList')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubmitJobRequest = Shapes::StructureShape.new(name: 'SubmitJobRequest')
    SubmitJobResponse = Shapes::StructureShape.new(name: 'SubmitJobResponse')
    SubmitServiceJobRequest = Shapes::StructureShape.new(name: 'SubmitServiceJobRequest')
    SubmitServiceJobResponse = Shapes::StructureShape.new(name: 'SubmitServiceJobResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeysList = Shapes::ListShape.new(name: 'TagKeysList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagrisTagsMap = Shapes::MapShape.new(name: 'TagrisTagsMap')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TaskContainerDependency = Shapes::StructureShape.new(name: 'TaskContainerDependency')
    TaskContainerDependencyList = Shapes::ListShape.new(name: 'TaskContainerDependencyList')
    TaskContainerDetails = Shapes::StructureShape.new(name: 'TaskContainerDetails')
    TaskContainerOverrides = Shapes::StructureShape.new(name: 'TaskContainerOverrides')
    TaskContainerProperties = Shapes::StructureShape.new(name: 'TaskContainerProperties')
    TaskPropertiesOverride = Shapes::StructureShape.new(name: 'TaskPropertiesOverride')
    TerminateJobRequest = Shapes::StructureShape.new(name: 'TerminateJobRequest')
    TerminateJobResponse = Shapes::StructureShape.new(name: 'TerminateJobResponse')
    TerminateServiceJobRequest = Shapes::StructureShape.new(name: 'TerminateServiceJobRequest')
    TerminateServiceJobResponse = Shapes::StructureShape.new(name: 'TerminateServiceJobResponse')
    Tmpfs = Shapes::StructureShape.new(name: 'Tmpfs')
    TmpfsList = Shapes::ListShape.new(name: 'TmpfsList')
    Ulimit = Shapes::StructureShape.new(name: 'Ulimit')
    Ulimits = Shapes::ListShape.new(name: 'Ulimits')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateComputeEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateComputeEnvironmentRequest')
    UpdateComputeEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateComputeEnvironmentResponse')
    UpdateConsumableResourceRequest = Shapes::StructureShape.new(name: 'UpdateConsumableResourceRequest')
    UpdateConsumableResourceResponse = Shapes::StructureShape.new(name: 'UpdateConsumableResourceResponse')
    UpdateJobQueueRequest = Shapes::StructureShape.new(name: 'UpdateJobQueueRequest')
    UpdateJobQueueResponse = Shapes::StructureShape.new(name: 'UpdateJobQueueResponse')
    UpdatePolicy = Shapes::StructureShape.new(name: 'UpdatePolicy')
    UpdateSchedulingPolicyRequest = Shapes::StructureShape.new(name: 'UpdateSchedulingPolicyRequest')
    UpdateSchedulingPolicyResponse = Shapes::StructureShape.new(name: 'UpdateSchedulingPolicyResponse')
    UpdateServiceEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateServiceEnvironmentRequest')
    UpdateServiceEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateServiceEnvironmentResponse')
    UserdataType = Shapes::StringShape.new(name: 'UserdataType')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    Volumes = Shapes::ListShape.new(name: 'Volumes')

    ArrayJobStatusSummary.key = Shapes::ShapeRef.new(shape: String)
    ArrayJobStatusSummary.value = Shapes::ShapeRef.new(shape: Integer)

    ArrayProperties.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "size"))
    ArrayProperties.struct_class = Types::ArrayProperties

    ArrayPropertiesDetail.add_member(:status_summary, Shapes::ShapeRef.new(shape: ArrayJobStatusSummary, location_name: "statusSummary"))
    ArrayPropertiesDetail.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "size"))
    ArrayPropertiesDetail.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    ArrayPropertiesDetail.struct_class = Types::ArrayPropertiesDetail

    ArrayPropertiesSummary.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "size"))
    ArrayPropertiesSummary.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    ArrayPropertiesSummary.struct_class = Types::ArrayPropertiesSummary

    AttemptContainerDetail.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    AttemptContainerDetail.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    AttemptContainerDetail.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    AttemptContainerDetail.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    AttemptContainerDetail.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "logStreamName"))
    AttemptContainerDetail.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "networkInterfaces"))
    AttemptContainerDetail.struct_class = Types::AttemptContainerDetail

    AttemptDetail.add_member(:container, Shapes::ShapeRef.new(shape: AttemptContainerDetail, location_name: "container"))
    AttemptDetail.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    AttemptDetail.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    AttemptDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AttemptDetail.add_member(:task_properties, Shapes::ShapeRef.new(shape: ListAttemptEcsTaskDetails, location_name: "taskProperties"))
    AttemptDetail.struct_class = Types::AttemptDetail

    AttemptDetails.member = Shapes::ShapeRef.new(shape: AttemptDetail)

    AttemptEcsTaskDetails.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    AttemptEcsTaskDetails.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    AttemptEcsTaskDetails.add_member(:containers, Shapes::ShapeRef.new(shape: ListAttemptTaskContainerDetails, location_name: "containers"))
    AttemptEcsTaskDetails.struct_class = Types::AttemptEcsTaskDetails

    AttemptTaskContainerDetails.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    AttemptTaskContainerDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AttemptTaskContainerDetails.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    AttemptTaskContainerDetails.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "logStreamName"))
    AttemptTaskContainerDetails.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "networkInterfaces"))
    AttemptTaskContainerDetails.struct_class = Types::AttemptTaskContainerDetails

    CancelJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    CancelJobRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResponse.struct_class = Types::CancelJobResponse

    CapacityLimit.add_member(:max_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCapacity"))
    CapacityLimit.add_member(:capacity_unit, Shapes::ShapeRef.new(shape: String, location_name: "capacityUnit"))
    CapacityLimit.struct_class = Types::CapacityLimit

    CapacityLimits.member = Shapes::ShapeRef.new(shape: CapacityLimit)

    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientException.struct_class = Types::ClientException

    ComputeEnvironmentDetail.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentName"))
    ComputeEnvironmentDetail.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentArn"))
    ComputeEnvironmentDetail.add_member(:unmanagedv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "unmanagedvCpus"))
    ComputeEnvironmentDetail.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "ecsClusterArn"))
    ComputeEnvironmentDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    ComputeEnvironmentDetail.add_member(:type, Shapes::ShapeRef.new(shape: CEType, location_name: "type"))
    ComputeEnvironmentDetail.add_member(:state, Shapes::ShapeRef.new(shape: CEState, location_name: "state"))
    ComputeEnvironmentDetail.add_member(:status, Shapes::ShapeRef.new(shape: CEStatus, location_name: "status"))
    ComputeEnvironmentDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ComputeEnvironmentDetail.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResource, location_name: "computeResources"))
    ComputeEnvironmentDetail.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "serviceRole"))
    ComputeEnvironmentDetail.add_member(:update_policy, Shapes::ShapeRef.new(shape: UpdatePolicy, location_name: "updatePolicy"))
    ComputeEnvironmentDetail.add_member(:eks_configuration, Shapes::ShapeRef.new(shape: EksConfiguration, location_name: "eksConfiguration"))
    ComputeEnvironmentDetail.add_member(:container_orchestration_type, Shapes::ShapeRef.new(shape: OrchestrationType, location_name: "containerOrchestrationType"))
    ComputeEnvironmentDetail.add_member(:uuid, Shapes::ShapeRef.new(shape: String, location_name: "uuid"))
    ComputeEnvironmentDetail.add_member(:context, Shapes::ShapeRef.new(shape: String, location_name: "context"))
    ComputeEnvironmentDetail.struct_class = Types::ComputeEnvironmentDetail

    ComputeEnvironmentDetailList.member = Shapes::ShapeRef.new(shape: ComputeEnvironmentDetail)

    ComputeEnvironmentOrder.add_member(:order, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "order"))
    ComputeEnvironmentOrder.add_member(:compute_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironment"))
    ComputeEnvironmentOrder.struct_class = Types::ComputeEnvironmentOrder

    ComputeEnvironmentOrders.member = Shapes::ShapeRef.new(shape: ComputeEnvironmentOrder)

    ComputeResource.add_member(:type, Shapes::ShapeRef.new(shape: CRType, required: true, location_name: "type"))
    ComputeResource.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: CRAllocationStrategy, location_name: "allocationStrategy"))
    ComputeResource.add_member(:minv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "minvCpus"))
    ComputeResource.add_member(:maxv_cpus, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxvCpus"))
    ComputeResource.add_member(:desiredv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredvCpus"))
    ComputeResource.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    ComputeResource.add_member(:image_id, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "imageId", metadata: {"deprecatedMessage" => "This field is deprecated, use ec2Configuration[].imageIdOverride instead."}))
    ComputeResource.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnets"))
    ComputeResource.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    ComputeResource.add_member(:ec2_key_pair, Shapes::ShapeRef.new(shape: String, location_name: "ec2KeyPair"))
    ComputeResource.add_member(:instance_role, Shapes::ShapeRef.new(shape: String, location_name: "instanceRole"))
    ComputeResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ComputeResource.add_member(:placement_group, Shapes::ShapeRef.new(shape: String, location_name: "placementGroup"))
    ComputeResource.add_member(:bid_percentage, Shapes::ShapeRef.new(shape: Integer, location_name: "bidPercentage"))
    ComputeResource.add_member(:spot_iam_fleet_role, Shapes::ShapeRef.new(shape: String, location_name: "spotIamFleetRole"))
    ComputeResource.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    ComputeResource.add_member(:ec2_configuration, Shapes::ShapeRef.new(shape: Ec2ConfigurationList, location_name: "ec2Configuration"))
    ComputeResource.struct_class = Types::ComputeResource

    ComputeResourceUpdate.add_member(:minv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "minvCpus"))
    ComputeResourceUpdate.add_member(:maxv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "maxvCpus"))
    ComputeResourceUpdate.add_member(:desiredv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredvCpus"))
    ComputeResourceUpdate.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    ComputeResourceUpdate.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    ComputeResourceUpdate.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: CRUpdateAllocationStrategy, location_name: "allocationStrategy"))
    ComputeResourceUpdate.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    ComputeResourceUpdate.add_member(:ec2_key_pair, Shapes::ShapeRef.new(shape: String, location_name: "ec2KeyPair"))
    ComputeResourceUpdate.add_member(:instance_role, Shapes::ShapeRef.new(shape: String, location_name: "instanceRole"))
    ComputeResourceUpdate.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ComputeResourceUpdate.add_member(:placement_group, Shapes::ShapeRef.new(shape: String, location_name: "placementGroup"))
    ComputeResourceUpdate.add_member(:bid_percentage, Shapes::ShapeRef.new(shape: Integer, location_name: "bidPercentage"))
    ComputeResourceUpdate.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    ComputeResourceUpdate.add_member(:ec2_configuration, Shapes::ShapeRef.new(shape: Ec2ConfigurationList, location_name: "ec2Configuration"))
    ComputeResourceUpdate.add_member(:update_to_latest_image_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "updateToLatestImageVersion"))
    ComputeResourceUpdate.add_member(:type, Shapes::ShapeRef.new(shape: CRType, location_name: "type"))
    ComputeResourceUpdate.add_member(:image_id, Shapes::ShapeRef.new(shape: String, location_name: "imageId"))
    ComputeResourceUpdate.struct_class = Types::ComputeResourceUpdate

    ConsumableResourceList.member = Shapes::ShapeRef.new(shape: ConsumableResourceRequirement)

    ConsumableResourceProperties.add_member(:consumable_resource_list, Shapes::ShapeRef.new(shape: ConsumableResourceList, location_name: "consumableResourceList"))
    ConsumableResourceProperties.struct_class = Types::ConsumableResourceProperties

    ConsumableResourceRequirement.add_member(:consumable_resource, Shapes::ShapeRef.new(shape: String, location_name: "consumableResource"))
    ConsumableResourceRequirement.add_member(:quantity, Shapes::ShapeRef.new(shape: Long, location_name: "quantity"))
    ConsumableResourceRequirement.struct_class = Types::ConsumableResourceRequirement

    ConsumableResourceSummary.add_member(:consumable_resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceArn"))
    ConsumableResourceSummary.add_member(:consumable_resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceName"))
    ConsumableResourceSummary.add_member(:total_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "totalQuantity"))
    ConsumableResourceSummary.add_member(:in_use_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "inUseQuantity"))
    ConsumableResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConsumableResourceSummary.struct_class = Types::ConsumableResourceSummary

    ConsumableResourceSummaryList.member = Shapes::ShapeRef.new(shape: ConsumableResourceSummary)

    ContainerDetail.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerDetail.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, location_name: "vcpus"))
    ContainerDetail.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, location_name: "memory"))
    ContainerDetail.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerDetail.add_member(:job_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobRoleArn"))
    ContainerDetail.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    ContainerDetail.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    ContainerDetail.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerDetail.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPoints, location_name: "mountPoints"))
    ContainerDetail.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "readonlyRootFilesystem"))
    ContainerDetail.add_member(:ulimits, Shapes::ShapeRef.new(shape: Ulimits, location_name: "ulimits"))
    ContainerDetail.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    ContainerDetail.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    ContainerDetail.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    ContainerDetail.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ContainerDetail.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    ContainerDetail.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    ContainerDetail.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "logStreamName"))
    ContainerDetail.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    ContainerDetail.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "networkInterfaces"))
    ContainerDetail.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerDetail.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: LinuxParameters, location_name: "linuxParameters"))
    ContainerDetail.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    ContainerDetail.add_member(:secrets, Shapes::ShapeRef.new(shape: SecretList, location_name: "secrets"))
    ContainerDetail.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    ContainerDetail.add_member(:fargate_platform_configuration, Shapes::ShapeRef.new(shape: FargatePlatformConfiguration, location_name: "fargatePlatformConfiguration"))
    ContainerDetail.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    ContainerDetail.add_member(:runtime_platform, Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: "runtimePlatform"))
    ContainerDetail.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: "repositoryCredentials"))
    ContainerDetail.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    ContainerDetail.struct_class = Types::ContainerDetail

    ContainerOverrides.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "vcpus", metadata: {"deprecatedMessage" => "This field is deprecated, use resourceRequirements instead."}))
    ContainerOverrides.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "memory", metadata: {"deprecatedMessage" => "This field is deprecated, use resourceRequirements instead."}))
    ContainerOverrides.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerOverrides.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    ContainerOverrides.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerOverrides.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerOverrides.struct_class = Types::ContainerOverrides

    ContainerProperties.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerProperties.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "vcpus", metadata: {"deprecatedMessage" => "This field is deprecated, use resourceRequirements instead."}))
    ContainerProperties.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "memory", metadata: {"deprecatedMessage" => "This field is deprecated, use resourceRequirements instead."}))
    ContainerProperties.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerProperties.add_member(:job_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobRoleArn"))
    ContainerProperties.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    ContainerProperties.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    ContainerProperties.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerProperties.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPoints, location_name: "mountPoints"))
    ContainerProperties.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "readonlyRootFilesystem"))
    ContainerProperties.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    ContainerProperties.add_member(:ulimits, Shapes::ShapeRef.new(shape: Ulimits, location_name: "ulimits"))
    ContainerProperties.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    ContainerProperties.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    ContainerProperties.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerProperties.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: LinuxParameters, location_name: "linuxParameters"))
    ContainerProperties.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    ContainerProperties.add_member(:secrets, Shapes::ShapeRef.new(shape: SecretList, location_name: "secrets"))
    ContainerProperties.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    ContainerProperties.add_member(:fargate_platform_configuration, Shapes::ShapeRef.new(shape: FargatePlatformConfiguration, location_name: "fargatePlatformConfiguration"))
    ContainerProperties.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    ContainerProperties.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    ContainerProperties.add_member(:runtime_platform, Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: "runtimePlatform"))
    ContainerProperties.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: "repositoryCredentials"))
    ContainerProperties.struct_class = Types::ContainerProperties

    ContainerSummary.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    ContainerSummary.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ContainerSummary.struct_class = Types::ContainerSummary

    CreateComputeEnvironmentRequest.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentName"))
    CreateComputeEnvironmentRequest.add_member(:type, Shapes::ShapeRef.new(shape: CEType, required: true, location_name: "type"))
    CreateComputeEnvironmentRequest.add_member(:state, Shapes::ShapeRef.new(shape: CEState, location_name: "state"))
    CreateComputeEnvironmentRequest.add_member(:unmanagedv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "unmanagedvCpus"))
    CreateComputeEnvironmentRequest.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResource, location_name: "computeResources"))
    CreateComputeEnvironmentRequest.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "serviceRole"))
    CreateComputeEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateComputeEnvironmentRequest.add_member(:eks_configuration, Shapes::ShapeRef.new(shape: EksConfiguration, location_name: "eksConfiguration"))
    CreateComputeEnvironmentRequest.add_member(:context, Shapes::ShapeRef.new(shape: String, location_name: "context"))
    CreateComputeEnvironmentRequest.struct_class = Types::CreateComputeEnvironmentRequest

    CreateComputeEnvironmentResponse.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentName"))
    CreateComputeEnvironmentResponse.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentArn"))
    CreateComputeEnvironmentResponse.struct_class = Types::CreateComputeEnvironmentResponse

    CreateConsumableResourceRequest.add_member(:consumable_resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceName"))
    CreateConsumableResourceRequest.add_member(:total_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "totalQuantity"))
    CreateConsumableResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    CreateConsumableResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateConsumableResourceRequest.struct_class = Types::CreateConsumableResourceRequest

    CreateConsumableResourceResponse.add_member(:consumable_resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceName"))
    CreateConsumableResourceResponse.add_member(:consumable_resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceArn"))
    CreateConsumableResourceResponse.struct_class = Types::CreateConsumableResourceResponse

    CreateJobQueueRequest.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    CreateJobQueueRequest.add_member(:state, Shapes::ShapeRef.new(shape: JQState, location_name: "state"))
    CreateJobQueueRequest.add_member(:scheduling_policy_arn, Shapes::ShapeRef.new(shape: String, location_name: "schedulingPolicyArn"))
    CreateJobQueueRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "priority"))
    CreateJobQueueRequest.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, location_name: "computeEnvironmentOrder"))
    CreateJobQueueRequest.add_member(:service_environment_order, Shapes::ShapeRef.new(shape: ServiceEnvironmentOrders, location_name: "serviceEnvironmentOrder"))
    CreateJobQueueRequest.add_member(:job_queue_type, Shapes::ShapeRef.new(shape: JobQueueType, location_name: "jobQueueType"))
    CreateJobQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateJobQueueRequest.add_member(:job_state_time_limit_actions, Shapes::ShapeRef.new(shape: JobStateTimeLimitActions, location_name: "jobStateTimeLimitActions"))
    CreateJobQueueRequest.struct_class = Types::CreateJobQueueRequest

    CreateJobQueueResponse.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    CreateJobQueueResponse.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueArn"))
    CreateJobQueueResponse.struct_class = Types::CreateJobQueueResponse

    CreateSchedulingPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateSchedulingPolicyRequest.add_member(:fairshare_policy, Shapes::ShapeRef.new(shape: FairsharePolicy, location_name: "fairsharePolicy"))
    CreateSchedulingPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateSchedulingPolicyRequest.struct_class = Types::CreateSchedulingPolicyRequest

    CreateSchedulingPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateSchedulingPolicyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    CreateSchedulingPolicyResponse.struct_class = Types::CreateSchedulingPolicyResponse

    CreateServiceEnvironmentRequest.add_member(:service_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentName"))
    CreateServiceEnvironmentRequest.add_member(:service_environment_type, Shapes::ShapeRef.new(shape: ServiceEnvironmentType, required: true, location_name: "serviceEnvironmentType"))
    CreateServiceEnvironmentRequest.add_member(:state, Shapes::ShapeRef.new(shape: ServiceEnvironmentState, location_name: "state"))
    CreateServiceEnvironmentRequest.add_member(:capacity_limits, Shapes::ShapeRef.new(shape: CapacityLimits, required: true, location_name: "capacityLimits"))
    CreateServiceEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateServiceEnvironmentRequest.struct_class = Types::CreateServiceEnvironmentRequest

    CreateServiceEnvironmentResponse.add_member(:service_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentName"))
    CreateServiceEnvironmentResponse.add_member(:service_environment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentArn"))
    CreateServiceEnvironmentResponse.struct_class = Types::CreateServiceEnvironmentResponse

    DeleteComputeEnvironmentRequest.add_member(:compute_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironment"))
    DeleteComputeEnvironmentRequest.struct_class = Types::DeleteComputeEnvironmentRequest

    DeleteComputeEnvironmentResponse.struct_class = Types::DeleteComputeEnvironmentResponse

    DeleteConsumableResourceRequest.add_member(:consumable_resource, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResource"))
    DeleteConsumableResourceRequest.struct_class = Types::DeleteConsumableResourceRequest

    DeleteConsumableResourceResponse.struct_class = Types::DeleteConsumableResourceResponse

    DeleteJobQueueRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    DeleteJobQueueRequest.struct_class = Types::DeleteJobQueueRequest

    DeleteJobQueueResponse.struct_class = Types::DeleteJobQueueResponse

    DeleteSchedulingPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    DeleteSchedulingPolicyRequest.struct_class = Types::DeleteSchedulingPolicyRequest

    DeleteSchedulingPolicyResponse.struct_class = Types::DeleteSchedulingPolicyResponse

    DeleteServiceEnvironmentRequest.add_member(:service_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironment"))
    DeleteServiceEnvironmentRequest.struct_class = Types::DeleteServiceEnvironmentRequest

    DeleteServiceEnvironmentResponse.struct_class = Types::DeleteServiceEnvironmentResponse

    DeregisterJobDefinitionRequest.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinition"))
    DeregisterJobDefinitionRequest.struct_class = Types::DeregisterJobDefinitionRequest

    DeregisterJobDefinitionResponse.struct_class = Types::DeregisterJobDefinitionResponse

    DescribeComputeEnvironmentsRequest.add_member(:compute_environments, Shapes::ShapeRef.new(shape: StringList, location_name: "computeEnvironments"))
    DescribeComputeEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeComputeEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeComputeEnvironmentsRequest.struct_class = Types::DescribeComputeEnvironmentsRequest

    DescribeComputeEnvironmentsResponse.add_member(:compute_environments, Shapes::ShapeRef.new(shape: ComputeEnvironmentDetailList, location_name: "computeEnvironments"))
    DescribeComputeEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeComputeEnvironmentsResponse.struct_class = Types::DescribeComputeEnvironmentsResponse

    DescribeConsumableResourceRequest.add_member(:consumable_resource, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResource"))
    DescribeConsumableResourceRequest.struct_class = Types::DescribeConsumableResourceRequest

    DescribeConsumableResourceResponse.add_member(:consumable_resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceName"))
    DescribeConsumableResourceResponse.add_member(:consumable_resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceArn"))
    DescribeConsumableResourceResponse.add_member(:total_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "totalQuantity"))
    DescribeConsumableResourceResponse.add_member(:in_use_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "inUseQuantity"))
    DescribeConsumableResourceResponse.add_member(:available_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "availableQuantity"))
    DescribeConsumableResourceResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    DescribeConsumableResourceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    DescribeConsumableResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    DescribeConsumableResourceResponse.struct_class = Types::DescribeConsumableResourceResponse

    DescribeJobDefinitionsRequest.add_member(:job_definitions, Shapes::ShapeRef.new(shape: StringList, location_name: "jobDefinitions"))
    DescribeJobDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeJobDefinitionsRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, location_name: "jobDefinitionName"))
    DescribeJobDefinitionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    DescribeJobDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeJobDefinitionsRequest.struct_class = Types::DescribeJobDefinitionsRequest

    DescribeJobDefinitionsResponse.add_member(:job_definitions, Shapes::ShapeRef.new(shape: JobDefinitionList, location_name: "jobDefinitions"))
    DescribeJobDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeJobDefinitionsResponse.struct_class = Types::DescribeJobDefinitionsResponse

    DescribeJobQueuesRequest.add_member(:job_queues, Shapes::ShapeRef.new(shape: StringList, location_name: "jobQueues"))
    DescribeJobQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeJobQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeJobQueuesRequest.struct_class = Types::DescribeJobQueuesRequest

    DescribeJobQueuesResponse.add_member(:job_queues, Shapes::ShapeRef.new(shape: JobQueueDetailList, location_name: "jobQueues"))
    DescribeJobQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeJobQueuesResponse.struct_class = Types::DescribeJobQueuesResponse

    DescribeJobsRequest.add_member(:jobs, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "jobs"))
    DescribeJobsRequest.struct_class = Types::DescribeJobsRequest

    DescribeJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobDetailList, location_name: "jobs"))
    DescribeJobsResponse.struct_class = Types::DescribeJobsResponse

    DescribeSchedulingPoliciesRequest.add_member(:arns, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "arns"))
    DescribeSchedulingPoliciesRequest.struct_class = Types::DescribeSchedulingPoliciesRequest

    DescribeSchedulingPoliciesResponse.add_member(:scheduling_policies, Shapes::ShapeRef.new(shape: SchedulingPolicyDetailList, location_name: "schedulingPolicies"))
    DescribeSchedulingPoliciesResponse.struct_class = Types::DescribeSchedulingPoliciesResponse

    DescribeServiceEnvironmentsRequest.add_member(:service_environments, Shapes::ShapeRef.new(shape: StringList, location_name: "serviceEnvironments"))
    DescribeServiceEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeServiceEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeServiceEnvironmentsRequest.struct_class = Types::DescribeServiceEnvironmentsRequest

    DescribeServiceEnvironmentsResponse.add_member(:service_environments, Shapes::ShapeRef.new(shape: ServiceEnvironmentDetailList, location_name: "serviceEnvironments"))
    DescribeServiceEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeServiceEnvironmentsResponse.struct_class = Types::DescribeServiceEnvironmentsResponse

    DescribeServiceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    DescribeServiceJobRequest.struct_class = Types::DescribeServiceJobRequest

    DescribeServiceJobResponse.add_member(:attempts, Shapes::ShapeRef.new(shape: ServiceJobAttemptDetails, location_name: "attempts"))
    DescribeServiceJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    DescribeServiceJobResponse.add_member(:is_terminated, Shapes::ShapeRef.new(shape: Boolean, location_name: "isTerminated"))
    DescribeServiceJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    DescribeServiceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    DescribeServiceJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    DescribeServiceJobResponse.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    DescribeServiceJobResponse.add_member(:latest_attempt, Shapes::ShapeRef.new(shape: LatestServiceJobAttempt, location_name: "latestAttempt"))
    DescribeServiceJobResponse.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: ServiceJobRetryStrategy, location_name: "retryStrategy"))
    DescribeServiceJobResponse.add_member(:scheduling_priority, Shapes::ShapeRef.new(shape: Integer, location_name: "schedulingPriority"))
    DescribeServiceJobResponse.add_member(:service_request_payload, Shapes::ShapeRef.new(shape: String, location_name: "serviceRequestPayload"))
    DescribeServiceJobResponse.add_member(:service_job_type, Shapes::ShapeRef.new(shape: ServiceJobType, required: true, location_name: "serviceJobType"))
    DescribeServiceJobResponse.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, location_name: "shareIdentifier"))
    DescribeServiceJobResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "startedAt"))
    DescribeServiceJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceJobStatus, required: true, location_name: "status"))
    DescribeServiceJobResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DescribeServiceJobResponse.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    DescribeServiceJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    DescribeServiceJobResponse.add_member(:timeout_config, Shapes::ShapeRef.new(shape: ServiceJobTimeout, location_name: "timeoutConfig"))
    DescribeServiceJobResponse.struct_class = Types::DescribeServiceJobResponse

    Device.add_member(:host_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "hostPath"))
    Device.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    Device.add_member(:permissions, Shapes::ShapeRef.new(shape: DeviceCgroupPermissions, location_name: "permissions"))
    Device.struct_class = Types::Device

    DeviceCgroupPermissions.member = Shapes::ShapeRef.new(shape: DeviceCgroupPermission)

    DevicesList.member = Shapes::ShapeRef.new(shape: Device)

    EFSAuthorizationConfig.add_member(:access_point_id, Shapes::ShapeRef.new(shape: String, location_name: "accessPointId"))
    EFSAuthorizationConfig.add_member(:iam, Shapes::ShapeRef.new(shape: EFSAuthorizationConfigIAM, location_name: "iam"))
    EFSAuthorizationConfig.struct_class = Types::EFSAuthorizationConfig

    EFSVolumeConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileSystemId"))
    EFSVolumeConfiguration.add_member(:root_directory, Shapes::ShapeRef.new(shape: String, location_name: "rootDirectory"))
    EFSVolumeConfiguration.add_member(:transit_encryption, Shapes::ShapeRef.new(shape: EFSTransitEncryption, location_name: "transitEncryption"))
    EFSVolumeConfiguration.add_member(:transit_encryption_port, Shapes::ShapeRef.new(shape: Integer, location_name: "transitEncryptionPort"))
    EFSVolumeConfiguration.add_member(:authorization_config, Shapes::ShapeRef.new(shape: EFSAuthorizationConfig, location_name: "authorizationConfig"))
    EFSVolumeConfiguration.struct_class = Types::EFSVolumeConfiguration

    Ec2Configuration.add_member(:image_type, Shapes::ShapeRef.new(shape: ImageType, required: true, location_name: "imageType"))
    Ec2Configuration.add_member(:image_id_override, Shapes::ShapeRef.new(shape: ImageIdOverride, location_name: "imageIdOverride"))
    Ec2Configuration.add_member(:image_kubernetes_version, Shapes::ShapeRef.new(shape: KubernetesVersion, location_name: "imageKubernetesVersion"))
    Ec2Configuration.struct_class = Types::Ec2Configuration

    Ec2ConfigurationList.member = Shapes::ShapeRef.new(shape: Ec2Configuration)

    EcsProperties.add_member(:task_properties, Shapes::ShapeRef.new(shape: ListEcsTaskProperties, required: true, location_name: "taskProperties"))
    EcsProperties.struct_class = Types::EcsProperties

    EcsPropertiesDetail.add_member(:task_properties, Shapes::ShapeRef.new(shape: ListEcsTaskDetails, location_name: "taskProperties"))
    EcsPropertiesDetail.struct_class = Types::EcsPropertiesDetail

    EcsPropertiesOverride.add_member(:task_properties, Shapes::ShapeRef.new(shape: ListTaskPropertiesOverride, location_name: "taskProperties"))
    EcsPropertiesOverride.struct_class = Types::EcsPropertiesOverride

    EcsTaskDetails.add_member(:containers, Shapes::ShapeRef.new(shape: ListTaskContainerDetails, location_name: "containers"))
    EcsTaskDetails.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    EcsTaskDetails.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    EcsTaskDetails.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    EcsTaskDetails.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    EcsTaskDetails.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    EcsTaskDetails.add_member(:ipc_mode, Shapes::ShapeRef.new(shape: String, location_name: "ipcMode"))
    EcsTaskDetails.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    EcsTaskDetails.add_member(:pid_mode, Shapes::ShapeRef.new(shape: String, location_name: "pidMode"))
    EcsTaskDetails.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    EcsTaskDetails.add_member(:runtime_platform, Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: "runtimePlatform"))
    EcsTaskDetails.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    EcsTaskDetails.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    EcsTaskDetails.struct_class = Types::EcsTaskDetails

    EcsTaskProperties.add_member(:containers, Shapes::ShapeRef.new(shape: ListTaskContainerProperties, required: true, location_name: "containers"))
    EcsTaskProperties.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    EcsTaskProperties.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    EcsTaskProperties.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    EcsTaskProperties.add_member(:ipc_mode, Shapes::ShapeRef.new(shape: String, location_name: "ipcMode"))
    EcsTaskProperties.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    EcsTaskProperties.add_member(:pid_mode, Shapes::ShapeRef.new(shape: String, location_name: "pidMode"))
    EcsTaskProperties.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    EcsTaskProperties.add_member(:runtime_platform, Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: "runtimePlatform"))
    EcsTaskProperties.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    EcsTaskProperties.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    EcsTaskProperties.struct_class = Types::EcsTaskProperties

    EksAnnotationsMap.key = Shapes::ShapeRef.new(shape: String)
    EksAnnotationsMap.value = Shapes::ShapeRef.new(shape: String)

    EksAttemptContainerDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EksAttemptContainerDetail.add_member(:container_id, Shapes::ShapeRef.new(shape: String, location_name: "containerID"))
    EksAttemptContainerDetail.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    EksAttemptContainerDetail.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    EksAttemptContainerDetail.struct_class = Types::EksAttemptContainerDetail

    EksAttemptContainerDetails.member = Shapes::ShapeRef.new(shape: EksAttemptContainerDetail)

    EksAttemptDetail.add_member(:containers, Shapes::ShapeRef.new(shape: EksAttemptContainerDetails, location_name: "containers"))
    EksAttemptDetail.add_member(:init_containers, Shapes::ShapeRef.new(shape: EksAttemptContainerDetails, location_name: "initContainers"))
    EksAttemptDetail.add_member(:eks_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "eksClusterArn"))
    EksAttemptDetail.add_member(:pod_name, Shapes::ShapeRef.new(shape: String, location_name: "podName"))
    EksAttemptDetail.add_member(:pod_namespace, Shapes::ShapeRef.new(shape: String, location_name: "podNamespace"))
    EksAttemptDetail.add_member(:node_name, Shapes::ShapeRef.new(shape: String, location_name: "nodeName"))
    EksAttemptDetail.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    EksAttemptDetail.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    EksAttemptDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    EksAttemptDetail.struct_class = Types::EksAttemptDetail

    EksAttemptDetails.member = Shapes::ShapeRef.new(shape: EksAttemptDetail)

    EksConfiguration.add_member(:eks_cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eksClusterArn"))
    EksConfiguration.add_member(:kubernetes_namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "kubernetesNamespace"))
    EksConfiguration.struct_class = Types::EksConfiguration

    EksContainer.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EksContainer.add_member(:image, Shapes::ShapeRef.new(shape: String, required: true, location_name: "image"))
    EksContainer.add_member(:image_pull_policy, Shapes::ShapeRef.new(shape: String, location_name: "imagePullPolicy"))
    EksContainer.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    EksContainer.add_member(:args, Shapes::ShapeRef.new(shape: StringList, location_name: "args"))
    EksContainer.add_member(:env, Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariables, location_name: "env"))
    EksContainer.add_member(:resources, Shapes::ShapeRef.new(shape: EksContainerResourceRequirements, location_name: "resources"))
    EksContainer.add_member(:volume_mounts, Shapes::ShapeRef.new(shape: EksContainerVolumeMounts, location_name: "volumeMounts"))
    EksContainer.add_member(:security_context, Shapes::ShapeRef.new(shape: EksContainerSecurityContext, location_name: "securityContext"))
    EksContainer.struct_class = Types::EksContainer

    EksContainerDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EksContainerDetail.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    EksContainerDetail.add_member(:image_pull_policy, Shapes::ShapeRef.new(shape: String, location_name: "imagePullPolicy"))
    EksContainerDetail.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    EksContainerDetail.add_member(:args, Shapes::ShapeRef.new(shape: StringList, location_name: "args"))
    EksContainerDetail.add_member(:env, Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariables, location_name: "env"))
    EksContainerDetail.add_member(:resources, Shapes::ShapeRef.new(shape: EksContainerResourceRequirements, location_name: "resources"))
    EksContainerDetail.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    EksContainerDetail.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    EksContainerDetail.add_member(:volume_mounts, Shapes::ShapeRef.new(shape: EksContainerVolumeMounts, location_name: "volumeMounts"))
    EksContainerDetail.add_member(:security_context, Shapes::ShapeRef.new(shape: EksContainerSecurityContext, location_name: "securityContext"))
    EksContainerDetail.struct_class = Types::EksContainerDetail

    EksContainerDetails.member = Shapes::ShapeRef.new(shape: EksContainerDetail)

    EksContainerEnvironmentVariable.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    EksContainerEnvironmentVariable.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    EksContainerEnvironmentVariable.struct_class = Types::EksContainerEnvironmentVariable

    EksContainerEnvironmentVariables.member = Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariable)

    EksContainerOverride.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EksContainerOverride.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    EksContainerOverride.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    EksContainerOverride.add_member(:args, Shapes::ShapeRef.new(shape: StringList, location_name: "args"))
    EksContainerOverride.add_member(:env, Shapes::ShapeRef.new(shape: EksContainerEnvironmentVariables, location_name: "env"))
    EksContainerOverride.add_member(:resources, Shapes::ShapeRef.new(shape: EksContainerResourceRequirements, location_name: "resources"))
    EksContainerOverride.struct_class = Types::EksContainerOverride

    EksContainerOverrideList.member = Shapes::ShapeRef.new(shape: EksContainerOverride)

    EksContainerResourceRequirements.add_member(:limits, Shapes::ShapeRef.new(shape: EksLimits, location_name: "limits"))
    EksContainerResourceRequirements.add_member(:requests, Shapes::ShapeRef.new(shape: EksRequests, location_name: "requests"))
    EksContainerResourceRequirements.struct_class = Types::EksContainerResourceRequirements

    EksContainerSecurityContext.add_member(:run_as_user, Shapes::ShapeRef.new(shape: Long, location_name: "runAsUser"))
    EksContainerSecurityContext.add_member(:run_as_group, Shapes::ShapeRef.new(shape: Long, location_name: "runAsGroup"))
    EksContainerSecurityContext.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    EksContainerSecurityContext.add_member(:allow_privilege_escalation, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowPrivilegeEscalation"))
    EksContainerSecurityContext.add_member(:read_only_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "readOnlyRootFilesystem"))
    EksContainerSecurityContext.add_member(:run_as_non_root, Shapes::ShapeRef.new(shape: Boolean, location_name: "runAsNonRoot"))
    EksContainerSecurityContext.struct_class = Types::EksContainerSecurityContext

    EksContainerVolumeMount.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EksContainerVolumeMount.add_member(:mount_path, Shapes::ShapeRef.new(shape: String, location_name: "mountPath"))
    EksContainerVolumeMount.add_member(:sub_path, Shapes::ShapeRef.new(shape: String, location_name: "subPath"))
    EksContainerVolumeMount.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "readOnly"))
    EksContainerVolumeMount.struct_class = Types::EksContainerVolumeMount

    EksContainerVolumeMounts.member = Shapes::ShapeRef.new(shape: EksContainerVolumeMount)

    EksContainers.member = Shapes::ShapeRef.new(shape: EksContainer)

    EksEmptyDir.add_member(:medium, Shapes::ShapeRef.new(shape: String, location_name: "medium"))
    EksEmptyDir.add_member(:size_limit, Shapes::ShapeRef.new(shape: Quantity, location_name: "sizeLimit"))
    EksEmptyDir.struct_class = Types::EksEmptyDir

    EksHostPath.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    EksHostPath.struct_class = Types::EksHostPath

    EksLabelsMap.key = Shapes::ShapeRef.new(shape: String)
    EksLabelsMap.value = Shapes::ShapeRef.new(shape: String)

    EksLimits.key = Shapes::ShapeRef.new(shape: String)
    EksLimits.value = Shapes::ShapeRef.new(shape: Quantity)

    EksMetadata.add_member(:labels, Shapes::ShapeRef.new(shape: EksLabelsMap, location_name: "labels"))
    EksMetadata.add_member(:annotations, Shapes::ShapeRef.new(shape: EksAnnotationsMap, location_name: "annotations"))
    EksMetadata.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    EksMetadata.struct_class = Types::EksMetadata

    EksPersistentVolumeClaim.add_member(:claim_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "claimName"))
    EksPersistentVolumeClaim.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "readOnly"))
    EksPersistentVolumeClaim.struct_class = Types::EksPersistentVolumeClaim

    EksPodProperties.add_member(:service_account_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccountName"))
    EksPodProperties.add_member(:host_network, Shapes::ShapeRef.new(shape: Boolean, location_name: "hostNetwork"))
    EksPodProperties.add_member(:dns_policy, Shapes::ShapeRef.new(shape: String, location_name: "dnsPolicy"))
    EksPodProperties.add_member(:image_pull_secrets, Shapes::ShapeRef.new(shape: ImagePullSecrets, location_name: "imagePullSecrets"))
    EksPodProperties.add_member(:containers, Shapes::ShapeRef.new(shape: EksContainers, location_name: "containers"))
    EksPodProperties.add_member(:init_containers, Shapes::ShapeRef.new(shape: EksContainers, location_name: "initContainers"))
    EksPodProperties.add_member(:volumes, Shapes::ShapeRef.new(shape: EksVolumes, location_name: "volumes"))
    EksPodProperties.add_member(:metadata, Shapes::ShapeRef.new(shape: EksMetadata, location_name: "metadata"))
    EksPodProperties.add_member(:share_process_namespace, Shapes::ShapeRef.new(shape: Boolean, location_name: "shareProcessNamespace"))
    EksPodProperties.struct_class = Types::EksPodProperties

    EksPodPropertiesDetail.add_member(:service_account_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccountName"))
    EksPodPropertiesDetail.add_member(:host_network, Shapes::ShapeRef.new(shape: Boolean, location_name: "hostNetwork"))
    EksPodPropertiesDetail.add_member(:dns_policy, Shapes::ShapeRef.new(shape: String, location_name: "dnsPolicy"))
    EksPodPropertiesDetail.add_member(:image_pull_secrets, Shapes::ShapeRef.new(shape: ImagePullSecrets, location_name: "imagePullSecrets"))
    EksPodPropertiesDetail.add_member(:containers, Shapes::ShapeRef.new(shape: EksContainerDetails, location_name: "containers"))
    EksPodPropertiesDetail.add_member(:init_containers, Shapes::ShapeRef.new(shape: EksContainerDetails, location_name: "initContainers"))
    EksPodPropertiesDetail.add_member(:volumes, Shapes::ShapeRef.new(shape: EksVolumes, location_name: "volumes"))
    EksPodPropertiesDetail.add_member(:pod_name, Shapes::ShapeRef.new(shape: String, location_name: "podName"))
    EksPodPropertiesDetail.add_member(:node_name, Shapes::ShapeRef.new(shape: String, location_name: "nodeName"))
    EksPodPropertiesDetail.add_member(:metadata, Shapes::ShapeRef.new(shape: EksMetadata, location_name: "metadata"))
    EksPodPropertiesDetail.add_member(:share_process_namespace, Shapes::ShapeRef.new(shape: Boolean, location_name: "shareProcessNamespace"))
    EksPodPropertiesDetail.struct_class = Types::EksPodPropertiesDetail

    EksPodPropertiesOverride.add_member(:containers, Shapes::ShapeRef.new(shape: EksContainerOverrideList, location_name: "containers"))
    EksPodPropertiesOverride.add_member(:init_containers, Shapes::ShapeRef.new(shape: EksContainerOverrideList, location_name: "initContainers"))
    EksPodPropertiesOverride.add_member(:metadata, Shapes::ShapeRef.new(shape: EksMetadata, location_name: "metadata"))
    EksPodPropertiesOverride.struct_class = Types::EksPodPropertiesOverride

    EksProperties.add_member(:pod_properties, Shapes::ShapeRef.new(shape: EksPodProperties, location_name: "podProperties"))
    EksProperties.struct_class = Types::EksProperties

    EksPropertiesDetail.add_member(:pod_properties, Shapes::ShapeRef.new(shape: EksPodPropertiesDetail, location_name: "podProperties"))
    EksPropertiesDetail.struct_class = Types::EksPropertiesDetail

    EksPropertiesOverride.add_member(:pod_properties, Shapes::ShapeRef.new(shape: EksPodPropertiesOverride, location_name: "podProperties"))
    EksPropertiesOverride.struct_class = Types::EksPropertiesOverride

    EksRequests.key = Shapes::ShapeRef.new(shape: String)
    EksRequests.value = Shapes::ShapeRef.new(shape: Quantity)

    EksSecret.add_member(:secret_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "secretName"))
    EksSecret.add_member(:optional, Shapes::ShapeRef.new(shape: Boolean, location_name: "optional"))
    EksSecret.struct_class = Types::EksSecret

    EksVolume.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    EksVolume.add_member(:host_path, Shapes::ShapeRef.new(shape: EksHostPath, location_name: "hostPath"))
    EksVolume.add_member(:empty_dir, Shapes::ShapeRef.new(shape: EksEmptyDir, location_name: "emptyDir"))
    EksVolume.add_member(:secret, Shapes::ShapeRef.new(shape: EksSecret, location_name: "secret"))
    EksVolume.add_member(:persistent_volume_claim, Shapes::ShapeRef.new(shape: EksPersistentVolumeClaim, location_name: "persistentVolumeClaim"))
    EksVolume.struct_class = Types::EksVolume

    EksVolumes.member = Shapes::ShapeRef.new(shape: EksVolume)

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    EphemeralStorage.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "sizeInGiB"))
    EphemeralStorage.struct_class = Types::EphemeralStorage

    EvaluateOnExit.add_member(:on_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "onStatusReason"))
    EvaluateOnExit.add_member(:on_reason, Shapes::ShapeRef.new(shape: String, location_name: "onReason"))
    EvaluateOnExit.add_member(:on_exit_code, Shapes::ShapeRef.new(shape: String, location_name: "onExitCode"))
    EvaluateOnExit.add_member(:action, Shapes::ShapeRef.new(shape: RetryAction, required: true, location_name: "action"))
    EvaluateOnExit.struct_class = Types::EvaluateOnExit

    EvaluateOnExitList.member = Shapes::ShapeRef.new(shape: EvaluateOnExit)

    FairsharePolicy.add_member(:share_decay_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "shareDecaySeconds"))
    FairsharePolicy.add_member(:compute_reservation, Shapes::ShapeRef.new(shape: Integer, location_name: "computeReservation"))
    FairsharePolicy.add_member(:share_distribution, Shapes::ShapeRef.new(shape: ShareAttributesList, location_name: "shareDistribution"))
    FairsharePolicy.struct_class = Types::FairsharePolicy

    FargatePlatformConfiguration.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    FargatePlatformConfiguration.struct_class = Types::FargatePlatformConfiguration

    FirelensConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: FirelensConfigurationType, required: true, location_name: "type"))
    FirelensConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: FirelensConfigurationOptionsMap, location_name: "options"))
    FirelensConfiguration.struct_class = Types::FirelensConfiguration

    FirelensConfigurationOptionsMap.key = Shapes::ShapeRef.new(shape: String)
    FirelensConfigurationOptionsMap.value = Shapes::ShapeRef.new(shape: String)

    FrontOfQueueDetail.add_member(:jobs, Shapes::ShapeRef.new(shape: FrontOfQueueJobSummaryList, location_name: "jobs"))
    FrontOfQueueDetail.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Long, location_name: "lastUpdatedAt"))
    FrontOfQueueDetail.struct_class = Types::FrontOfQueueDetail

    FrontOfQueueJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    FrontOfQueueJobSummary.add_member(:earliest_time_at_position, Shapes::ShapeRef.new(shape: Long, location_name: "earliestTimeAtPosition"))
    FrontOfQueueJobSummary.struct_class = Types::FrontOfQueueJobSummary

    FrontOfQueueJobSummaryList.member = Shapes::ShapeRef.new(shape: FrontOfQueueJobSummary)

    GetJobQueueSnapshotRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    GetJobQueueSnapshotRequest.struct_class = Types::GetJobQueueSnapshotRequest

    GetJobQueueSnapshotResponse.add_member(:front_of_queue, Shapes::ShapeRef.new(shape: FrontOfQueueDetail, location_name: "frontOfQueue"))
    GetJobQueueSnapshotResponse.struct_class = Types::GetJobQueueSnapshotResponse

    Host.add_member(:source_path, Shapes::ShapeRef.new(shape: String, location_name: "sourcePath"))
    Host.struct_class = Types::Host

    ImagePullSecret.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ImagePullSecret.struct_class = Types::ImagePullSecret

    ImagePullSecrets.member = Shapes::ShapeRef.new(shape: ImagePullSecret)

    JobDefinition.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    JobDefinition.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionArn"))
    JobDefinition.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "revision"))
    JobDefinition.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    JobDefinition.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    JobDefinition.add_member(:scheduling_priority, Shapes::ShapeRef.new(shape: Integer, location_name: "schedulingPriority"))
    JobDefinition.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    JobDefinition.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    JobDefinition.add_member(:container_properties, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "containerProperties"))
    JobDefinition.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    JobDefinition.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    JobDefinition.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    JobDefinition.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "propagateTags"))
    JobDefinition.add_member(:platform_capabilities, Shapes::ShapeRef.new(shape: PlatformCapabilityList, location_name: "platformCapabilities"))
    JobDefinition.add_member(:ecs_properties, Shapes::ShapeRef.new(shape: EcsProperties, location_name: "ecsProperties"))
    JobDefinition.add_member(:eks_properties, Shapes::ShapeRef.new(shape: EksProperties, location_name: "eksProperties"))
    JobDefinition.add_member(:container_orchestration_type, Shapes::ShapeRef.new(shape: OrchestrationType, location_name: "containerOrchestrationType"))
    JobDefinition.add_member(:consumable_resource_properties, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: "consumableResourceProperties"))
    JobDefinition.struct_class = Types::JobDefinition

    JobDefinitionList.member = Shapes::ShapeRef.new(shape: JobDefinition)

    JobDependency.add_member(:job_id, Shapes::ShapeRef.new(shape: String, location_name: "jobId"))
    JobDependency.add_member(:type, Shapes::ShapeRef.new(shape: ArrayJobDependency, location_name: "type"))
    JobDependency.struct_class = Types::JobDependency

    JobDependencyList.member = Shapes::ShapeRef.new(shape: JobDependency)

    JobDetail.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    JobDetail.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    JobDetail.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    JobDetail.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    JobDetail.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    JobDetail.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, location_name: "shareIdentifier"))
    JobDetail.add_member(:scheduling_priority, Shapes::ShapeRef.new(shape: Integer, location_name: "schedulingPriority"))
    JobDetail.add_member(:attempts, Shapes::ShapeRef.new(shape: AttemptDetails, location_name: "attempts"))
    JobDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    JobDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    JobDetail.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    JobDetail.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "startedAt"))
    JobDetail.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    JobDetail.add_member(:depends_on, Shapes::ShapeRef.new(shape: JobDependencyList, location_name: "dependsOn"))
    JobDetail.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinition"))
    JobDetail.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    JobDetail.add_member(:container, Shapes::ShapeRef.new(shape: ContainerDetail, location_name: "container"))
    JobDetail.add_member(:node_details, Shapes::ShapeRef.new(shape: NodeDetails, location_name: "nodeDetails"))
    JobDetail.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    JobDetail.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayPropertiesDetail, location_name: "arrayProperties"))
    JobDetail.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    JobDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    JobDetail.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "propagateTags"))
    JobDetail.add_member(:platform_capabilities, Shapes::ShapeRef.new(shape: PlatformCapabilityList, location_name: "platformCapabilities"))
    JobDetail.add_member(:eks_properties, Shapes::ShapeRef.new(shape: EksPropertiesDetail, location_name: "eksProperties"))
    JobDetail.add_member(:eks_attempts, Shapes::ShapeRef.new(shape: EksAttemptDetails, location_name: "eksAttempts"))
    JobDetail.add_member(:ecs_properties, Shapes::ShapeRef.new(shape: EcsPropertiesDetail, location_name: "ecsProperties"))
    JobDetail.add_member(:is_cancelled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCancelled"))
    JobDetail.add_member(:is_terminated, Shapes::ShapeRef.new(shape: Boolean, location_name: "isTerminated"))
    JobDetail.add_member(:consumable_resource_properties, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: "consumableResourceProperties"))
    JobDetail.struct_class = Types::JobDetail

    JobDetailList.member = Shapes::ShapeRef.new(shape: JobDetail)

    JobQueueDetail.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    JobQueueDetail.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueArn"))
    JobQueueDetail.add_member(:state, Shapes::ShapeRef.new(shape: JQState, required: true, location_name: "state"))
    JobQueueDetail.add_member(:scheduling_policy_arn, Shapes::ShapeRef.new(shape: String, location_name: "schedulingPolicyArn"))
    JobQueueDetail.add_member(:status, Shapes::ShapeRef.new(shape: JQStatus, location_name: "status"))
    JobQueueDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    JobQueueDetail.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "priority"))
    JobQueueDetail.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, required: true, location_name: "computeEnvironmentOrder"))
    JobQueueDetail.add_member(:service_environment_order, Shapes::ShapeRef.new(shape: ServiceEnvironmentOrders, location_name: "serviceEnvironmentOrder"))
    JobQueueDetail.add_member(:job_queue_type, Shapes::ShapeRef.new(shape: JobQueueType, location_name: "jobQueueType"))
    JobQueueDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    JobQueueDetail.add_member(:job_state_time_limit_actions, Shapes::ShapeRef.new(shape: JobStateTimeLimitActions, location_name: "jobStateTimeLimitActions"))
    JobQueueDetail.struct_class = Types::JobQueueDetail

    JobQueueDetailList.member = Shapes::ShapeRef.new(shape: JobQueueDetail)

    JobStateTimeLimitAction.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    JobStateTimeLimitAction.add_member(:state, Shapes::ShapeRef.new(shape: JobStateTimeLimitActionsState, required: true, location_name: "state"))
    JobStateTimeLimitAction.add_member(:max_time_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxTimeSeconds"))
    JobStateTimeLimitAction.add_member(:action, Shapes::ShapeRef.new(shape: JobStateTimeLimitActionsAction, required: true, location_name: "action"))
    JobStateTimeLimitAction.struct_class = Types::JobStateTimeLimitAction

    JobStateTimeLimitActions.member = Shapes::ShapeRef.new(shape: JobStateTimeLimitAction)

    JobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    JobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    JobSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    JobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    JobSummary.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    JobSummary.add_member(:container, Shapes::ShapeRef.new(shape: ContainerSummary, location_name: "container"))
    JobSummary.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayPropertiesSummary, location_name: "arrayProperties"))
    JobSummary.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodePropertiesSummary, location_name: "nodeProperties"))
    JobSummary.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, location_name: "jobDefinition"))
    JobSummary.struct_class = Types::JobSummary

    JobSummaryList.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobTimeout.add_member(:attempt_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "attemptDurationSeconds"))
    JobTimeout.struct_class = Types::JobTimeout

    KeyValuePair.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    KeyValuesPair.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KeyValuesPair.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "values"))
    KeyValuesPair.struct_class = Types::KeyValuesPair

    LatestServiceJobAttempt.add_member(:service_resource_id, Shapes::ShapeRef.new(shape: ServiceResourceId, location_name: "serviceResourceId"))
    LatestServiceJobAttempt.struct_class = Types::LatestServiceJobAttempt

    LaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: String, location_name: "launchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: String, location_name: "launchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    LaunchTemplateSpecification.add_member(:overrides, Shapes::ShapeRef.new(shape: LaunchTemplateSpecificationOverrideList, location_name: "overrides"))
    LaunchTemplateSpecification.add_member(:userdata_type, Shapes::ShapeRef.new(shape: UserdataType, location_name: "userdataType"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    LaunchTemplateSpecificationOverride.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: String, location_name: "launchTemplateId"))
    LaunchTemplateSpecificationOverride.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: String, location_name: "launchTemplateName"))
    LaunchTemplateSpecificationOverride.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    LaunchTemplateSpecificationOverride.add_member(:target_instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "targetInstanceTypes"))
    LaunchTemplateSpecificationOverride.add_member(:userdata_type, Shapes::ShapeRef.new(shape: UserdataType, location_name: "userdataType"))
    LaunchTemplateSpecificationOverride.struct_class = Types::LaunchTemplateSpecificationOverride

    LaunchTemplateSpecificationOverrideList.member = Shapes::ShapeRef.new(shape: LaunchTemplateSpecificationOverride)

    LinuxParameters.add_member(:devices, Shapes::ShapeRef.new(shape: DevicesList, location_name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, Shapes::ShapeRef.new(shape: Integer, location_name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, Shapes::ShapeRef.new(shape: TmpfsList, location_name: "tmpfs"))
    LinuxParameters.add_member(:max_swap, Shapes::ShapeRef.new(shape: Integer, location_name: "maxSwap"))
    LinuxParameters.add_member(:swappiness, Shapes::ShapeRef.new(shape: Integer, location_name: "swappiness"))
    LinuxParameters.struct_class = Types::LinuxParameters

    ListAttemptEcsTaskDetails.member = Shapes::ShapeRef.new(shape: AttemptEcsTaskDetails)

    ListAttemptTaskContainerDetails.member = Shapes::ShapeRef.new(shape: AttemptTaskContainerDetails)

    ListConsumableResourcesFilterList.member = Shapes::ShapeRef.new(shape: KeyValuesPair)

    ListConsumableResourcesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListConsumableResourcesFilterList, location_name: "filters"))
    ListConsumableResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListConsumableResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConsumableResourcesRequest.struct_class = Types::ListConsumableResourcesRequest

    ListConsumableResourcesResponse.add_member(:consumable_resources, Shapes::ShapeRef.new(shape: ConsumableResourceSummaryList, required: true, location_name: "consumableResources"))
    ListConsumableResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConsumableResourcesResponse.struct_class = Types::ListConsumableResourcesResponse

    ListEcsTaskDetails.member = Shapes::ShapeRef.new(shape: EcsTaskDetails)

    ListEcsTaskProperties.member = Shapes::ShapeRef.new(shape: EcsTaskProperties)

    ListJobsByConsumableResourceFilterList.member = Shapes::ShapeRef.new(shape: KeyValuesPair)

    ListJobsByConsumableResourceRequest.add_member(:consumable_resource, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResource"))
    ListJobsByConsumableResourceRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceFilterList, location_name: "filters"))
    ListJobsByConsumableResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListJobsByConsumableResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsByConsumableResourceRequest.struct_class = Types::ListJobsByConsumableResourceRequest

    ListJobsByConsumableResourceResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceSummaryList, required: true, location_name: "jobs"))
    ListJobsByConsumableResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsByConsumableResourceResponse.struct_class = Types::ListJobsByConsumableResourceResponse

    ListJobsByConsumableResourceSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobArn"))
    ListJobsByConsumableResourceSummary.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueArn"))
    ListJobsByConsumableResourceSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    ListJobsByConsumableResourceSummary.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobDefinitionArn"))
    ListJobsByConsumableResourceSummary.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, location_name: "shareIdentifier"))
    ListJobsByConsumableResourceSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobStatus"))
    ListJobsByConsumableResourceSummary.add_member(:quantity, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "quantity"))
    ListJobsByConsumableResourceSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ListJobsByConsumableResourceSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    ListJobsByConsumableResourceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "createdAt"))
    ListJobsByConsumableResourceSummary.add_member(:consumable_resource_properties, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, required: true, location_name: "consumableResourceProperties"))
    ListJobsByConsumableResourceSummary.struct_class = Types::ListJobsByConsumableResourceSummary

    ListJobsByConsumableResourceSummaryList.member = Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceSummary)

    ListJobsFilterList.member = Shapes::ShapeRef.new(shape: KeyValuesPair)

    ListJobsRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, location_name: "jobQueue"))
    ListJobsRequest.add_member(:array_job_id, Shapes::ShapeRef.new(shape: String, location_name: "arrayJobId"))
    ListJobsRequest.add_member(:multi_node_job_id, Shapes::ShapeRef.new(shape: String, location_name: "multiNodeJobId"))
    ListJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListJobsFilterList, location_name: "filters"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:job_summary_list, Shapes::ShapeRef.new(shape: JobSummaryList, required: true, location_name: "jobSummaryList"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListSchedulingPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListSchedulingPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSchedulingPoliciesRequest.struct_class = Types::ListSchedulingPoliciesRequest

    ListSchedulingPoliciesResponse.add_member(:scheduling_policies, Shapes::ShapeRef.new(shape: SchedulingPolicyListingDetailList, location_name: "schedulingPolicies"))
    ListSchedulingPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSchedulingPoliciesResponse.struct_class = Types::ListSchedulingPoliciesResponse

    ListServiceJobsRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, location_name: "jobQueue"))
    ListServiceJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: ServiceJobStatus, location_name: "jobStatus"))
    ListServiceJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListServiceJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServiceJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListJobsFilterList, location_name: "filters"))
    ListServiceJobsRequest.struct_class = Types::ListServiceJobsRequest

    ListServiceJobsResponse.add_member(:job_summary_list, Shapes::ShapeRef.new(shape: ServiceJobSummaryList, required: true, location_name: "jobSummaryList"))
    ListServiceJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServiceJobsResponse.struct_class = Types::ListServiceJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTaskContainerDetails.member = Shapes::ShapeRef.new(shape: TaskContainerDetails)

    ListTaskContainerOverrides.member = Shapes::ShapeRef.new(shape: TaskContainerOverrides)

    ListTaskContainerProperties.member = Shapes::ShapeRef.new(shape: TaskContainerProperties)

    ListTaskPropertiesOverride.member = Shapes::ShapeRef.new(shape: TaskPropertiesOverride)

    LogConfiguration.add_member(:log_driver, Shapes::ShapeRef.new(shape: LogDriver, required: true, location_name: "logDriver"))
    LogConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: LogConfigurationOptionsMap, location_name: "options"))
    LogConfiguration.add_member(:secret_options, Shapes::ShapeRef.new(shape: SecretList, location_name: "secretOptions"))
    LogConfiguration.struct_class = Types::LogConfiguration

    LogConfigurationOptionsMap.key = Shapes::ShapeRef.new(shape: String)
    LogConfigurationOptionsMap.value = Shapes::ShapeRef.new(shape: String)

    MountPoint.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    MountPoint.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "readOnly"))
    MountPoint.add_member(:source_volume, Shapes::ShapeRef.new(shape: String, location_name: "sourceVolume"))
    MountPoint.struct_class = Types::MountPoint

    MountPoints.member = Shapes::ShapeRef.new(shape: MountPoint)

    NetworkConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "assignPublicIp"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    NetworkInterface.add_member(:attachment_id, Shapes::ShapeRef.new(shape: String, location_name: "attachmentId"))
    NetworkInterface.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: String, location_name: "ipv6Address"))
    NetworkInterface.add_member(:private_ipv_4_address, Shapes::ShapeRef.new(shape: String, location_name: "privateIpv4Address"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaceList.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    NodeDetails.add_member(:node_index, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeIndex"))
    NodeDetails.add_member(:is_main_node, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMainNode"))
    NodeDetails.struct_class = Types::NodeDetails

    NodeOverrides.add_member(:num_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "numNodes"))
    NodeOverrides.add_member(:node_property_overrides, Shapes::ShapeRef.new(shape: NodePropertyOverrides, location_name: "nodePropertyOverrides"))
    NodeOverrides.struct_class = Types::NodeOverrides

    NodeProperties.add_member(:num_nodes, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "numNodes"))
    NodeProperties.add_member(:main_node, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "mainNode"))
    NodeProperties.add_member(:node_range_properties, Shapes::ShapeRef.new(shape: NodeRangeProperties, required: true, location_name: "nodeRangeProperties"))
    NodeProperties.struct_class = Types::NodeProperties

    NodePropertiesSummary.add_member(:is_main_node, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMainNode"))
    NodePropertiesSummary.add_member(:num_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "numNodes"))
    NodePropertiesSummary.add_member(:node_index, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeIndex"))
    NodePropertiesSummary.struct_class = Types::NodePropertiesSummary

    NodePropertyOverride.add_member(:target_nodes, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetNodes"))
    NodePropertyOverride.add_member(:container_overrides, Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: "containerOverrides"))
    NodePropertyOverride.add_member(:ecs_properties_override, Shapes::ShapeRef.new(shape: EcsPropertiesOverride, location_name: "ecsPropertiesOverride"))
    NodePropertyOverride.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    NodePropertyOverride.add_member(:eks_properties_override, Shapes::ShapeRef.new(shape: EksPropertiesOverride, location_name: "eksPropertiesOverride"))
    NodePropertyOverride.add_member(:consumable_resource_properties_override, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: "consumableResourcePropertiesOverride"))
    NodePropertyOverride.struct_class = Types::NodePropertyOverride

    NodePropertyOverrides.member = Shapes::ShapeRef.new(shape: NodePropertyOverride)

    NodeRangeProperties.member = Shapes::ShapeRef.new(shape: NodeRangeProperty)

    NodeRangeProperty.add_member(:target_nodes, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetNodes"))
    NodeRangeProperty.add_member(:container, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "container"))
    NodeRangeProperty.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    NodeRangeProperty.add_member(:ecs_properties, Shapes::ShapeRef.new(shape: EcsProperties, location_name: "ecsProperties"))
    NodeRangeProperty.add_member(:eks_properties, Shapes::ShapeRef.new(shape: EksProperties, location_name: "eksProperties"))
    NodeRangeProperty.add_member(:consumable_resource_properties, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: "consumableResourceProperties"))
    NodeRangeProperty.struct_class = Types::NodeRangeProperty

    ParametersMap.key = Shapes::ShapeRef.new(shape: String)
    ParametersMap.value = Shapes::ShapeRef.new(shape: String)

    PlatformCapabilityList.member = Shapes::ShapeRef.new(shape: PlatformCapability)

    RegisterJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    RegisterJobDefinitionRequest.add_member(:type, Shapes::ShapeRef.new(shape: JobDefinitionType, required: true, location_name: "type"))
    RegisterJobDefinitionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    RegisterJobDefinitionRequest.add_member(:scheduling_priority, Shapes::ShapeRef.new(shape: Integer, location_name: "schedulingPriority"))
    RegisterJobDefinitionRequest.add_member(:container_properties, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "containerProperties"))
    RegisterJobDefinitionRequest.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    RegisterJobDefinitionRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    RegisterJobDefinitionRequest.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "propagateTags"))
    RegisterJobDefinitionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    RegisterJobDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    RegisterJobDefinitionRequest.add_member(:platform_capabilities, Shapes::ShapeRef.new(shape: PlatformCapabilityList, location_name: "platformCapabilities"))
    RegisterJobDefinitionRequest.add_member(:eks_properties, Shapes::ShapeRef.new(shape: EksProperties, location_name: "eksProperties"))
    RegisterJobDefinitionRequest.add_member(:ecs_properties, Shapes::ShapeRef.new(shape: EcsProperties, location_name: "ecsProperties"))
    RegisterJobDefinitionRequest.add_member(:consumable_resource_properties, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: "consumableResourceProperties"))
    RegisterJobDefinitionRequest.struct_class = Types::RegisterJobDefinitionRequest

    RegisterJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    RegisterJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionArn"))
    RegisterJobDefinitionResponse.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "revision"))
    RegisterJobDefinitionResponse.struct_class = Types::RegisterJobDefinitionResponse

    RepositoryCredentials.add_member(:credentials_parameter, Shapes::ShapeRef.new(shape: String, required: true, location_name: "credentialsParameter"))
    RepositoryCredentials.struct_class = Types::RepositoryCredentials

    ResourceRequirement.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    ResourceRequirement.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "type"))
    ResourceRequirement.struct_class = Types::ResourceRequirement

    ResourceRequirements.member = Shapes::ShapeRef.new(shape: ResourceRequirement)

    RetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "attempts"))
    RetryStrategy.add_member(:evaluate_on_exit, Shapes::ShapeRef.new(shape: EvaluateOnExitList, location_name: "evaluateOnExit"))
    RetryStrategy.struct_class = Types::RetryStrategy

    RuntimePlatform.add_member(:operating_system_family, Shapes::ShapeRef.new(shape: String, location_name: "operatingSystemFamily"))
    RuntimePlatform.add_member(:cpu_architecture, Shapes::ShapeRef.new(shape: String, location_name: "cpuArchitecture"))
    RuntimePlatform.struct_class = Types::RuntimePlatform

    SchedulingPolicyDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SchedulingPolicyDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    SchedulingPolicyDetail.add_member(:fairshare_policy, Shapes::ShapeRef.new(shape: FairsharePolicy, location_name: "fairsharePolicy"))
    SchedulingPolicyDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    SchedulingPolicyDetail.struct_class = Types::SchedulingPolicyDetail

    SchedulingPolicyDetailList.member = Shapes::ShapeRef.new(shape: SchedulingPolicyDetail)

    SchedulingPolicyListingDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    SchedulingPolicyListingDetail.struct_class = Types::SchedulingPolicyListingDetail

    SchedulingPolicyListingDetailList.member = Shapes::ShapeRef.new(shape: SchedulingPolicyListingDetail)

    Secret.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Secret.add_member(:value_from, Shapes::ShapeRef.new(shape: String, required: true, location_name: "valueFrom"))
    Secret.struct_class = Types::Secret

    SecretList.member = Shapes::ShapeRef.new(shape: Secret)

    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    ServiceEnvironmentDetail.add_member(:service_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentName"))
    ServiceEnvironmentDetail.add_member(:service_environment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentArn"))
    ServiceEnvironmentDetail.add_member(:service_environment_type, Shapes::ShapeRef.new(shape: ServiceEnvironmentType, required: true, location_name: "serviceEnvironmentType"))
    ServiceEnvironmentDetail.add_member(:state, Shapes::ShapeRef.new(shape: ServiceEnvironmentState, location_name: "state"))
    ServiceEnvironmentDetail.add_member(:status, Shapes::ShapeRef.new(shape: ServiceEnvironmentStatus, location_name: "status"))
    ServiceEnvironmentDetail.add_member(:capacity_limits, Shapes::ShapeRef.new(shape: CapacityLimits, required: true, location_name: "capacityLimits"))
    ServiceEnvironmentDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    ServiceEnvironmentDetail.struct_class = Types::ServiceEnvironmentDetail

    ServiceEnvironmentDetailList.member = Shapes::ShapeRef.new(shape: ServiceEnvironmentDetail)

    ServiceEnvironmentOrder.add_member(:order, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "order"))
    ServiceEnvironmentOrder.add_member(:service_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironment"))
    ServiceEnvironmentOrder.struct_class = Types::ServiceEnvironmentOrder

    ServiceEnvironmentOrders.member = Shapes::ShapeRef.new(shape: ServiceEnvironmentOrder)

    ServiceJobAttemptDetail.add_member(:service_resource_id, Shapes::ShapeRef.new(shape: ServiceResourceId, location_name: "serviceResourceId"))
    ServiceJobAttemptDetail.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    ServiceJobAttemptDetail.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    ServiceJobAttemptDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ServiceJobAttemptDetail.struct_class = Types::ServiceJobAttemptDetail

    ServiceJobAttemptDetails.member = Shapes::ShapeRef.new(shape: ServiceJobAttemptDetail)

    ServiceJobEvaluateOnExit.add_member(:action, Shapes::ShapeRef.new(shape: ServiceJobRetryAction, location_name: "action"))
    ServiceJobEvaluateOnExit.add_member(:on_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "onStatusReason"))
    ServiceJobEvaluateOnExit.struct_class = Types::ServiceJobEvaluateOnExit

    ServiceJobEvaluateOnExitList.member = Shapes::ShapeRef.new(shape: ServiceJobEvaluateOnExit)

    ServiceJobRetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "attempts"))
    ServiceJobRetryStrategy.add_member(:evaluate_on_exit, Shapes::ShapeRef.new(shape: ServiceJobEvaluateOnExitList, location_name: "evaluateOnExit"))
    ServiceJobRetryStrategy.struct_class = Types::ServiceJobRetryStrategy

    ServiceJobSummary.add_member(:latest_attempt, Shapes::ShapeRef.new(shape: LatestServiceJobAttempt, location_name: "latestAttempt"))
    ServiceJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    ServiceJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    ServiceJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    ServiceJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    ServiceJobSummary.add_member(:service_job_type, Shapes::ShapeRef.new(shape: ServiceJobType, required: true, location_name: "serviceJobType"))
    ServiceJobSummary.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, location_name: "shareIdentifier"))
    ServiceJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServiceJobStatus, location_name: "status"))
    ServiceJobSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ServiceJobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    ServiceJobSummary.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    ServiceJobSummary.struct_class = Types::ServiceJobSummary

    ServiceJobSummaryList.member = Shapes::ShapeRef.new(shape: ServiceJobSummary)

    ServiceJobTimeout.add_member(:attempt_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "attemptDurationSeconds"))
    ServiceJobTimeout.struct_class = Types::ServiceJobTimeout

    ServiceResourceId.add_member(:name, Shapes::ShapeRef.new(shape: ServiceResourceIdName, required: true, location_name: "name"))
    ServiceResourceId.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    ServiceResourceId.struct_class = Types::ServiceResourceId

    ShareAttributes.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "shareIdentifier"))
    ShareAttributes.add_member(:weight_factor, Shapes::ShapeRef.new(shape: Float, location_name: "weightFactor"))
    ShareAttributes.struct_class = Types::ShareAttributes

    ShareAttributesList.member = Shapes::ShapeRef.new(shape: ShareAttributes)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubmitJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitJobRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    SubmitJobRequest.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, location_name: "shareIdentifier"))
    SubmitJobRequest.add_member(:scheduling_priority_override, Shapes::ShapeRef.new(shape: Integer, location_name: "schedulingPriorityOverride"))
    SubmitJobRequest.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayProperties, location_name: "arrayProperties"))
    SubmitJobRequest.add_member(:depends_on, Shapes::ShapeRef.new(shape: JobDependencyList, location_name: "dependsOn"))
    SubmitJobRequest.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinition"))
    SubmitJobRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    SubmitJobRequest.add_member(:container_overrides, Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: "containerOverrides"))
    SubmitJobRequest.add_member(:node_overrides, Shapes::ShapeRef.new(shape: NodeOverrides, location_name: "nodeOverrides"))
    SubmitJobRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    SubmitJobRequest.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "propagateTags"))
    SubmitJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    SubmitJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    SubmitJobRequest.add_member(:eks_properties_override, Shapes::ShapeRef.new(shape: EksPropertiesOverride, location_name: "eksPropertiesOverride"))
    SubmitJobRequest.add_member(:ecs_properties_override, Shapes::ShapeRef.new(shape: EcsPropertiesOverride, location_name: "ecsPropertiesOverride"))
    SubmitJobRequest.add_member(:consumable_resource_properties_override, Shapes::ShapeRef.new(shape: ConsumableResourceProperties, location_name: "consumableResourcePropertiesOverride"))
    SubmitJobRequest.struct_class = Types::SubmitJobRequest

    SubmitJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    SubmitJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    SubmitJobResponse.struct_class = Types::SubmitJobResponse

    SubmitServiceJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitServiceJobRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    SubmitServiceJobRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: ServiceJobRetryStrategy, location_name: "retryStrategy"))
    SubmitServiceJobRequest.add_member(:scheduling_priority, Shapes::ShapeRef.new(shape: Integer, location_name: "schedulingPriority"))
    SubmitServiceJobRequest.add_member(:service_request_payload, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceRequestPayload"))
    SubmitServiceJobRequest.add_member(:service_job_type, Shapes::ShapeRef.new(shape: ServiceJobType, required: true, location_name: "serviceJobType"))
    SubmitServiceJobRequest.add_member(:share_identifier, Shapes::ShapeRef.new(shape: String, location_name: "shareIdentifier"))
    SubmitServiceJobRequest.add_member(:timeout_config, Shapes::ShapeRef.new(shape: ServiceJobTimeout, location_name: "timeoutConfig"))
    SubmitServiceJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    SubmitServiceJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    SubmitServiceJobRequest.struct_class = Types::SubmitServiceJobRequest

    SubmitServiceJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    SubmitServiceJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitServiceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    SubmitServiceJobResponse.struct_class = Types::SubmitServiceJobResponse

    TagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagrisTagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagrisTagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    TaskContainerDependency.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    TaskContainerDependency.add_member(:condition, Shapes::ShapeRef.new(shape: String, location_name: "condition"))
    TaskContainerDependency.struct_class = Types::TaskContainerDependency

    TaskContainerDependencyList.member = Shapes::ShapeRef.new(shape: TaskContainerDependency)

    TaskContainerDetails.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    TaskContainerDetails.add_member(:depends_on, Shapes::ShapeRef.new(shape: TaskContainerDependencyList, location_name: "dependsOn"))
    TaskContainerDetails.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    TaskContainerDetails.add_member(:essential, Shapes::ShapeRef.new(shape: Boolean, location_name: "essential"))
    TaskContainerDetails.add_member(:firelens_configuration, Shapes::ShapeRef.new(shape: FirelensConfiguration, location_name: "firelensConfiguration"))
    TaskContainerDetails.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    TaskContainerDetails.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: LinuxParameters, location_name: "linuxParameters"))
    TaskContainerDetails.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    TaskContainerDetails.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPoints, location_name: "mountPoints"))
    TaskContainerDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TaskContainerDetails.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    TaskContainerDetails.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "readonlyRootFilesystem"))
    TaskContainerDetails.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: "repositoryCredentials"))
    TaskContainerDetails.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    TaskContainerDetails.add_member(:secrets, Shapes::ShapeRef.new(shape: SecretList, location_name: "secrets"))
    TaskContainerDetails.add_member(:ulimits, Shapes::ShapeRef.new(shape: Ulimits, location_name: "ulimits"))
    TaskContainerDetails.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    TaskContainerDetails.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    TaskContainerDetails.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    TaskContainerDetails.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "logStreamName"))
    TaskContainerDetails.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "networkInterfaces"))
    TaskContainerDetails.struct_class = Types::TaskContainerDetails

    TaskContainerOverrides.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    TaskContainerOverrides.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    TaskContainerOverrides.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TaskContainerOverrides.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    TaskContainerOverrides.struct_class = Types::TaskContainerOverrides

    TaskContainerProperties.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    TaskContainerProperties.add_member(:depends_on, Shapes::ShapeRef.new(shape: TaskContainerDependencyList, location_name: "dependsOn"))
    TaskContainerProperties.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    TaskContainerProperties.add_member(:essential, Shapes::ShapeRef.new(shape: Boolean, location_name: "essential"))
    TaskContainerProperties.add_member(:firelens_configuration, Shapes::ShapeRef.new(shape: FirelensConfiguration, location_name: "firelensConfiguration"))
    TaskContainerProperties.add_member(:image, Shapes::ShapeRef.new(shape: String, required: true, location_name: "image"))
    TaskContainerProperties.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: LinuxParameters, location_name: "linuxParameters"))
    TaskContainerProperties.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    TaskContainerProperties.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPoints, location_name: "mountPoints"))
    TaskContainerProperties.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TaskContainerProperties.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    TaskContainerProperties.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "readonlyRootFilesystem"))
    TaskContainerProperties.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: "repositoryCredentials"))
    TaskContainerProperties.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    TaskContainerProperties.add_member(:secrets, Shapes::ShapeRef.new(shape: SecretList, location_name: "secrets"))
    TaskContainerProperties.add_member(:ulimits, Shapes::ShapeRef.new(shape: Ulimits, location_name: "ulimits"))
    TaskContainerProperties.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    TaskContainerProperties.struct_class = Types::TaskContainerProperties

    TaskPropertiesOverride.add_member(:containers, Shapes::ShapeRef.new(shape: ListTaskContainerOverrides, location_name: "containers"))
    TaskPropertiesOverride.struct_class = Types::TaskPropertiesOverride

    TerminateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    TerminateJobRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    TerminateJobRequest.struct_class = Types::TerminateJobRequest

    TerminateJobResponse.struct_class = Types::TerminateJobResponse

    TerminateServiceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    TerminateServiceJobRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    TerminateServiceJobRequest.struct_class = Types::TerminateServiceJobRequest

    TerminateServiceJobResponse.struct_class = Types::TerminateServiceJobResponse

    Tmpfs.add_member(:container_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerPath"))
    Tmpfs.add_member(:size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "size"))
    Tmpfs.add_member(:mount_options, Shapes::ShapeRef.new(shape: StringList, location_name: "mountOptions"))
    Tmpfs.struct_class = Types::Tmpfs

    TmpfsList.member = Shapes::ShapeRef.new(shape: Tmpfs)

    Ulimit.add_member(:hard_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "hardLimit"))
    Ulimit.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Ulimit.add_member(:soft_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "softLimit"))
    Ulimit.struct_class = Types::Ulimit

    Ulimits.member = Shapes::ShapeRef.new(shape: Ulimit)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeysList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateComputeEnvironmentRequest.add_member(:compute_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironment"))
    UpdateComputeEnvironmentRequest.add_member(:state, Shapes::ShapeRef.new(shape: CEState, location_name: "state"))
    UpdateComputeEnvironmentRequest.add_member(:unmanagedv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "unmanagedvCpus"))
    UpdateComputeEnvironmentRequest.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResourceUpdate, location_name: "computeResources"))
    UpdateComputeEnvironmentRequest.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "serviceRole"))
    UpdateComputeEnvironmentRequest.add_member(:update_policy, Shapes::ShapeRef.new(shape: UpdatePolicy, location_name: "updatePolicy"))
    UpdateComputeEnvironmentRequest.add_member(:context, Shapes::ShapeRef.new(shape: String, location_name: "context"))
    UpdateComputeEnvironmentRequest.struct_class = Types::UpdateComputeEnvironmentRequest

    UpdateComputeEnvironmentResponse.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentName"))
    UpdateComputeEnvironmentResponse.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentArn"))
    UpdateComputeEnvironmentResponse.struct_class = Types::UpdateComputeEnvironmentResponse

    UpdateConsumableResourceRequest.add_member(:consumable_resource, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResource"))
    UpdateConsumableResourceRequest.add_member(:operation, Shapes::ShapeRef.new(shape: String, location_name: "operation"))
    UpdateConsumableResourceRequest.add_member(:quantity, Shapes::ShapeRef.new(shape: Long, location_name: "quantity"))
    UpdateConsumableResourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateConsumableResourceRequest.struct_class = Types::UpdateConsumableResourceRequest

    UpdateConsumableResourceResponse.add_member(:consumable_resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceName"))
    UpdateConsumableResourceResponse.add_member(:consumable_resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "consumableResourceArn"))
    UpdateConsumableResourceResponse.add_member(:total_quantity, Shapes::ShapeRef.new(shape: Long, location_name: "totalQuantity"))
    UpdateConsumableResourceResponse.struct_class = Types::UpdateConsumableResourceResponse

    UpdateJobQueueRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    UpdateJobQueueRequest.add_member(:state, Shapes::ShapeRef.new(shape: JQState, location_name: "state"))
    UpdateJobQueueRequest.add_member(:scheduling_policy_arn, Shapes::ShapeRef.new(shape: String, location_name: "schedulingPolicyArn"))
    UpdateJobQueueRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "priority"))
    UpdateJobQueueRequest.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, location_name: "computeEnvironmentOrder"))
    UpdateJobQueueRequest.add_member(:service_environment_order, Shapes::ShapeRef.new(shape: ServiceEnvironmentOrders, location_name: "serviceEnvironmentOrder"))
    UpdateJobQueueRequest.add_member(:job_state_time_limit_actions, Shapes::ShapeRef.new(shape: JobStateTimeLimitActions, location_name: "jobStateTimeLimitActions"))
    UpdateJobQueueRequest.struct_class = Types::UpdateJobQueueRequest

    UpdateJobQueueResponse.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, location_name: "jobQueueName"))
    UpdateJobQueueResponse.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobQueueArn"))
    UpdateJobQueueResponse.struct_class = Types::UpdateJobQueueResponse

    UpdatePolicy.add_member(:terminate_jobs_on_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "terminateJobsOnUpdate"))
    UpdatePolicy.add_member(:job_execution_timeout_minutes, Shapes::ShapeRef.new(shape: JobExecutionTimeoutMinutes, location_name: "jobExecutionTimeoutMinutes"))
    UpdatePolicy.struct_class = Types::UpdatePolicy

    UpdateSchedulingPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    UpdateSchedulingPolicyRequest.add_member(:fairshare_policy, Shapes::ShapeRef.new(shape: FairsharePolicy, location_name: "fairsharePolicy"))
    UpdateSchedulingPolicyRequest.struct_class = Types::UpdateSchedulingPolicyRequest

    UpdateSchedulingPolicyResponse.struct_class = Types::UpdateSchedulingPolicyResponse

    UpdateServiceEnvironmentRequest.add_member(:service_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironment"))
    UpdateServiceEnvironmentRequest.add_member(:state, Shapes::ShapeRef.new(shape: ServiceEnvironmentState, location_name: "state"))
    UpdateServiceEnvironmentRequest.add_member(:capacity_limits, Shapes::ShapeRef.new(shape: CapacityLimits, location_name: "capacityLimits"))
    UpdateServiceEnvironmentRequest.struct_class = Types::UpdateServiceEnvironmentRequest

    UpdateServiceEnvironmentResponse.add_member(:service_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentName"))
    UpdateServiceEnvironmentResponse.add_member(:service_environment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceEnvironmentArn"))
    UpdateServiceEnvironmentResponse.struct_class = Types::UpdateServiceEnvironmentResponse

    Volume.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "host"))
    Volume.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Volume.add_member(:efs_volume_configuration, Shapes::ShapeRef.new(shape: EFSVolumeConfiguration, location_name: "efsVolumeConfiguration"))
    Volume.struct_class = Types::Volume

    Volumes.member = Shapes::ShapeRef.new(shape: Volume)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-08-10"

      api.metadata = {
        "apiVersion" => "2016-08-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "batch",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "AWS Batch",
        "serviceFullName" => "AWS Batch",
        "serviceId" => "Batch",
        "signatureVersion" => "v4",
        "uid" => "batch-2016-08-10",
      }

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/canceljob"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:create_compute_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComputeEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/createcomputeenvironment"
        o.input = Shapes::ShapeRef.new(shape: CreateComputeEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComputeEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:create_consumable_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConsumableResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/createconsumableresource"
        o.input = Shapes::ShapeRef.new(shape: CreateConsumableResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConsumableResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:create_job_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJobQueue"
        o.http_method = "POST"
        o.http_request_uri = "/v1/createjobqueue"
        o.input = Shapes::ShapeRef.new(shape: CreateJobQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:create_scheduling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchedulingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v1/createschedulingpolicy"
        o.input = Shapes::ShapeRef.new(shape: CreateSchedulingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSchedulingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:create_service_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/createserviceenvironment"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_compute_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComputeEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deletecomputeenvironment"
        o.input = Shapes::ShapeRef.new(shape: DeleteComputeEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComputeEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_consumable_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConsumableResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deleteconsumableresource"
        o.input = Shapes::ShapeRef.new(shape: DeleteConsumableResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConsumableResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_job_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJobQueue"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deletejobqueue"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_scheduling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchedulingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deleteschedulingpolicy"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchedulingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSchedulingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_service_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deleteserviceenvironment"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:deregister_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deregisterjobdefinition"
        o.input = Shapes::ShapeRef.new(shape: DeregisterJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:describe_compute_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComputeEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describecomputeenvironments"
        o.input = Shapes::ShapeRef.new(shape: DescribeComputeEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComputeEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_consumable_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConsumableResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describeconsumableresource"
        o.input = Shapes::ShapeRef.new(shape: DescribeConsumableResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConsumableResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:describe_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describejobdefinitions"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_job_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobQueues"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describejobqueues"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describejobs"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:describe_scheduling_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchedulingPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describeschedulingpolicies"
        o.input = Shapes::ShapeRef.new(shape: DescribeSchedulingPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSchedulingPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:describe_service_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describeserviceenvironments"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_service_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describeservicejob"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:get_job_queue_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobQueueSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/v1/getjobqueuesnapshot"
        o.input = Shapes::ShapeRef.new(shape: GetJobQueueSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobQueueSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:list_consumable_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConsumableResources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/listconsumableresources"
        o.input = Shapes::ShapeRef.new(shape: ListConsumableResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConsumableResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/listjobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs_by_consumable_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobsByConsumableResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/listjobsbyconsumableresource"
        o.input = Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsByConsumableResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scheduling_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchedulingPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/v1/listschedulingpolicies"
        o.input = Shapes::ShapeRef.new(shape: ListSchedulingPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchedulingPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceJobs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/listservicejobs"
        o.input = Shapes::ShapeRef.new(shape: ListServiceJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:register_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/v1/registerjobdefinition"
        o.input = Shapes::ShapeRef.new(shape: RegisterJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:submit_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/submitjob"
        o.input = Shapes::ShapeRef.new(shape: SubmitJobRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:submit_service_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitServiceJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/submitservicejob"
        o.input = Shapes::ShapeRef.new(shape: SubmitServiceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitServiceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:terminate_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/terminatejob"
        o.input = Shapes::ShapeRef.new(shape: TerminateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:terminate_service_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateServiceJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/terminateservicejob"
        o.input = Shapes::ShapeRef.new(shape: TerminateServiceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateServiceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:update_compute_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComputeEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/updatecomputeenvironment"
        o.input = Shapes::ShapeRef.new(shape: UpdateComputeEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComputeEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:update_consumable_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConsumableResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/updateconsumableresource"
        o.input = Shapes::ShapeRef.new(shape: UpdateConsumableResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConsumableResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:update_job_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobQueue"
        o.http_method = "POST"
        o.http_request_uri = "/v1/updatejobqueue"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:update_scheduling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchedulingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v1/updateschedulingpolicy"
        o.input = Shapes::ShapeRef.new(shape: UpdateSchedulingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSchedulingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:update_service_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/updateserviceenvironment"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)
    end

  end
end
