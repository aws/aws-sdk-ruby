# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    AttemptContainerDetail = Shapes::StructureShape.new(name: 'AttemptContainerDetail')
    AttemptDetail = Shapes::StructureShape.new(name: 'AttemptDetail')
    AttemptDetails = Shapes::ListShape.new(name: 'AttemptDetails')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CEState = Shapes::StringShape.new(name: 'CEState')
    CEStatus = Shapes::StringShape.new(name: 'CEStatus')
    CEType = Shapes::StringShape.new(name: 'CEType')
    CRAllocationStrategy = Shapes::StringShape.new(name: 'CRAllocationStrategy')
    CRType = Shapes::StringShape.new(name: 'CRType')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResponse = Shapes::StructureShape.new(name: 'CancelJobResponse')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    ComputeEnvironmentDetail = Shapes::StructureShape.new(name: 'ComputeEnvironmentDetail')
    ComputeEnvironmentDetailList = Shapes::ListShape.new(name: 'ComputeEnvironmentDetailList')
    ComputeEnvironmentOrder = Shapes::StructureShape.new(name: 'ComputeEnvironmentOrder')
    ComputeEnvironmentOrders = Shapes::ListShape.new(name: 'ComputeEnvironmentOrders')
    ComputeResource = Shapes::StructureShape.new(name: 'ComputeResource')
    ComputeResourceUpdate = Shapes::StructureShape.new(name: 'ComputeResourceUpdate')
    ContainerDetail = Shapes::StructureShape.new(name: 'ContainerDetail')
    ContainerOverrides = Shapes::StructureShape.new(name: 'ContainerOverrides')
    ContainerProperties = Shapes::StructureShape.new(name: 'ContainerProperties')
    ContainerSummary = Shapes::StructureShape.new(name: 'ContainerSummary')
    CreateComputeEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateComputeEnvironmentRequest')
    CreateComputeEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateComputeEnvironmentResponse')
    CreateJobQueueRequest = Shapes::StructureShape.new(name: 'CreateJobQueueRequest')
    CreateJobQueueResponse = Shapes::StructureShape.new(name: 'CreateJobQueueResponse')
    DeleteComputeEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteComputeEnvironmentRequest')
    DeleteComputeEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteComputeEnvironmentResponse')
    DeleteJobQueueRequest = Shapes::StructureShape.new(name: 'DeleteJobQueueRequest')
    DeleteJobQueueResponse = Shapes::StructureShape.new(name: 'DeleteJobQueueResponse')
    DeregisterJobDefinitionRequest = Shapes::StructureShape.new(name: 'DeregisterJobDefinitionRequest')
    DeregisterJobDefinitionResponse = Shapes::StructureShape.new(name: 'DeregisterJobDefinitionResponse')
    DescribeComputeEnvironmentsRequest = Shapes::StructureShape.new(name: 'DescribeComputeEnvironmentsRequest')
    DescribeComputeEnvironmentsResponse = Shapes::StructureShape.new(name: 'DescribeComputeEnvironmentsResponse')
    DescribeJobDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeJobDefinitionsRequest')
    DescribeJobDefinitionsResponse = Shapes::StructureShape.new(name: 'DescribeJobDefinitionsResponse')
    DescribeJobQueuesRequest = Shapes::StructureShape.new(name: 'DescribeJobQueuesRequest')
    DescribeJobQueuesResponse = Shapes::StructureShape.new(name: 'DescribeJobQueuesResponse')
    DescribeJobsRequest = Shapes::StructureShape.new(name: 'DescribeJobsRequest')
    DescribeJobsResponse = Shapes::StructureShape.new(name: 'DescribeJobsResponse')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceCgroupPermission = Shapes::StringShape.new(name: 'DeviceCgroupPermission')
    DeviceCgroupPermissions = Shapes::ListShape.new(name: 'DeviceCgroupPermissions')
    DevicesList = Shapes::ListShape.new(name: 'DevicesList')
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
    EvaluateOnExit = Shapes::StructureShape.new(name: 'EvaluateOnExit')
    EvaluateOnExitList = Shapes::ListShape.new(name: 'EvaluateOnExitList')
    Host = Shapes::StructureShape.new(name: 'Host')
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
    JobQueueDetail = Shapes::StructureShape.new(name: 'JobQueueDetail')
    JobQueueDetailList = Shapes::ListShape.new(name: 'JobQueueDetailList')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobSummaryList = Shapes::ListShape.new(name: 'JobSummaryList')
    JobTimeout = Shapes::StructureShape.new(name: 'JobTimeout')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    LinuxParameters = Shapes::StructureShape.new(name: 'LinuxParameters')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogConfigurationOptionsMap = Shapes::MapShape.new(name: 'LogConfigurationOptionsMap')
    LogDriver = Shapes::StringShape.new(name: 'LogDriver')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MountPoint = Shapes::StructureShape.new(name: 'MountPoint')
    MountPoints = Shapes::ListShape.new(name: 'MountPoints')
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
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    RegisterJobDefinitionRequest = Shapes::StructureShape.new(name: 'RegisterJobDefinitionRequest')
    RegisterJobDefinitionResponse = Shapes::StructureShape.new(name: 'RegisterJobDefinitionResponse')
    ResourceRequirement = Shapes::StructureShape.new(name: 'ResourceRequirement')
    ResourceRequirements = Shapes::ListShape.new(name: 'ResourceRequirements')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAction = Shapes::StringShape.new(name: 'RetryAction')
    RetryStrategy = Shapes::StructureShape.new(name: 'RetryStrategy')
    Secret = Shapes::StructureShape.new(name: 'Secret')
    SecretList = Shapes::ListShape.new(name: 'SecretList')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubmitJobRequest = Shapes::StructureShape.new(name: 'SubmitJobRequest')
    SubmitJobResponse = Shapes::StructureShape.new(name: 'SubmitJobResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeysList = Shapes::ListShape.new(name: 'TagKeysList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagrisTagsMap = Shapes::MapShape.new(name: 'TagrisTagsMap')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TerminateJobRequest = Shapes::StructureShape.new(name: 'TerminateJobRequest')
    TerminateJobResponse = Shapes::StructureShape.new(name: 'TerminateJobResponse')
    Tmpfs = Shapes::StructureShape.new(name: 'Tmpfs')
    TmpfsList = Shapes::ListShape.new(name: 'TmpfsList')
    Ulimit = Shapes::StructureShape.new(name: 'Ulimit')
    Ulimits = Shapes::ListShape.new(name: 'Ulimits')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateComputeEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateComputeEnvironmentRequest')
    UpdateComputeEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateComputeEnvironmentResponse')
    UpdateJobQueueRequest = Shapes::StructureShape.new(name: 'UpdateJobQueueRequest')
    UpdateJobQueueResponse = Shapes::StructureShape.new(name: 'UpdateJobQueueResponse')
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
    AttemptDetail.struct_class = Types::AttemptDetail

    AttemptDetails.member = Shapes::ShapeRef.new(shape: AttemptDetail)

    CancelJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    CancelJobRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResponse.struct_class = Types::CancelJobResponse

    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientException.struct_class = Types::ClientException

    ComputeEnvironmentDetail.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentName"))
    ComputeEnvironmentDetail.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentArn"))
    ComputeEnvironmentDetail.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ecsClusterArn"))
    ComputeEnvironmentDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    ComputeEnvironmentDetail.add_member(:type, Shapes::ShapeRef.new(shape: CEType, location_name: "type"))
    ComputeEnvironmentDetail.add_member(:state, Shapes::ShapeRef.new(shape: CEState, location_name: "state"))
    ComputeEnvironmentDetail.add_member(:status, Shapes::ShapeRef.new(shape: CEStatus, location_name: "status"))
    ComputeEnvironmentDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ComputeEnvironmentDetail.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResource, location_name: "computeResources"))
    ComputeEnvironmentDetail.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "serviceRole"))
    ComputeEnvironmentDetail.struct_class = Types::ComputeEnvironmentDetail

    ComputeEnvironmentDetailList.member = Shapes::ShapeRef.new(shape: ComputeEnvironmentDetail)

    ComputeEnvironmentOrder.add_member(:order, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "order"))
    ComputeEnvironmentOrder.add_member(:compute_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironment"))
    ComputeEnvironmentOrder.struct_class = Types::ComputeEnvironmentOrder

    ComputeEnvironmentOrders.member = Shapes::ShapeRef.new(shape: ComputeEnvironmentOrder)

    ComputeResource.add_member(:type, Shapes::ShapeRef.new(shape: CRType, required: true, location_name: "type"))
    ComputeResource.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: CRAllocationStrategy, location_name: "allocationStrategy"))
    ComputeResource.add_member(:minv_cpus, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "minvCpus"))
    ComputeResource.add_member(:maxv_cpus, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxvCpus"))
    ComputeResource.add_member(:desiredv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredvCpus"))
    ComputeResource.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "instanceTypes"))
    ComputeResource.add_member(:image_id, Shapes::ShapeRef.new(shape: String, location_name: "imageId"))
    ComputeResource.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnets"))
    ComputeResource.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    ComputeResource.add_member(:ec2_key_pair, Shapes::ShapeRef.new(shape: String, location_name: "ec2KeyPair"))
    ComputeResource.add_member(:instance_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "instanceRole"))
    ComputeResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ComputeResource.add_member(:placement_group, Shapes::ShapeRef.new(shape: String, location_name: "placementGroup"))
    ComputeResource.add_member(:bid_percentage, Shapes::ShapeRef.new(shape: Integer, location_name: "bidPercentage"))
    ComputeResource.add_member(:spot_iam_fleet_role, Shapes::ShapeRef.new(shape: String, location_name: "spotIamFleetRole"))
    ComputeResource.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    ComputeResource.struct_class = Types::ComputeResource

    ComputeResourceUpdate.add_member(:minv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "minvCpus"))
    ComputeResourceUpdate.add_member(:maxv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "maxvCpus"))
    ComputeResourceUpdate.add_member(:desiredv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredvCpus"))
    ComputeResourceUpdate.struct_class = Types::ComputeResourceUpdate

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
    ContainerDetail.struct_class = Types::ContainerDetail

    ContainerOverrides.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, location_name: "vcpus"))
    ContainerOverrides.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, location_name: "memory"))
    ContainerOverrides.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerOverrides.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    ContainerOverrides.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerOverrides.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerOverrides.struct_class = Types::ContainerOverrides

    ContainerProperties.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerProperties.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, location_name: "vcpus"))
    ContainerProperties.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, location_name: "memory"))
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
    ContainerProperties.struct_class = Types::ContainerProperties

    ContainerSummary.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    ContainerSummary.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ContainerSummary.struct_class = Types::ContainerSummary

    CreateComputeEnvironmentRequest.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentName"))
    CreateComputeEnvironmentRequest.add_member(:type, Shapes::ShapeRef.new(shape: CEType, required: true, location_name: "type"))
    CreateComputeEnvironmentRequest.add_member(:state, Shapes::ShapeRef.new(shape: CEState, location_name: "state"))
    CreateComputeEnvironmentRequest.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResource, location_name: "computeResources"))
    CreateComputeEnvironmentRequest.add_member(:service_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceRole"))
    CreateComputeEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateComputeEnvironmentRequest.struct_class = Types::CreateComputeEnvironmentRequest

    CreateComputeEnvironmentResponse.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentName"))
    CreateComputeEnvironmentResponse.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentArn"))
    CreateComputeEnvironmentResponse.struct_class = Types::CreateComputeEnvironmentResponse

    CreateJobQueueRequest.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    CreateJobQueueRequest.add_member(:state, Shapes::ShapeRef.new(shape: JQState, location_name: "state"))
    CreateJobQueueRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "priority"))
    CreateJobQueueRequest.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, required: true, location_name: "computeEnvironmentOrder"))
    CreateJobQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    CreateJobQueueRequest.struct_class = Types::CreateJobQueueRequest

    CreateJobQueueResponse.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    CreateJobQueueResponse.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueArn"))
    CreateJobQueueResponse.struct_class = Types::CreateJobQueueResponse

    DeleteComputeEnvironmentRequest.add_member(:compute_environment, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironment"))
    DeleteComputeEnvironmentRequest.struct_class = Types::DeleteComputeEnvironmentRequest

    DeleteComputeEnvironmentResponse.struct_class = Types::DeleteComputeEnvironmentResponse

    DeleteJobQueueRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    DeleteJobQueueRequest.struct_class = Types::DeleteJobQueueRequest

    DeleteJobQueueResponse.struct_class = Types::DeleteJobQueueResponse

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

    Device.add_member(:host_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "hostPath"))
    Device.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    Device.add_member(:permissions, Shapes::ShapeRef.new(shape: DeviceCgroupPermissions, location_name: "permissions"))
    Device.struct_class = Types::Device

    DeviceCgroupPermissions.member = Shapes::ShapeRef.new(shape: DeviceCgroupPermission)

    DevicesList.member = Shapes::ShapeRef.new(shape: Device)

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    EvaluateOnExit.add_member(:on_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "onStatusReason"))
    EvaluateOnExit.add_member(:on_reason, Shapes::ShapeRef.new(shape: String, location_name: "onReason"))
    EvaluateOnExit.add_member(:on_exit_code, Shapes::ShapeRef.new(shape: String, location_name: "onExitCode"))
    EvaluateOnExit.add_member(:action, Shapes::ShapeRef.new(shape: RetryAction, required: true, location_name: "action"))
    EvaluateOnExit.struct_class = Types::EvaluateOnExit

    EvaluateOnExitList.member = Shapes::ShapeRef.new(shape: EvaluateOnExit)

    Host.add_member(:source_path, Shapes::ShapeRef.new(shape: String, location_name: "sourcePath"))
    Host.struct_class = Types::Host

    JobDefinition.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    JobDefinition.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionArn"))
    JobDefinition.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "revision"))
    JobDefinition.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    JobDefinition.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    JobDefinition.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    JobDefinition.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    JobDefinition.add_member(:container_properties, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "containerProperties"))
    JobDefinition.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    JobDefinition.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    JobDefinition.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
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
    JobDetail.struct_class = Types::JobDetail

    JobDetailList.member = Shapes::ShapeRef.new(shape: JobDetail)

    JobQueueDetail.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    JobQueueDetail.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueArn"))
    JobQueueDetail.add_member(:state, Shapes::ShapeRef.new(shape: JQState, required: true, location_name: "state"))
    JobQueueDetail.add_member(:status, Shapes::ShapeRef.new(shape: JQStatus, location_name: "status"))
    JobQueueDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    JobQueueDetail.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "priority"))
    JobQueueDetail.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, required: true, location_name: "computeEnvironmentOrder"))
    JobQueueDetail.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    JobQueueDetail.struct_class = Types::JobQueueDetail

    JobQueueDetailList.member = Shapes::ShapeRef.new(shape: JobQueueDetail)

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
    JobSummary.struct_class = Types::JobSummary

    JobSummaryList.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobTimeout.add_member(:attempt_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "attemptDurationSeconds"))
    JobTimeout.struct_class = Types::JobTimeout

    KeyValuePair.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    LaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: String, location_name: "launchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: String, location_name: "launchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    LinuxParameters.add_member(:devices, Shapes::ShapeRef.new(shape: DevicesList, location_name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, Shapes::ShapeRef.new(shape: Integer, location_name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, Shapes::ShapeRef.new(shape: TmpfsList, location_name: "tmpfs"))
    LinuxParameters.add_member(:max_swap, Shapes::ShapeRef.new(shape: Integer, location_name: "maxSwap"))
    LinuxParameters.add_member(:swappiness, Shapes::ShapeRef.new(shape: Integer, location_name: "swappiness"))
    LinuxParameters.struct_class = Types::LinuxParameters

    ListJobsRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, location_name: "jobQueue"))
    ListJobsRequest.add_member(:array_job_id, Shapes::ShapeRef.new(shape: String, location_name: "arrayJobId"))
    ListJobsRequest.add_member(:multi_node_job_id, Shapes::ShapeRef.new(shape: String, location_name: "multiNodeJobId"))
    ListJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:job_summary_list, Shapes::ShapeRef.new(shape: JobSummaryList, required: true, location_name: "jobSummaryList"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

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
    NodePropertyOverride.struct_class = Types::NodePropertyOverride

    NodePropertyOverrides.member = Shapes::ShapeRef.new(shape: NodePropertyOverride)

    NodeRangeProperties.member = Shapes::ShapeRef.new(shape: NodeRangeProperty)

    NodeRangeProperty.add_member(:target_nodes, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetNodes"))
    NodeRangeProperty.add_member(:container, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "container"))
    NodeRangeProperty.struct_class = Types::NodeRangeProperty

    ParametersMap.key = Shapes::ShapeRef.new(shape: String)
    ParametersMap.value = Shapes::ShapeRef.new(shape: String)

    RegisterJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    RegisterJobDefinitionRequest.add_member(:type, Shapes::ShapeRef.new(shape: JobDefinitionType, required: true, location_name: "type"))
    RegisterJobDefinitionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    RegisterJobDefinitionRequest.add_member(:container_properties, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "containerProperties"))
    RegisterJobDefinitionRequest.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    RegisterJobDefinitionRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    RegisterJobDefinitionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    RegisterJobDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    RegisterJobDefinitionRequest.struct_class = Types::RegisterJobDefinitionRequest

    RegisterJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    RegisterJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionArn"))
    RegisterJobDefinitionResponse.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "revision"))
    RegisterJobDefinitionResponse.struct_class = Types::RegisterJobDefinitionResponse

    ResourceRequirement.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    ResourceRequirement.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "type"))
    ResourceRequirement.struct_class = Types::ResourceRequirement

    ResourceRequirements.member = Shapes::ShapeRef.new(shape: ResourceRequirement)

    RetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "attempts"))
    RetryStrategy.add_member(:evaluate_on_exit, Shapes::ShapeRef.new(shape: EvaluateOnExitList, location_name: "evaluateOnExit"))
    RetryStrategy.struct_class = Types::RetryStrategy

    Secret.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Secret.add_member(:value_from, Shapes::ShapeRef.new(shape: String, required: true, location_name: "valueFrom"))
    Secret.struct_class = Types::Secret

    SecretList.member = Shapes::ShapeRef.new(shape: Secret)

    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubmitJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitJobRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    SubmitJobRequest.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayProperties, location_name: "arrayProperties"))
    SubmitJobRequest.add_member(:depends_on, Shapes::ShapeRef.new(shape: JobDependencyList, location_name: "dependsOn"))
    SubmitJobRequest.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinition"))
    SubmitJobRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    SubmitJobRequest.add_member(:container_overrides, Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: "containerOverrides"))
    SubmitJobRequest.add_member(:node_overrides, Shapes::ShapeRef.new(shape: NodeOverrides, location_name: "nodeOverrides"))
    SubmitJobRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    SubmitJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    SubmitJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, location_name: "tags"))
    SubmitJobRequest.struct_class = Types::SubmitJobRequest

    SubmitJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobArn"))
    SubmitJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    SubmitJobResponse.struct_class = Types::SubmitJobResponse

    TagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagrisTagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagrisTagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagrisTagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    TerminateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    TerminateJobRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    TerminateJobRequest.struct_class = Types::TerminateJobRequest

    TerminateJobResponse.struct_class = Types::TerminateJobResponse

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
    UpdateComputeEnvironmentRequest.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResourceUpdate, location_name: "computeResources"))
    UpdateComputeEnvironmentRequest.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "serviceRole"))
    UpdateComputeEnvironmentRequest.struct_class = Types::UpdateComputeEnvironmentRequest

    UpdateComputeEnvironmentResponse.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentName"))
    UpdateComputeEnvironmentResponse.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentArn"))
    UpdateComputeEnvironmentResponse.struct_class = Types::UpdateComputeEnvironmentResponse

    UpdateJobQueueRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    UpdateJobQueueRequest.add_member(:state, Shapes::ShapeRef.new(shape: JQState, location_name: "state"))
    UpdateJobQueueRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "priority"))
    UpdateJobQueueRequest.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, location_name: "computeEnvironmentOrder"))
    UpdateJobQueueRequest.struct_class = Types::UpdateJobQueueRequest

    UpdateJobQueueResponse.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, location_name: "jobQueueName"))
    UpdateJobQueueResponse.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobQueueArn"))
    UpdateJobQueueResponse.struct_class = Types::UpdateJobQueueResponse

    Volume.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "host"))
    Volume.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Volume.struct_class = Types::Volume

    Volumes.member = Shapes::ShapeRef.new(shape: Volume)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-08-10"

      api.metadata = {
        "apiVersion" => "2016-08-10",
        "endpointPrefix" => "batch",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
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

      api.add_operation(:create_job_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJobQueue"
        o.http_method = "POST"
        o.http_request_uri = "/v1/createjobqueue"
        o.input = Shapes::ShapeRef.new(shape: CreateJobQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobQueueResponse)
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

      api.add_operation(:delete_job_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJobQueue"
        o.http_method = "POST"
        o.http_request_uri = "/v1/deletejobqueue"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobQueueResponse)
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

      api.add_operation(:update_job_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobQueue"
        o.http_method = "POST"
        o.http_request_uri = "/v1/updatejobqueue"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)
    end

  end
end
