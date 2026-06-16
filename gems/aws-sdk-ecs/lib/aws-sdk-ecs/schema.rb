# frozen_string_literal: true

# This is generated code!

module Aws::ECS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceleratorCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AcceleratorCountRequest", name: "AcceleratorCountRequest")
    AcceleratorManufacturer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AcceleratorManufacturer", name: "AcceleratorManufacturer")
    AcceleratorManufacturerSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#AcceleratorManufacturerSet", name: "AcceleratorManufacturerSet")
    AcceleratorName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AcceleratorName", name: "AcceleratorName")
    AcceleratorNameSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#AcceleratorNameSet", name: "AcceleratorNameSet")
    AcceleratorTotalMemoryMiBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AcceleratorTotalMemoryMiBRequest", name: "AcceleratorTotalMemoryMiBRequest")
    AcceleratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AcceleratorType", name: "AcceleratorType")
    AcceleratorTypeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#AcceleratorTypeSet", name: "AcceleratorTypeSet")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AdvancedConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AdvancedConfiguration", name: "AdvancedConfiguration")
    AgentUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AgentUpdateStatus", name: "AgentUpdateStatus")
    AllowedInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#AllowedInstanceType", name: "AllowedInstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\*\\-]+$"})
    AllowedInstanceTypeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#AllowedInstanceTypeSet", name: "AllowedInstanceTypeSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    ApplicationProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ApplicationProtocol", name: "ApplicationProtocol")
    AssignPublicIp = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AssignPublicIp", name: "AssignPublicIp")
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Attachment", name: "Attachment")
    AttachmentDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#AttachmentDetails", name: "AttachmentDetails")
    AttachmentStateChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AttachmentStateChange", name: "AttachmentStateChange")
    AttachmentStateChanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#AttachmentStateChanges", name: "AttachmentStateChanges")
    Attachments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Attachments", name: "Attachments")
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Attribute", name: "Attribute")
    AttributeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AttributeLimitExceededException", name: "AttributeLimitExceededException", traits: {"smithy.api#error" => "client"})
    Attributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Attributes", name: "Attributes")
    AutoScalingGroupProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AutoScalingGroupProvider", name: "AutoScalingGroupProvider")
    AutoScalingGroupProviderUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AutoScalingGroupProviderUpdate", name: "AutoScalingGroupProviderUpdate")
    AvailabilityZoneRebalancing = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AvailabilityZoneRebalancing", name: "AvailabilityZoneRebalancing")
    AwsVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AwsVpcConfiguration", name: "AwsVpcConfiguration")
    BareMetal = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#BareMetal", name: "BareMetal")
    BaselineEbsBandwidthMbpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#BaselineEbsBandwidthMbpsRequest", name: "BaselineEbsBandwidthMbpsRequest")
    BlockedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#BlockedException", name: "BlockedException", traits: {"smithy.api#error" => "client"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecs#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecs#BoxedBoolean", name: "BoxedBoolean")
    BoxedDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ecs#BoxedDouble", name: "BoxedDouble")
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#BoxedInteger", name: "BoxedInteger")
    BurstablePerformance = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#BurstablePerformance", name: "BurstablePerformance")
    CPUArchitecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CPUArchitecture", name: "CPUArchitecture")
    CapacityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CapacityProvider", name: "CapacityProvider")
    CapacityProviderField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CapacityProviderField", name: "CapacityProviderField")
    CapacityProviderFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#CapacityProviderFieldList", name: "CapacityProviderFieldList")
    CapacityProviderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CapacityProviderStatus", name: "CapacityProviderStatus")
    CapacityProviderStrategy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#CapacityProviderStrategy", name: "CapacityProviderStrategy")
    CapacityProviderStrategyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CapacityProviderStrategyItem", name: "CapacityProviderStrategyItem")
    CapacityProviderStrategyItemBase = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#CapacityProviderStrategyItemBase", name: "CapacityProviderStrategyItemBase", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    CapacityProviderStrategyItemWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#CapacityProviderStrategyItemWeight", name: "CapacityProviderStrategyItemWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    CapacityProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CapacityProviderType", name: "CapacityProviderType")
    CapacityProviderUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CapacityProviderUpdateStatus", name: "CapacityProviderUpdateStatus")
    CapacityProviders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#CapacityProviders", name: "CapacityProviders")
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClientException", name: "ClientException", traits: {"smithy.api#error" => "client"})
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Cluster", name: "Cluster")
    ClusterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterConfiguration", name: "ClusterConfiguration")
    ClusterContainsCapacityProviderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterContainsCapacityProviderException", name: "ClusterContainsCapacityProviderException", traits: {"smithy.api#error" => "client"})
    ClusterContainsContainerInstancesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterContainsContainerInstancesException", name: "ClusterContainsContainerInstancesException", traits: {"smithy.api#error" => "client"})
    ClusterContainsServicesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterContainsServicesException", name: "ClusterContainsServicesException", traits: {"smithy.api#error" => "client"})
    ClusterContainsTasksException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterContainsTasksException", name: "ClusterContainsTasksException", traits: {"smithy.api#error" => "client"})
    ClusterField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ClusterField", name: "ClusterField")
    ClusterFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ClusterFieldList", name: "ClusterFieldList")
    ClusterNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterNotFoundException", name: "ClusterNotFoundException", traits: {"smithy.api#error" => "client"})
    ClusterServiceConnectDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterServiceConnectDefaults", name: "ClusterServiceConnectDefaults")
    ClusterServiceConnectDefaultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterServiceConnectDefaultsRequest", name: "ClusterServiceConnectDefaultsRequest")
    ClusterSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ClusterSetting", name: "ClusterSetting")
    ClusterSettingName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ClusterSettingName", name: "ClusterSettingName")
    ClusterSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ClusterSettings", name: "ClusterSettings")
    Clusters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Clusters", name: "Clusters")
    Compatibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#Compatibility", name: "Compatibility")
    CompatibilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#CompatibilityList", name: "CompatibilityList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    Connectivity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#Connectivity", name: "Connectivity")
    Container = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Container", name: "Container")
    ContainerCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ContainerCondition", name: "ContainerCondition")
    ContainerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerDefinition", name: "ContainerDefinition")
    ContainerDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerDefinitions", name: "ContainerDefinitions")
    ContainerDependencies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerDependencies", name: "ContainerDependencies")
    ContainerDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerDependency", name: "ContainerDependency")
    ContainerImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerImage", name: "ContainerImage")
    ContainerImages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerImages", name: "ContainerImages")
    ContainerInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerInstance", name: "ContainerInstance")
    ContainerInstanceField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ContainerInstanceField", name: "ContainerInstanceField")
    ContainerInstanceFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerInstanceFieldList", name: "ContainerInstanceFieldList")
    ContainerInstanceHealthStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerInstanceHealthStatus", name: "ContainerInstanceHealthStatus")
    ContainerInstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ContainerInstanceStatus", name: "ContainerInstanceStatus")
    ContainerInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerInstances", name: "ContainerInstances")
    ContainerOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerOverride", name: "ContainerOverride")
    ContainerOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerOverrides", name: "ContainerOverrides")
    ContainerRestartPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerRestartPolicy", name: "ContainerRestartPolicy")
    ContainerStateChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContainerStateChange", name: "ContainerStateChange")
    ContainerStateChanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ContainerStateChanges", name: "ContainerStateChanges")
    Containers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Containers", name: "Containers")
    CpuManufacturer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CpuManufacturer", name: "CpuManufacturer")
    CpuManufacturerSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#CpuManufacturerSet", name: "CpuManufacturerSet")
    CreateCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateCapacityProviderRequest", name: "CreateCapacityProviderRequest")
    CreateCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateCapacityProviderResponse", name: "CreateCapacityProviderResponse")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateClusterResponse", name: "CreateClusterResponse")
    CreateManagedInstancesProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateManagedInstancesProviderConfiguration", name: "CreateManagedInstancesProviderConfiguration")
    CreateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateServiceRequest", name: "CreateServiceRequest")
    CreateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateServiceResponse", name: "CreateServiceResponse")
    CreateTaskSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateTaskSetRequest", name: "CreateTaskSetRequest")
    CreateTaskSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateTaskSetResponse", name: "CreateTaskSetResponse")
    CreatedAt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreatedAt", name: "CreatedAt")
    DeleteAccountSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAccountSettingRequest", name: "DeleteAccountSettingRequest")
    DeleteAccountSettingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAccountSettingResponse", name: "DeleteAccountSettingResponse")
    DeleteAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAttributesRequest", name: "DeleteAttributesRequest")
    DeleteAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAttributesResponse", name: "DeleteAttributesResponse")
    DeleteCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteCapacityProviderRequest", name: "DeleteCapacityProviderRequest")
    DeleteCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteCapacityProviderResponse", name: "DeleteCapacityProviderResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteServiceRequest", name: "DeleteServiceRequest")
    DeleteServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteServiceResponse", name: "DeleteServiceResponse")
    DeleteTaskDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteTaskDefinitionsRequest", name: "DeleteTaskDefinitionsRequest")
    DeleteTaskDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteTaskDefinitionsResponse", name: "DeleteTaskDefinitionsResponse")
    DeleteTaskSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteTaskSetRequest", name: "DeleteTaskSetRequest")
    DeleteTaskSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteTaskSetResponse", name: "DeleteTaskSetResponse")
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Deployment", name: "Deployment")
    DeploymentAlarms = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentAlarms", name: "DeploymentAlarms")
    DeploymentCircuitBreaker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentCircuitBreaker", name: "DeploymentCircuitBreaker")
    DeploymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentConfiguration", name: "DeploymentConfiguration")
    DeploymentController = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentController", name: "DeploymentController")
    DeploymentControllerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentControllerType", name: "DeploymentControllerType")
    DeploymentEphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentEphemeralStorage", name: "DeploymentEphemeralStorage")
    DeploymentLifecycleHook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHook", name: "DeploymentLifecycleHook")
    DeploymentLifecycleHookList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookList", name: "DeploymentLifecycleHookList")
    DeploymentLifecycleHookStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookStage", name: "DeploymentLifecycleHookStage")
    DeploymentLifecycleHookStageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookStageList", name: "DeploymentLifecycleHookStageList")
    DeploymentRolloutState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentRolloutState", name: "DeploymentRolloutState")
    DeploymentStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentStrategy", name: "DeploymentStrategy")
    Deployments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Deployments", name: "Deployments")
    DeregisterContainerInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeregisterContainerInstanceRequest", name: "DeregisterContainerInstanceRequest")
    DeregisterContainerInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeregisterContainerInstanceResponse", name: "DeregisterContainerInstanceResponse")
    DeregisterTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeregisterTaskDefinitionRequest", name: "DeregisterTaskDefinitionRequest")
    DeregisterTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeregisterTaskDefinitionResponse", name: "DeregisterTaskDefinitionResponse")
    DescribeCapacityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeCapacityProvidersRequest", name: "DescribeCapacityProvidersRequest")
    DescribeCapacityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeCapacityProvidersResponse", name: "DescribeCapacityProvidersResponse")
    DescribeClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeClustersRequest", name: "DescribeClustersRequest")
    DescribeClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeClustersResponse", name: "DescribeClustersResponse")
    DescribeContainerInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeContainerInstancesRequest", name: "DescribeContainerInstancesRequest")
    DescribeContainerInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeContainerInstancesResponse", name: "DescribeContainerInstancesResponse")
    DescribeServiceDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeServiceDeploymentsRequest", name: "DescribeServiceDeploymentsRequest")
    DescribeServiceDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeServiceDeploymentsResponse", name: "DescribeServiceDeploymentsResponse")
    DescribeServiceRevisionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeServiceRevisionsRequest", name: "DescribeServiceRevisionsRequest")
    DescribeServiceRevisionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeServiceRevisionsResponse", name: "DescribeServiceRevisionsResponse")
    DescribeServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeServicesRequest", name: "DescribeServicesRequest")
    DescribeServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeServicesResponse", name: "DescribeServicesResponse")
    DescribeTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeTaskDefinitionRequest", name: "DescribeTaskDefinitionRequest")
    DescribeTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeTaskDefinitionResponse", name: "DescribeTaskDefinitionResponse")
    DescribeTaskSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeTaskSetsRequest", name: "DescribeTaskSetsRequest")
    DescribeTaskSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeTaskSetsResponse", name: "DescribeTaskSetsResponse")
    DescribeTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeTasksRequest", name: "DescribeTasksRequest")
    DescribeTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeTasksResponse", name: "DescribeTasksResponse")
    DesiredStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DesiredStatus", name: "DesiredStatus")
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Device", name: "Device")
    DeviceCgroupPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeviceCgroupPermission", name: "DeviceCgroupPermission")
    DeviceCgroupPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DeviceCgroupPermissions", name: "DeviceCgroupPermissions")
    DevicesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DevicesList", name: "DevicesList")
    DiscoverPollEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DiscoverPollEndpointRequest", name: "DiscoverPollEndpointRequest")
    DiscoverPollEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DiscoverPollEndpointResponse", name: "DiscoverPollEndpointResponse")
    DockerLabelsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ecs#DockerLabelsMap", name: "DockerLabelsMap")
    DockerVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DockerVolumeConfiguration", name: "DockerVolumeConfiguration")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ecs#Double", name: "Double", traits: {"smithy.api#default" => 0})
    Duration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#Duration", name: "Duration", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    EBSKMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#EBSKMSKeyId", name: "EBSKMSKeyId")
    EBSResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EBSResourceType", name: "EBSResourceType")
    EBSSnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#EBSSnapshotId", name: "EBSSnapshotId")
    EBSTagSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EBSTagSpecification", name: "EBSTagSpecification")
    EBSTagSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#EBSTagSpecifications", name: "EBSTagSpecifications")
    EBSVolumeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#EBSVolumeType", name: "EBSVolumeType")
    ECSVolumeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#ECSVolumeName", name: "ECSVolumeName")
    EFSAuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EFSAuthorizationConfig", name: "EFSAuthorizationConfig")
    EFSAuthorizationConfigIAM = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EFSAuthorizationConfigIAM", name: "EFSAuthorizationConfigIAM")
    EFSTransitEncryption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EFSTransitEncryption", name: "EFSTransitEncryption")
    EFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EFSVolumeConfiguration", name: "EFSVolumeConfiguration")
    EnvironmentFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EnvironmentFile", name: "EnvironmentFile")
    EnvironmentFileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EnvironmentFileType", name: "EnvironmentFileType")
    EnvironmentFiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#EnvironmentFiles", name: "EnvironmentFiles")
    EnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#EnvironmentVariables", name: "EnvironmentVariables")
    EphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EphemeralStorage", name: "EphemeralStorage")
    ExcludedInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#ExcludedInstanceType", name: "ExcludedInstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\*\\-]+$"})
    ExcludedInstanceTypeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ExcludedInstanceTypeSet", name: "ExcludedInstanceTypeSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    ExecuteCommandConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandConfiguration", name: "ExecuteCommandConfiguration")
    ExecuteCommandLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandLogConfiguration", name: "ExecuteCommandLogConfiguration")
    ExecuteCommandLogging = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ExecuteCommandLogging", name: "ExecuteCommandLogging")
    ExecuteCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandRequest", name: "ExecuteCommandRequest")
    ExecuteCommandResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandResponse", name: "ExecuteCommandResponse")
    FSxWindowsFileServerAuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#FSxWindowsFileServerAuthorizationConfig", name: "FSxWindowsFileServerAuthorizationConfig")
    FSxWindowsFileServerVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#FSxWindowsFileServerVolumeConfiguration", name: "FSxWindowsFileServerVolumeConfiguration")
    Failure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Failure", name: "Failure")
    Failures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Failures", name: "Failures")
    FirelensConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#FirelensConfiguration", name: "FirelensConfiguration")
    FirelensConfigurationOptionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ecs#FirelensConfigurationOptionsMap", name: "FirelensConfigurationOptionsMap")
    FirelensConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#FirelensConfigurationType", name: "FirelensConfigurationType")
    GetTaskProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#GetTaskProtectionRequest", name: "GetTaskProtectionRequest")
    GetTaskProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#GetTaskProtectionResponse", name: "GetTaskProtectionResponse")
    GpuIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#GpuIds", name: "GpuIds")
    HealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#HealthCheck", name: "HealthCheck")
    HealthStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#HealthStatus", name: "HealthStatus")
    HookDetails = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.ecs#HookDetails", name: "HookDetails")
    HostEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#HostEntry", name: "HostEntry")
    HostEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#HostEntryList", name: "HostEntryList")
    HostVolumeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#HostVolumeProperties", name: "HostVolumeProperties")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#IAMRoleArn", name: "IAMRoleArn")
    InferenceAccelerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InferenceAccelerator", name: "InferenceAccelerator")
    InferenceAcceleratorOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InferenceAcceleratorOverride", name: "InferenceAcceleratorOverride")
    InferenceAcceleratorOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#InferenceAcceleratorOverrides", name: "InferenceAcceleratorOverrides")
    InferenceAccelerators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#InferenceAccelerators", name: "InferenceAccelerators")
    InstanceGeneration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#InstanceGeneration", name: "InstanceGeneration")
    InstanceGenerationSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#InstanceGenerationSet", name: "InstanceGenerationSet")
    InstanceHealthCheckResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InstanceHealthCheckResult", name: "InstanceHealthCheckResult")
    InstanceHealthCheckResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#InstanceHealthCheckResultList", name: "InstanceHealthCheckResultList")
    InstanceHealthCheckState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#InstanceHealthCheckState", name: "InstanceHealthCheckState")
    InstanceHealthCheckType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#InstanceHealthCheckType", name: "InstanceHealthCheckType")
    InstanceLaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InstanceLaunchTemplate", name: "InstanceLaunchTemplate")
    InstanceLaunchTemplateUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InstanceLaunchTemplateUpdate", name: "InstanceLaunchTemplateUpdate")
    InstanceRequirementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InstanceRequirementsRequest", name: "InstanceRequirementsRequest")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#IntegerList", name: "IntegerList")
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    IpcMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#IpcMode", name: "IpcMode")
    KernelCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#KernelCapabilities", name: "KernelCapabilities")
    KeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#KeyValuePair", name: "KeyValuePair")
    LaunchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#LaunchType", name: "LaunchType")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    LinuxParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#LinuxParameters", name: "LinuxParameters")
    ListAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAccountSettingsRequest", name: "ListAccountSettingsRequest")
    ListAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAccountSettingsResponse", name: "ListAccountSettingsResponse")
    ListAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAttributesRequest", name: "ListAttributesRequest")
    ListAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAttributesResponse", name: "ListAttributesResponse")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListClustersRequest", name: "ListClustersRequest")
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListClustersResponse", name: "ListClustersResponse")
    ListContainerInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListContainerInstancesRequest", name: "ListContainerInstancesRequest")
    ListContainerInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListContainerInstancesResponse", name: "ListContainerInstancesResponse")
    ListServiceDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListServiceDeploymentsRequest", name: "ListServiceDeploymentsRequest")
    ListServiceDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListServiceDeploymentsResponse", name: "ListServiceDeploymentsResponse")
    ListServicesByNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListServicesByNamespaceRequest", name: "ListServicesByNamespaceRequest")
    ListServicesByNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListServicesByNamespaceResponse", name: "ListServicesByNamespaceResponse")
    ListServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListServicesRequest", name: "ListServicesRequest")
    ListServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListServicesResponse", name: "ListServicesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTaskDefinitionFamiliesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTaskDefinitionFamiliesRequest", name: "ListTaskDefinitionFamiliesRequest")
    ListTaskDefinitionFamiliesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTaskDefinitionFamiliesResponse", name: "ListTaskDefinitionFamiliesResponse")
    ListTaskDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTaskDefinitionsRequest", name: "ListTaskDefinitionsRequest")
    ListTaskDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTaskDefinitionsResponse", name: "ListTaskDefinitionsResponse")
    ListTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTasksRequest", name: "ListTasksRequest")
    ListTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListTasksResponse", name: "ListTasksResponse")
    LoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#LoadBalancer", name: "LoadBalancer")
    LoadBalancers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#LoadBalancers", name: "LoadBalancers")
    LocalStorage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#LocalStorage", name: "LocalStorage")
    LocalStorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#LocalStorageType", name: "LocalStorageType")
    LocalStorageTypeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#LocalStorageTypeSet", name: "LocalStorageTypeSet")
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#LogConfiguration", name: "LogConfiguration")
    LogConfigurationOptionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ecs#LogConfigurationOptionsMap", name: "LogConfigurationOptionsMap")
    LogDriver = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#LogDriver", name: "LogDriver")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#Long", name: "Long", traits: {"smithy.api#default" => 0})
    ManagedAgent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedAgent", name: "ManagedAgent")
    ManagedAgentName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedAgentName", name: "ManagedAgentName")
    ManagedAgentStateChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedAgentStateChange", name: "ManagedAgentStateChange")
    ManagedAgentStateChanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedAgentStateChanges", name: "ManagedAgentStateChanges")
    ManagedAgents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedAgents", name: "ManagedAgents")
    ManagedDraining = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedDraining", name: "ManagedDraining")
    ManagedInstancesMonitoringOptions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedInstancesMonitoringOptions", name: "ManagedInstancesMonitoringOptions")
    ManagedInstancesNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesNetworkConfiguration", name: "ManagedInstancesNetworkConfiguration")
    ManagedInstancesProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesProvider", name: "ManagedInstancesProvider")
    ManagedInstancesStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesStorageConfiguration", name: "ManagedInstancesStorageConfiguration")
    ManagedScaling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedScaling", name: "ManagedScaling")
    ManagedScalingInstanceWarmupPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#ManagedScalingInstanceWarmupPeriod", name: "ManagedScalingInstanceWarmupPeriod", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    ManagedScalingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedScalingStatus", name: "ManagedScalingStatus")
    ManagedScalingStepSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#ManagedScalingStepSize", name: "ManagedScalingStepSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ManagedScalingTargetCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#ManagedScalingTargetCapacity", name: "ManagedScalingTargetCapacity", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ManagedStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedStorageConfiguration", name: "ManagedStorageConfiguration")
    ManagedTerminationProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedTerminationProtection", name: "ManagedTerminationProtection")
    MemoryGiBPerVCpuRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MemoryGiBPerVCpuRequest", name: "MemoryGiBPerVCpuRequest")
    MemoryMiBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MemoryMiBRequest", name: "MemoryMiBRequest")
    MissingVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MissingVersionException", name: "MissingVersionException", traits: {"smithy.api#error" => "client"})
    MountPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MountPoint", name: "MountPoint")
    MountPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#MountPointList", name: "MountPointList")
    NamespaceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NamespaceNotFoundException", name: "NamespaceNotFoundException", traits: {"smithy.api#error" => "client"})
    NetworkBandwidthGbpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NetworkBandwidthGbpsRequest", name: "NetworkBandwidthGbpsRequest")
    NetworkBinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NetworkBinding", name: "NetworkBinding")
    NetworkBindings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#NetworkBindings", name: "NetworkBindings")
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NetworkConfiguration", name: "NetworkConfiguration")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaceCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NetworkInterfaceCountRequest", name: "NetworkInterfaceCountRequest")
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#NetworkInterfaces", name: "NetworkInterfaces")
    NetworkMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#NetworkMode", name: "NetworkMode")
    NoUpdateAvailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#NoUpdateAvailableException", name: "NoUpdateAvailableException", traits: {"smithy.api#error" => "client"})
    OSFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#OSFamily", name: "OSFamily")
    PidMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#PidMode", name: "PidMode")
    PlacementConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PlacementConstraint", name: "PlacementConstraint")
    PlacementConstraintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#PlacementConstraintType", name: "PlacementConstraintType")
    PlacementConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#PlacementConstraints", name: "PlacementConstraints")
    PlacementStrategies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#PlacementStrategies", name: "PlacementStrategies")
    PlacementStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PlacementStrategy", name: "PlacementStrategy")
    PlacementStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#PlacementStrategyType", name: "PlacementStrategyType")
    PlatformDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PlatformDevice", name: "PlatformDevice")
    PlatformDeviceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#PlatformDeviceType", name: "PlatformDeviceType")
    PlatformDevices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#PlatformDevices", name: "PlatformDevices")
    PlatformTaskDefinitionIncompatibilityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PlatformTaskDefinitionIncompatibilityException", name: "PlatformTaskDefinitionIncompatibilityException", traits: {"smithy.api#error" => "client"})
    PlatformUnknownException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PlatformUnknownException", name: "PlatformUnknownException", traits: {"smithy.api#error" => "client"})
    PortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PortMapping", name: "PortMapping")
    PortMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#PortMappingList", name: "PortMappingList")
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    PropagateMITags = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#PropagateMITags", name: "PropagateMITags")
    PropagateTags = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#PropagateTags", name: "PropagateTags")
    ProtectedTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ProtectedTask", name: "ProtectedTask")
    ProtectedTasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ProtectedTasks", name: "ProtectedTasks")
    ProxyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ProxyConfiguration", name: "ProxyConfiguration")
    ProxyConfigurationProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ProxyConfigurationProperties", name: "ProxyConfigurationProperties")
    ProxyConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ProxyConfigurationType", name: "ProxyConfigurationType")
    PutAccountSettingDefaultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutAccountSettingDefaultRequest", name: "PutAccountSettingDefaultRequest")
    PutAccountSettingDefaultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutAccountSettingDefaultResponse", name: "PutAccountSettingDefaultResponse")
    PutAccountSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutAccountSettingRequest", name: "PutAccountSettingRequest")
    PutAccountSettingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutAccountSettingResponse", name: "PutAccountSettingResponse")
    PutAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutAttributesRequest", name: "PutAttributesRequest")
    PutAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutAttributesResponse", name: "PutAttributesResponse")
    PutClusterCapacityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutClusterCapacityProvidersRequest", name: "PutClusterCapacityProvidersRequest")
    PutClusterCapacityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#PutClusterCapacityProvidersResponse", name: "PutClusterCapacityProvidersResponse")
    RegisterContainerInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterContainerInstanceRequest", name: "RegisterContainerInstanceRequest")
    RegisterContainerInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterContainerInstanceResponse", name: "RegisterContainerInstanceResponse")
    RegisterTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterTaskDefinitionRequest", name: "RegisterTaskDefinitionRequest")
    RegisterTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterTaskDefinitionResponse", name: "RegisterTaskDefinitionResponse")
    RepositoryCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RepositoryCredentials", name: "RepositoryCredentials")
    RequiresAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#RequiresAttributes", name: "RequiresAttributes")
    ResolvedConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResolvedConfiguration", name: "ResolvedConfiguration")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Resource", name: "Resource")
    ResourceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ResourceIds", name: "ResourceIds")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResourceRequirement", name: "ResourceRequirement")
    ResourceRequirements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ResourceRequirements", name: "ResourceRequirements")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ResourceType", name: "ResourceType")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Resources", name: "Resources")
    Rollback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Rollback", name: "Rollback")
    RunTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RunTaskRequest", name: "RunTaskRequest")
    RunTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RunTaskResponse", name: "RunTaskResponse")
    RuntimePlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RuntimePlatform", name: "RuntimePlatform")
    Scale = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Scale", name: "Scale")
    ScaleUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ScaleUnit", name: "ScaleUnit")
    SchedulingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#SchedulingStrategy", name: "SchedulingStrategy")
    Scope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#Scope", name: "Scope")
    Secret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Secret", name: "Secret")
    SecretList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#SecretList", name: "SecretList")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServerException", name: "ServerException", traits: {"smithy.api#error" => "server"})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Service", name: "Service")
    ServiceConnectClientAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectClientAlias", name: "ServiceConnectClientAlias")
    ServiceConnectClientAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceConnectClientAliasList", name: "ServiceConnectClientAliasList")
    ServiceConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectConfiguration", name: "ServiceConnectConfiguration")
    ServiceConnectService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectService", name: "ServiceConnectService")
    ServiceConnectServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceConnectServiceList", name: "ServiceConnectServiceList")
    ServiceConnectServiceResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectServiceResource", name: "ServiceConnectServiceResource")
    ServiceConnectServiceResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceConnectServiceResourceList", name: "ServiceConnectServiceResourceList")
    ServiceConnectTestTrafficHeaderMatchRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTestTrafficHeaderMatchRules", name: "ServiceConnectTestTrafficHeaderMatchRules")
    ServiceConnectTestTrafficHeaderRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTestTrafficHeaderRules", name: "ServiceConnectTestTrafficHeaderRules")
    ServiceConnectTestTrafficRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTestTrafficRules", name: "ServiceConnectTestTrafficRules")
    ServiceConnectTlsCertificateAuthority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTlsCertificateAuthority", name: "ServiceConnectTlsCertificateAuthority")
    ServiceConnectTlsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTlsConfiguration", name: "ServiceConnectTlsConfiguration")
    ServiceDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceDeployment", name: "ServiceDeployment")
    ServiceDeploymentAlarms = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceDeploymentAlarms", name: "ServiceDeploymentAlarms")
    ServiceDeploymentBrief = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceDeploymentBrief", name: "ServiceDeploymentBrief")
    ServiceDeploymentCircuitBreaker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceDeploymentCircuitBreaker", name: "ServiceDeploymentCircuitBreaker")
    ServiceDeploymentLifecycleStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceDeploymentLifecycleStage", name: "ServiceDeploymentLifecycleStage")
    ServiceDeploymentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceDeploymentNotFoundException", name: "ServiceDeploymentNotFoundException", traits: {"smithy.api#error" => "client"})
    ServiceDeploymentRollbackMonitorsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceDeploymentRollbackMonitorsStatus", name: "ServiceDeploymentRollbackMonitorsStatus")
    ServiceDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceDeploymentStatus", name: "ServiceDeploymentStatus")
    ServiceDeploymentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceDeploymentStatusList", name: "ServiceDeploymentStatusList")
    ServiceDeployments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceDeployments", name: "ServiceDeployments")
    ServiceDeploymentsBrief = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceDeploymentsBrief", name: "ServiceDeploymentsBrief")
    ServiceEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceEvent", name: "ServiceEvent")
    ServiceEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceEvents", name: "ServiceEvents")
    ServiceField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceField", name: "ServiceField")
    ServiceFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceFieldList", name: "ServiceFieldList")
    ServiceManagedEBSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceManagedEBSVolumeConfiguration", name: "ServiceManagedEBSVolumeConfiguration")
    ServiceNotActiveException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceNotActiveException", name: "ServiceNotActiveException", traits: {"smithy.api#error" => "client"})
    ServiceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceNotFoundException", name: "ServiceNotFoundException", traits: {"smithy.api#error" => "client"})
    ServiceRegistries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceRegistries", name: "ServiceRegistries")
    ServiceRegistry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRegistry", name: "ServiceRegistry")
    ServiceRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevision", name: "ServiceRevision")
    ServiceRevisionLoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevisionLoadBalancer", name: "ServiceRevisionLoadBalancer")
    ServiceRevisionLoadBalancers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceRevisionLoadBalancers", name: "ServiceRevisionLoadBalancers")
    ServiceRevisionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevisionSummary", name: "ServiceRevisionSummary")
    ServiceRevisions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceRevisions", name: "ServiceRevisions")
    ServiceRevisionsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceRevisionsSummaryList", name: "ServiceRevisionsSummaryList")
    ServiceVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceVolumeConfiguration", name: "ServiceVolumeConfiguration")
    ServiceVolumeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceVolumeConfigurations", name: "ServiceVolumeConfigurations")
    Services = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Services", name: "Services")
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Session", name: "Session")
    Setting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Setting", name: "Setting")
    SettingName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#SettingName", name: "SettingName")
    SettingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#SettingType", name: "SettingType")
    Settings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Settings", name: "Settings")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#SortOrder", name: "SortOrder")
    StabilityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#StabilityStatus", name: "StabilityStatus")
    StartTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#StartTaskRequest", name: "StartTaskRequest")
    StartTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#StartTaskResponse", name: "StartTaskResponse")
    Statistics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Statistics", name: "Statistics")
    StopServiceDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#StopServiceDeploymentRequest", name: "StopServiceDeploymentRequest")
    StopServiceDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#StopServiceDeploymentResponse", name: "StopServiceDeploymentResponse")
    StopServiceDeploymentStopType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#StopServiceDeploymentStopType", name: "StopServiceDeploymentStopType")
    StopTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#StopTaskRequest", name: "StopTaskRequest")
    StopTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#StopTaskResponse", name: "StopTaskResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#StringList", name: "StringList")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ecs#StringMap", name: "StringMap")
    SubmitAttachmentStateChangesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SubmitAttachmentStateChangesRequest", name: "SubmitAttachmentStateChangesRequest")
    SubmitAttachmentStateChangesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SubmitAttachmentStateChangesResponse", name: "SubmitAttachmentStateChangesResponse")
    SubmitContainerStateChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SubmitContainerStateChangeRequest", name: "SubmitContainerStateChangeRequest")
    SubmitContainerStateChangeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SubmitContainerStateChangeResponse", name: "SubmitContainerStateChangeResponse")
    SubmitTaskStateChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SubmitTaskStateChangeRequest", name: "SubmitTaskStateChangeRequest")
    SubmitTaskStateChangeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SubmitTaskStateChangeResponse", name: "SubmitTaskStateChangeResponse")
    SystemControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#SystemControl", name: "SystemControl")
    SystemControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#SystemControls", name: "SystemControls")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TagKeys", name: "TagKeys")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetNotConnectedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TargetNotConnectedException", name: "TargetNotConnectedException", traits: {"smithy.api#error" => "client"})
    TargetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TargetNotFoundException", name: "TargetNotFoundException", traits: {"smithy.api#error" => "client"})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TargetType", name: "TargetType")
    Task = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Task", name: "Task")
    TaskDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskDefinition", name: "TaskDefinition")
    TaskDefinitionFamilyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskDefinitionFamilyStatus", name: "TaskDefinitionFamilyStatus")
    TaskDefinitionField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskDefinitionField", name: "TaskDefinitionField")
    TaskDefinitionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskDefinitionFieldList", name: "TaskDefinitionFieldList")
    TaskDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskDefinitionList", name: "TaskDefinitionList")
    TaskDefinitionPlacementConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskDefinitionPlacementConstraint", name: "TaskDefinitionPlacementConstraint")
    TaskDefinitionPlacementConstraintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskDefinitionPlacementConstraintType", name: "TaskDefinitionPlacementConstraintType")
    TaskDefinitionPlacementConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskDefinitionPlacementConstraints", name: "TaskDefinitionPlacementConstraints")
    TaskDefinitionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskDefinitionStatus", name: "TaskDefinitionStatus")
    TaskEphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskEphemeralStorage", name: "TaskEphemeralStorage")
    TaskField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskField", name: "TaskField")
    TaskFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskFieldList", name: "TaskFieldList")
    TaskFilesystemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskFilesystemType", name: "TaskFilesystemType")
    TaskManagedEBSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskManagedEBSVolumeConfiguration", name: "TaskManagedEBSVolumeConfiguration")
    TaskManagedEBSVolumeTerminationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskManagedEBSVolumeTerminationPolicy", name: "TaskManagedEBSVolumeTerminationPolicy")
    TaskOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskOverride", name: "TaskOverride")
    TaskSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskSet", name: "TaskSet")
    TaskSetField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskSetField", name: "TaskSetField")
    TaskSetFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskSetFieldList", name: "TaskSetFieldList")
    TaskSetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskSetNotFoundException", name: "TaskSetNotFoundException", traits: {"smithy.api#error" => "client"})
    TaskSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskSets", name: "TaskSets")
    TaskStopCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TaskStopCode", name: "TaskStopCode")
    TaskVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TaskVolumeConfiguration", name: "TaskVolumeConfiguration")
    TaskVolumeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TaskVolumeConfigurations", name: "TaskVolumeConfigurations")
    TaskVolumeStorageGiB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#TaskVolumeStorageGiB", name: "TaskVolumeStorageGiB", traits: {"smithy.api#range" => {"min" => 1}})
    Tasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Tasks", name: "Tasks")
    TimeoutConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TimeoutConfiguration", name: "TimeoutConfiguration")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecs#Timestamp", name: "Timestamp")
    Tmpfs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Tmpfs", name: "Tmpfs")
    TmpfsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#TmpfsList", name: "TmpfsList")
    TotalLocalStorageGBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#TotalLocalStorageGBRequest", name: "TotalLocalStorageGBRequest")
    TransportProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#TransportProtocol", name: "TransportProtocol")
    Ulimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Ulimit", name: "Ulimit")
    UlimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#UlimitList", name: "UlimitList")
    UlimitName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#UlimitName", name: "UlimitName")
    UnsupportedFeatureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UnsupportedFeatureException", name: "UnsupportedFeatureException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateCapacityProviderRequest", name: "UpdateCapacityProviderRequest")
    UpdateCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateCapacityProviderResponse", name: "UpdateCapacityProviderResponse")
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateClusterRequest", name: "UpdateClusterRequest")
    UpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateClusterResponse", name: "UpdateClusterResponse")
    UpdateClusterSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateClusterSettingsRequest", name: "UpdateClusterSettingsRequest")
    UpdateClusterSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateClusterSettingsResponse", name: "UpdateClusterSettingsResponse")
    UpdateContainerAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateContainerAgentRequest", name: "UpdateContainerAgentRequest")
    UpdateContainerAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateContainerAgentResponse", name: "UpdateContainerAgentResponse")
    UpdateContainerInstancesStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateContainerInstancesStateRequest", name: "UpdateContainerInstancesStateRequest")
    UpdateContainerInstancesStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateContainerInstancesStateResponse", name: "UpdateContainerInstancesStateResponse")
    UpdateInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateInProgressException", name: "UpdateInProgressException", traits: {"smithy.api#error" => "client"})
    UpdateManagedInstancesProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateManagedInstancesProviderConfiguration", name: "UpdateManagedInstancesProviderConfiguration")
    UpdateServicePrimaryTaskSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateServicePrimaryTaskSetRequest", name: "UpdateServicePrimaryTaskSetRequest")
    UpdateServicePrimaryTaskSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateServicePrimaryTaskSetResponse", name: "UpdateServicePrimaryTaskSetResponse")
    UpdateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateServiceRequest", name: "UpdateServiceRequest")
    UpdateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateServiceResponse", name: "UpdateServiceResponse")
    UpdateTaskProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateTaskProtectionRequest", name: "UpdateTaskProtectionRequest")
    UpdateTaskProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateTaskProtectionResponse", name: "UpdateTaskProtectionResponse")
    UpdateTaskSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateTaskSetRequest", name: "UpdateTaskSetRequest")
    UpdateTaskSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateTaskSetResponse", name: "UpdateTaskSetResponse")
    VCpuCountRangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VCpuCountRangeRequest", name: "VCpuCountRangeRequest")
    VersionConsistency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#VersionConsistency", name: "VersionConsistency")
    VersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VersionInfo", name: "VersionInfo")
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Volume", name: "Volume")
    VolumeFrom = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VolumeFrom", name: "VolumeFrom")
    VolumeFromList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#VolumeFromList", name: "VolumeFromList")
    VolumeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#VolumeList", name: "VolumeList")
    VpcLatticeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VpcLatticeConfiguration", name: "VpcLatticeConfiguration")
    VpcLatticeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#VpcLatticeConfigurations", name: "VpcLatticeConfigurations")

    AcceleratorCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "min"))
    AcceleratorCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "max"))
    AcceleratorCountRequest.type = Types::AcceleratorCountRequest
    AcceleratorManufacturer.add_member(:amazon_web_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_WEB_SERVICES", traits: {"smithy.api#enumValue" => "amazon-web-services"}))
    AcceleratorManufacturer.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMD", traits: {"smithy.api#enumValue" => "amd"}))
    AcceleratorManufacturer.add_member(:nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NVIDIA", traits: {"smithy.api#enumValue" => "nvidia"}))
    AcceleratorManufacturer.add_member(:xilinx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XILINX", traits: {"smithy.api#enumValue" => "xilinx"}))
    AcceleratorManufacturer.add_member(:habana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HABANA", traits: {"smithy.api#enumValue" => "habana"}))
    AcceleratorManufacturerSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorManufacturer, traits: {"smithy.api#xmlName" => "item"})
    AcceleratorName.add_member(:a100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "A100", traits: {"smithy.api#enumValue" => "a100"}))
    AcceleratorName.add_member(:inferentia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFERENTIA", traits: {"smithy.api#enumValue" => "inferentia"}))
    AcceleratorName.add_member(:k520, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "K520", traits: {"smithy.api#enumValue" => "k520"}))
    AcceleratorName.add_member(:k80, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "K80", traits: {"smithy.api#enumValue" => "k80"}))
    AcceleratorName.add_member(:m60, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "M60", traits: {"smithy.api#enumValue" => "m60"}))
    AcceleratorName.add_member(:radeon_pro_v520, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RADEON_PRO_V520", traits: {"smithy.api#enumValue" => "radeon-pro-v520"}))
    AcceleratorName.add_member(:t4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "T4", traits: {"smithy.api#enumValue" => "t4"}))
    AcceleratorName.add_member(:vu9_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VU9P", traits: {"smithy.api#enumValue" => "vu9p"}))
    AcceleratorName.add_member(:v100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "V100", traits: {"smithy.api#enumValue" => "v100"}))
    AcceleratorName.add_member(:a10_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "A10G", traits: {"smithy.api#enumValue" => "a10g"}))
    AcceleratorName.add_member(:h100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "H100", traits: {"smithy.api#enumValue" => "h100"}))
    AcceleratorName.add_member(:t4_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "T4G", traits: {"smithy.api#enumValue" => "t4g"}))
    AcceleratorNameSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorName, traits: {"smithy.api#xmlName" => "item"})
    AcceleratorTotalMemoryMiBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "min"))
    AcceleratorTotalMemoryMiBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "max"))
    AcceleratorTotalMemoryMiBRequest.type = Types::AcceleratorTotalMemoryMiBRequest
    AcceleratorType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GPU", traits: {"smithy.api#enumValue" => "gpu"}))
    AcceleratorType.add_member(:fpga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FPGA", traits: {"smithy.api#enumValue" => "fpga"}))
    AcceleratorType.add_member(:inference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFERENCE", traits: {"smithy.api#enumValue" => "inference"}))
    AcceleratorTypeSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorType, traits: {"smithy.api#xmlName" => "item"})
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AdvancedConfiguration.add_member(:alternate_target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "alternateTargetGroupArn"))
    AdvancedConfiguration.add_member(:production_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "productionListenerRule"))
    AdvancedConfiguration.add_member(:test_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "testListenerRule"))
    AdvancedConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "roleArn"))
    AdvancedConfiguration.type = Types::AdvancedConfiguration
    AgentUpdateStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    AgentUpdateStatus.add_member(:staging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STAGING", traits: {"smithy.api#enumValue" => "STAGING"}))
    AgentUpdateStatus.add_member(:staged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STAGED", traits: {"smithy.api#enumValue" => "STAGED"}))
    AgentUpdateStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AgentUpdateStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    AgentUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AllowedInstanceTypeSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInstanceType, traits: {"smithy.api#xmlName" => "item"})
    ApplicationProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "http"}))
    ApplicationProtocol.add_member(:http2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP2", traits: {"smithy.api#enumValue" => "http2"}))
    ApplicationProtocol.add_member(:grpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRPC", traits: {"smithy.api#enumValue" => "grpc"}))
    AssignPublicIp.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssignPublicIp.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Attachment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id"))
    Attachment.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "type"))
    Attachment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    Attachment.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentDetails, location_name: "details"))
    Attachment.type = Types::Attachment
    AttachmentDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair)
    AttachmentStateChange.add_member(:attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "attachmentArn", traits: {"smithy.api#required" => {}}))
    AttachmentStateChange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status", traits: {"smithy.api#required" => {}}))
    AttachmentStateChange.type = Types::AttachmentStateChange
    AttachmentStateChanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStateChange)
    Attachments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment)
    Attribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value"))
    Attribute.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, location_name: "targetType"))
    Attribute.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "targetId"))
    Attribute.type = Types::Attribute
    AttributeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    AttributeLimitExceededException.type = Types::AttributeLimitExceededException
    Attributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute)
    AutoScalingGroupProvider.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "autoScalingGroupArn", traits: {"smithy.api#required" => {}}))
    AutoScalingGroupProvider.add_member(:managed_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScaling, location_name: "managedScaling"))
    AutoScalingGroupProvider.add_member(:managed_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTerminationProtection, location_name: "managedTerminationProtection"))
    AutoScalingGroupProvider.add_member(:managed_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDraining, location_name: "managedDraining"))
    AutoScalingGroupProvider.type = Types::AutoScalingGroupProvider
    AutoScalingGroupProviderUpdate.add_member(:managed_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScaling, location_name: "managedScaling"))
    AutoScalingGroupProviderUpdate.add_member(:managed_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTerminationProtection, location_name: "managedTerminationProtection"))
    AutoScalingGroupProviderUpdate.add_member(:managed_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDraining, location_name: "managedDraining"))
    AutoScalingGroupProviderUpdate.type = Types::AutoScalingGroupProviderUpdate
    AvailabilityZoneRebalancing.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AvailabilityZoneRebalancing.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AwsVpcConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "subnets", traits: {"smithy.api#required" => {}}))
    AwsVpcConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "securityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignPublicIp, location_name: "assignPublicIp"))
    AwsVpcConfiguration.type = Types::AwsVpcConfiguration
    BareMetal.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    BareMetal.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    BareMetal.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    BaselineEbsBandwidthMbpsRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "min"))
    BaselineEbsBandwidthMbpsRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "max"))
    BaselineEbsBandwidthMbpsRequest.type = Types::BaselineEbsBandwidthMbpsRequest
    BlockedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    BlockedException.type = Types::BlockedException
    BurstablePerformance.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    BurstablePerformance.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    BurstablePerformance.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    CPUArchitecture.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X86_64", traits: {"smithy.api#enumValue" => "X86_64"}))
    CPUArchitecture.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARM64", traits: {"smithy.api#enumValue" => "ARM64"}))
    CapacityProvider.add_member(:capacity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "capacityProviderArn"))
    CapacityProvider.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    CapacityProvider.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    CapacityProvider.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStatus, location_name: "status"))
    CapacityProvider.add_member(:auto_scaling_group_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupProvider, location_name: "autoScalingGroupProvider"))
    CapacityProvider.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesProvider, location_name: "managedInstancesProvider"))
    CapacityProvider.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderUpdateStatus, location_name: "updateStatus"))
    CapacityProvider.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "updateStatusReason"))
    CapacityProvider.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CapacityProvider.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderType, location_name: "type"))
    CapacityProvider.type = Types::CapacityProvider
    CapacityProviderField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    CapacityProviderFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderField)
    CapacityProviderStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    CapacityProviderStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CapacityProviderStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    CapacityProviderStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CapacityProviderStrategy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItem)
    CapacityProviderStrategyItem.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "capacityProvider", traits: {"smithy.api#required" => {}}))
    CapacityProviderStrategyItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemWeight, location_name: "weight", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemBase, location_name: "base", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.type = Types::CapacityProviderStrategyItem
    CapacityProviderType.add_member(:ec2_autoscaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2_AUTOSCALING", traits: {"smithy.api#enumValue" => "EC2_AUTOSCALING"}))
    CapacityProviderType.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    CapacityProviderType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    CapacityProviderType.add_member(:fargate_spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE_SPOT", traits: {"smithy.api#enumValue" => "FARGATE_SPOT"}))
    CapacityProviderUpdateStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CapacityProviderUpdateStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    CapacityProviderUpdateStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CapacityProviderUpdateStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    CapacityProviderUpdateStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    CapacityProviderUpdateStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CapacityProviderUpdateStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    CapacityProviderUpdateStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    CapacityProviderUpdateStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    CapacityProviders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider)
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ClientException.type = Types::ClientException
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    Cluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterName"))
    Cluster.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, location_name: "configuration"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    Cluster.add_member(:registered_container_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "registeredContainerInstancesCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:running_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "runningTasksCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:pending_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "pendingTasksCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:active_services_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "activeServicesCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, location_name: "statistics"))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    Cluster.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, location_name: "settings"))
    Cluster.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "capacityProviders"))
    Cluster.add_member(:default_capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "defaultCapacityProviderStrategy"))
    Cluster.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, location_name: "attachments"))
    Cluster.add_member(:attachments_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "attachmentsStatus"))
    Cluster.add_member(:service_connect_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterServiceConnectDefaults, location_name: "serviceConnectDefaults"))
    Cluster.type = Types::Cluster
    ClusterConfiguration.add_member(:execute_command_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteCommandConfiguration, location_name: "executeCommandConfiguration"))
    ClusterConfiguration.add_member(:managed_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedStorageConfiguration, location_name: "managedStorageConfiguration"))
    ClusterConfiguration.type = Types::ClusterConfiguration
    ClusterContainsCapacityProviderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ClusterContainsCapacityProviderException.type = Types::ClusterContainsCapacityProviderException
    ClusterContainsContainerInstancesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ClusterContainsContainerInstancesException.type = Types::ClusterContainsContainerInstancesException
    ClusterContainsServicesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ClusterContainsServicesException.type = Types::ClusterContainsServicesException
    ClusterContainsTasksException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ClusterContainsTasksException.type = Types::ClusterContainsTasksException
    ClusterField.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ATTACHMENTS", traits: {"smithy.api#enumValue" => "ATTACHMENTS"}))
    ClusterField.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURATIONS", traits: {"smithy.api#enumValue" => "CONFIGURATIONS"}))
    ClusterField.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SETTINGS", traits: {"smithy.api#enumValue" => "SETTINGS"}))
    ClusterField.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATISTICS", traits: {"smithy.api#enumValue" => "STATISTICS"}))
    ClusterField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ClusterFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterField)
    ClusterNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ClusterNotFoundException.type = Types::ClusterNotFoundException
    ClusterServiceConnectDefaults.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "namespace"))
    ClusterServiceConnectDefaults.type = Types::ClusterServiceConnectDefaults
    ClusterServiceConnectDefaultsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    ClusterServiceConnectDefaultsRequest.type = Types::ClusterServiceConnectDefaultsRequest
    ClusterSetting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettingName, location_name: "name"))
    ClusterSetting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value"))
    ClusterSetting.type = Types::ClusterSetting
    ClusterSettingName.add_member(:container_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_INSIGHTS", traits: {"smithy.api#enumValue" => "containerInsights"}))
    ClusterSettings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSetting)
    Clusters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster)
    Compatibility.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    Compatibility.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    Compatibility.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    Compatibility.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    CompatibilityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Compatibility)
    ConflictException.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIds, location_name: "resourceIds"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ConflictException.type = Types::ConflictException
    Connectivity.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    Connectivity.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    Container.add_member(:container_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerArn"))
    Container.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskArn"))
    Container.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    Container.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "image"))
    Container.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "imageDigest"))
    Container.add_member(:runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "runtimeId"))
    Container.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "lastStatus"))
    Container.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "exitCode"))
    Container.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    Container.add_member(:network_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBindings, location_name: "networkBindings"))
    Container.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, location_name: "networkInterfaces"))
    Container.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, location_name: "healthStatus"))
    Container.add_member(:managed_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgents, location_name: "managedAgents"))
    Container.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cpu"))
    Container.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "memory"))
    Container.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "memoryReservation"))
    Container.add_member(:gpu_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuIds, location_name: "gpuIds"))
    Container.type = Types::Container
    ContainerCondition.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START", traits: {"smithy.api#enumValue" => "START"}))
    ContainerCondition.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ContainerCondition.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ContainerCondition.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ContainerDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    ContainerDefinition.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "image"))
    ContainerDefinition.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, location_name: "repositoryCredentials"))
    ContainerDefinition.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "cpu", traits: {"smithy.api#default" => 0}))
    ContainerDefinition.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "memory"))
    ContainerDefinition.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "memoryReservation"))
    ContainerDefinition.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "links"))
    ContainerDefinition.add_member(:port_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: PortMappingList, location_name: "portMappings"))
    ContainerDefinition.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "essential"))
    ContainerDefinition.add_member(:restart_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRestartPolicy, location_name: "restartPolicy"))
    ContainerDefinition.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "entryPoint"))
    ContainerDefinition.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "command"))
    ContainerDefinition.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environment"))
    ContainerDefinition.add_member(:environment_files, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFiles, location_name: "environmentFiles"))
    ContainerDefinition.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPointList, location_name: "mountPoints"))
    ContainerDefinition.add_member(:volumes_from, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFromList, location_name: "volumesFrom"))
    ContainerDefinition.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxParameters, location_name: "linuxParameters"))
    ContainerDefinition.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, location_name: "secrets"))
    ContainerDefinition.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencies, location_name: "dependsOn"))
    ContainerDefinition.add_member(:start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "startTimeout"))
    ContainerDefinition.add_member(:stop_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "stopTimeout"))
    ContainerDefinition.add_member(:version_consistency, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionConsistency, location_name: "versionConsistency"))
    ContainerDefinition.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hostname"))
    ContainerDefinition.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "user"))
    ContainerDefinition.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "workingDirectory"))
    ContainerDefinition.add_member(:disable_networking, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "disableNetworking"))
    ContainerDefinition.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "privileged"))
    ContainerDefinition.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "readonlyRootFilesystem"))
    ContainerDefinition.add_member(:dns_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dnsServers"))
    ContainerDefinition.add_member(:dns_search_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dnsSearchDomains"))
    ContainerDefinition.add_member(:extra_hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEntryList, location_name: "extraHosts"))
    ContainerDefinition.add_member(:docker_security_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dockerSecurityOptions"))
    ContainerDefinition.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "interactive"))
    ContainerDefinition.add_member(:pseudo_terminal, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "pseudoTerminal"))
    ContainerDefinition.add_member(:docker_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerLabelsMap, location_name: "dockerLabels"))
    ContainerDefinition.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: UlimitList, location_name: "ulimits"))
    ContainerDefinition.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, location_name: "logConfiguration"))
    ContainerDefinition.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheck, location_name: "healthCheck"))
    ContainerDefinition.add_member(:system_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemControls, location_name: "systemControls"))
    ContainerDefinition.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerDefinition.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfiguration, location_name: "firelensConfiguration"))
    ContainerDefinition.add_member(:credential_specs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "credentialSpecs"))
    ContainerDefinition.type = Types::ContainerDefinition
    ContainerDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDefinition)
    ContainerDependencies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependency)
    ContainerDependency.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName", traits: {"smithy.api#required" => {}}))
    ContainerDependency.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerCondition, location_name: "condition", traits: {"smithy.api#required" => {}}))
    ContainerDependency.type = Types::ContainerDependency
    ContainerImage.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName"))
    ContainerImage.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "imageDigest"))
    ContainerImage.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "image"))
    ContainerImage.type = Types::ContainerImage
    ContainerImages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImage)
    ContainerInstance.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstanceArn"))
    ContainerInstance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ec2InstanceId"))
    ContainerInstance.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "capacityProviderName"))
    ContainerInstance.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "version", traits: {"smithy.api#default" => 0}))
    ContainerInstance.add_member(:version_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionInfo, location_name: "versionInfo"))
    ContainerInstance.add_member(:remaining_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, location_name: "remainingResources"))
    ContainerInstance.add_member(:registered_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, location_name: "registeredResources"))
    ContainerInstance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    ContainerInstance.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "statusReason"))
    ContainerInstance.add_member(:agent_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "agentConnected", traits: {"smithy.api#default" => false}))
    ContainerInstance.add_member(:running_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "runningTasksCount", traits: {"smithy.api#default" => 0}))
    ContainerInstance.add_member(:pending_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "pendingTasksCount", traits: {"smithy.api#default" => 0}))
    ContainerInstance.add_member(:agent_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentUpdateStatus, location_name: "agentUpdateStatus"))
    ContainerInstance.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes"))
    ContainerInstance.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "registeredAt"))
    ContainerInstance.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, location_name: "attachments"))
    ContainerInstance.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ContainerInstance.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceHealthStatus, location_name: "healthStatus"))
    ContainerInstance.type = Types::ContainerInstance
    ContainerInstanceField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ContainerInstanceField.add_member(:container_instance_health, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_INSTANCE_HEALTH", traits: {"smithy.api#enumValue" => "CONTAINER_INSTANCE_HEALTH"}))
    ContainerInstanceFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceField)
    ContainerInstanceHealthStatus.add_member(:overall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckState, location_name: "overallStatus"))
    ContainerInstanceHealthStatus.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckResultList, location_name: "details"))
    ContainerInstanceHealthStatus.type = Types::ContainerInstanceHealthStatus
    ContainerInstanceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerInstanceStatus.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRAINING", traits: {"smithy.api#enumValue" => "DRAINING"}))
    ContainerInstanceStatus.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    ContainerInstanceStatus.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    ContainerInstanceStatus.add_member(:registration_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTRATION_FAILED", traits: {"smithy.api#enumValue" => "REGISTRATION_FAILED"}))
    ContainerInstances.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance)
    ContainerOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    ContainerOverride.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "command"))
    ContainerOverride.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environment"))
    ContainerOverride.add_member(:environment_files, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFiles, location_name: "environmentFiles"))
    ContainerOverride.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "cpu"))
    ContainerOverride.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "memory"))
    ContainerOverride.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "memoryReservation"))
    ContainerOverride.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerOverride.type = Types::ContainerOverride
    ContainerOverrides.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOverride)
    ContainerRestartPolicy.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "enabled", traits: {"smithy.api#required" => {}}))
    ContainerRestartPolicy.add_member(:ignored_exit_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, location_name: "ignoredExitCodes"))
    ContainerRestartPolicy.add_member(:restart_attempt_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "restartAttemptPeriod"))
    ContainerRestartPolicy.type = Types::ContainerRestartPolicy
    ContainerStateChange.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName"))
    ContainerStateChange.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "imageDigest"))
    ContainerStateChange.add_member(:runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "runtimeId"))
    ContainerStateChange.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "exitCode"))
    ContainerStateChange.add_member(:network_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBindings, location_name: "networkBindings"))
    ContainerStateChange.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    ContainerStateChange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    ContainerStateChange.type = Types::ContainerStateChange
    ContainerStateChanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerStateChange)
    Containers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Container)
    CpuManufacturer.add_member(:intel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEL", traits: {"smithy.api#enumValue" => "intel"}))
    CpuManufacturer.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMD", traits: {"smithy.api#enumValue" => "amd"}))
    CpuManufacturer.add_member(:amazon_web_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_WEB_SERVICES", traits: {"smithy.api#enumValue" => "amazon-web-services"}))
    CpuManufacturerSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CpuManufacturer, traits: {"smithy.api#xmlName" => "item"})
    CreateCapacityProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateCapacityProviderRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    CreateCapacityProviderRequest.add_member(:auto_scaling_group_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupProvider, location_name: "autoScalingGroupProvider"))
    CreateCapacityProviderRequest.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateManagedInstancesProviderConfiguration, location_name: "managedInstancesProvider"))
    CreateCapacityProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateCapacityProviderRequest.type = Types::CreateCapacityProviderRequest
    CreateCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, location_name: "capacityProvider"))
    CreateCapacityProviderResponse.type = Types::CreateCapacityProviderResponse
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterName"))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateClusterRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, location_name: "settings"))
    CreateClusterRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, location_name: "configuration"))
    CreateClusterRequest.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "capacityProviders"))
    CreateClusterRequest.add_member(:default_capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "defaultCapacityProviderStrategy"))
    CreateClusterRequest.add_member(:service_connect_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterServiceConnectDefaultsRequest, location_name: "serviceConnectDefaults"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "cluster"))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateManagedInstancesProviderConfiguration.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "infrastructureRoleArn", traits: {"smithy.api#required" => {}}))
    CreateManagedInstancesProviderConfiguration.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplate, location_name: "instanceLaunchTemplate", traits: {"smithy.api#required" => {}}))
    CreateManagedInstancesProviderConfiguration.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateMITags, location_name: "propagateTags"))
    CreateManagedInstancesProviderConfiguration.type = Types::CreateManagedInstancesProviderConfiguration
    CreateServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    CreateServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceName", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition"))
    CreateServiceRequest.add_member(:availability_zone_rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneRebalancing, location_name: "availabilityZoneRebalancing"))
    CreateServiceRequest.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "loadBalancers"))
    CreateServiceRequest.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, location_name: "serviceRegistries"))
    CreateServiceRequest.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "desiredCount"))
    CreateServiceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clientToken"))
    CreateServiceRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    CreateServiceRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    CreateServiceRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    CreateServiceRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "role"))
    CreateServiceRequest.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    CreateServiceRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, location_name: "placementConstraints"))
    CreateServiceRequest.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, location_name: "placementStrategy"))
    CreateServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateServiceRequest.add_member(:health_check_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    CreateServiceRequest.add_member(:scheduling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingStrategy, location_name: "schedulingStrategy"))
    CreateServiceRequest.add_member(:deployment_controller, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentController, location_name: "deploymentController"))
    CreateServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateServiceRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    CreateServiceRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, location_name: "propagateTags"))
    CreateServiceRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    CreateServiceRequest.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    CreateServiceRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    CreateServiceRequest.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    CreateServiceRequest.type = Types::CreateServiceRequest
    CreateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "service"))
    CreateServiceResponse.type = Types::CreateServiceResponse
    CreateTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    CreateTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    CreateTaskSetRequest.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "externalId"))
    CreateTaskSetRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    CreateTaskSetRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateTaskSetRequest.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "loadBalancers"))
    CreateTaskSetRequest.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, location_name: "serviceRegistries"))
    CreateTaskSetRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    CreateTaskSetRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    CreateTaskSetRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    CreateTaskSetRequest.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Scale, location_name: "scale"))
    CreateTaskSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clientToken"))
    CreateTaskSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateTaskSetRequest.type = Types::CreateTaskSetRequest
    CreateTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, location_name: "taskSet"))
    CreateTaskSetResponse.type = Types::CreateTaskSetResponse
    CreatedAt.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "before"))
    CreatedAt.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "after"))
    CreatedAt.type = Types::CreatedAt
    DeleteAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DeleteAccountSettingRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "principalArn"))
    DeleteAccountSettingRequest.type = Types::DeleteAccountSettingRequest
    DeleteAccountSettingResponse.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, location_name: "setting"))
    DeleteAccountSettingResponse.type = Types::DeleteAccountSettingResponse
    DeleteAttributesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DeleteAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes", traits: {"smithy.api#required" => {}}))
    DeleteAttributesRequest.type = Types::DeleteAttributesRequest
    DeleteAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes"))
    DeleteAttributesResponse.type = Types::DeleteAttributesResponse
    DeleteCapacityProviderRequest.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "capacityProvider", traits: {"smithy.api#required" => {}}))
    DeleteCapacityProviderRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DeleteCapacityProviderRequest.type = Types::DeleteCapacityProviderRequest
    DeleteCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, location_name: "capacityProvider"))
    DeleteCapacityProviderResponse.type = Types::DeleteCapacityProviderResponse
    DeleteClusterRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "cluster"))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DeleteServiceRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    DeleteServiceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "force"))
    DeleteServiceRequest.type = Types::DeleteServiceRequest
    DeleteServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "service"))
    DeleteServiceResponse.type = Types::DeleteServiceResponse
    DeleteTaskDefinitionsRequest.add_member(:task_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "taskDefinitions", traits: {"smithy.api#required" => {}}))
    DeleteTaskDefinitionsRequest.type = Types::DeleteTaskDefinitionsRequest
    DeleteTaskDefinitionsResponse.add_member(:task_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionList, location_name: "taskDefinitions"))
    DeleteTaskDefinitionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DeleteTaskDefinitionsResponse.type = Types::DeleteTaskDefinitionsResponse
    DeleteTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    DeleteTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    DeleteTaskSetRequest.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskSet", traits: {"smithy.api#required" => {}}))
    DeleteTaskSetRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "force"))
    DeleteTaskSetRequest.type = Types::DeleteTaskSetRequest
    DeleteTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, location_name: "taskSet"))
    DeleteTaskSetResponse.type = Types::DeleteTaskSetResponse
    Deployment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id"))
    Deployment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    Deployment.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition"))
    Deployment.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "desiredCount", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "pendingCount", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "runningCount", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:failed_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "failedTasks", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Deployment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    Deployment.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    Deployment.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    Deployment.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    Deployment.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformFamily"))
    Deployment.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    Deployment.add_member(:rollout_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentRolloutState, location_name: "rolloutState"))
    Deployment.add_member(:rollout_state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "rolloutStateReason"))
    Deployment.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    Deployment.add_member(:service_connect_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectServiceResourceList, location_name: "serviceConnectResources"))
    Deployment.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    Deployment.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEphemeralStorage, location_name: "fargateEphemeralStorage"))
    Deployment.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    Deployment.type = Types::Deployment
    DeploymentAlarms.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "alarmNames", traits: {"smithy.api#required" => {}}))
    DeploymentAlarms.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "rollback", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentAlarms.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enable", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentAlarms.type = Types::DeploymentAlarms
    DeploymentCircuitBreaker.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enable", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentCircuitBreaker.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "rollback", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentCircuitBreaker.type = Types::DeploymentCircuitBreaker
    DeploymentConfiguration.add_member(:deployment_circuit_breaker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCircuitBreaker, location_name: "deploymentCircuitBreaker"))
    DeploymentConfiguration.add_member(:maximum_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maximumPercent"))
    DeploymentConfiguration.add_member(:minimum_healthy_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "minimumHealthyPercent"))
    DeploymentConfiguration.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentAlarms, location_name: "alarms"))
    DeploymentConfiguration.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategy, location_name: "strategy"))
    DeploymentConfiguration.add_member(:bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "bakeTimeInMinutes"))
    DeploymentConfiguration.add_member(:lifecycle_hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookList, location_name: "lifecycleHooks"))
    DeploymentConfiguration.type = Types::DeploymentConfiguration
    DeploymentController.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentControllerType, location_name: "type", traits: {"smithy.api#required" => {}}))
    DeploymentController.type = Types::DeploymentController
    DeploymentControllerType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    DeploymentControllerType.add_member(:code_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_DEPLOY", traits: {"smithy.api#enumValue" => "CODE_DEPLOY"}))
    DeploymentControllerType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    DeploymentEphemeralStorage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "kmsKeyId"))
    DeploymentEphemeralStorage.type = Types::DeploymentEphemeralStorage
    DeploymentLifecycleHook.add_member(:hook_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hookTargetArn"))
    DeploymentLifecycleHook.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, location_name: "roleArn"))
    DeploymentLifecycleHook.add_member(:lifecycle_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookStageList, location_name: "lifecycleStages"))
    DeploymentLifecycleHook.add_member(:hook_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HookDetails, location_name: "hookDetails"))
    DeploymentLifecycleHook.type = Types::DeploymentLifecycleHook
    DeploymentLifecycleHookList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHook)
    DeploymentLifecycleHookStage.add_member(:reconcile_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RECONCILE_SERVICE", traits: {"smithy.api#enumValue" => "RECONCILE_SERVICE"}))
    DeploymentLifecycleHookStage.add_member(:pre_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRE_SCALE_UP", traits: {"smithy.api#enumValue" => "PRE_SCALE_UP"}))
    DeploymentLifecycleHookStage.add_member(:post_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_SCALE_UP", traits: {"smithy.api#enumValue" => "POST_SCALE_UP"}))
    DeploymentLifecycleHookStage.add_member(:test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "TEST_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:post_test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_TEST_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "PRODUCTION_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:post_production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_PRODUCTION_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookStage)
    DeploymentRolloutState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentRolloutState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentRolloutState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStrategy.add_member(:rolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLING", traits: {"smithy.api#enumValue" => "ROLLING"}))
    DeploymentStrategy.add_member(:blue_green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLUE_GREEN", traits: {"smithy.api#enumValue" => "BLUE_GREEN"}))
    Deployments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Deployment)
    DeregisterContainerInstanceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DeregisterContainerInstanceRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstance", traits: {"smithy.api#required" => {}}))
    DeregisterContainerInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "force"))
    DeregisterContainerInstanceRequest.type = Types::DeregisterContainerInstanceRequest
    DeregisterContainerInstanceResponse.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, location_name: "containerInstance"))
    DeregisterContainerInstanceResponse.type = Types::DeregisterContainerInstanceResponse
    DeregisterTaskDefinitionRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    DeregisterTaskDefinitionRequest.type = Types::DeregisterTaskDefinitionRequest
    DeregisterTaskDefinitionResponse.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, location_name: "taskDefinition"))
    DeregisterTaskDefinitionResponse.type = Types::DeregisterTaskDefinitionResponse
    DescribeCapacityProvidersRequest.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "capacityProviders"))
    DescribeCapacityProvidersRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DescribeCapacityProvidersRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderFieldList, location_name: "include"))
    DescribeCapacityProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    DescribeCapacityProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    DescribeCapacityProvidersRequest.type = Types::DescribeCapacityProvidersRequest
    DescribeCapacityProvidersResponse.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviders, location_name: "capacityProviders"))
    DescribeCapacityProvidersResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeCapacityProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    DescribeCapacityProvidersResponse.type = Types::DescribeCapacityProvidersResponse
    DescribeClustersRequest.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "clusters"))
    DescribeClustersRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterFieldList, location_name: "include"))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: Clusters, location_name: "clusters"))
    DescribeClustersResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DescribeContainerInstancesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DescribeContainerInstancesRequest.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "containerInstances", traits: {"smithy.api#required" => {}}))
    DescribeContainerInstancesRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceFieldList, location_name: "include"))
    DescribeContainerInstancesRequest.type = Types::DescribeContainerInstancesRequest
    DescribeContainerInstancesResponse.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstances, location_name: "containerInstances"))
    DescribeContainerInstancesResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeContainerInstancesResponse.type = Types::DescribeContainerInstancesResponse
    DescribeServiceDeploymentsRequest.add_member(:service_deployment_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "serviceDeploymentArns", traits: {"smithy.api#required" => {}}))
    DescribeServiceDeploymentsRequest.type = Types::DescribeServiceDeploymentsRequest
    DescribeServiceDeploymentsResponse.add_member(:service_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeployments, location_name: "serviceDeployments"))
    DescribeServiceDeploymentsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeServiceDeploymentsResponse.type = Types::DescribeServiceDeploymentsResponse
    DescribeServiceRevisionsRequest.add_member(:service_revision_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "serviceRevisionArns", traits: {"smithy.api#required" => {}}))
    DescribeServiceRevisionsRequest.type = Types::DescribeServiceRevisionsRequest
    DescribeServiceRevisionsResponse.add_member(:service_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisions, location_name: "serviceRevisions"))
    DescribeServiceRevisionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeServiceRevisionsResponse.type = Types::DescribeServiceRevisionsResponse
    DescribeServicesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DescribeServicesRequest.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "services", traits: {"smithy.api#required" => {}}))
    DescribeServicesRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFieldList, location_name: "include"))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: Services, location_name: "services"))
    DescribeServicesResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    DescribeTaskDefinitionRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    DescribeTaskDefinitionRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionFieldList, location_name: "include"))
    DescribeTaskDefinitionRequest.type = Types::DescribeTaskDefinitionRequest
    DescribeTaskDefinitionResponse.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, location_name: "taskDefinition"))
    DescribeTaskDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    DescribeTaskDefinitionResponse.type = Types::DescribeTaskDefinitionResponse
    DescribeTaskSetsRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    DescribeTaskSetsRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    DescribeTaskSetsRequest.add_member(:task_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "taskSets"))
    DescribeTaskSetsRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSetFieldList, location_name: "include"))
    DescribeTaskSetsRequest.type = Types::DescribeTaskSetsRequest
    DescribeTaskSetsResponse.add_member(:task_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSets, location_name: "taskSets"))
    DescribeTaskSetsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeTaskSetsResponse.type = Types::DescribeTaskSetsResponse
    DescribeTasksRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DescribeTasksRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "tasks", traits: {"smithy.api#required" => {}}))
    DescribeTasksRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFieldList, location_name: "include"))
    DescribeTasksRequest.type = Types::DescribeTasksRequest
    DescribeTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, location_name: "tasks"))
    DescribeTasksResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    DescribeTasksResponse.type = Types::DescribeTasksResponse
    DesiredStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    DesiredStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DesiredStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    Device.add_member(:host_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hostPath", traits: {"smithy.api#required" => {}}))
    Device.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerPath"))
    Device.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCgroupPermissions, location_name: "permissions"))
    Device.type = Types::Device
    DeviceCgroupPermission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ", traits: {"smithy.api#enumValue" => "read"}))
    DeviceCgroupPermission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WRITE", traits: {"smithy.api#enumValue" => "write"}))
    DeviceCgroupPermission.add_member(:mknod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MKNOD", traits: {"smithy.api#enumValue" => "mknod"}))
    DeviceCgroupPermissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCgroupPermission)
    DevicesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Device)
    DiscoverPollEndpointRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstance"))
    DiscoverPollEndpointRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    DiscoverPollEndpointRequest.type = Types::DiscoverPollEndpointRequest
    DiscoverPollEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "endpoint"))
    DiscoverPollEndpointResponse.add_member(:telemetry_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "telemetryEndpoint"))
    DiscoverPollEndpointResponse.add_member(:service_connect_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceConnectEndpoint"))
    DiscoverPollEndpointResponse.type = Types::DiscoverPollEndpointResponse
    DockerLabelsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    DockerLabelsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    DockerVolumeConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, location_name: "scope"))
    DockerVolumeConfiguration.add_member(:autoprovision, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "autoprovision"))
    DockerVolumeConfiguration.add_member(:driver, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "driver"))
    DockerVolumeConfiguration.add_member(:driver_opts, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "driverOpts"))
    DockerVolumeConfiguration.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "labels"))
    DockerVolumeConfiguration.type = Types::DockerVolumeConfiguration
    EBSResourceType.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOLUME", traits: {"smithy.api#enumValue" => "volume"}))
    EBSTagSpecification.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    EBSTagSpecification.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    EBSTagSpecification.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, location_name: "propagateTags"))
    EBSTagSpecification.type = Types::EBSTagSpecification
    EBSTagSpecifications.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EBSTagSpecification)
    EFSAuthorizationConfig.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "accessPointId"))
    EFSAuthorizationConfig.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSAuthorizationConfigIAM, location_name: "iam"))
    EFSAuthorizationConfig.type = Types::EFSAuthorizationConfig
    EFSAuthorizationConfigIAM.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSAuthorizationConfigIAM.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSTransitEncryption.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSTransitEncryption.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSVolumeConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    EFSVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "rootDirectory"))
    EFSVolumeConfiguration.add_member(:transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSTransitEncryption, location_name: "transitEncryption"))
    EFSVolumeConfiguration.add_member(:transit_encryption_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "transitEncryptionPort"))
    EFSVolumeConfiguration.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSAuthorizationConfig, location_name: "authorizationConfig"))
    EFSVolumeConfiguration.type = Types::EFSVolumeConfiguration
    EnvironmentFile.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnvironmentFile.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFileType, location_name: "type", traits: {"smithy.api#required" => {}}))
    EnvironmentFile.type = Types::EnvironmentFile
    EnvironmentFileType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "s3"}))
    EnvironmentFiles.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFile)
    EnvironmentVariables.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair)
    EphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "sizeInGiB", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    EphemeralStorage.type = Types::EphemeralStorage
    ExcludedInstanceTypeSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstanceType, traits: {"smithy.api#xmlName" => "item"})
    ExecuteCommandConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "kmsKeyId"))
    ExecuteCommandConfiguration.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteCommandLogging, location_name: "logging"))
    ExecuteCommandConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteCommandLogConfiguration, location_name: "logConfiguration"))
    ExecuteCommandConfiguration.type = Types::ExecuteCommandConfiguration
    ExecuteCommandLogConfiguration.add_member(:cloud_watch_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cloudWatchLogGroupName"))
    ExecuteCommandLogConfiguration.add_member(:cloud_watch_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "cloudWatchEncryptionEnabled", traits: {"smithy.api#default" => false}))
    ExecuteCommandLogConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "s3BucketName"))
    ExecuteCommandLogConfiguration.add_member(:s3_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "s3EncryptionEnabled", traits: {"smithy.api#default" => false}))
    ExecuteCommandLogConfiguration.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "s3KeyPrefix"))
    ExecuteCommandLogConfiguration.type = Types::ExecuteCommandLogConfiguration
    ExecuteCommandLogging.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ExecuteCommandLogging.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ExecuteCommandLogging.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERRIDE", traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    ExecuteCommandRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    ExecuteCommandRequest.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "container"))
    ExecuteCommandRequest.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "command", traits: {"smithy.api#required" => {}}))
    ExecuteCommandRequest.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "interactive", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ExecuteCommandRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "task", traits: {"smithy.api#required" => {}}))
    ExecuteCommandRequest.type = Types::ExecuteCommandRequest
    ExecuteCommandResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    ExecuteCommandResponse.add_member(:container_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerArn"))
    ExecuteCommandResponse.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName"))
    ExecuteCommandResponse.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "interactive", traits: {"smithy.api#default" => false}))
    ExecuteCommandResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: Session, location_name: "session"))
    ExecuteCommandResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskArn"))
    ExecuteCommandResponse.type = Types::ExecuteCommandResponse
    FSxWindowsFileServerAuthorizationConfig.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "credentialsParameter", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerAuthorizationConfig.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "domain", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerAuthorizationConfig.type = Types::FSxWindowsFileServerAuthorizationConfig
    FSxWindowsFileServerVolumeConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "rootDirectory", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerVolumeConfiguration.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FSxWindowsFileServerAuthorizationConfig, location_name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerVolumeConfiguration.type = Types::FSxWindowsFileServerVolumeConfiguration
    Failure.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "arn"))
    Failure.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    Failure.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "detail"))
    Failure.type = Types::Failure
    Failures.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Failure)
    FirelensConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfigurationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    FirelensConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfigurationOptionsMap, location_name: "options"))
    FirelensConfiguration.type = Types::FirelensConfiguration
    FirelensConfigurationOptionsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    FirelensConfigurationOptionsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    FirelensConfigurationType.add_member(:fluentd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLUENTD", traits: {"smithy.api#enumValue" => "fluentd"}))
    FirelensConfigurationType.add_member(:fluentbit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLUENTBIT", traits: {"smithy.api#enumValue" => "fluentbit"}))
    GetTaskProtectionRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    GetTaskProtectionRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "tasks"))
    GetTaskProtectionRequest.type = Types::GetTaskProtectionRequest
    GetTaskProtectionResponse.add_member(:protected_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedTasks, location_name: "protectedTasks"))
    GetTaskProtectionResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    GetTaskProtectionResponse.type = Types::GetTaskProtectionResponse
    GpuIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    HealthCheck.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "command", traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "interval"))
    HealthCheck.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "timeout"))
    HealthCheck.add_member(:retries, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "retries"))
    HealthCheck.add_member(:start_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "startPeriod"))
    HealthCheck.type = Types::HealthCheck
    HealthStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    HealthStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    HostEntry.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hostname", traits: {"smithy.api#required" => {}}))
    HostEntry.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ipAddress", traits: {"smithy.api#required" => {}}))
    HostEntry.type = Types::HostEntry
    HostEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HostEntry)
    HostVolumeProperties.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "sourcePath"))
    HostVolumeProperties.type = Types::HostVolumeProperties
    InferenceAccelerator.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "deviceName", traits: {"smithy.api#required" => {}}))
    InferenceAccelerator.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "deviceType", traits: {"smithy.api#required" => {}}))
    InferenceAccelerator.type = Types::InferenceAccelerator
    InferenceAcceleratorOverride.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "deviceName"))
    InferenceAcceleratorOverride.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "deviceType"))
    InferenceAcceleratorOverride.type = Types::InferenceAcceleratorOverride
    InferenceAcceleratorOverrides.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAcceleratorOverride)
    InferenceAccelerators.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerator)
    InstanceGeneration.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CURRENT", traits: {"smithy.api#enumValue" => "current"}))
    InstanceGeneration.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREVIOUS", traits: {"smithy.api#enumValue" => "previous"}))
    InstanceGenerationSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGeneration, traits: {"smithy.api#xmlName" => "item"})
    InstanceHealthCheckResult.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckType, location_name: "type"))
    InstanceHealthCheckResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckState, location_name: "status"))
    InstanceHealthCheckResult.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdated"))
    InstanceHealthCheckResult.add_member(:last_status_change, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastStatusChange"))
    InstanceHealthCheckResult.type = Types::InstanceHealthCheckResult
    InstanceHealthCheckResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckResult)
    InstanceHealthCheckState.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    InstanceHealthCheckState.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    InstanceHealthCheckState.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    InstanceHealthCheckState.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    InstanceHealthCheckType.add_member(:container_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_RUNTIME", traits: {"smithy.api#enumValue" => "CONTAINER_RUNTIME"}))
    InstanceLaunchTemplate.add_member(:ec2_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ec2InstanceProfileArn", traits: {"smithy.api#required" => {}}))
    InstanceLaunchTemplate.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesNetworkConfiguration, location_name: "networkConfiguration", traits: {"smithy.api#required" => {}}))
    InstanceLaunchTemplate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesStorageConfiguration, location_name: "storageConfiguration"))
    InstanceLaunchTemplate.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesMonitoringOptions, location_name: "monitoring"))
    InstanceLaunchTemplate.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirementsRequest, location_name: "instanceRequirements"))
    InstanceLaunchTemplate.type = Types::InstanceLaunchTemplate
    InstanceLaunchTemplateUpdate.add_member(:ec2_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ec2InstanceProfileArn"))
    InstanceLaunchTemplateUpdate.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesNetworkConfiguration, location_name: "networkConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesStorageConfiguration, location_name: "storageConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesMonitoringOptions, location_name: "monitoring"))
    InstanceLaunchTemplateUpdate.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirementsRequest, location_name: "instanceRequirements"))
    InstanceLaunchTemplateUpdate.type = Types::InstanceLaunchTemplateUpdate
    InstanceRequirementsRequest.add_member(:v_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: VCpuCountRangeRequest, location_name: "vCpuCount", traits: {"smithy.api#required" => {}}))
    InstanceRequirementsRequest.add_member(:memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMiBRequest, location_name: "memoryMiB", traits: {"smithy.api#required" => {}}))
    InstanceRequirementsRequest.add_member(:cpu_manufacturers, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuManufacturerSet, location_name: "cpuManufacturers", traits: {"smithy.api#xmlName" => "CpuManufacturer"}))
    InstanceRequirementsRequest.add_member(:memory_gi_b_per_v_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryGiBPerVCpuRequest, location_name: "memoryGiBPerVCpu"))
    InstanceRequirementsRequest.add_member(:excluded_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstanceTypeSet, location_name: "excludedInstanceTypes", traits: {"smithy.api#xmlName" => "ExcludedInstanceType"}))
    InstanceRequirementsRequest.add_member(:instance_generations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGenerationSet, location_name: "instanceGenerations", traits: {"smithy.api#xmlName" => "InstanceGeneration"}))
    InstanceRequirementsRequest.add_member(:spot_max_price_percentage_over_lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "spotMaxPricePercentageOverLowestPrice"))
    InstanceRequirementsRequest.add_member(:on_demand_max_price_percentage_over_lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "onDemandMaxPricePercentageOverLowestPrice"))
    InstanceRequirementsRequest.add_member(:bare_metal, ::Smithy::Schema::Shapes::MemberShape.new(target: BareMetal, location_name: "bareMetal"))
    InstanceRequirementsRequest.add_member(:burstable_performance, ::Smithy::Schema::Shapes::MemberShape.new(target: BurstablePerformance, location_name: "burstablePerformance"))
    InstanceRequirementsRequest.add_member(:require_hibernate_support, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "requireHibernateSupport"))
    InstanceRequirementsRequest.add_member(:network_interface_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceCountRequest, location_name: "networkInterfaceCount"))
    InstanceRequirementsRequest.add_member(:local_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorage, location_name: "localStorage"))
    InstanceRequirementsRequest.add_member(:local_storage_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorageTypeSet, location_name: "localStorageTypes", traits: {"smithy.api#xmlName" => "LocalStorageType"}))
    InstanceRequirementsRequest.add_member(:total_local_storage_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalLocalStorageGBRequest, location_name: "totalLocalStorageGB"))
    InstanceRequirementsRequest.add_member(:baseline_ebs_bandwidth_mbps, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineEbsBandwidthMbpsRequest, location_name: "baselineEbsBandwidthMbps"))
    InstanceRequirementsRequest.add_member(:accelerator_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTypeSet, location_name: "acceleratorTypes", traits: {"smithy.api#xmlName" => "AcceleratorType"}))
    InstanceRequirementsRequest.add_member(:accelerator_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorCountRequest, location_name: "acceleratorCount"))
    InstanceRequirementsRequest.add_member(:accelerator_manufacturers, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorManufacturerSet, location_name: "acceleratorManufacturers", traits: {"smithy.api#xmlName" => "AcceleratorManufacturer"}))
    InstanceRequirementsRequest.add_member(:accelerator_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorNameSet, location_name: "acceleratorNames", traits: {"smithy.api#xmlName" => "AcceleratorName"}))
    InstanceRequirementsRequest.add_member(:accelerator_total_memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTotalMemoryMiBRequest, location_name: "acceleratorTotalMemoryMiB"))
    InstanceRequirementsRequest.add_member(:network_bandwidth_gbps, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBandwidthGbpsRequest, location_name: "networkBandwidthGbps"))
    InstanceRequirementsRequest.add_member(:allowed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInstanceTypeSet, location_name: "allowedInstanceTypes", traits: {"smithy.api#xmlName" => "AllowedInstanceType"}))
    InstanceRequirementsRequest.add_member(:max_spot_price_as_percentage_of_optimal_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxSpotPriceAsPercentageOfOptimalOnDemandPrice"))
    InstanceRequirementsRequest.type = Types::InstanceRequirementsRequest
    IntegerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger)
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    IpcMode.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    IpcMode.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TASK", traits: {"smithy.api#enumValue" => "task"}))
    IpcMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    KernelCapabilities.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "add"))
    KernelCapabilities.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "drop"))
    KernelCapabilities.type = Types::KernelCapabilities
    KeyValuePair.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value"))
    KeyValuePair.type = Types::KeyValuePair
    LaunchType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    LaunchType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    LaunchType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    LaunchType.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LinuxParameters.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: KernelCapabilities, location_name: "capabilities"))
    LinuxParameters.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DevicesList, location_name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, ::Smithy::Schema::Shapes::MemberShape.new(target: TmpfsList, location_name: "tmpfs"))
    LinuxParameters.add_member(:max_swap, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxSwap"))
    LinuxParameters.add_member(:swappiness, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "swappiness"))
    LinuxParameters.type = Types::LinuxParameters
    ListAccountSettingsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, location_name: "name"))
    ListAccountSettingsRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value"))
    ListAccountSettingsRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "principalArn"))
    ListAccountSettingsRequest.add_member(:effective_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "effectiveSettings", traits: {"smithy.api#default" => false}))
    ListAccountSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListAccountSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListAccountSettingsRequest.type = Types::ListAccountSettingsRequest
    ListAccountSettingsResponse.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Settings, location_name: "settings"))
    ListAccountSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListAccountSettingsResponse.type = Types::ListAccountSettingsResponse
    ListAttributesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    ListAttributesRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, location_name: "targetType", traits: {"smithy.api#required" => {}}))
    ListAttributesRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "attributeName"))
    ListAttributesRequest.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "attributeValue"))
    ListAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListAttributesRequest.type = Types::ListAttributesRequest
    ListAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes"))
    ListAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListAttributesResponse.type = Types::ListAttributesResponse
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:cluster_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "clusterArns"))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListClustersResponse.type = Types::ListClustersResponse
    ListContainerInstancesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    ListContainerInstancesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "filter"))
    ListContainerInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListContainerInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListContainerInstancesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceStatus, location_name: "status"))
    ListContainerInstancesRequest.type = Types::ListContainerInstancesRequest
    ListContainerInstancesResponse.add_member(:container_instance_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "containerInstanceArns"))
    ListContainerInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListContainerInstancesResponse.type = Types::ListContainerInstancesResponse
    ListServiceDeploymentsRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    ListServiceDeploymentsRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    ListServiceDeploymentsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatusList, location_name: "status"))
    ListServiceDeploymentsRequest.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "createdAt"))
    ListServiceDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServiceDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListServiceDeploymentsRequest.type = Types::ListServiceDeploymentsRequest
    ListServiceDeploymentsResponse.add_member(:service_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentsBrief, location_name: "serviceDeployments"))
    ListServiceDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServiceDeploymentsResponse.type = Types::ListServiceDeploymentsResponse
    ListServicesByNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    ListServicesByNamespaceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServicesByNamespaceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListServicesByNamespaceRequest.type = Types::ListServicesByNamespaceRequest
    ListServicesByNamespaceResponse.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "serviceArns"))
    ListServicesByNamespaceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServicesByNamespaceResponse.type = Types::ListServicesByNamespaceResponse
    ListServicesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    ListServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListServicesRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    ListServicesRequest.add_member(:scheduling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingStrategy, location_name: "schedulingStrategy"))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "serviceArns"))
    ListServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskDefinitionFamiliesRequest.add_member(:family_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "familyPrefix"))
    ListTaskDefinitionFamiliesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionFamilyStatus, location_name: "status"))
    ListTaskDefinitionFamiliesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListTaskDefinitionFamiliesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListTaskDefinitionFamiliesRequest.type = Types::ListTaskDefinitionFamiliesRequest
    ListTaskDefinitionFamiliesResponse.add_member(:families, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "families"))
    ListTaskDefinitionFamiliesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListTaskDefinitionFamiliesResponse.type = Types::ListTaskDefinitionFamiliesResponse
    ListTaskDefinitionsRequest.add_member(:family_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "familyPrefix"))
    ListTaskDefinitionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionStatus, location_name: "status"))
    ListTaskDefinitionsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, location_name: "sort"))
    ListTaskDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListTaskDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListTaskDefinitionsRequest.type = Types::ListTaskDefinitionsRequest
    ListTaskDefinitionsResponse.add_member(:task_definition_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "taskDefinitionArns"))
    ListTaskDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListTaskDefinitionsResponse.type = Types::ListTaskDefinitionsResponse
    ListTasksRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    ListTasksRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstance"))
    ListTasksRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "family"))
    ListTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "maxResults"))
    ListTasksRequest.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "startedBy"))
    ListTasksRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceName"))
    ListTasksRequest.add_member(:desired_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredStatus, location_name: "desiredStatus"))
    ListTasksRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    ListTasksRequest.type = Types::ListTasksRequest
    ListTasksResponse.add_member(:task_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "taskArns"))
    ListTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListTasksResponse.type = Types::ListTasksResponse
    LoadBalancer.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "targetGroupArn"))
    LoadBalancer.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "loadBalancerName"))
    LoadBalancer.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName"))
    LoadBalancer.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "containerPort"))
    LoadBalancer.add_member(:advanced_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedConfiguration, location_name: "advancedConfiguration"))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancer)
    LocalStorage.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    LocalStorage.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    LocalStorage.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    LocalStorageType.add_member(:hdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HDD", traits: {"smithy.api#enumValue" => "hdd"}))
    LocalStorageType.add_member(:ssd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSD", traits: {"smithy.api#enumValue" => "ssd"}))
    LocalStorageTypeSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorageType, traits: {"smithy.api#xmlName" => "item"})
    LogConfiguration.add_member(:log_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDriver, location_name: "logDriver", traits: {"smithy.api#required" => {}}))
    LogConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationOptionsMap, location_name: "options"))
    LogConfiguration.add_member(:secret_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, location_name: "secretOptions"))
    LogConfiguration.type = Types::LogConfiguration
    LogConfigurationOptionsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    LogConfigurationOptionsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    LogDriver.add_member(:json_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON_FILE", traits: {"smithy.api#enumValue" => "json-file"}))
    LogDriver.add_member(:syslog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSLOG", traits: {"smithy.api#enumValue" => "syslog"}))
    LogDriver.add_member(:journald, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JOURNALD", traits: {"smithy.api#enumValue" => "journald"}))
    LogDriver.add_member(:gelf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GELF", traits: {"smithy.api#enumValue" => "gelf"}))
    LogDriver.add_member(:fluentd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLUENTD", traits: {"smithy.api#enumValue" => "fluentd"}))
    LogDriver.add_member(:awslogs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWSLOGS", traits: {"smithy.api#enumValue" => "awslogs"}))
    LogDriver.add_member(:splunk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPLUNK", traits: {"smithy.api#enumValue" => "splunk"}))
    LogDriver.add_member(:awsfirelens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWSFIRELENS", traits: {"smithy.api#enumValue" => "awsfirelens"}))
    ManagedAgent.add_member(:last_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastStartedAt"))
    ManagedAgent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentName, location_name: "name"))
    ManagedAgent.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    ManagedAgent.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "lastStatus"))
    ManagedAgent.type = Types::ManagedAgent
    ManagedAgentName.add_member(:execute_command_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ExecuteCommandAgent", traits: {"smithy.api#enumValue" => "ExecuteCommandAgent"}))
    ManagedAgentStateChange.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName", traits: {"smithy.api#required" => {}}))
    ManagedAgentStateChange.add_member(:managed_agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentName, location_name: "managedAgentName", traits: {"smithy.api#required" => {}}))
    ManagedAgentStateChange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status", traits: {"smithy.api#required" => {}}))
    ManagedAgentStateChange.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    ManagedAgentStateChange.type = Types::ManagedAgentStateChange
    ManagedAgentStateChanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentStateChange)
    ManagedAgents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgent)
    ManagedDraining.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedDraining.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ManagedInstancesMonitoringOptions.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    ManagedInstancesMonitoringOptions.add_member(:detailed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DETAILED", traits: {"smithy.api#enumValue" => "DETAILED"}))
    ManagedInstancesNetworkConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "subnets"))
    ManagedInstancesNetworkConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "securityGroups"))
    ManagedInstancesNetworkConfiguration.type = Types::ManagedInstancesNetworkConfiguration
    ManagedInstancesProvider.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "infrastructureRoleArn"))
    ManagedInstancesProvider.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplate, location_name: "instanceLaunchTemplate"))
    ManagedInstancesProvider.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateMITags, location_name: "propagateTags"))
    ManagedInstancesProvider.type = Types::ManagedInstancesProvider
    ManagedInstancesStorageConfiguration.add_member(:storage_size_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeStorageGiB, location_name: "storageSizeGiB"))
    ManagedInstancesStorageConfiguration.type = Types::ManagedInstancesStorageConfiguration
    ManagedScaling.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingStatus, location_name: "status"))
    ManagedScaling.add_member(:target_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingTargetCapacity, location_name: "targetCapacity"))
    ManagedScaling.add_member(:minimum_scaling_step_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingStepSize, location_name: "minimumScalingStepSize"))
    ManagedScaling.add_member(:maximum_scaling_step_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingStepSize, location_name: "maximumScalingStepSize"))
    ManagedScaling.add_member(:instance_warmup_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingInstanceWarmupPeriod, location_name: "instanceWarmupPeriod"))
    ManagedScaling.type = Types::ManagedScaling
    ManagedScalingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedScalingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ManagedStorageConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "kmsKeyId"))
    ManagedStorageConfiguration.add_member(:fargate_ephemeral_storage_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "fargateEphemeralStorageKmsKeyId"))
    ManagedStorageConfiguration.type = Types::ManagedStorageConfiguration
    ManagedTerminationProtection.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedTerminationProtection.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MemoryGiBPerVCpuRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, location_name: "min"))
    MemoryGiBPerVCpuRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, location_name: "max"))
    MemoryGiBPerVCpuRequest.type = Types::MemoryGiBPerVCpuRequest
    MemoryMiBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "min", traits: {"smithy.api#required" => {}}))
    MemoryMiBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "max"))
    MemoryMiBRequest.type = Types::MemoryMiBRequest
    MissingVersionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    MissingVersionException.type = Types::MissingVersionException
    MountPoint.add_member(:source_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "sourceVolume"))
    MountPoint.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerPath"))
    MountPoint.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "readOnly"))
    MountPoint.type = Types::MountPoint
    MountPointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoint)
    NamespaceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    NamespaceNotFoundException.type = Types::NamespaceNotFoundException
    NetworkBandwidthGbpsRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, location_name: "min"))
    NetworkBandwidthGbpsRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, location_name: "max"))
    NetworkBandwidthGbpsRequest.type = Types::NetworkBandwidthGbpsRequest
    NetworkBinding.add_member(:bind_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "bindIP"))
    NetworkBinding.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "containerPort"))
    NetworkBinding.add_member(:host_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "hostPort"))
    NetworkBinding.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportProtocol, location_name: "protocol"))
    NetworkBinding.add_member(:container_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerPortRange"))
    NetworkBinding.add_member(:host_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hostPortRange"))
    NetworkBinding.type = Types::NetworkBinding
    NetworkBindings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBinding)
    NetworkConfiguration.add_member(:awsvpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NetworkInterface.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "attachmentId"))
    NetworkInterface.add_member(:private_ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "privateIpv4Address"))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ipv6Address"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "min"))
    NetworkInterfaceCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "max"))
    NetworkInterfaceCountRequest.type = Types::NetworkInterfaceCountRequest
    NetworkInterfaces.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface)
    NetworkMode.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRIDGE", traits: {"smithy.api#enumValue" => "bridge"}))
    NetworkMode.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    NetworkMode.add_member(:awsvpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWSVPC", traits: {"smithy.api#enumValue" => "awsvpc"}))
    NetworkMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    NoUpdateAvailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    NoUpdateAvailableException.type = Types::NoUpdateAvailableException
    OSFamily.add_member(:windows_server_2019_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2019_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019_FULL"}))
    OSFamily.add_member(:windows_server_2019_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2019_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019_CORE"}))
    OSFamily.add_member(:windows_server_2016_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2016_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016_FULL"}))
    OSFamily.add_member(:windows_server_2004_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2004_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2004_CORE"}))
    OSFamily.add_member(:windows_server_2022_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2022_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022_CORE"}))
    OSFamily.add_member(:windows_server_2022_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2022_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022_FULL"}))
    OSFamily.add_member(:windows_server_2025_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2025_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2025_CORE"}))
    OSFamily.add_member(:windows_server_2025_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2025_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2025_FULL"}))
    OSFamily.add_member(:windows_server_20_h2_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_20H2_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_20H2_CORE"}))
    OSFamily.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    PidMode.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    PidMode.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TASK", traits: {"smithy.api#enumValue" => "task"}))
    PlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraintType, location_name: "type"))
    PlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "expression"))
    PlacementConstraint.type = Types::PlacementConstraint
    PlacementConstraintType.add_member(:distinct_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISTINCT_INSTANCE", traits: {"smithy.api#enumValue" => "distinctInstance"}))
    PlacementConstraintType.add_member(:member_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEMBER_OF", traits: {"smithy.api#enumValue" => "memberOf"}))
    PlacementConstraints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraint)
    PlacementStrategies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategy)
    PlacementStrategy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategyType, location_name: "type"))
    PlacementStrategy.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "field"))
    PlacementStrategy.type = Types::PlacementStrategy
    PlacementStrategyType.add_member(:random, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RANDOM", traits: {"smithy.api#enumValue" => "random"}))
    PlacementStrategyType.add_member(:spread, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPREAD", traits: {"smithy.api#enumValue" => "spread"}))
    PlacementStrategyType.add_member(:binpack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BINPACK", traits: {"smithy.api#enumValue" => "binpack"}))
    PlatformDevice.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id", traits: {"smithy.api#required" => {}}))
    PlatformDevice.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDeviceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    PlatformDevice.type = Types::PlatformDevice
    PlatformDeviceType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GPU", traits: {"smithy.api#enumValue" => "GPU"}))
    PlatformDevices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDevice)
    PlatformTaskDefinitionIncompatibilityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    PlatformTaskDefinitionIncompatibilityException.type = Types::PlatformTaskDefinitionIncompatibilityException
    PlatformUnknownException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    PlatformUnknownException.type = Types::PlatformUnknownException
    PortMapping.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "containerPort"))
    PortMapping.add_member(:host_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "hostPort"))
    PortMapping.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportProtocol, location_name: "protocol"))
    PortMapping.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    PortMapping.add_member(:app_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProtocol, location_name: "appProtocol"))
    PortMapping.add_member(:container_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerPortRange"))
    PortMapping.type = Types::PortMapping
    PortMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortMapping)
    PropagateMITags.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPACITY_PROVIDER", traits: {"smithy.api#enumValue" => "CAPACITY_PROVIDER"}))
    PropagateMITags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PropagateTags.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TASK_DEFINITION", traits: {"smithy.api#enumValue" => "TASK_DEFINITION"}))
    PropagateTags.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    PropagateTags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ProtectedTask.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskArn"))
    ProtectedTask.add_member(:protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "protectionEnabled", traits: {"smithy.api#default" => false}))
    ProtectedTask.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "expirationDate"))
    ProtectedTask.type = Types::ProtectedTask
    ProtectedTasks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedTask)
    ProxyConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigurationType, location_name: "type"))
    ProxyConfiguration.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName", traits: {"smithy.api#required" => {}}))
    ProxyConfiguration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigurationProperties, location_name: "properties"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    ProxyConfigurationProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair)
    ProxyConfigurationType.add_member(:appmesh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPMESH", traits: {"smithy.api#enumValue" => "APPMESH"}))
    PutAccountSettingDefaultRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutAccountSettingDefaultRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value", traits: {"smithy.api#required" => {}}))
    PutAccountSettingDefaultRequest.type = Types::PutAccountSettingDefaultRequest
    PutAccountSettingDefaultResponse.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, location_name: "setting"))
    PutAccountSettingDefaultResponse.type = Types::PutAccountSettingDefaultResponse
    PutAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "principalArn"))
    PutAccountSettingRequest.type = Types::PutAccountSettingRequest
    PutAccountSettingResponse.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, location_name: "setting"))
    PutAccountSettingResponse.type = Types::PutAccountSettingResponse
    PutAttributesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    PutAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes", traits: {"smithy.api#required" => {}}))
    PutAttributesRequest.type = Types::PutAttributesRequest
    PutAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes"))
    PutAttributesResponse.type = Types::PutAttributesResponse
    PutClusterCapacityProvidersRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    PutClusterCapacityProvidersRequest.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "capacityProviders", traits: {"smithy.api#required" => {}}))
    PutClusterCapacityProvidersRequest.add_member(:default_capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "defaultCapacityProviderStrategy", traits: {"smithy.api#required" => {}}))
    PutClusterCapacityProvidersRequest.type = Types::PutClusterCapacityProvidersRequest
    PutClusterCapacityProvidersResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "cluster"))
    PutClusterCapacityProvidersResponse.type = Types::PutClusterCapacityProvidersResponse
    RegisterContainerInstanceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "instanceIdentityDocument"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "instanceIdentityDocumentSignature"))
    RegisterContainerInstanceRequest.add_member(:total_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, location_name: "totalResources"))
    RegisterContainerInstanceRequest.add_member(:version_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionInfo, location_name: "versionInfo"))
    RegisterContainerInstanceRequest.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstanceArn"))
    RegisterContainerInstanceRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes"))
    RegisterContainerInstanceRequest.add_member(:platform_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDevices, location_name: "platformDevices"))
    RegisterContainerInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    RegisterContainerInstanceRequest.type = Types::RegisterContainerInstanceRequest
    RegisterContainerInstanceResponse.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, location_name: "containerInstance"))
    RegisterContainerInstanceResponse.type = Types::RegisterContainerInstanceResponse
    RegisterTaskDefinitionRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "family", traits: {"smithy.api#required" => {}}))
    RegisterTaskDefinitionRequest.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "executionRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMode, location_name: "networkMode"))
    RegisterTaskDefinitionRequest.add_member(:container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDefinitions, location_name: "containerDefinitions", traits: {"smithy.api#required" => {}}))
    RegisterTaskDefinitionRequest.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeList, location_name: "volumes"))
    RegisterTaskDefinitionRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraints, location_name: "placementConstraints"))
    RegisterTaskDefinitionRequest.add_member(:requires_compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityList, location_name: "requiresCompatibilities"))
    RegisterTaskDefinitionRequest.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cpu"))
    RegisterTaskDefinitionRequest.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "memory"))
    RegisterTaskDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    RegisterTaskDefinitionRequest.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PidMode, location_name: "pidMode"))
    RegisterTaskDefinitionRequest.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IpcMode, location_name: "ipcMode"))
    RegisterTaskDefinitionRequest.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, location_name: "proxyConfiguration"))
    RegisterTaskDefinitionRequest.add_member(:inference_accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerators, location_name: "inferenceAccelerators"))
    RegisterTaskDefinitionRequest.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, location_name: "ephemeralStorage"))
    RegisterTaskDefinitionRequest.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, location_name: "runtimePlatform"))
    RegisterTaskDefinitionRequest.add_member(:enable_fault_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "enableFaultInjection"))
    RegisterTaskDefinitionRequest.type = Types::RegisterTaskDefinitionRequest
    RegisterTaskDefinitionResponse.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, location_name: "taskDefinition"))
    RegisterTaskDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    RegisterTaskDefinitionResponse.type = Types::RegisterTaskDefinitionResponse
    RepositoryCredentials.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "credentialsParameter", traits: {"smithy.api#required" => {}}))
    RepositoryCredentials.type = Types::RepositoryCredentials
    RequiresAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute)
    ResolvedConfiguration.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionLoadBalancers, location_name: "loadBalancers"))
    ResolvedConfiguration.type = Types::ResolvedConfiguration
    Resource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "type"))
    Resource.add_member(:double_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "doubleValue", traits: {"smithy.api#default" => 0}))
    Resource.add_member(:long_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "longValue", traits: {"smithy.api#default" => 0}))
    Resource.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "integerValue", traits: {"smithy.api#default" => 0}))
    Resource.add_member(:string_set_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "stringSetValue"))
    Resource.type = Types::Resource
    ResourceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceRequirement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value", traits: {"smithy.api#required" => {}}))
    ResourceRequirement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ResourceRequirement.type = Types::ResourceRequirement
    ResourceRequirements.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirement)
    ResourceType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GPU", traits: {"smithy.api#enumValue" => "GPU"}))
    ResourceType.add_member(:inference_accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFERENCE_ACCELERATOR", traits: {"smithy.api#enumValue" => "InferenceAccelerator"}))
    Resources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Resource)
    Rollback.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    Rollback.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startedAt"))
    Rollback.add_member(:service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceRevisionArn"))
    Rollback.type = Types::Rollback
    RunTaskRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    RunTaskRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    RunTaskRequest.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "count"))
    RunTaskRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    RunTaskRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    RunTaskRequest.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "group"))
    RunTaskRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    RunTaskRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    RunTaskRequest.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskOverride, location_name: "overrides"))
    RunTaskRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, location_name: "placementConstraints"))
    RunTaskRequest.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, location_name: "placementStrategy"))
    RunTaskRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    RunTaskRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, location_name: "propagateTags"))
    RunTaskRequest.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "referenceId"))
    RunTaskRequest.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "startedBy"))
    RunTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    RunTaskRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    RunTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RunTaskRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeConfigurations, location_name: "volumeConfigurations"))
    RunTaskRequest.type = Types::RunTaskRequest
    RunTaskResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, location_name: "tasks"))
    RunTaskResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    RunTaskResponse.type = Types::RunTaskResponse
    RuntimePlatform.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: CPUArchitecture, location_name: "cpuArchitecture"))
    RuntimePlatform.add_member(:operating_system_family, ::Smithy::Schema::Shapes::MemberShape.new(target: OSFamily, location_name: "operatingSystemFamily"))
    RuntimePlatform.type = Types::RuntimePlatform
    Scale.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "value", traits: {"smithy.api#default" => 0}))
    Scale.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleUnit, location_name: "unit"))
    Scale.type = Types::Scale
    ScaleUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERCENT", traits: {"smithy.api#enumValue" => "PERCENT"}))
    SchedulingStrategy.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    SchedulingStrategy.add_member(:daemon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAEMON", traits: {"smithy.api#enumValue" => "DAEMON"}))
    Scope.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TASK", traits: {"smithy.api#enumValue" => "task"}))
    Scope.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED", traits: {"smithy.api#enumValue" => "shared"}))
    Secret.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    Secret.add_member(:value_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "valueFrom", traits: {"smithy.api#required" => {}}))
    Secret.type = Types::Secret
    SecretList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Secret)
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ServerException.type = Types::ServerException
    Service.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceArn"))
    Service.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceName"))
    Service.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    Service.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "loadBalancers"))
    Service.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, location_name: "serviceRegistries"))
    Service.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    Service.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "desiredCount", traits: {"smithy.api#default" => 0}))
    Service.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "runningCount", traits: {"smithy.api#default" => 0}))
    Service.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "pendingCount", traits: {"smithy.api#default" => 0}))
    Service.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    Service.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    Service.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    Service.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformFamily"))
    Service.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition"))
    Service.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    Service.add_member(:task_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSets, location_name: "taskSets"))
    Service.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: Deployments, location_name: "deployments"))
    Service.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "roleArn"))
    Service.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEvents, location_name: "events"))
    Service.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Service.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, location_name: "placementConstraints"))
    Service.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, location_name: "placementStrategy"))
    Service.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    Service.add_member(:health_check_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    Service.add_member(:scheduling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingStrategy, location_name: "schedulingStrategy"))
    Service.add_member(:deployment_controller, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentController, location_name: "deploymentController"))
    Service.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    Service.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "createdBy"))
    Service.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    Service.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, location_name: "propagateTags"))
    Service.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    Service.add_member(:availability_zone_rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneRebalancing, location_name: "availabilityZoneRebalancing"))
    Service.type = Types::Service
    ServiceConnectClientAlias.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "port", traits: {"smithy.api#required" => {}}))
    ServiceConnectClientAlias.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "dnsName"))
    ServiceConnectClientAlias.add_member(:test_traffic_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTestTrafficRules, location_name: "testTrafficRules"))
    ServiceConnectClientAlias.type = Types::ServiceConnectClientAlias
    ServiceConnectClientAliasList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectClientAlias)
    ServiceConnectConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ServiceConnectConfiguration.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "namespace"))
    ServiceConnectConfiguration.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectServiceList, location_name: "services"))
    ServiceConnectConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, location_name: "logConfiguration"))
    ServiceConnectConfiguration.type = Types::ServiceConnectConfiguration
    ServiceConnectService.add_member(:port_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "portName", traits: {"smithy.api#required" => {}}))
    ServiceConnectService.add_member(:discovery_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "discoveryName"))
    ServiceConnectService.add_member(:client_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectClientAliasList, location_name: "clientAliases"))
    ServiceConnectService.add_member(:ingress_port_override, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "ingressPortOverride"))
    ServiceConnectService.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutConfiguration, location_name: "timeout"))
    ServiceConnectService.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTlsConfiguration, location_name: "tls"))
    ServiceConnectService.type = Types::ServiceConnectService
    ServiceConnectServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectService)
    ServiceConnectServiceResource.add_member(:discovery_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "discoveryName"))
    ServiceConnectServiceResource.add_member(:discovery_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "discoveryArn"))
    ServiceConnectServiceResource.type = Types::ServiceConnectServiceResource
    ServiceConnectServiceResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectServiceResource)
    ServiceConnectTestTrafficHeaderMatchRules.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "exact", traits: {"smithy.api#required" => {}}))
    ServiceConnectTestTrafficHeaderMatchRules.type = Types::ServiceConnectTestTrafficHeaderMatchRules
    ServiceConnectTestTrafficHeaderRules.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ServiceConnectTestTrafficHeaderRules.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTestTrafficHeaderMatchRules, location_name: "value"))
    ServiceConnectTestTrafficHeaderRules.type = Types::ServiceConnectTestTrafficHeaderRules
    ServiceConnectTestTrafficRules.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTestTrafficHeaderRules, location_name: "header", traits: {"smithy.api#required" => {}}))
    ServiceConnectTestTrafficRules.type = Types::ServiceConnectTestTrafficRules
    ServiceConnectTlsCertificateAuthority.add_member(:aws_pca_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "awsPcaAuthorityArn"))
    ServiceConnectTlsCertificateAuthority.type = Types::ServiceConnectTlsCertificateAuthority
    ServiceConnectTlsConfiguration.add_member(:issuer_certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTlsCertificateAuthority, location_name: "issuerCertificateAuthority", traits: {"smithy.api#required" => {}}))
    ServiceConnectTlsConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "kmsKey"))
    ServiceConnectTlsConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "roleArn"))
    ServiceConnectTlsConfiguration.type = Types::ServiceConnectTlsConfiguration
    ServiceDeployment.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceDeploymentArn"))
    ServiceDeployment.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceArn"))
    ServiceDeployment.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    ServiceDeployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    ServiceDeployment.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startedAt"))
    ServiceDeployment.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "finishedAt"))
    ServiceDeployment.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "stoppedAt"))
    ServiceDeployment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    ServiceDeployment.add_member(:source_service_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionsSummaryList, location_name: "sourceServiceRevisions"))
    ServiceDeployment.add_member(:target_service_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionSummary, location_name: "targetServiceRevision"))
    ServiceDeployment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatus, location_name: "status"))
    ServiceDeployment.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "statusReason"))
    ServiceDeployment.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentLifecycleStage, location_name: "lifecycleStage"))
    ServiceDeployment.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    ServiceDeployment.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: Rollback, location_name: "rollback"))
    ServiceDeployment.add_member(:deployment_circuit_breaker, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentCircuitBreaker, location_name: "deploymentCircuitBreaker"))
    ServiceDeployment.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentAlarms, location_name: "alarms"))
    ServiceDeployment.type = Types::ServiceDeployment
    ServiceDeploymentAlarms.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentRollbackMonitorsStatus, location_name: "status"))
    ServiceDeploymentAlarms.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "alarmNames"))
    ServiceDeploymentAlarms.add_member(:triggered_alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "triggeredAlarmNames"))
    ServiceDeploymentAlarms.type = Types::ServiceDeploymentAlarms
    ServiceDeploymentBrief.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceDeploymentArn"))
    ServiceDeploymentBrief.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceArn"))
    ServiceDeploymentBrief.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    ServiceDeploymentBrief.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startedAt"))
    ServiceDeploymentBrief.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    ServiceDeploymentBrief.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "finishedAt"))
    ServiceDeploymentBrief.add_member(:target_service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "targetServiceRevisionArn"))
    ServiceDeploymentBrief.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatus, location_name: "status"))
    ServiceDeploymentBrief.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "statusReason"))
    ServiceDeploymentBrief.type = Types::ServiceDeploymentBrief
    ServiceDeploymentCircuitBreaker.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentRollbackMonitorsStatus, location_name: "status"))
    ServiceDeploymentCircuitBreaker.add_member(:failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "failureCount", traits: {"smithy.api#default" => 0}))
    ServiceDeploymentCircuitBreaker.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "threshold", traits: {"smithy.api#default" => 0}))
    ServiceDeploymentCircuitBreaker.type = Types::ServiceDeploymentCircuitBreaker
    ServiceDeploymentLifecycleStage.add_member(:reconcile_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RECONCILE_SERVICE", traits: {"smithy.api#enumValue" => "RECONCILE_SERVICE"}))
    ServiceDeploymentLifecycleStage.add_member(:pre_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRE_SCALE_UP", traits: {"smithy.api#enumValue" => "PRE_SCALE_UP"}))
    ServiceDeploymentLifecycleStage.add_member(:scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCALE_UP", traits: {"smithy.api#enumValue" => "SCALE_UP"}))
    ServiceDeploymentLifecycleStage.add_member(:post_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_SCALE_UP", traits: {"smithy.api#enumValue" => "POST_SCALE_UP"}))
    ServiceDeploymentLifecycleStage.add_member(:test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "TEST_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:post_test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_TEST_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "PRODUCTION_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:post_production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_PRODUCTION_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:bake_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAKE_TIME", traits: {"smithy.api#enumValue" => "BAKE_TIME"}))
    ServiceDeploymentLifecycleStage.add_member(:clean_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLEAN_UP", traits: {"smithy.api#enumValue" => "CLEAN_UP"}))
    ServiceDeploymentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ServiceDeploymentNotFoundException.type = Types::ServiceDeploymentNotFoundException
    ServiceDeploymentRollbackMonitorsStatus.add_member(:triggered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRIGGERED", traits: {"smithy.api#enumValue" => "TRIGGERED"}))
    ServiceDeploymentRollbackMonitorsStatus.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONITORING", traits: {"smithy.api#enumValue" => "MONITORING"}))
    ServiceDeploymentRollbackMonitorsStatus.add_member(:monitoring_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONITORING_COMPLETE", traits: {"smithy.api#enumValue" => "MONITORING_COMPLETE"}))
    ServiceDeploymentRollbackMonitorsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ServiceDeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ServiceDeploymentStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    ServiceDeploymentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ServiceDeploymentStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    ServiceDeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ServiceDeploymentStatus.add_member(:rollback_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_REQUESTED", traits: {"smithy.api#enumValue" => "ROLLBACK_REQUESTED"}))
    ServiceDeploymentStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    ServiceDeploymentStatus.add_member(:rollback_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_SUCCESSFUL", traits: {"smithy.api#enumValue" => "ROLLBACK_SUCCESSFUL"}))
    ServiceDeploymentStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    ServiceDeploymentStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatus)
    ServiceDeployments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeployment)
    ServiceDeploymentsBrief.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentBrief)
    ServiceEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id"))
    ServiceEvent.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    ServiceEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ServiceEvent.type = Types::ServiceEvent
    ServiceEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEvent)
    ServiceField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ServiceFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceField)
    ServiceManagedEBSVolumeConfiguration.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "encrypted"))
    ServiceManagedEBSVolumeConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSKMSKeyId, location_name: "kmsKeyId"))
    ServiceManagedEBSVolumeConfiguration.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSVolumeType, location_name: "volumeType"))
    ServiceManagedEBSVolumeConfiguration.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "sizeInGiB"))
    ServiceManagedEBSVolumeConfiguration.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSnapshotId, location_name: "snapshotId"))
    ServiceManagedEBSVolumeConfiguration.add_member(:volume_initialization_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "volumeInitializationRate"))
    ServiceManagedEBSVolumeConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "iops"))
    ServiceManagedEBSVolumeConfiguration.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "throughput"))
    ServiceManagedEBSVolumeConfiguration.add_member(:tag_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSTagSpecifications, location_name: "tagSpecifications"))
    ServiceManagedEBSVolumeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    ServiceManagedEBSVolumeConfiguration.add_member(:filesystem_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilesystemType, location_name: "filesystemType"))
    ServiceManagedEBSVolumeConfiguration.type = Types::ServiceManagedEBSVolumeConfiguration
    ServiceNotActiveException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ServiceNotActiveException.type = Types::ServiceNotActiveException
    ServiceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    ServiceNotFoundException.type = Types::ServiceNotFoundException
    ServiceRegistries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistry)
    ServiceRegistry.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "registryArn"))
    ServiceRegistry.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "port"))
    ServiceRegistry.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName"))
    ServiceRegistry.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "containerPort"))
    ServiceRegistry.type = Types::ServiceRegistry
    ServiceRevision.add_member(:service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceRevisionArn"))
    ServiceRevision.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceArn"))
    ServiceRevision.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    ServiceRevision.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition"))
    ServiceRevision.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    ServiceRevision.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    ServiceRevision.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    ServiceRevision.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformFamily"))
    ServiceRevision.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "loadBalancers"))
    ServiceRevision.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, location_name: "serviceRegistries"))
    ServiceRevision.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    ServiceRevision.add_member(:container_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImages, location_name: "containerImages"))
    ServiceRevision.add_member(:guard_duty_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "guardDutyEnabled", traits: {"smithy.api#default" => false}))
    ServiceRevision.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    ServiceRevision.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    ServiceRevision.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEphemeralStorage, location_name: "fargateEphemeralStorage"))
    ServiceRevision.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    ServiceRevision.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    ServiceRevision.add_member(:resolved_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedConfiguration, location_name: "resolvedConfiguration"))
    ServiceRevision.type = Types::ServiceRevision
    ServiceRevisionLoadBalancer.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "targetGroupArn"))
    ServiceRevisionLoadBalancer.add_member(:production_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "productionListenerRule"))
    ServiceRevisionLoadBalancer.type = Types::ServiceRevisionLoadBalancer
    ServiceRevisionLoadBalancers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionLoadBalancer)
    ServiceRevisionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "arn"))
    ServiceRevisionSummary.add_member(:requested_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "requestedTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceRevisionSummary.add_member(:running_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "runningTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceRevisionSummary.add_member(:pending_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "pendingTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceRevisionSummary.type = Types::ServiceRevisionSummary
    ServiceRevisions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevision)
    ServiceRevisionsSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionSummary)
    ServiceVolumeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSVolumeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ServiceVolumeConfiguration.add_member(:managed_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedEBSVolumeConfiguration, location_name: "managedEBSVolume"))
    ServiceVolumeConfiguration.type = Types::ServiceVolumeConfiguration
    ServiceVolumeConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfiguration)
    Services.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Service)
    Session.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "sessionId"))
    Session.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "streamUrl"))
    Session.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, location_name: "tokenValue"))
    Session.type = Types::Session
    Setting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, location_name: "name"))
    Setting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value"))
    Setting.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "principalArn"))
    Setting.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingType, location_name: "type"))
    Setting.type = Types::Setting
    SettingName.add_member(:service_long_arn_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_LONG_ARN_FORMAT", traits: {"smithy.api#enumValue" => "serviceLongArnFormat"}))
    SettingName.add_member(:task_long_arn_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TASK_LONG_ARN_FORMAT", traits: {"smithy.api#enumValue" => "taskLongArnFormat"}))
    SettingName.add_member(:container_instance_long_arn_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_INSTANCE_LONG_ARN_FORMAT", traits: {"smithy.api#enumValue" => "containerInstanceLongArnFormat"}))
    SettingName.add_member(:awsvpc_trunking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWSVPC_TRUNKING", traits: {"smithy.api#enumValue" => "awsvpcTrunking"}))
    SettingName.add_member(:container_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_INSIGHTS", traits: {"smithy.api#enumValue" => "containerInsights"}))
    SettingName.add_member(:fargate_fips_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE_FIPS_MODE", traits: {"smithy.api#enumValue" => "fargateFIPSMode"}))
    SettingName.add_member(:tag_resource_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAG_RESOURCE_AUTHORIZATION", traits: {"smithy.api#enumValue" => "tagResourceAuthorization"}))
    SettingName.add_member(:fargate_task_retirement_wait_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE_TASK_RETIREMENT_WAIT_PERIOD", traits: {"smithy.api#enumValue" => "fargateTaskRetirementWaitPeriod"}))
    SettingName.add_member(:guard_duty_activate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GUARD_DUTY_ACTIVATE", traits: {"smithy.api#enumValue" => "guardDutyActivate"}))
    SettingName.add_member(:default_log_driver_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT_LOG_DRIVER_MODE", traits: {"smithy.api#enumValue" => "defaultLogDriverMode"}))
    SettingType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    SettingType.add_member(:aws_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_MANAGED", traits: {"smithy.api#enumValue" => "aws_managed"}))
    Settings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Setting)
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StabilityStatus.add_member(:steady_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STEADY_STATE", traits: {"smithy.api#enumValue" => "STEADY_STATE"}))
    StabilityStatus.add_member(:stabilizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STABILIZING", traits: {"smithy.api#enumValue" => "STABILIZING"}))
    StartTaskRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    StartTaskRequest.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "containerInstances", traits: {"smithy.api#required" => {}}))
    StartTaskRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    StartTaskRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    StartTaskRequest.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "group"))
    StartTaskRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    StartTaskRequest.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskOverride, location_name: "overrides"))
    StartTaskRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, location_name: "propagateTags"))
    StartTaskRequest.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "referenceId"))
    StartTaskRequest.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "startedBy"))
    StartTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    StartTaskRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    StartTaskRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeConfigurations, location_name: "volumeConfigurations"))
    StartTaskRequest.type = Types::StartTaskRequest
    StartTaskResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, location_name: "tasks"))
    StartTaskResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    StartTaskResponse.type = Types::StartTaskResponse
    Statistics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair)
    StopServiceDeploymentRequest.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceDeploymentArn", traits: {"smithy.api#required" => {}}))
    StopServiceDeploymentRequest.add_member(:stop_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StopServiceDeploymentStopType, location_name: "stopType"))
    StopServiceDeploymentRequest.type = Types::StopServiceDeploymentRequest
    StopServiceDeploymentResponse.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceDeploymentArn"))
    StopServiceDeploymentResponse.type = Types::StopServiceDeploymentResponse
    StopServiceDeploymentStopType.add_member(:abort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABORT", traits: {"smithy.api#enumValue" => "ABORT"}))
    StopServiceDeploymentStopType.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    StopTaskRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    StopTaskRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "task", traits: {"smithy.api#required" => {}}))
    StopTaskRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    StopTaskRequest.type = Types::StopTaskRequest
    StopTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, location_name: "task"))
    StopTaskResponse.type = Types::StopTaskResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    SubmitAttachmentStateChangesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    SubmitAttachmentStateChangesRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStateChanges, location_name: "attachments", traits: {"smithy.api#required" => {}}))
    SubmitAttachmentStateChangesRequest.type = Types::SubmitAttachmentStateChangesRequest
    SubmitAttachmentStateChangesResponse.add_member(:acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "acknowledgment"))
    SubmitAttachmentStateChangesResponse.type = Types::SubmitAttachmentStateChangesResponse
    SubmitContainerStateChangeRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    SubmitContainerStateChangeRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "task"))
    SubmitContainerStateChangeRequest.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerName"))
    SubmitContainerStateChangeRequest.add_member(:runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "runtimeId"))
    SubmitContainerStateChangeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    SubmitContainerStateChangeRequest.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "exitCode"))
    SubmitContainerStateChangeRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    SubmitContainerStateChangeRequest.add_member(:network_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBindings, location_name: "networkBindings"))
    SubmitContainerStateChangeRequest.type = Types::SubmitContainerStateChangeRequest
    SubmitContainerStateChangeResponse.add_member(:acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "acknowledgment"))
    SubmitContainerStateChangeResponse.type = Types::SubmitContainerStateChangeResponse
    SubmitTaskStateChangeRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    SubmitTaskStateChangeRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "task"))
    SubmitTaskStateChangeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    SubmitTaskStateChangeRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "reason"))
    SubmitTaskStateChangeRequest.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerStateChanges, location_name: "containers"))
    SubmitTaskStateChangeRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStateChanges, location_name: "attachments"))
    SubmitTaskStateChangeRequest.add_member(:managed_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentStateChanges, location_name: "managedAgents"))
    SubmitTaskStateChangeRequest.add_member(:pull_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "pullStartedAt"))
    SubmitTaskStateChangeRequest.add_member(:pull_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "pullStoppedAt"))
    SubmitTaskStateChangeRequest.add_member(:execution_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "executionStoppedAt"))
    SubmitTaskStateChangeRequest.type = Types::SubmitTaskStateChangeRequest
    SubmitTaskStateChangeResponse.add_member(:acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "acknowledgment"))
    SubmitTaskStateChangeResponse.type = Types::SubmitTaskStateChangeResponse
    SystemControl.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "namespace"))
    SystemControl.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "value"))
    SystemControl.type = Types::SystemControl
    SystemControls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemControl)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "value"))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TargetNotConnectedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    TargetNotConnectedException.type = Types::TargetNotConnectedException
    TargetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    TargetNotFoundException.type = Types::TargetNotFoundException
    TargetType.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_INSTANCE", traits: {"smithy.api#enumValue" => "container-instance"}))
    Task.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, location_name: "attachments"))
    Task.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, location_name: "attributes"))
    Task.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "availabilityZone"))
    Task.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "capacityProviderName"))
    Task.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    Task.add_member(:connectivity, ::Smithy::Schema::Shapes::MemberShape.new(target: Connectivity, location_name: "connectivity"))
    Task.add_member(:connectivity_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "connectivityAt"))
    Task.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstanceArn"))
    Task.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Containers, location_name: "containers"))
    Task.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cpu"))
    Task.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Task.add_member(:desired_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "desiredStatus"))
    Task.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    Task.add_member(:execution_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "executionStoppedAt"))
    Task.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "group"))
    Task.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, location_name: "healthStatus"))
    Task.add_member(:inference_accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerators, location_name: "inferenceAccelerators"))
    Task.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "lastStatus"))
    Task.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    Task.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "memory"))
    Task.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskOverride, location_name: "overrides"))
    Task.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    Task.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformFamily"))
    Task.add_member(:pull_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "pullStartedAt"))
    Task.add_member(:pull_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "pullStoppedAt"))
    Task.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startedAt"))
    Task.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "startedBy"))
    Task.add_member(:stop_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStopCode, location_name: "stopCode"))
    Task.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "stoppedAt"))
    Task.add_member(:stopped_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "stoppedReason"))
    Task.add_member(:stopping_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "stoppingAt"))
    Task.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    Task.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskArn"))
    Task.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinitionArn"))
    Task.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "version", traits: {"smithy.api#default" => 0}))
    Task.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, location_name: "ephemeralStorage"))
    Task.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskEphemeralStorage, location_name: "fargateEphemeralStorage"))
    Task.type = Types::Task
    TaskDefinition.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinitionArn"))
    TaskDefinition.add_member(:container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDefinitions, location_name: "containerDefinitions"))
    TaskDefinition.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "family"))
    TaskDefinition.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskRoleArn"))
    TaskDefinition.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "executionRoleArn"))
    TaskDefinition.add_member(:network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMode, location_name: "networkMode"))
    TaskDefinition.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "revision", traits: {"smithy.api#default" => 0}))
    TaskDefinition.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeList, location_name: "volumes"))
    TaskDefinition.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionStatus, location_name: "status"))
    TaskDefinition.add_member(:requires_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiresAttributes, location_name: "requiresAttributes"))
    TaskDefinition.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraints, location_name: "placementConstraints"))
    TaskDefinition.add_member(:compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityList, location_name: "compatibilities"))
    TaskDefinition.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, location_name: "runtimePlatform"))
    TaskDefinition.add_member(:requires_compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityList, location_name: "requiresCompatibilities"))
    TaskDefinition.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cpu"))
    TaskDefinition.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "memory"))
    TaskDefinition.add_member(:inference_accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerators, location_name: "inferenceAccelerators"))
    TaskDefinition.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PidMode, location_name: "pidMode"))
    TaskDefinition.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IpcMode, location_name: "ipcMode"))
    TaskDefinition.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, location_name: "proxyConfiguration"))
    TaskDefinition.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "registeredAt"))
    TaskDefinition.add_member(:deregistered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "deregisteredAt"))
    TaskDefinition.add_member(:registered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "registeredBy"))
    TaskDefinition.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, location_name: "ephemeralStorage"))
    TaskDefinition.add_member(:enable_fault_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "enableFaultInjection"))
    TaskDefinition.type = Types::TaskDefinition
    TaskDefinitionFamilyStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TaskDefinitionFamilyStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TaskDefinitionFamilyStatus.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TaskDefinitionField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    TaskDefinitionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionField)
    TaskDefinitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition)
    TaskDefinitionPlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraintType, location_name: "type"))
    TaskDefinitionPlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "expression"))
    TaskDefinitionPlacementConstraint.type = Types::TaskDefinitionPlacementConstraint
    TaskDefinitionPlacementConstraintType.add_member(:member_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEMBER_OF", traits: {"smithy.api#enumValue" => "memberOf"}))
    TaskDefinitionPlacementConstraints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraint)
    TaskDefinitionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TaskDefinitionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TaskDefinitionStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    TaskEphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "sizeInGiB", traits: {"smithy.api#default" => 0}))
    TaskEphemeralStorage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "kmsKeyId"))
    TaskEphemeralStorage.type = Types::TaskEphemeralStorage
    TaskField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    TaskFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskField)
    TaskFilesystemType.add_member(:ext3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXT3", traits: {"smithy.api#enumValue" => "ext3"}))
    TaskFilesystemType.add_member(:ext4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXT4", traits: {"smithy.api#enumValue" => "ext4"}))
    TaskFilesystemType.add_member(:xfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XFS", traits: {"smithy.api#enumValue" => "xfs"}))
    TaskFilesystemType.add_member(:ntfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NTFS", traits: {"smithy.api#enumValue" => "ntfs"}))
    TaskManagedEBSVolumeConfiguration.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "encrypted"))
    TaskManagedEBSVolumeConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSKMSKeyId, location_name: "kmsKeyId"))
    TaskManagedEBSVolumeConfiguration.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSVolumeType, location_name: "volumeType"))
    TaskManagedEBSVolumeConfiguration.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "sizeInGiB"))
    TaskManagedEBSVolumeConfiguration.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSnapshotId, location_name: "snapshotId"))
    TaskManagedEBSVolumeConfiguration.add_member(:volume_initialization_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "volumeInitializationRate"))
    TaskManagedEBSVolumeConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "iops"))
    TaskManagedEBSVolumeConfiguration.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "throughput"))
    TaskManagedEBSVolumeConfiguration.add_member(:tag_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSTagSpecifications, location_name: "tagSpecifications"))
    TaskManagedEBSVolumeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    TaskManagedEBSVolumeConfiguration.add_member(:termination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskManagedEBSVolumeTerminationPolicy, location_name: "terminationPolicy"))
    TaskManagedEBSVolumeConfiguration.add_member(:filesystem_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilesystemType, location_name: "filesystemType"))
    TaskManagedEBSVolumeConfiguration.type = Types::TaskManagedEBSVolumeConfiguration
    TaskManagedEBSVolumeTerminationPolicy.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "deleteOnTermination", traits: {"smithy.api#required" => {}}))
    TaskManagedEBSVolumeTerminationPolicy.type = Types::TaskManagedEBSVolumeTerminationPolicy
    TaskOverride.add_member(:container_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOverrides, location_name: "containerOverrides"))
    TaskOverride.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cpu"))
    TaskOverride.add_member(:inference_accelerator_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAcceleratorOverrides, location_name: "inferenceAcceleratorOverrides"))
    TaskOverride.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "executionRoleArn"))
    TaskOverride.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "memory"))
    TaskOverride.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskRoleArn"))
    TaskOverride.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, location_name: "ephemeralStorage"))
    TaskOverride.type = Types::TaskOverride
    TaskSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id"))
    TaskSet.add_member(:task_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskSetArn"))
    TaskSet.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceArn"))
    TaskSet.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clusterArn"))
    TaskSet.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "startedBy"))
    TaskSet.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "externalId"))
    TaskSet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "status"))
    TaskSet.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition"))
    TaskSet.add_member(:computed_desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "computedDesiredCount", traits: {"smithy.api#default" => 0}))
    TaskSet.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "pendingCount", traits: {"smithy.api#default" => 0}))
    TaskSet.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "runningCount", traits: {"smithy.api#default" => 0}))
    TaskSet.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    TaskSet.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    TaskSet.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, location_name: "launchType"))
    TaskSet.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    TaskSet.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    TaskSet.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformFamily"))
    TaskSet.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    TaskSet.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "loadBalancers"))
    TaskSet.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, location_name: "serviceRegistries"))
    TaskSet.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Scale, location_name: "scale"))
    TaskSet.add_member(:stability_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StabilityStatus, location_name: "stabilityStatus"))
    TaskSet.add_member(:stability_status_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "stabilityStatusAt"))
    TaskSet.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    TaskSet.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEphemeralStorage, location_name: "fargateEphemeralStorage"))
    TaskSet.type = Types::TaskSet
    TaskSetField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    TaskSetFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSetField)
    TaskSetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    TaskSetNotFoundException.type = Types::TaskSetNotFoundException
    TaskSets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet)
    TaskStopCode.add_member(:task_failed_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TASK_FAILED_TO_START", traits: {"smithy.api#enumValue" => "TaskFailedToStart"}))
    TaskStopCode.add_member(:essential_container_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ESSENTIAL_CONTAINER_EXITED", traits: {"smithy.api#enumValue" => "EssentialContainerExited"}))
    TaskStopCode.add_member(:user_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER_INITIATED", traits: {"smithy.api#enumValue" => "UserInitiated"}))
    TaskStopCode.add_member(:service_scheduler_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_SCHEDULER_INITIATED", traits: {"smithy.api#enumValue" => "ServiceSchedulerInitiated"}))
    TaskStopCode.add_member(:spot_interruption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT_INTERRUPTION", traits: {"smithy.api#enumValue" => "SpotInterruption"}))
    TaskStopCode.add_member(:termination_notice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATION_NOTICE", traits: {"smithy.api#enumValue" => "TerminationNotice"}))
    TaskVolumeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSVolumeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TaskVolumeConfiguration.add_member(:managed_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskManagedEBSVolumeConfiguration, location_name: "managedEBSVolume"))
    TaskVolumeConfiguration.type = Types::TaskVolumeConfiguration
    TaskVolumeConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeConfiguration)
    Tasks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Task)
    TimeoutConfiguration.add_member(:idle_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "idleTimeoutSeconds"))
    TimeoutConfiguration.add_member(:per_request_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "perRequestTimeoutSeconds"))
    TimeoutConfiguration.type = Types::TimeoutConfiguration
    Tmpfs.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerPath", traits: {"smithy.api#required" => {}}))
    Tmpfs.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Tmpfs.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "mountOptions"))
    Tmpfs.type = Types::Tmpfs
    TmpfsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tmpfs)
    TotalLocalStorageGBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, location_name: "min"))
    TotalLocalStorageGBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, location_name: "max"))
    TotalLocalStorageGBRequest.type = Types::TotalLocalStorageGBRequest
    TransportProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "tcp"}))
    TransportProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "udp"}))
    Ulimit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UlimitName, location_name: "name", traits: {"smithy.api#required" => {}}))
    Ulimit.add_member(:soft_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "softLimit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Ulimit.add_member(:hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "hardLimit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Ulimit.type = Types::Ulimit
    UlimitList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimit)
    UlimitName.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CORE", traits: {"smithy.api#enumValue" => "core"}))
    UlimitName.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CPU", traits: {"smithy.api#enumValue" => "cpu"}))
    UlimitName.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA", traits: {"smithy.api#enumValue" => "data"}))
    UlimitName.add_member(:fsize, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FSIZE", traits: {"smithy.api#enumValue" => "fsize"}))
    UlimitName.add_member(:locks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCKS", traits: {"smithy.api#enumValue" => "locks"}))
    UlimitName.add_member(:memlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEMLOCK", traits: {"smithy.api#enumValue" => "memlock"}))
    UlimitName.add_member(:msgqueue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MSGQUEUE", traits: {"smithy.api#enumValue" => "msgqueue"}))
    UlimitName.add_member(:nice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NICE", traits: {"smithy.api#enumValue" => "nice"}))
    UlimitName.add_member(:nofile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOFILE", traits: {"smithy.api#enumValue" => "nofile"}))
    UlimitName.add_member(:nproc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NPROC", traits: {"smithy.api#enumValue" => "nproc"}))
    UlimitName.add_member(:rss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RSS", traits: {"smithy.api#enumValue" => "rss"}))
    UlimitName.add_member(:rtprio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RTPRIO", traits: {"smithy.api#enumValue" => "rtprio"}))
    UlimitName.add_member(:rttime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RTTIME", traits: {"smithy.api#enumValue" => "rttime"}))
    UlimitName.add_member(:sigpending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIGPENDING", traits: {"smithy.api#enumValue" => "sigpending"}))
    UlimitName.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STACK", traits: {"smithy.api#enumValue" => "stack"}))
    UnsupportedFeatureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    UnsupportedFeatureException.type = Types::UnsupportedFeatureException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCapacityProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateCapacityProviderRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    UpdateCapacityProviderRequest.add_member(:auto_scaling_group_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupProviderUpdate, location_name: "autoScalingGroupProvider"))
    UpdateCapacityProviderRequest.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateManagedInstancesProviderConfiguration, location_name: "managedInstancesProvider"))
    UpdateCapacityProviderRequest.type = Types::UpdateCapacityProviderRequest
    UpdateCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, location_name: "capacityProvider"))
    UpdateCapacityProviderResponse.type = Types::UpdateCapacityProviderResponse
    UpdateClusterRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, location_name: "settings"))
    UpdateClusterRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, location_name: "configuration"))
    UpdateClusterRequest.add_member(:service_connect_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterServiceConnectDefaultsRequest, location_name: "serviceConnectDefaults"))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "cluster"))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateClusterSettingsRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateClusterSettingsRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, location_name: "settings", traits: {"smithy.api#required" => {}}))
    UpdateClusterSettingsRequest.type = Types::UpdateClusterSettingsRequest
    UpdateClusterSettingsResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "cluster"))
    UpdateClusterSettingsResponse.type = Types::UpdateClusterSettingsResponse
    UpdateContainerAgentRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    UpdateContainerAgentRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "containerInstance", traits: {"smithy.api#required" => {}}))
    UpdateContainerAgentRequest.type = Types::UpdateContainerAgentRequest
    UpdateContainerAgentResponse.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, location_name: "containerInstance"))
    UpdateContainerAgentResponse.type = Types::UpdateContainerAgentResponse
    UpdateContainerInstancesStateRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    UpdateContainerInstancesStateRequest.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "containerInstances", traits: {"smithy.api#required" => {}}))
    UpdateContainerInstancesStateRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateContainerInstancesStateRequest.type = Types::UpdateContainerInstancesStateRequest
    UpdateContainerInstancesStateResponse.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstances, location_name: "containerInstances"))
    UpdateContainerInstancesStateResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    UpdateContainerInstancesStateResponse.type = Types::UpdateContainerInstancesStateResponse
    UpdateInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    UpdateInProgressException.type = Types::UpdateInProgressException
    UpdateManagedInstancesProviderConfiguration.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "infrastructureRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateManagedInstancesProviderConfiguration.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplateUpdate, location_name: "instanceLaunchTemplate", traits: {"smithy.api#required" => {}}))
    UpdateManagedInstancesProviderConfiguration.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateMITags, location_name: "propagateTags"))
    UpdateManagedInstancesProviderConfiguration.type = Types::UpdateManagedInstancesProviderConfiguration
    UpdateServicePrimaryTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateServicePrimaryTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    UpdateServicePrimaryTaskSetRequest.add_member(:primary_task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "primaryTaskSet", traits: {"smithy.api#required" => {}}))
    UpdateServicePrimaryTaskSetRequest.type = Types::UpdateServicePrimaryTaskSetRequest
    UpdateServicePrimaryTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, location_name: "taskSet"))
    UpdateServicePrimaryTaskSetResponse.type = Types::UpdateServicePrimaryTaskSetResponse
    UpdateServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster"))
    UpdateServiceRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    UpdateServiceRequest.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "desiredCount"))
    UpdateServiceRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskDefinition"))
    UpdateServiceRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    UpdateServiceRequest.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateServiceRequest.add_member(:availability_zone_rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneRebalancing, location_name: "availabilityZoneRebalancing"))
    UpdateServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "networkConfiguration"))
    UpdateServiceRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, location_name: "placementConstraints"))
    UpdateServiceRequest.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, location_name: "placementStrategy"))
    UpdateServiceRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "platformVersion"))
    UpdateServiceRequest.add_member(:force_new_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "forceNewDeployment", traits: {"smithy.api#default" => false}))
    UpdateServiceRequest.add_member(:health_check_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    UpdateServiceRequest.add_member(:deployment_controller, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentController, location_name: "deploymentController"))
    UpdateServiceRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "enableExecuteCommand"))
    UpdateServiceRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "enableECSManagedTags"))
    UpdateServiceRequest.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "loadBalancers"))
    UpdateServiceRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, location_name: "propagateTags"))
    UpdateServiceRequest.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, location_name: "serviceRegistries"))
    UpdateServiceRequest.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    UpdateServiceRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    UpdateServiceRequest.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    UpdateServiceRequest.type = Types::UpdateServiceRequest
    UpdateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "service"))
    UpdateServiceResponse.type = Types::UpdateServiceResponse
    UpdateTaskProtectionRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateTaskProtectionRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "tasks", traits: {"smithy.api#required" => {}}))
    UpdateTaskProtectionRequest.add_member(:protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "protectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateTaskProtectionRequest.add_member(:expires_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "expiresInMinutes"))
    UpdateTaskProtectionRequest.type = Types::UpdateTaskProtectionRequest
    UpdateTaskProtectionResponse.add_member(:protected_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedTasks, location_name: "protectedTasks"))
    UpdateTaskProtectionResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, location_name: "failures"))
    UpdateTaskProtectionResponse.type = Types::UpdateTaskProtectionResponse
    UpdateTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "service", traits: {"smithy.api#required" => {}}))
    UpdateTaskSetRequest.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "taskSet", traits: {"smithy.api#required" => {}}))
    UpdateTaskSetRequest.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Scale, location_name: "scale", traits: {"smithy.api#required" => {}}))
    UpdateTaskSetRequest.type = Types::UpdateTaskSetRequest
    UpdateTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, location_name: "taskSet"))
    UpdateTaskSetResponse.type = Types::UpdateTaskSetResponse
    VCpuCountRangeRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "min", traits: {"smithy.api#required" => {}}))
    VCpuCountRangeRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "max"))
    VCpuCountRangeRequest.type = Types::VCpuCountRangeRequest
    VersionConsistency.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    VersionConsistency.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    VersionInfo.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "agentVersion"))
    VersionInfo.add_member(:agent_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "agentHash"))
    VersionInfo.add_member(:docker_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "dockerVersion"))
    VersionInfo.type = Types::VersionInfo
    Volume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name"))
    Volume.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: HostVolumeProperties, location_name: "host"))
    Volume.add_member(:docker_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerVolumeConfiguration, location_name: "dockerVolumeConfiguration"))
    Volume.add_member(:efs_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSVolumeConfiguration, location_name: "efsVolumeConfiguration"))
    Volume.add_member(:fsx_windows_file_server_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FSxWindowsFileServerVolumeConfiguration, location_name: "fsxWindowsFileServerVolumeConfiguration"))
    Volume.add_member(:configured_at_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "configuredAtLaunch"))
    Volume.type = Types::Volume
    VolumeFrom.add_member(:source_container, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "sourceContainer"))
    VolumeFrom.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, location_name: "readOnly"))
    VolumeFrom.type = Types::VolumeFrom
    VolumeFromList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFrom)
    VolumeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Volume)
    VpcLatticeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    VpcLatticeConfiguration.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "targetGroupArn", traits: {"smithy.api#required" => {}}))
    VpcLatticeConfiguration.add_member(:port_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "portName", traits: {"smithy.api#required" => {}}))
    VpcLatticeConfiguration.type = Types::VpcLatticeConfiguration
    VpcLatticeConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfiguration)

    AmazonEC2ContainerServiceV20141113 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ecs#AmazonEC2ContainerServiceV20141113"
      service.name = "AmazonEC2ContainerServiceV20141113"
      service.version = "2014-11-13"
      service.traits = {"aws.api#service" => {"sdkId" => "ECS", "arnNamespace" => "ecs", "cloudFormationName" => "ECS", "cloudTrailEventSource" => "ecs.amazonaws.com", "endpointPrefix" => "ecs"}, "aws.auth#sigv4" => {"name" => "ecs"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon EC2 Container Service", "smithy.api#xmlNamespace" => {"uri" => "http://ecs.amazonaws.com/doc/2014-11-13/"}}
      service.add_operation(:create_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateCapacityProvider"
        operation.name = "CreateCapacityProvider"
        operation.input = CreateCapacityProviderRequest
        operation.output = CreateCapacityProviderResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.errors << UpdateInProgressException
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateService"
        operation.name = "CreateService"
        operation.input = CreateServiceRequest
        operation.output = CreateServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << PlatformTaskDefinitionIncompatibilityException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:create_task_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateTaskSet"
        operation.name = "CreateTaskSet"
        operation.input = CreateTaskSetRequest
        operation.output = CreateTaskSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << PlatformTaskDefinitionIncompatibilityException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteAccountSetting"
        operation.name = "DeleteAccountSetting"
        operation.input = DeleteAccountSettingRequest
        operation.output = DeleteAccountSettingResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:delete_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteAttributes"
        operation.name = "DeleteAttributes"
        operation.input = DeleteAttributesRequest
        operation.output = DeleteAttributesResponse
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << TargetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteCapacityProvider"
        operation.name = "DeleteCapacityProvider"
        operation.input = DeleteCapacityProviderRequest
        operation.output = DeleteCapacityProviderResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << ClientException
        operation.errors << ClusterContainsCapacityProviderException
        operation.errors << ClusterContainsContainerInstancesException
        operation.errors << ClusterContainsServicesException
        operation.errors << ClusterContainsTasksException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceRequest
        operation.output = DeleteServiceResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_task_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteTaskDefinitions"
        operation.name = "DeleteTaskDefinitions"
        operation.input = DeleteTaskDefinitionsRequest
        operation.output = DeleteTaskDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:delete_task_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteTaskSet"
        operation.name = "DeleteTaskSet"
        operation.input = DeleteTaskSetRequest
        operation.output = DeleteTaskSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << TaskSetNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:deregister_container_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeregisterContainerInstance"
        operation.name = "DeregisterContainerInstance"
        operation.input = DeregisterContainerInstanceRequest
        operation.output = DeregisterContainerInstanceResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:deregister_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeregisterTaskDefinition"
        operation.name = "DeregisterTaskDefinition"
        operation.input = DeregisterTaskDefinitionRequest
        operation.output = DeregisterTaskDefinitionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:describe_capacity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeCapacityProviders"
        operation.name = "DescribeCapacityProviders"
        operation.input = DescribeCapacityProvidersRequest
        operation.output = DescribeCapacityProvidersResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = DescribeClustersRequest
        operation.output = DescribeClustersResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:describe_container_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeContainerInstances"
        operation.name = "DescribeContainerInstances"
        operation.input = DescribeContainerInstancesRequest
        operation.output = DescribeContainerInstancesResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:describe_service_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeServiceDeployments"
        operation.name = "DescribeServiceDeployments"
        operation.input = DescribeServiceDeploymentsRequest
        operation.output = DescribeServiceDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:describe_service_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeServiceRevisions"
        operation.name = "DescribeServiceRevisions"
        operation.input = DescribeServiceRevisionsRequest
        operation.output = DescribeServiceRevisionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:describe_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = DescribeServicesRequest
        operation.output = DescribeServicesResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:describe_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeTaskDefinition"
        operation.name = "DescribeTaskDefinition"
        operation.input = DescribeTaskDefinitionRequest
        operation.output = DescribeTaskDefinitionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:describe_task_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeTaskSets"
        operation.name = "DescribeTaskSets"
        operation.input = DescribeTaskSetsRequest
        operation.output = DescribeTaskSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:describe_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeTasks"
        operation.name = "DescribeTasks"
        operation.input = DescribeTasksRequest
        operation.output = DescribeTasksResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:discover_poll_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DiscoverPollEndpoint"
        operation.name = "DiscoverPollEndpoint"
        operation.input = DiscoverPollEndpointRequest
        operation.output = DiscoverPollEndpointResponse
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:execute_command, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ExecuteCommand"
        operation.name = "ExecuteCommand"
        operation.input = ExecuteCommandRequest
        operation.output = ExecuteCommandResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << TargetNotConnectedException
        operation.traits = {}
      end)
      service.add_operation(:get_task_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#GetTaskProtection"
        operation.name = "GetTaskProtection"
        operation.input = GetTaskProtectionRequest
        operation.output = GetTaskProtectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:list_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListAccountSettings"
        operation.name = "ListAccountSettings"
        operation.input = ListAccountSettingsRequest
        operation.output = ListAccountSettingsResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountSettings.new
      end)
      service.add_operation(:list_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListAttributes"
        operation.name = "ListAttributes"
        operation.input = ListAttributesRequest
        operation.output = ListAttributesResponse
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAttributes.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_container_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListContainerInstances"
        operation.name = "ListContainerInstances"
        operation.input = ListContainerInstancesRequest
        operation.output = ListContainerInstancesResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainerInstances.new
      end)
      service.add_operation(:list_service_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListServiceDeployments"
        operation.name = "ListServiceDeployments"
        operation.input = ListServiceDeploymentsRequest
        operation.output = ListServiceDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesRequest
        operation.output = ListServicesResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_services_by_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListServicesByNamespace"
        operation.name = "ListServicesByNamespace"
        operation.input = ListServicesByNamespaceRequest
        operation.output = ListServicesByNamespaceResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServicesByNamespace.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:list_task_definition_families, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTaskDefinitionFamilies"
        operation.name = "ListTaskDefinitionFamilies"
        operation.input = ListTaskDefinitionFamiliesRequest
        operation.output = ListTaskDefinitionFamiliesResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTaskDefinitionFamilies.new
      end)
      service.add_operation(:list_task_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTaskDefinitions"
        operation.name = "ListTaskDefinitions"
        operation.input = ListTaskDefinitionsRequest
        operation.output = ListTaskDefinitionsResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTaskDefinitions.new
      end)
      service.add_operation(:list_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTasks"
        operation.name = "ListTasks"
        operation.input = ListTasksRequest
        operation.output = ListTasksResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:put_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutAccountSetting"
        operation.name = "PutAccountSetting"
        operation.input = PutAccountSettingRequest
        operation.output = PutAccountSettingResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:put_account_setting_default, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutAccountSettingDefault"
        operation.name = "PutAccountSettingDefault"
        operation.input = PutAccountSettingDefaultRequest
        operation.output = PutAccountSettingDefaultResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:put_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutAttributes"
        operation.name = "PutAttributes"
        operation.input = PutAttributesRequest
        operation.output = PutAttributesResponse
        operation.errors << AttributeLimitExceededException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << TargetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_cluster_capacity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutClusterCapacityProviders"
        operation.name = "PutClusterCapacityProviders"
        operation.input = PutClusterCapacityProvidersRequest
        operation.output = PutClusterCapacityProvidersResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {}
      end)
      service.add_operation(:register_container_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#RegisterContainerInstance"
        operation.name = "RegisterContainerInstance"
        operation.input = RegisterContainerInstanceRequest
        operation.output = RegisterContainerInstanceResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:register_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#RegisterTaskDefinition"
        operation.name = "RegisterTaskDefinition"
        operation.input = RegisterTaskDefinitionRequest
        operation.output = RegisterTaskDefinitionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:run_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#RunTask"
        operation.name = "RunTask"
        operation.input = RunTaskRequest
        operation.output = RunTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << BlockedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << ConflictException
        operation.errors << InvalidParameterException
        operation.errors << PlatformTaskDefinitionIncompatibilityException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:start_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#StartTask"
        operation.name = "StartTask"
        operation.input = StartTaskRequest
        operation.output = StartTaskResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:stop_service_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#StopServiceDeployment"
        operation.name = "StopServiceDeployment"
        operation.input = StopServiceDeploymentRequest
        operation.output = StopServiceDeploymentResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ConflictException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceDeploymentNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:stop_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#StopTask"
        operation.name = "StopTask"
        operation.input = StopTaskRequest
        operation.output = StopTaskResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:submit_attachment_state_changes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#SubmitAttachmentStateChanges"
        operation.name = "SubmitAttachmentStateChanges"
        operation.input = SubmitAttachmentStateChangesRequest
        operation.output = SubmitAttachmentStateChangesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:submit_container_state_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#SubmitContainerStateChange"
        operation.name = "SubmitContainerStateChange"
        operation.input = SubmitContainerStateChangeRequest
        operation.output = SubmitContainerStateChangeResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:submit_task_state_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#SubmitTaskStateChange"
        operation.name = "SubmitTaskStateChange"
        operation.input = SubmitTaskStateChangeRequest
        operation.output = SubmitTaskStateChangeResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:update_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateCapacityProvider"
        operation.name = "UpdateCapacityProvider"
        operation.input = UpdateCapacityProviderRequest
        operation.output = UpdateCapacityProviderResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:update_cluster_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateClusterSettings"
        operation.name = "UpdateClusterSettings"
        operation.input = UpdateClusterSettingsRequest
        operation.output = UpdateClusterSettingsResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:update_container_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateContainerAgent"
        operation.name = "UpdateContainerAgent"
        operation.input = UpdateContainerAgentRequest
        operation.output = UpdateContainerAgentResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << MissingVersionException
        operation.errors << NoUpdateAvailableException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {}
      end)
      service.add_operation(:update_container_instances_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateContainerInstancesState"
        operation.name = "UpdateContainerInstancesState"
        operation.input = UpdateContainerInstancesStateRequest
        operation.output = UpdateContainerInstancesStateResponse
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:update_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateService"
        operation.name = "UpdateService"
        operation.input = UpdateServiceRequest
        operation.output = UpdateServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << PlatformTaskDefinitionIncompatibilityException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:update_service_primary_task_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateServicePrimaryTaskSet"
        operation.name = "UpdateServicePrimaryTaskSet"
        operation.input = UpdateServicePrimaryTaskSetRequest
        operation.output = UpdateServicePrimaryTaskSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << TaskSetNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:update_task_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateTaskProtection"
        operation.name = "UpdateTaskProtection"
        operation.input = UpdateTaskProtectionRequest
        operation.output = UpdateTaskProtectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
      end)
      service.add_operation(:update_task_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateTaskSet"
        operation.name = "UpdateTaskSet"
        operation.input = UpdateTaskSetRequest
        operation.output = UpdateTaskSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << TaskSetNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {}
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
