# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgentUpdateStatus = Shapes::StringShape.new(name: 'AgentUpdateStatus')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentDetails = Shapes::ListShape.new(name: 'AttachmentDetails')
    AttachmentStateChange = Shapes::StructureShape.new(name: 'AttachmentStateChange')
    AttachmentStateChanges = Shapes::ListShape.new(name: 'AttachmentStateChanges')
    Attachments = Shapes::ListShape.new(name: 'Attachments')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeLimitExceededException = Shapes::StructureShape.new(name: 'AttributeLimitExceededException')
    Attributes = Shapes::ListShape.new(name: 'Attributes')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    BlockedException = Shapes::StructureShape.new(name: 'BlockedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterContainsContainerInstancesException = Shapes::StructureShape.new(name: 'ClusterContainsContainerInstancesException')
    ClusterContainsServicesException = Shapes::StructureShape.new(name: 'ClusterContainsServicesException')
    ClusterContainsTasksException = Shapes::StructureShape.new(name: 'ClusterContainsTasksException')
    ClusterField = Shapes::StringShape.new(name: 'ClusterField')
    ClusterFieldList = Shapes::ListShape.new(name: 'ClusterFieldList')
    ClusterNotFoundException = Shapes::StructureShape.new(name: 'ClusterNotFoundException')
    Clusters = Shapes::ListShape.new(name: 'Clusters')
    Compatibility = Shapes::StringShape.new(name: 'Compatibility')
    CompatibilityList = Shapes::ListShape.new(name: 'CompatibilityList')
    Connectivity = Shapes::StringShape.new(name: 'Connectivity')
    Container = Shapes::StructureShape.new(name: 'Container')
    ContainerDefinition = Shapes::StructureShape.new(name: 'ContainerDefinition')
    ContainerDefinitions = Shapes::ListShape.new(name: 'ContainerDefinitions')
    ContainerInstance = Shapes::StructureShape.new(name: 'ContainerInstance')
    ContainerInstanceStatus = Shapes::StringShape.new(name: 'ContainerInstanceStatus')
    ContainerInstances = Shapes::ListShape.new(name: 'ContainerInstances')
    ContainerOverride = Shapes::StructureShape.new(name: 'ContainerOverride')
    ContainerOverrides = Shapes::ListShape.new(name: 'ContainerOverrides')
    ContainerStateChange = Shapes::StructureShape.new(name: 'ContainerStateChange')
    ContainerStateChanges = Shapes::ListShape.new(name: 'ContainerStateChanges')
    Containers = Shapes::ListShape.new(name: 'Containers')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    DeleteAttributesRequest = Shapes::StructureShape.new(name: 'DeleteAttributesRequest')
    DeleteAttributesResponse = Shapes::StructureShape.new(name: 'DeleteAttributesResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentConfiguration = Shapes::StructureShape.new(name: 'DeploymentConfiguration')
    Deployments = Shapes::ListShape.new(name: 'Deployments')
    DeregisterContainerInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterContainerInstanceRequest')
    DeregisterContainerInstanceResponse = Shapes::StructureShape.new(name: 'DeregisterContainerInstanceResponse')
    DeregisterTaskDefinitionRequest = Shapes::StructureShape.new(name: 'DeregisterTaskDefinitionRequest')
    DeregisterTaskDefinitionResponse = Shapes::StructureShape.new(name: 'DeregisterTaskDefinitionResponse')
    DescribeClustersRequest = Shapes::StructureShape.new(name: 'DescribeClustersRequest')
    DescribeClustersResponse = Shapes::StructureShape.new(name: 'DescribeClustersResponse')
    DescribeContainerInstancesRequest = Shapes::StructureShape.new(name: 'DescribeContainerInstancesRequest')
    DescribeContainerInstancesResponse = Shapes::StructureShape.new(name: 'DescribeContainerInstancesResponse')
    DescribeServicesRequest = Shapes::StructureShape.new(name: 'DescribeServicesRequest')
    DescribeServicesResponse = Shapes::StructureShape.new(name: 'DescribeServicesResponse')
    DescribeTaskDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeTaskDefinitionRequest')
    DescribeTaskDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeTaskDefinitionResponse')
    DescribeTasksRequest = Shapes::StructureShape.new(name: 'DescribeTasksRequest')
    DescribeTasksResponse = Shapes::StructureShape.new(name: 'DescribeTasksResponse')
    DesiredStatus = Shapes::StringShape.new(name: 'DesiredStatus')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceCgroupPermission = Shapes::StringShape.new(name: 'DeviceCgroupPermission')
    DeviceCgroupPermissions = Shapes::ListShape.new(name: 'DeviceCgroupPermissions')
    DevicesList = Shapes::ListShape.new(name: 'DevicesList')
    DiscoverPollEndpointRequest = Shapes::StructureShape.new(name: 'DiscoverPollEndpointRequest')
    DiscoverPollEndpointResponse = Shapes::StructureShape.new(name: 'DiscoverPollEndpointResponse')
    DockerLabelsMap = Shapes::MapShape.new(name: 'DockerLabelsMap')
    DockerVolumeConfiguration = Shapes::StructureShape.new(name: 'DockerVolumeConfiguration')
    Double = Shapes::FloatShape.new(name: 'Double')
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
    Failure = Shapes::StructureShape.new(name: 'Failure')
    Failures = Shapes::ListShape.new(name: 'Failures')
    HealthCheck = Shapes::StructureShape.new(name: 'HealthCheck')
    HealthStatus = Shapes::StringShape.new(name: 'HealthStatus')
    HostEntry = Shapes::StructureShape.new(name: 'HostEntry')
    HostEntryList = Shapes::ListShape.new(name: 'HostEntryList')
    HostVolumeProperties = Shapes::StructureShape.new(name: 'HostVolumeProperties')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    KernelCapabilities = Shapes::StructureShape.new(name: 'KernelCapabilities')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    LinuxParameters = Shapes::StructureShape.new(name: 'LinuxParameters')
    ListAttributesRequest = Shapes::StructureShape.new(name: 'ListAttributesRequest')
    ListAttributesResponse = Shapes::StructureShape.new(name: 'ListAttributesResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListContainerInstancesRequest = Shapes::StructureShape.new(name: 'ListContainerInstancesRequest')
    ListContainerInstancesResponse = Shapes::StructureShape.new(name: 'ListContainerInstancesResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    ListTaskDefinitionFamiliesRequest = Shapes::StructureShape.new(name: 'ListTaskDefinitionFamiliesRequest')
    ListTaskDefinitionFamiliesResponse = Shapes::StructureShape.new(name: 'ListTaskDefinitionFamiliesResponse')
    ListTaskDefinitionsRequest = Shapes::StructureShape.new(name: 'ListTaskDefinitionsRequest')
    ListTaskDefinitionsResponse = Shapes::StructureShape.new(name: 'ListTaskDefinitionsResponse')
    ListTasksRequest = Shapes::StructureShape.new(name: 'ListTasksRequest')
    ListTasksResponse = Shapes::StructureShape.new(name: 'ListTasksResponse')
    LoadBalancer = Shapes::StructureShape.new(name: 'LoadBalancer')
    LoadBalancers = Shapes::ListShape.new(name: 'LoadBalancers')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogConfigurationOptionsMap = Shapes::MapShape.new(name: 'LogConfigurationOptionsMap')
    LogDriver = Shapes::StringShape.new(name: 'LogDriver')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MissingVersionException = Shapes::StructureShape.new(name: 'MissingVersionException')
    MountPoint = Shapes::StructureShape.new(name: 'MountPoint')
    MountPointList = Shapes::ListShape.new(name: 'MountPointList')
    NetworkBinding = Shapes::StructureShape.new(name: 'NetworkBinding')
    NetworkBindings = Shapes::ListShape.new(name: 'NetworkBindings')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NetworkMode = Shapes::StringShape.new(name: 'NetworkMode')
    NoUpdateAvailableException = Shapes::StructureShape.new(name: 'NoUpdateAvailableException')
    PlacementConstraint = Shapes::StructureShape.new(name: 'PlacementConstraint')
    PlacementConstraintType = Shapes::StringShape.new(name: 'PlacementConstraintType')
    PlacementConstraints = Shapes::ListShape.new(name: 'PlacementConstraints')
    PlacementStrategies = Shapes::ListShape.new(name: 'PlacementStrategies')
    PlacementStrategy = Shapes::StructureShape.new(name: 'PlacementStrategy')
    PlacementStrategyType = Shapes::StringShape.new(name: 'PlacementStrategyType')
    PlatformTaskDefinitionIncompatibilityException = Shapes::StructureShape.new(name: 'PlatformTaskDefinitionIncompatibilityException')
    PlatformUnknownException = Shapes::StructureShape.new(name: 'PlatformUnknownException')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortMappingList = Shapes::ListShape.new(name: 'PortMappingList')
    PutAttributesRequest = Shapes::StructureShape.new(name: 'PutAttributesRequest')
    PutAttributesResponse = Shapes::StructureShape.new(name: 'PutAttributesResponse')
    RegisterContainerInstanceRequest = Shapes::StructureShape.new(name: 'RegisterContainerInstanceRequest')
    RegisterContainerInstanceResponse = Shapes::StructureShape.new(name: 'RegisterContainerInstanceResponse')
    RegisterTaskDefinitionRequest = Shapes::StructureShape.new(name: 'RegisterTaskDefinitionRequest')
    RegisterTaskDefinitionResponse = Shapes::StructureShape.new(name: 'RegisterTaskDefinitionResponse')
    RepositoryCredentials = Shapes::StructureShape.new(name: 'RepositoryCredentials')
    RequiresAttributes = Shapes::ListShape.new(name: 'RequiresAttributes')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    Resources = Shapes::ListShape.new(name: 'Resources')
    RunTaskRequest = Shapes::StructureShape.new(name: 'RunTaskRequest')
    RunTaskResponse = Shapes::StructureShape.new(name: 'RunTaskResponse')
    SchedulingStrategy = Shapes::StringShape.new(name: 'SchedulingStrategy')
    Scope = Shapes::StringShape.new(name: 'Scope')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceEvent = Shapes::StructureShape.new(name: 'ServiceEvent')
    ServiceEvents = Shapes::ListShape.new(name: 'ServiceEvents')
    ServiceNotActiveException = Shapes::StructureShape.new(name: 'ServiceNotActiveException')
    ServiceNotFoundException = Shapes::StructureShape.new(name: 'ServiceNotFoundException')
    ServiceRegistries = Shapes::ListShape.new(name: 'ServiceRegistries')
    ServiceRegistry = Shapes::StructureShape.new(name: 'ServiceRegistry')
    Services = Shapes::ListShape.new(name: 'Services')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartTaskRequest = Shapes::StructureShape.new(name: 'StartTaskRequest')
    StartTaskResponse = Shapes::StructureShape.new(name: 'StartTaskResponse')
    Statistics = Shapes::ListShape.new(name: 'Statistics')
    StopTaskRequest = Shapes::StructureShape.new(name: 'StopTaskRequest')
    StopTaskResponse = Shapes::StructureShape.new(name: 'StopTaskResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SubmitContainerStateChangeRequest = Shapes::StructureShape.new(name: 'SubmitContainerStateChangeRequest')
    SubmitContainerStateChangeResponse = Shapes::StructureShape.new(name: 'SubmitContainerStateChangeResponse')
    SubmitTaskStateChangeRequest = Shapes::StructureShape.new(name: 'SubmitTaskStateChangeRequest')
    SubmitTaskStateChangeResponse = Shapes::StructureShape.new(name: 'SubmitTaskStateChangeResponse')
    SystemControl = Shapes::StructureShape.new(name: 'SystemControl')
    SystemControls = Shapes::ListShape.new(name: 'SystemControls')
    TargetNotFoundException = Shapes::StructureShape.new(name: 'TargetNotFoundException')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskDefinition = Shapes::StructureShape.new(name: 'TaskDefinition')
    TaskDefinitionFamilyStatus = Shapes::StringShape.new(name: 'TaskDefinitionFamilyStatus')
    TaskDefinitionPlacementConstraint = Shapes::StructureShape.new(name: 'TaskDefinitionPlacementConstraint')
    TaskDefinitionPlacementConstraintType = Shapes::StringShape.new(name: 'TaskDefinitionPlacementConstraintType')
    TaskDefinitionPlacementConstraints = Shapes::ListShape.new(name: 'TaskDefinitionPlacementConstraints')
    TaskDefinitionStatus = Shapes::StringShape.new(name: 'TaskDefinitionStatus')
    TaskOverride = Shapes::StructureShape.new(name: 'TaskOverride')
    Tasks = Shapes::ListShape.new(name: 'Tasks')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Tmpfs = Shapes::StructureShape.new(name: 'Tmpfs')
    TmpfsList = Shapes::ListShape.new(name: 'TmpfsList')
    TransportProtocol = Shapes::StringShape.new(name: 'TransportProtocol')
    Ulimit = Shapes::StructureShape.new(name: 'Ulimit')
    UlimitList = Shapes::ListShape.new(name: 'UlimitList')
    UlimitName = Shapes::StringShape.new(name: 'UlimitName')
    UnsupportedFeatureException = Shapes::StructureShape.new(name: 'UnsupportedFeatureException')
    UpdateContainerAgentRequest = Shapes::StructureShape.new(name: 'UpdateContainerAgentRequest')
    UpdateContainerAgentResponse = Shapes::StructureShape.new(name: 'UpdateContainerAgentResponse')
    UpdateContainerInstancesStateRequest = Shapes::StructureShape.new(name: 'UpdateContainerInstancesStateRequest')
    UpdateContainerInstancesStateResponse = Shapes::StructureShape.new(name: 'UpdateContainerInstancesStateResponse')
    UpdateInProgressException = Shapes::StructureShape.new(name: 'UpdateInProgressException')
    UpdateServiceRequest = Shapes::StructureShape.new(name: 'UpdateServiceRequest')
    UpdateServiceResponse = Shapes::StructureShape.new(name: 'UpdateServiceResponse')
    VersionInfo = Shapes::StructureShape.new(name: 'VersionInfo')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    VolumeFrom = Shapes::StructureShape.new(name: 'VolumeFrom')
    VolumeFromList = Shapes::ListShape.new(name: 'VolumeFromList')
    VolumeList = Shapes::ListShape.new(name: 'VolumeList')

    Attachment.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Attachment.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Attachment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Attachment.add_member(:details, Shapes::ShapeRef.new(shape: AttachmentDetails, location_name: "details"))
    Attachment.struct_class = Types::Attachment

    AttachmentDetails.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    AttachmentStateChange.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "attachmentArn"))
    AttachmentStateChange.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    AttachmentStateChange.struct_class = Types::AttachmentStateChange

    AttachmentStateChanges.member = Shapes::ShapeRef.new(shape: AttachmentStateChange)

    Attachments.member = Shapes::ShapeRef.new(shape: Attachment)

    Attribute.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Attribute.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    Attribute.add_member(:target_id, Shapes::ShapeRef.new(shape: String, location_name: "targetId"))
    Attribute.struct_class = Types::Attribute

    Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

    AwsVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnets"))
    AwsVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "assignPublicIp"))
    AwsVpcConfiguration.struct_class = Types::AwsVpcConfiguration

    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    Cluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Cluster.add_member(:registered_container_instances_count, Shapes::ShapeRef.new(shape: Integer, location_name: "registeredContainerInstancesCount"))
    Cluster.add_member(:running_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningTasksCount"))
    Cluster.add_member(:pending_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingTasksCount"))
    Cluster.add_member(:active_services_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activeServicesCount"))
    Cluster.add_member(:statistics, Shapes::ShapeRef.new(shape: Statistics, location_name: "statistics"))
    Cluster.struct_class = Types::Cluster

    ClusterFieldList.member = Shapes::ShapeRef.new(shape: ClusterField)

    Clusters.member = Shapes::ShapeRef.new(shape: Cluster)

    CompatibilityList.member = Shapes::ShapeRef.new(shape: Compatibility)

    Container.add_member(:container_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerArn"))
    Container.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    Container.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Container.add_member(:last_status, Shapes::ShapeRef.new(shape: String, location_name: "lastStatus"))
    Container.add_member(:exit_code, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "exitCode"))
    Container.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    Container.add_member(:network_bindings, Shapes::ShapeRef.new(shape: NetworkBindings, location_name: "networkBindings"))
    Container.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    Container.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "healthStatus"))
    Container.struct_class = Types::Container

    ContainerDefinition.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerDefinition.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: "repositoryCredentials"))
    ContainerDefinition.add_member(:cpu, Shapes::ShapeRef.new(shape: Integer, location_name: "cpu"))
    ContainerDefinition.add_member(:memory, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memory"))
    ContainerDefinition.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memoryReservation"))
    ContainerDefinition.add_member(:links, Shapes::ShapeRef.new(shape: StringList, location_name: "links"))
    ContainerDefinition.add_member(:port_mappings, Shapes::ShapeRef.new(shape: PortMappingList, location_name: "portMappings"))
    ContainerDefinition.add_member(:essential, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "essential"))
    ContainerDefinition.add_member(:entry_point, Shapes::ShapeRef.new(shape: StringList, location_name: "entryPoint"))
    ContainerDefinition.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerDefinition.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPointList, location_name: "mountPoints"))
    ContainerDefinition.add_member(:volumes_from, Shapes::ShapeRef.new(shape: VolumeFromList, location_name: "volumesFrom"))
    ContainerDefinition.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: LinuxParameters, location_name: "linuxParameters"))
    ContainerDefinition.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    ContainerDefinition.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    ContainerDefinition.add_member(:working_directory, Shapes::ShapeRef.new(shape: String, location_name: "workingDirectory"))
    ContainerDefinition.add_member(:disable_networking, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "disableNetworking"))
    ContainerDefinition.add_member(:privileged, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "privileged"))
    ContainerDefinition.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "readonlyRootFilesystem"))
    ContainerDefinition.add_member(:dns_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dnsServers"))
    ContainerDefinition.add_member(:dns_search_domains, Shapes::ShapeRef.new(shape: StringList, location_name: "dnsSearchDomains"))
    ContainerDefinition.add_member(:extra_hosts, Shapes::ShapeRef.new(shape: HostEntryList, location_name: "extraHosts"))
    ContainerDefinition.add_member(:docker_security_options, Shapes::ShapeRef.new(shape: StringList, location_name: "dockerSecurityOptions"))
    ContainerDefinition.add_member(:interactive, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "interactive"))
    ContainerDefinition.add_member(:pseudo_terminal, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "pseudoTerminal"))
    ContainerDefinition.add_member(:docker_labels, Shapes::ShapeRef.new(shape: DockerLabelsMap, location_name: "dockerLabels"))
    ContainerDefinition.add_member(:ulimits, Shapes::ShapeRef.new(shape: UlimitList, location_name: "ulimits"))
    ContainerDefinition.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    ContainerDefinition.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, location_name: "healthCheck"))
    ContainerDefinition.add_member(:system_controls, Shapes::ShapeRef.new(shape: SystemControls, location_name: "systemControls"))
    ContainerDefinition.struct_class = Types::ContainerDefinition

    ContainerDefinitions.member = Shapes::ShapeRef.new(shape: ContainerDefinition)

    ContainerInstance.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    ContainerInstance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "ec2InstanceId"))
    ContainerInstance.add_member(:version, Shapes::ShapeRef.new(shape: Long, location_name: "version"))
    ContainerInstance.add_member(:version_info, Shapes::ShapeRef.new(shape: VersionInfo, location_name: "versionInfo"))
    ContainerInstance.add_member(:remaining_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "remainingResources"))
    ContainerInstance.add_member(:registered_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "registeredResources"))
    ContainerInstance.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    ContainerInstance.add_member(:agent_connected, Shapes::ShapeRef.new(shape: Boolean, location_name: "agentConnected"))
    ContainerInstance.add_member(:running_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningTasksCount"))
    ContainerInstance.add_member(:pending_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingTasksCount"))
    ContainerInstance.add_member(:agent_update_status, Shapes::ShapeRef.new(shape: AgentUpdateStatus, location_name: "agentUpdateStatus"))
    ContainerInstance.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ContainerInstance.add_member(:registered_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "registeredAt"))
    ContainerInstance.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    ContainerInstance.struct_class = Types::ContainerInstance

    ContainerInstances.member = Shapes::ShapeRef.new(shape: ContainerInstance)

    ContainerOverride.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContainerOverride.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerOverride.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerOverride.add_member(:cpu, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "cpu"))
    ContainerOverride.add_member(:memory, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memory"))
    ContainerOverride.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memoryReservation"))
    ContainerOverride.struct_class = Types::ContainerOverride

    ContainerOverrides.member = Shapes::ShapeRef.new(shape: ContainerOverride)

    ContainerStateChange.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ContainerStateChange.add_member(:exit_code, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "exitCode"))
    ContainerStateChange.add_member(:network_bindings, Shapes::ShapeRef.new(shape: NetworkBindings, location_name: "networkBindings"))
    ContainerStateChange.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ContainerStateChange.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    ContainerStateChange.struct_class = Types::ContainerStateChange

    ContainerStateChanges.member = Shapes::ShapeRef.new(shape: ContainerStateChange)

    Containers.member = Shapes::ShapeRef.new(shape: Container)

    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateServiceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    CreateServiceRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceName"))
    CreateServiceRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    CreateServiceRequest.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    CreateServiceRequest.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    CreateServiceRequest.add_member(:desired_count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "desiredCount"))
    CreateServiceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    CreateServiceRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    CreateServiceRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    CreateServiceRequest.add_member(:role, Shapes::ShapeRef.new(shape: String, location_name: "role"))
    CreateServiceRequest.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    CreateServiceRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    CreateServiceRequest.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    CreateServiceRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateServiceRequest.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    CreateServiceRequest.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: SchedulingStrategy, location_name: "schedulingStrategy"))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    DeleteAttributesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DeleteAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    DeleteAttributesRequest.struct_class = Types::DeleteAttributesRequest

    DeleteAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    DeleteAttributesResponse.struct_class = Types::DeleteAttributesResponse

    DeleteClusterRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteServiceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DeleteServiceRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    DeleteServiceRequest.add_member(:force, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "force"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    Deployment.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Deployment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Deployment.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    Deployment.add_member(:desired_count, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredCount"))
    Deployment.add_member(:pending_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingCount"))
    Deployment.add_member(:running_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningCount"))
    Deployment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Deployment.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Deployment.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    Deployment.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Deployment.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    Deployment.struct_class = Types::Deployment

    DeploymentConfiguration.add_member(:maximum_percent, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maximumPercent"))
    DeploymentConfiguration.add_member(:minimum_healthy_percent, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "minimumHealthyPercent"))
    DeploymentConfiguration.struct_class = Types::DeploymentConfiguration

    Deployments.member = Shapes::ShapeRef.new(shape: Deployment)

    DeregisterContainerInstanceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DeregisterContainerInstanceRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerInstance"))
    DeregisterContainerInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "force"))
    DeregisterContainerInstanceRequest.struct_class = Types::DeregisterContainerInstanceRequest

    DeregisterContainerInstanceResponse.add_member(:container_instance, Shapes::ShapeRef.new(shape: ContainerInstance, location_name: "containerInstance"))
    DeregisterContainerInstanceResponse.struct_class = Types::DeregisterContainerInstanceResponse

    DeregisterTaskDefinitionRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    DeregisterTaskDefinitionRequest.struct_class = Types::DeregisterTaskDefinitionRequest

    DeregisterTaskDefinitionResponse.add_member(:task_definition, Shapes::ShapeRef.new(shape: TaskDefinition, location_name: "taskDefinition"))
    DeregisterTaskDefinitionResponse.struct_class = Types::DeregisterTaskDefinitionResponse

    DescribeClustersRequest.add_member(:clusters, Shapes::ShapeRef.new(shape: StringList, location_name: "clusters"))
    DescribeClustersRequest.add_member(:include, Shapes::ShapeRef.new(shape: ClusterFieldList, location_name: "include"))
    DescribeClustersRequest.struct_class = Types::DescribeClustersRequest

    DescribeClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: Clusters, location_name: "clusters"))
    DescribeClustersResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeClustersResponse.struct_class = Types::DescribeClustersResponse

    DescribeContainerInstancesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DescribeContainerInstancesRequest.add_member(:container_instances, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "containerInstances"))
    DescribeContainerInstancesRequest.struct_class = Types::DescribeContainerInstancesRequest

    DescribeContainerInstancesResponse.add_member(:container_instances, Shapes::ShapeRef.new(shape: ContainerInstances, location_name: "containerInstances"))
    DescribeContainerInstancesResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeContainerInstancesResponse.struct_class = Types::DescribeContainerInstancesResponse

    DescribeServicesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DescribeServicesRequest.add_member(:services, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "services"))
    DescribeServicesRequest.struct_class = Types::DescribeServicesRequest

    DescribeServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: Services, location_name: "services"))
    DescribeServicesResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeServicesResponse.struct_class = Types::DescribeServicesResponse

    DescribeTaskDefinitionRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    DescribeTaskDefinitionRequest.struct_class = Types::DescribeTaskDefinitionRequest

    DescribeTaskDefinitionResponse.add_member(:task_definition, Shapes::ShapeRef.new(shape: TaskDefinition, location_name: "taskDefinition"))
    DescribeTaskDefinitionResponse.struct_class = Types::DescribeTaskDefinitionResponse

    DescribeTasksRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DescribeTasksRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "tasks"))
    DescribeTasksRequest.struct_class = Types::DescribeTasksRequest

    DescribeTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    DescribeTasksResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeTasksResponse.struct_class = Types::DescribeTasksResponse

    Device.add_member(:host_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "hostPath"))
    Device.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    Device.add_member(:permissions, Shapes::ShapeRef.new(shape: DeviceCgroupPermissions, location_name: "permissions"))
    Device.struct_class = Types::Device

    DeviceCgroupPermissions.member = Shapes::ShapeRef.new(shape: DeviceCgroupPermission)

    DevicesList.member = Shapes::ShapeRef.new(shape: Device)

    DiscoverPollEndpointRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, location_name: "containerInstance"))
    DiscoverPollEndpointRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DiscoverPollEndpointRequest.struct_class = Types::DiscoverPollEndpointRequest

    DiscoverPollEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DiscoverPollEndpointResponse.add_member(:telemetry_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "telemetryEndpoint"))
    DiscoverPollEndpointResponse.struct_class = Types::DiscoverPollEndpointResponse

    DockerLabelsMap.key = Shapes::ShapeRef.new(shape: String)
    DockerLabelsMap.value = Shapes::ShapeRef.new(shape: String)

    DockerVolumeConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    DockerVolumeConfiguration.add_member(:autoprovision, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "autoprovision"))
    DockerVolumeConfiguration.add_member(:driver, Shapes::ShapeRef.new(shape: String, location_name: "driver"))
    DockerVolumeConfiguration.add_member(:driver_opts, Shapes::ShapeRef.new(shape: StringMap, location_name: "driverOpts"))
    DockerVolumeConfiguration.add_member(:labels, Shapes::ShapeRef.new(shape: StringMap, location_name: "labels"))
    DockerVolumeConfiguration.struct_class = Types::DockerVolumeConfiguration

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    Failure.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Failure.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    Failure.struct_class = Types::Failure

    Failures.member = Shapes::ShapeRef.new(shape: Failure)

    HealthCheck.add_member(:command, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "command"))
    HealthCheck.add_member(:interval, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "interval"))
    HealthCheck.add_member(:timeout, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "timeout"))
    HealthCheck.add_member(:retries, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "retries"))
    HealthCheck.add_member(:start_period, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "startPeriod"))
    HealthCheck.struct_class = Types::HealthCheck

    HostEntry.add_member(:hostname, Shapes::ShapeRef.new(shape: String, required: true, location_name: "hostname"))
    HostEntry.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ipAddress"))
    HostEntry.struct_class = Types::HostEntry

    HostEntryList.member = Shapes::ShapeRef.new(shape: HostEntry)

    HostVolumeProperties.add_member(:source_path, Shapes::ShapeRef.new(shape: String, location_name: "sourcePath"))
    HostVolumeProperties.struct_class = Types::HostVolumeProperties

    KernelCapabilities.add_member(:add, Shapes::ShapeRef.new(shape: StringList, location_name: "add"))
    KernelCapabilities.add_member(:drop, Shapes::ShapeRef.new(shape: StringList, location_name: "drop"))
    KernelCapabilities.struct_class = Types::KernelCapabilities

    KeyValuePair.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    LinuxParameters.add_member(:capabilities, Shapes::ShapeRef.new(shape: KernelCapabilities, location_name: "capabilities"))
    LinuxParameters.add_member(:devices, Shapes::ShapeRef.new(shape: DevicesList, location_name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, Shapes::ShapeRef.new(shape: TmpfsList, location_name: "tmpfs"))
    LinuxParameters.struct_class = Types::LinuxParameters

    ListAttributesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListAttributesRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "targetType"))
    ListAttributesRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "attributeName"))
    ListAttributesRequest.add_member(:attribute_value, Shapes::ShapeRef.new(shape: String, location_name: "attributeValue"))
    ListAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListAttributesRequest.struct_class = Types::ListAttributesRequest

    ListAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ListAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAttributesResponse.struct_class = Types::ListAttributesResponse

    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:cluster_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "clusterArns"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListContainerInstancesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListContainerInstancesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: String, location_name: "filter"))
    ListContainerInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListContainerInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListContainerInstancesRequest.add_member(:status, Shapes::ShapeRef.new(shape: ContainerInstanceStatus, location_name: "status"))
    ListContainerInstancesRequest.struct_class = Types::ListContainerInstancesRequest

    ListContainerInstancesResponse.add_member(:container_instance_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "containerInstanceArns"))
    ListContainerInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListContainerInstancesResponse.struct_class = Types::ListContainerInstancesResponse

    ListServicesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListServicesRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    ListServicesRequest.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: SchedulingStrategy, location_name: "schedulingStrategy"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:service_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "serviceArns"))
    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    ListTaskDefinitionFamiliesRequest.add_member(:family_prefix, Shapes::ShapeRef.new(shape: String, location_name: "familyPrefix"))
    ListTaskDefinitionFamiliesRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskDefinitionFamilyStatus, location_name: "status"))
    ListTaskDefinitionFamiliesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionFamiliesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListTaskDefinitionFamiliesRequest.struct_class = Types::ListTaskDefinitionFamiliesRequest

    ListTaskDefinitionFamiliesResponse.add_member(:families, Shapes::ShapeRef.new(shape: StringList, location_name: "families"))
    ListTaskDefinitionFamiliesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionFamiliesResponse.struct_class = Types::ListTaskDefinitionFamiliesResponse

    ListTaskDefinitionsRequest.add_member(:family_prefix, Shapes::ShapeRef.new(shape: String, location_name: "familyPrefix"))
    ListTaskDefinitionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskDefinitionStatus, location_name: "status"))
    ListTaskDefinitionsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sort"))
    ListTaskDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListTaskDefinitionsRequest.struct_class = Types::ListTaskDefinitionsRequest

    ListTaskDefinitionsResponse.add_member(:task_definition_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "taskDefinitionArns"))
    ListTaskDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionsResponse.struct_class = Types::ListTaskDefinitionsResponse

    ListTasksRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListTasksRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, location_name: "containerInstance"))
    ListTasksRequest.add_member(:family, Shapes::ShapeRef.new(shape: String, location_name: "family"))
    ListTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListTasksRequest.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    ListTasksRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    ListTasksRequest.add_member(:desired_status, Shapes::ShapeRef.new(shape: DesiredStatus, location_name: "desiredStatus"))
    ListTasksRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    ListTasksRequest.struct_class = Types::ListTasksRequest

    ListTasksResponse.add_member(:task_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "taskArns"))
    ListTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTasksResponse.struct_class = Types::ListTasksResponse

    LoadBalancer.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetGroupArn"))
    LoadBalancer.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: String, location_name: "loadBalancerName"))
    LoadBalancer.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    LoadBalancer.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    LoadBalancer.struct_class = Types::LoadBalancer

    LoadBalancers.member = Shapes::ShapeRef.new(shape: LoadBalancer)

    LogConfiguration.add_member(:log_driver, Shapes::ShapeRef.new(shape: LogDriver, required: true, location_name: "logDriver"))
    LogConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: LogConfigurationOptionsMap, location_name: "options"))
    LogConfiguration.struct_class = Types::LogConfiguration

    LogConfigurationOptionsMap.key = Shapes::ShapeRef.new(shape: String)
    LogConfigurationOptionsMap.value = Shapes::ShapeRef.new(shape: String)

    MountPoint.add_member(:source_volume, Shapes::ShapeRef.new(shape: String, location_name: "sourceVolume"))
    MountPoint.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    MountPoint.add_member(:read_only, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "readOnly"))
    MountPoint.struct_class = Types::MountPoint

    MountPointList.member = Shapes::ShapeRef.new(shape: MountPoint)

    NetworkBinding.add_member(:bind_ip, Shapes::ShapeRef.new(shape: String, location_name: "bindIP"))
    NetworkBinding.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    NetworkBinding.add_member(:host_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "hostPort"))
    NetworkBinding.add_member(:protocol, Shapes::ShapeRef.new(shape: TransportProtocol, location_name: "protocol"))
    NetworkBinding.struct_class = Types::NetworkBinding

    NetworkBindings.member = Shapes::ShapeRef.new(shape: NetworkBinding)

    NetworkConfiguration.add_member(:awsvpc_configuration, Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    NetworkInterface.add_member(:attachment_id, Shapes::ShapeRef.new(shape: String, location_name: "attachmentId"))
    NetworkInterface.add_member(:private_ipv_4_address, Shapes::ShapeRef.new(shape: String, location_name: "privateIpv4Address"))
    NetworkInterface.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: String, location_name: "ipv6Address"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    PlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: "type"))
    PlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: String, location_name: "expression"))
    PlacementConstraint.struct_class = Types::PlacementConstraint

    PlacementConstraints.member = Shapes::ShapeRef.new(shape: PlacementConstraint)

    PlacementStrategies.member = Shapes::ShapeRef.new(shape: PlacementStrategy)

    PlacementStrategy.add_member(:type, Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: "type"))
    PlacementStrategy.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    PlacementStrategy.struct_class = Types::PlacementStrategy

    PortMapping.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    PortMapping.add_member(:host_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "hostPort"))
    PortMapping.add_member(:protocol, Shapes::ShapeRef.new(shape: TransportProtocol, location_name: "protocol"))
    PortMapping.struct_class = Types::PortMapping

    PortMappingList.member = Shapes::ShapeRef.new(shape: PortMapping)

    PutAttributesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    PutAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    PutAttributesRequest.struct_class = Types::PutAttributesRequest

    PutAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    PutAttributesResponse.struct_class = Types::PutAttributesResponse

    RegisterContainerInstanceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document, Shapes::ShapeRef.new(shape: String, location_name: "instanceIdentityDocument"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document_signature, Shapes::ShapeRef.new(shape: String, location_name: "instanceIdentityDocumentSignature"))
    RegisterContainerInstanceRequest.add_member(:total_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "totalResources"))
    RegisterContainerInstanceRequest.add_member(:version_info, Shapes::ShapeRef.new(shape: VersionInfo, location_name: "versionInfo"))
    RegisterContainerInstanceRequest.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    RegisterContainerInstanceRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    RegisterContainerInstanceRequest.struct_class = Types::RegisterContainerInstanceRequest

    RegisterContainerInstanceResponse.add_member(:container_instance, Shapes::ShapeRef.new(shape: ContainerInstance, location_name: "containerInstance"))
    RegisterContainerInstanceResponse.struct_class = Types::RegisterContainerInstanceResponse

    RegisterTaskDefinitionRequest.add_member(:family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "family"))
    RegisterTaskDefinitionRequest.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, location_name: "networkMode"))
    RegisterTaskDefinitionRequest.add_member(:container_definitions, Shapes::ShapeRef.new(shape: ContainerDefinitions, required: true, location_name: "containerDefinitions"))
    RegisterTaskDefinitionRequest.add_member(:volumes, Shapes::ShapeRef.new(shape: VolumeList, location_name: "volumes"))
    RegisterTaskDefinitionRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraints, location_name: "placementConstraints"))
    RegisterTaskDefinitionRequest.add_member(:requires_compatibilities, Shapes::ShapeRef.new(shape: CompatibilityList, location_name: "requiresCompatibilities"))
    RegisterTaskDefinitionRequest.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    RegisterTaskDefinitionRequest.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    RegisterTaskDefinitionRequest.struct_class = Types::RegisterTaskDefinitionRequest

    RegisterTaskDefinitionResponse.add_member(:task_definition, Shapes::ShapeRef.new(shape: TaskDefinition, location_name: "taskDefinition"))
    RegisterTaskDefinitionResponse.struct_class = Types::RegisterTaskDefinitionResponse

    RepositoryCredentials.add_member(:credentials_parameter, Shapes::ShapeRef.new(shape: String, required: true, location_name: "credentialsParameter"))
    RepositoryCredentials.struct_class = Types::RepositoryCredentials

    RequiresAttributes.member = Shapes::ShapeRef.new(shape: Attribute)

    Resource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Resource.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    Resource.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "longValue"))
    Resource.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "integerValue"))
    Resource.add_member(:string_set_value, Shapes::ShapeRef.new(shape: StringList, location_name: "stringSetValue"))
    Resource.struct_class = Types::Resource

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    RunTaskRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    RunTaskRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    RunTaskRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: TaskOverride, location_name: "overrides"))
    RunTaskRequest.add_member(:count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "count"))
    RunTaskRequest.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    RunTaskRequest.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    RunTaskRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    RunTaskRequest.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    RunTaskRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    RunTaskRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    RunTaskRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    RunTaskRequest.struct_class = Types::RunTaskRequest

    RunTaskResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    RunTaskResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    RunTaskResponse.struct_class = Types::RunTaskResponse

    Service.add_member(:service_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceArn"))
    Service.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    Service.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    Service.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    Service.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    Service.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Service.add_member(:desired_count, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredCount"))
    Service.add_member(:running_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningCount"))
    Service.add_member(:pending_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingCount"))
    Service.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    Service.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Service.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    Service.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    Service.add_member(:deployments, Shapes::ShapeRef.new(shape: Deployments, location_name: "deployments"))
    Service.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    Service.add_member(:events, Shapes::ShapeRef.new(shape: ServiceEvents, location_name: "events"))
    Service.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Service.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    Service.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    Service.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    Service.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    Service.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: SchedulingStrategy, location_name: "schedulingStrategy"))
    Service.struct_class = Types::Service

    ServiceEvent.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    ServiceEvent.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceEvent.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceEvent.struct_class = Types::ServiceEvent

    ServiceEvents.member = Shapes::ShapeRef.new(shape: ServiceEvent)

    ServiceRegistries.member = Shapes::ShapeRef.new(shape: ServiceRegistry)

    ServiceRegistry.add_member(:registry_arn, Shapes::ShapeRef.new(shape: String, location_name: "registryArn"))
    ServiceRegistry.add_member(:port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "port"))
    ServiceRegistry.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ServiceRegistry.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    ServiceRegistry.struct_class = Types::ServiceRegistry

    Services.member = Shapes::ShapeRef.new(shape: Service)

    StartTaskRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    StartTaskRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    StartTaskRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: TaskOverride, location_name: "overrides"))
    StartTaskRequest.add_member(:container_instances, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "containerInstances"))
    StartTaskRequest.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    StartTaskRequest.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    StartTaskRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    StartTaskRequest.struct_class = Types::StartTaskRequest

    StartTaskResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    StartTaskResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    StartTaskResponse.struct_class = Types::StartTaskResponse

    Statistics.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    StopTaskRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    StopTaskRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, required: true, location_name: "task"))
    StopTaskRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    StopTaskRequest.struct_class = Types::StopTaskRequest

    StopTaskResponse.add_member(:task, Shapes::ShapeRef.new(shape: Task, location_name: "task"))
    StopTaskResponse.struct_class = Types::StopTaskResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    SubmitContainerStateChangeRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    SubmitContainerStateChangeRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "task"))
    SubmitContainerStateChangeRequest.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    SubmitContainerStateChangeRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    SubmitContainerStateChangeRequest.add_member(:exit_code, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "exitCode"))
    SubmitContainerStateChangeRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    SubmitContainerStateChangeRequest.add_member(:network_bindings, Shapes::ShapeRef.new(shape: NetworkBindings, location_name: "networkBindings"))
    SubmitContainerStateChangeRequest.struct_class = Types::SubmitContainerStateChangeRequest

    SubmitContainerStateChangeResponse.add_member(:acknowledgment, Shapes::ShapeRef.new(shape: String, location_name: "acknowledgment"))
    SubmitContainerStateChangeResponse.struct_class = Types::SubmitContainerStateChangeResponse

    SubmitTaskStateChangeRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    SubmitTaskStateChangeRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "task"))
    SubmitTaskStateChangeRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    SubmitTaskStateChangeRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    SubmitTaskStateChangeRequest.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerStateChanges, location_name: "containers"))
    SubmitTaskStateChangeRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentStateChanges, location_name: "attachments"))
    SubmitTaskStateChangeRequest.add_member(:pull_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStartedAt"))
    SubmitTaskStateChangeRequest.add_member(:pull_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStoppedAt"))
    SubmitTaskStateChangeRequest.add_member(:execution_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "executionStoppedAt"))
    SubmitTaskStateChangeRequest.struct_class = Types::SubmitTaskStateChangeRequest

    SubmitTaskStateChangeResponse.add_member(:acknowledgment, Shapes::ShapeRef.new(shape: String, location_name: "acknowledgment"))
    SubmitTaskStateChangeResponse.struct_class = Types::SubmitTaskStateChangeResponse

    SystemControl.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    SystemControl.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    SystemControl.struct_class = Types::SystemControl

    SystemControls.member = Shapes::ShapeRef.new(shape: SystemControl)

    Task.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    Task.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    Task.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinitionArn"))
    Task.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    Task.add_member(:overrides, Shapes::ShapeRef.new(shape: TaskOverride, location_name: "overrides"))
    Task.add_member(:last_status, Shapes::ShapeRef.new(shape: String, location_name: "lastStatus"))
    Task.add_member(:desired_status, Shapes::ShapeRef.new(shape: String, location_name: "desiredStatus"))
    Task.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    Task.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    Task.add_member(:containers, Shapes::ShapeRef.new(shape: Containers, location_name: "containers"))
    Task.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    Task.add_member(:version, Shapes::ShapeRef.new(shape: Long, location_name: "version"))
    Task.add_member(:stopped_reason, Shapes::ShapeRef.new(shape: String, location_name: "stoppedReason"))
    Task.add_member(:connectivity, Shapes::ShapeRef.new(shape: Connectivity, location_name: "connectivity"))
    Task.add_member(:connectivity_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "connectivityAt"))
    Task.add_member(:pull_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStartedAt"))
    Task.add_member(:pull_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStoppedAt"))
    Task.add_member(:execution_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "executionStoppedAt"))
    Task.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Task.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    Task.add_member(:stopping_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppingAt"))
    Task.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppedAt"))
    Task.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    Task.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    Task.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Task.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    Task.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "healthStatus"))
    Task.struct_class = Types::Task

    TaskDefinition.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinitionArn"))
    TaskDefinition.add_member(:container_definitions, Shapes::ShapeRef.new(shape: ContainerDefinitions, location_name: "containerDefinitions"))
    TaskDefinition.add_member(:family, Shapes::ShapeRef.new(shape: String, location_name: "family"))
    TaskDefinition.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    TaskDefinition.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    TaskDefinition.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, location_name: "networkMode"))
    TaskDefinition.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, location_name: "revision"))
    TaskDefinition.add_member(:volumes, Shapes::ShapeRef.new(shape: VolumeList, location_name: "volumes"))
    TaskDefinition.add_member(:status, Shapes::ShapeRef.new(shape: TaskDefinitionStatus, location_name: "status"))
    TaskDefinition.add_member(:requires_attributes, Shapes::ShapeRef.new(shape: RequiresAttributes, location_name: "requiresAttributes"))
    TaskDefinition.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraints, location_name: "placementConstraints"))
    TaskDefinition.add_member(:compatibilities, Shapes::ShapeRef.new(shape: CompatibilityList, location_name: "compatibilities"))
    TaskDefinition.add_member(:requires_compatibilities, Shapes::ShapeRef.new(shape: CompatibilityList, location_name: "requiresCompatibilities"))
    TaskDefinition.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    TaskDefinition.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    TaskDefinition.struct_class = Types::TaskDefinition

    TaskDefinitionPlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraintType, location_name: "type"))
    TaskDefinitionPlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: String, location_name: "expression"))
    TaskDefinitionPlacementConstraint.struct_class = Types::TaskDefinitionPlacementConstraint

    TaskDefinitionPlacementConstraints.member = Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraint)

    TaskOverride.add_member(:container_overrides, Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: "containerOverrides"))
    TaskOverride.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    TaskOverride.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    TaskOverride.struct_class = Types::TaskOverride

    Tasks.member = Shapes::ShapeRef.new(shape: Task)

    Tmpfs.add_member(:container_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerPath"))
    Tmpfs.add_member(:size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "size"))
    Tmpfs.add_member(:mount_options, Shapes::ShapeRef.new(shape: StringList, location_name: "mountOptions"))
    Tmpfs.struct_class = Types::Tmpfs

    TmpfsList.member = Shapes::ShapeRef.new(shape: Tmpfs)

    Ulimit.add_member(:name, Shapes::ShapeRef.new(shape: UlimitName, required: true, location_name: "name"))
    Ulimit.add_member(:soft_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "softLimit"))
    Ulimit.add_member(:hard_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "hardLimit"))
    Ulimit.struct_class = Types::Ulimit

    UlimitList.member = Shapes::ShapeRef.new(shape: Ulimit)

    UpdateContainerAgentRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    UpdateContainerAgentRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerInstance"))
    UpdateContainerAgentRequest.struct_class = Types::UpdateContainerAgentRequest

    UpdateContainerAgentResponse.add_member(:container_instance, Shapes::ShapeRef.new(shape: ContainerInstance, location_name: "containerInstance"))
    UpdateContainerAgentResponse.struct_class = Types::UpdateContainerAgentResponse

    UpdateContainerInstancesStateRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    UpdateContainerInstancesStateRequest.add_member(:container_instances, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "containerInstances"))
    UpdateContainerInstancesStateRequest.add_member(:status, Shapes::ShapeRef.new(shape: ContainerInstanceStatus, required: true, location_name: "status"))
    UpdateContainerInstancesStateRequest.struct_class = Types::UpdateContainerInstancesStateRequest

    UpdateContainerInstancesStateResponse.add_member(:container_instances, Shapes::ShapeRef.new(shape: ContainerInstances, location_name: "containerInstances"))
    UpdateContainerInstancesStateResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    UpdateContainerInstancesStateResponse.struct_class = Types::UpdateContainerInstancesStateResponse

    UpdateServiceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    UpdateServiceRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    UpdateServiceRequest.add_member(:desired_count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "desiredCount"))
    UpdateServiceRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    UpdateServiceRequest.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateServiceRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    UpdateServiceRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    UpdateServiceRequest.add_member(:force_new_deployment, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceNewDeployment"))
    UpdateServiceRequest.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    UpdateServiceRequest.struct_class = Types::UpdateServiceRequest

    UpdateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    UpdateServiceResponse.struct_class = Types::UpdateServiceResponse

    VersionInfo.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "agentVersion"))
    VersionInfo.add_member(:agent_hash, Shapes::ShapeRef.new(shape: String, location_name: "agentHash"))
    VersionInfo.add_member(:docker_version, Shapes::ShapeRef.new(shape: String, location_name: "dockerVersion"))
    VersionInfo.struct_class = Types::VersionInfo

    Volume.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Volume.add_member(:host, Shapes::ShapeRef.new(shape: HostVolumeProperties, location_name: "host"))
    Volume.add_member(:docker_volume_configuration, Shapes::ShapeRef.new(shape: DockerVolumeConfiguration, location_name: "dockerVolumeConfiguration"))
    Volume.struct_class = Types::Volume

    VolumeFrom.add_member(:source_container, Shapes::ShapeRef.new(shape: String, location_name: "sourceContainer"))
    VolumeFrom.add_member(:read_only, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "readOnly"))
    VolumeFrom.struct_class = Types::VolumeFrom

    VolumeFromList.member = Shapes::ShapeRef.new(shape: VolumeFrom)

    VolumeList.member = Shapes::ShapeRef.new(shape: Volume)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-13"

      api.metadata = {
        "apiVersion" => "2014-11-13",
        "endpointPrefix" => "ecs",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon ECS",
        "serviceFullName" => "Amazon EC2 Container Service",
        "serviceId" => "ECS",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonEC2ContainerServiceV20141113",
        "uid" => "ecs-2014-11-13",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterContainsContainerInstancesException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterContainsServicesException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterContainsTasksException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
      end)

      api.add_operation(:deregister_container_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterContainerInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterContainerInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterContainerInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:deregister_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_container_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContainerInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContainerInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContainerInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:describe_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:describe_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:discover_poll_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DiscoverPollEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DiscoverPollEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DiscoverPollEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
      end)

      api.add_operation(:list_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_container_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContainerInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContainerInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContainerInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_task_definition_families, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskDefinitionFamilies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTaskDefinitionFamiliesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskDefinitionFamiliesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_task_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTaskDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AttributeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:register_container_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterContainerInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterContainerInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterContainerInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:register_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:run_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RunTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: RunTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BlockedException)
      end)

      api.add_operation(:start_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:stop_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:submit_container_state_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitContainerStateChange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitContainerStateChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitContainerStateChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:submit_task_state_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitTaskStateChange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitTaskStateChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitTaskStateChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_container_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContainerAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContainerAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContainerAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: NoUpdateAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingVersionException)
      end)

      api.add_operation(:update_container_instances_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContainerInstancesState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContainerInstancesStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContainerInstancesStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
