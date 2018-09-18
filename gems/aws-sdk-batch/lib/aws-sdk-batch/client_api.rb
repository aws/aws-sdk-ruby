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
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
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
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MountPoint = Shapes::StructureShape.new(name: 'MountPoint')
    MountPoints = Shapes::ListShape.new(name: 'MountPoints')
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    RegisterJobDefinitionRequest = Shapes::StructureShape.new(name: 'RegisterJobDefinitionRequest')
    RegisterJobDefinitionResponse = Shapes::StructureShape.new(name: 'RegisterJobDefinitionResponse')
    RetryStrategy = Shapes::StructureShape.new(name: 'RetryStrategy')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubmitJobRequest = Shapes::StructureShape.new(name: 'SubmitJobRequest')
    SubmitJobResponse = Shapes::StructureShape.new(name: 'SubmitJobResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TerminateJobRequest = Shapes::StructureShape.new(name: 'TerminateJobRequest')
    TerminateJobResponse = Shapes::StructureShape.new(name: 'TerminateJobResponse')
    Ulimit = Shapes::StructureShape.new(name: 'Ulimit')
    Ulimits = Shapes::ListShape.new(name: 'Ulimits')
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

    ComputeEnvironmentDetail.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentName"))
    ComputeEnvironmentDetail.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentArn"))
    ComputeEnvironmentDetail.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ecsClusterArn"))
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
    ComputeResource.add_member(:minv_cpus, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "minvCpus"))
    ComputeResource.add_member(:maxv_cpus, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxvCpus"))
    ComputeResource.add_member(:desiredv_cpus, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredvCpus"))
    ComputeResource.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "instanceTypes"))
    ComputeResource.add_member(:image_id, Shapes::ShapeRef.new(shape: String, location_name: "imageId"))
    ComputeResource.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnets"))
    ComputeResource.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "securityGroupIds"))
    ComputeResource.add_member(:ec2_key_pair, Shapes::ShapeRef.new(shape: String, location_name: "ec2KeyPair"))
    ComputeResource.add_member(:instance_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "instanceRole"))
    ComputeResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ComputeResource.add_member(:bid_percentage, Shapes::ShapeRef.new(shape: Integer, location_name: "bidPercentage"))
    ComputeResource.add_member(:spot_iam_fleet_role, Shapes::ShapeRef.new(shape: String, location_name: "spotIamFleetRole"))
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
    ContainerDetail.struct_class = Types::ContainerDetail

    ContainerOverrides.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, location_name: "vcpus"))
    ContainerOverrides.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, location_name: "memory"))
    ContainerOverrides.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerOverrides.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerOverrides.struct_class = Types::ContainerOverrides

    ContainerProperties.add_member(:image, Shapes::ShapeRef.new(shape: String, required: true, location_name: "image"))
    ContainerProperties.add_member(:vcpus, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "vcpus"))
    ContainerProperties.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "memory"))
    ContainerProperties.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerProperties.add_member(:job_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "jobRoleArn"))
    ContainerProperties.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    ContainerProperties.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerProperties.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPoints, location_name: "mountPoints"))
    ContainerProperties.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "readonlyRootFilesystem"))
    ContainerProperties.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    ContainerProperties.add_member(:ulimits, Shapes::ShapeRef.new(shape: Ulimits, location_name: "ulimits"))
    ContainerProperties.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    ContainerProperties.struct_class = Types::ContainerProperties

    ContainerSummary.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    ContainerSummary.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ContainerSummary.struct_class = Types::ContainerSummary

    CreateComputeEnvironmentRequest.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "computeEnvironmentName"))
    CreateComputeEnvironmentRequest.add_member(:type, Shapes::ShapeRef.new(shape: CEType, required: true, location_name: "type"))
    CreateComputeEnvironmentRequest.add_member(:state, Shapes::ShapeRef.new(shape: CEState, location_name: "state"))
    CreateComputeEnvironmentRequest.add_member(:compute_resources, Shapes::ShapeRef.new(shape: ComputeResource, location_name: "computeResources"))
    CreateComputeEnvironmentRequest.add_member(:service_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceRole"))
    CreateComputeEnvironmentRequest.struct_class = Types::CreateComputeEnvironmentRequest

    CreateComputeEnvironmentResponse.add_member(:compute_environment_name, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentName"))
    CreateComputeEnvironmentResponse.add_member(:compute_environment_arn, Shapes::ShapeRef.new(shape: String, location_name: "computeEnvironmentArn"))
    CreateComputeEnvironmentResponse.struct_class = Types::CreateComputeEnvironmentResponse

    CreateJobQueueRequest.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    CreateJobQueueRequest.add_member(:state, Shapes::ShapeRef.new(shape: JQState, location_name: "state"))
    CreateJobQueueRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "priority"))
    CreateJobQueueRequest.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, required: true, location_name: "computeEnvironmentOrder"))
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

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: KeyValuePair)

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
    JobDefinition.struct_class = Types::JobDefinition

    JobDefinitionList.member = Shapes::ShapeRef.new(shape: JobDefinition)

    JobDependency.add_member(:job_id, Shapes::ShapeRef.new(shape: String, location_name: "jobId"))
    JobDependency.add_member(:type, Shapes::ShapeRef.new(shape: ArrayJobDependency, location_name: "type"))
    JobDependency.struct_class = Types::JobDependency

    JobDependencyList.member = Shapes::ShapeRef.new(shape: JobDependency)

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
    JobDetail.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayPropertiesDetail, location_name: "arrayProperties"))
    JobDetail.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    JobDetail.struct_class = Types::JobDetail

    JobDetailList.member = Shapes::ShapeRef.new(shape: JobDetail)

    JobQueueDetail.add_member(:job_queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueName"))
    JobQueueDetail.add_member(:job_queue_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueueArn"))
    JobQueueDetail.add_member(:state, Shapes::ShapeRef.new(shape: JQState, required: true, location_name: "state"))
    JobQueueDetail.add_member(:status, Shapes::ShapeRef.new(shape: JQStatus, location_name: "status"))
    JobQueueDetail.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    JobQueueDetail.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "priority"))
    JobQueueDetail.add_member(:compute_environment_order, Shapes::ShapeRef.new(shape: ComputeEnvironmentOrders, required: true, location_name: "computeEnvironmentOrder"))
    JobQueueDetail.struct_class = Types::JobQueueDetail

    JobQueueDetailList.member = Shapes::ShapeRef.new(shape: JobQueueDetail)

    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    JobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    JobSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    JobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Long, location_name: "startedAt"))
    JobSummary.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedAt"))
    JobSummary.add_member(:container, Shapes::ShapeRef.new(shape: ContainerSummary, location_name: "container"))
    JobSummary.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayPropertiesSummary, location_name: "arrayProperties"))
    JobSummary.struct_class = Types::JobSummary

    JobSummaryList.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobTimeout.add_member(:attempt_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "attemptDurationSeconds"))
    JobTimeout.struct_class = Types::JobTimeout

    KeyValuePair.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    ListJobsRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, location_name: "jobQueue"))
    ListJobsRequest.add_member(:array_job_id, Shapes::ShapeRef.new(shape: String, location_name: "arrayJobId"))
    ListJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:job_summary_list, Shapes::ShapeRef.new(shape: JobSummaryList, required: true, location_name: "jobSummaryList"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    MountPoint.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    MountPoint.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "readOnly"))
    MountPoint.add_member(:source_volume, Shapes::ShapeRef.new(shape: String, location_name: "sourceVolume"))
    MountPoint.struct_class = Types::MountPoint

    MountPoints.member = Shapes::ShapeRef.new(shape: MountPoint)

    ParametersMap.key = Shapes::ShapeRef.new(shape: String)
    ParametersMap.value = Shapes::ShapeRef.new(shape: String)

    RegisterJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    RegisterJobDefinitionRequest.add_member(:type, Shapes::ShapeRef.new(shape: JobDefinitionType, required: true, location_name: "type"))
    RegisterJobDefinitionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    RegisterJobDefinitionRequest.add_member(:container_properties, Shapes::ShapeRef.new(shape: ContainerProperties, location_name: "containerProperties"))
    RegisterJobDefinitionRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    RegisterJobDefinitionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    RegisterJobDefinitionRequest.struct_class = Types::RegisterJobDefinitionRequest

    RegisterJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionName"))
    RegisterJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinitionArn"))
    RegisterJobDefinitionResponse.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "revision"))
    RegisterJobDefinitionResponse.struct_class = Types::RegisterJobDefinitionResponse

    RetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "attempts"))
    RetryStrategy.struct_class = Types::RetryStrategy

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubmitJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitJobRequest.add_member(:job_queue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobQueue"))
    SubmitJobRequest.add_member(:array_properties, Shapes::ShapeRef.new(shape: ArrayProperties, location_name: "arrayProperties"))
    SubmitJobRequest.add_member(:depends_on, Shapes::ShapeRef.new(shape: JobDependencyList, location_name: "dependsOn"))
    SubmitJobRequest.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobDefinition"))
    SubmitJobRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "parameters"))
    SubmitJobRequest.add_member(:container_overrides, Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: "containerOverrides"))
    SubmitJobRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "retryStrategy"))
    SubmitJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "timeout"))
    SubmitJobRequest.struct_class = Types::SubmitJobRequest

    SubmitJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    SubmitJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    SubmitJobResponse.struct_class = Types::SubmitJobResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    TerminateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    TerminateJobRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    TerminateJobRequest.struct_class = Types::TerminateJobRequest

    TerminateJobResponse.struct_class = Types::TerminateJobResponse

    Ulimit.add_member(:hard_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "hardLimit"))
    Ulimit.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Ulimit.add_member(:soft_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "softLimit"))
    Ulimit.struct_class = Types::Ulimit

    Ulimits.member = Shapes::ShapeRef.new(shape: Ulimit)

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
      end)

      api.add_operation(:describe_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describejobdefinitions"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:describe_job_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobQueues"
        o.http_method = "POST"
        o.http_request_uri = "/v1/describejobqueues"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
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

      api.add_operation(:terminate_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/terminatejob"
        o.input = Shapes::ShapeRef.new(shape: TerminateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateJobResponse)
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
